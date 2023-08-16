package wooman.project2.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
@RequestMapping("member")
@Controller
public class MemberController {
    @GetMapping("reg")
    public String reg(){
        return "member/reg";
    }
    @PostMapping("register")//회원가입 성공 실패 로직은 MailServiceRestController에서 붙어야함 여긴 테스트
    public String register(@RequestParam("email") String email,
                           @RequestParam("verificationCode") String verificationCode

    )
    {

        if (MailServiceRestController.code.equals(verificationCode)) {
            // 인증 코드가 일치하는 경우 처리 로직 (예: 회원 가입 처리)
            // 여기서 db insert 구현.
            // ...
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
}
