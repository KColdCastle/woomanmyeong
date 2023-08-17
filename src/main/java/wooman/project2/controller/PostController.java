package wooman.project2.controller;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import lombok.AllArgsConstructor;
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

@AllArgsConstructor
@RequestMapping("")
@Controller
public class PostController {
    private final PostService service;
    @GetMapping("list.do")
    public String list(@PageableDefault(size=3, sort = "postseq", direction= Sort.Direction.DESC) Pageable pageable,
                       Model model){
        PostListResult listResult = service.getPostListResult(pageable);
        model.addAttribute("listResult", listResult);
        return "list";
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
    @GetMapping("del.do")
    public String delete(long postseq, ServletContext application, HttpSession session,
                         HttpServletRequest request, Object page, HttpServletResponse response){
        application = session.getServletContext();
        service.deleteS(postseq);
        return "redirect:list.do";
    }
    @GetMapping("update.do")
    public String update(long postseq, Model model){
        Post post = service.contentS(postseq);
        model.addAttribute("post", post);
        return "update";
    }
    @PostMapping("update.do")
    public String update(Post post){
        service.updateS(post);
        return "redirect:list.do";
    }
    @GetMapping("content.do")
    public String content(long postseq, Model model){
        Post post =service.contentS(postseq);
        model.addAttribute("post", post);
        return "content";
    }
}
