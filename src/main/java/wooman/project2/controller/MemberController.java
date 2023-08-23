package wooman.project2.controller;

import jakarta.servlet.http.HttpSession;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import wooman.project2.domain.Member;
import wooman.project2.service.MemberLoginService;

import static wooman.project2.service.MemberLoginConst.YES_ID_PWD;

@RequestMapping("member")
@Controller
@AllArgsConstructor
public class MemberController {
    private final MemberLoginService memberLoginService;

    @GetMapping("regtest")
    public String reg(){
        return "member/regtest";
    }
    @PostMapping("register")//회원가입 성공 실패
    public String register(Member member,
                           @RequestParam("email") String email,
                           @RequestParam("maildomain") String maildomain,
                           @RequestParam("verificationCode") String verificationCode

    )
    {

        if (MailServiceRestController.code.equals(verificationCode)) {
            // 인증 코드가 일치하는 경우 처리 로직 (예: 회원 가입 처리)
            // 여기서 db insert 구현.
            // ...
            member.setEmail(email+maildomain);
            memberLoginService.insertM(member);
            System.out.println("인증성공");
            return "member/registration_success"; // 회원가입 성공 시 페이지
        } else {
            // 인증 코드가 일치하지 않는 경우 처리 로직
            System.out.println("인증실패");
            return "member/registration_fail"; // 회원가입 폼 페이지로 돌아가기
        }
    }
    @PostMapping("registration_success")
    public String success() {
        return "registration_success";
    }
    @PostMapping("registration_fail")
    public String fail(){
        return "registration_fail";
    }

    @GetMapping("logintest")
    public String login(){
        return "member/logintest";
    }
    @PostMapping("login")
    public String tryLogin(Member member, HttpSession session, Model model){
        int result = memberLoginService.check(member.getEmail(), member.getPwd());
        if(result == YES_ID_PWD){
            Member loginOkUser = memberLoginService.getLogin(member.getEmail());
            session.setAttribute("loginOkUser", loginOkUser);
            model.addAttribute("result", result);
            return "member/registration_success";
        }
        else {
            return "member/registration_fail";
        }
    }
    @GetMapping("logout.do")
    public String logout(HttpSession session){
        //session.removeAttribute("loginOkUser");//1개만
        session.invalidate();//session 모든객체 제거
        return "redirect:../";
    }
    @GetMapping("mypage.do")
    public String mypage(){
        return "member/mypage";
    }

}
