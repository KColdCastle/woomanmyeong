package wooman.project2.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import wooman.project2.service.RegisterMail;

@Controller
@RequestMapping(value = "/api/mail")
public class MailServiceRestController {
    static String code = "";
    @Autowired
    RegisterMail registerMail;


    @PostMapping(value = "/confirm.json")
    public void mailConfirm(@RequestParam(name = "email") String email) throws Exception{
        code = registerMail.sendSimpleMessage(email);
        System.out.println("사용자에게 발송한 인증코드 ==> " + code);
    }
}
