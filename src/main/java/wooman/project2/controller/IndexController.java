package wooman.project2.controller;

import lombok.AllArgsConstructor;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import wooman.project2.domain.Board;
import wooman.project2.domain.Post;
import wooman.project2.service.PostService;

import java.util.List;

@Controller
@AllArgsConstructor
public class IndexController {
    private final PostService service;

    @GetMapping("")
    public String index(Model model){
        List<Post> postList = service.indexListS(20);
        model.addAttribute("post", postList);
        return "index";
    }
}