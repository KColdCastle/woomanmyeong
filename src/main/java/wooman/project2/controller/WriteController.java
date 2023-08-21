package wooman.project2.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import wooman.project2.domain.Post;
import wooman.project2.service.WriteService;


@Controller
@RequestMapping("write")
public class WriteController {
    @Autowired
    WriteService service;

    @GetMapping("insert.do")
    public String form(){
        return "write";
    }
    @PostMapping("boardin.do")
    public String write(Post post){
        System.out.println(post);
        service.insertS(post);
        System.out.println("insertS(): "+service.insertS(post));
        return "redirect:../";
    }


}
