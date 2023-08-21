package wooman.project2.controller;

import lombok.AllArgsConstructor;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import wooman.project2.domain.Board;
import wooman.project2.domain.Post;
import wooman.project2.service.PostService;

import java.util.List;

@Controller
@AllArgsConstructor
public class IndexController {
    private final PostService service;

    @GetMapping("")
    public String getIndex(Model model) {  //베스트글 추천수에 따라 5개
        int count = 5; // 가져올 개수
        List<Post> noticeList = service.findTopViewedPostsByBoardname("공지사항", PageRequest.of(0, count));
        List<Post> soloList = service.findTopViewedPostsByBoardname("혼자여행", PageRequest.of(0, count));
        List<Post> coupleList = service.findTopViewedPostsByBoardname("커플여행", PageRequest.of(0, count));
        List<Post> familyList = service.findTopViewedPostsByBoardname("가족여행", PageRequest.of(0, count));
        List<Post> freeList = service.findTopViewedPostsByBoardname("자유게시판", PageRequest.of(0, count));


        model.addAttribute("noticePost", noticeList);
        model.addAttribute("soloPost", soloList);
        model.addAttribute("couplePost", coupleList);
        model.addAttribute("familyPost", familyList);
        model.addAttribute("freePost", freeList);

        return "index";
    }
}
