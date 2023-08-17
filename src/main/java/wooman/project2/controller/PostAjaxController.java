package wooman.project2.controller;

import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import wooman.project2.domain.Post;
import wooman.project2.service.PostAjaxService;

import java.util.List;

@AllArgsConstructor
@RequestMapping("ajax4")
@RestController
public class PostAjaxController {
    private PostAjaxService addressAjaxService;
    @GetMapping("search1.do")
    public Post search1(long seq){
        Post post = addressAjaxService.getBySeqS(seq);
        return post;
    }
    @PostMapping("search2.do")
    public List<Post> search2(String content){
        List<Post> list = addressAjaxService.getListByContents(content);
        return list;
    }

    @GetMapping("txt")
    public String getText(){
        return "good";
    }
}

