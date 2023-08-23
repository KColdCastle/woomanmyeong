package wooman.project2.controller;

import jakarta.servlet.http.HttpSession;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;
import wooman.project2.domain.Member;
import wooman.project2.service.MemberAjaxService;
import wooman.project2.service.MemberLoginService;

import java.util.List;

@RequestMapping("ajax")
@RestController
@AllArgsConstructor
public class MemberAjaxController {
    private final MemberAjaxService memberAjaxService;
    private final MemberLoginService memberLoginService;
    @PostMapping("search.do")
    public List<Member> search(String nickname){
        List<Member> list = memberAjaxService.getListByNicknames(nickname);
        return list;
    }
    @PostMapping("nickChange.do")
    public void nicknamechange(Member member, HttpSession session){
        memberAjaxService.updateNicknameByEmail(member);
        Member loginOkUser = memberLoginService.getLogin(member.getEmail());
        session.setAttribute("loginOkUser", loginOkUser);
    }
    @PostMapping("pwdChange.do")
    public void pwdchange(Member member){
        memberAjaxService.updatePwdByEmail(member);
    }

}
