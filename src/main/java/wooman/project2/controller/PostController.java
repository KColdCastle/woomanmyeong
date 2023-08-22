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
import org.springframework.web.bind.annotation.RequestParam;
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
    public String list(Model model, @PageableDefault(page = 0, size = 10, sort = "seq", direction = Sort.Direction.DESC) Pageable pageable, @RequestParam(required = false, defaultValue = "") String searchText){

        PostListResult listResult=service.getPostListResult(searchText, searchText, pageable);
        model.addAttribute("listResult", listResult);

        return "/post_page/list";
    }
    @GetMapping("soloList.do")
    public String SoloList(Model model, @PageableDefault(page = 0, size = 10, sort = "seq", direction = Sort.Direction.DESC) Pageable pageable){

        PostListResult soloList=service.getPostListResultWithBoardName("혼자여행", pageable);
        model.addAttribute("soloList", soloList);

        return "/post_page/soloList";
    }//혼자여행으로 가는 메소드


    @GetMapping("coupleList.do")
    public String CoupleList(Model model, @PageableDefault(page = 0, size = 10, sort = "seq", direction = Sort.Direction.DESC) Pageable pageable){

        PostListResult coupleList=service.getPostListResultWithBoardName("커플여행", pageable);
        model.addAttribute("coupleList", coupleList);

        return "/post_page/coupleList";
    }

    @GetMapping("noticeList.do")
    public String noticeList(Model model, @PageableDefault(page = 0, size = 10, sort = "seq", direction = Sort.Direction.DESC) Pageable pageable){

        PostListResult noticeList=service.getPostListResultWithBoardName("공지사항", pageable);
        model.addAttribute("noticeList", noticeList);

        return "/post_page/noticeList";
    }
    @GetMapping("write.do")
    public String write(){
        return "/post_page/write";
    }
//    @PostMapping("write.do")
//    public String write(Post post){
//        service.insertS(post);
//        return "redirect:list.do";
//    }
    @GetMapping("content.do")
    public String content(long seq, Model model){
        service.viewNumUp(seq);
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
