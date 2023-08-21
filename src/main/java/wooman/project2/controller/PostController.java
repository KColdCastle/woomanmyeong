package wooman.project2.controller;


import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import wooman.project2.domain.Post;
import wooman.project2.domain.PostListResult;
import wooman.project2.service.PostService;

import java.util.List;

@AllArgsConstructor
@RequestMapping("post_page")
@Controller
public class PostController {
    @Autowired
    private final PostService service;

    @GetMapping("list.do")
    public String list(Model model, @PageableDefault(page = 0, size = 10, sort = "seq", direction = Sort.Direction.DESC) Pageable pageable){

        PostListResult listResult=service.getPostListResult(pageable);
        model.addAttribute("listResult", listResult);

        return "/post_page/list";
    }
    @GetMapping("write.do")
    public String write(){
        return "/post_page/write";
    }
    @PostMapping("write.do")
    public String write(Post post){
        service.insertS(post);
        return "redirect:list.do";
    }
    @GetMapping("content.do")
    public String content(long seq, Model model){
        Post post =service.contentS(seq);
        model.addAttribute("post", post);
        return "/post_page/content";
    }
    @GetMapping("update.do")
    public String update(long seq, Model model){
        Post post = service.contentS(seq);
        model.addAttribute("post", post);
        return "/post_page/update";
    }
    @PostMapping("update.do")
    public String update(Post post){
        service.updateS(post);
        return "redirect:list.do";
    }
    @GetMapping("del.do")
    public String delete(long seq){
        service.deleteS(seq);
        return "redirect:list.do";
    }
}
