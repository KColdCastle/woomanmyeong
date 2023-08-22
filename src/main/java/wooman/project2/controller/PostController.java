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
    public String list(Model model, @PageableDefault(page = 0, size = 10, sort = "seq", direction = Sort.Direction.DESC) Pageable pageable,
                       @RequestParam(required = false, defaultValue = "") String searchText){

        PostListResult listResult=service.getPostListResult(searchText, searchText, pageable);
        model.addAttribute("listResult", listResult);

        return "/post_page/list";
    }
    @GetMapping("soloList.do")
    public String soloList(Model model, @PageableDefault(page = 0, size = 10, sort = "seq", direction = Sort.Direction.DESC) Pageable pageable,
                           @RequestParam(required = false, defaultValue = "") String searchText){

        PostListResult soloList=service.getPostListResultWithBoardName("혼자여행", searchText, searchText, pageable);
        model.addAttribute("soloList", soloList);

        return "/post_page/soloList";
    }//혼자여행으로 가는 메소드


    @GetMapping("coupleList.do")
    public String coupleList(Model model, @PageableDefault(page = 0, size = 10, sort = "seq", direction = Sort.Direction.DESC) Pageable pageable,
                             @RequestParam(required = false, defaultValue = "") String searchText){

        PostListResult coupleList=service.getPostListResultWithBoardName("커플여행", searchText, searchText, pageable);
        model.addAttribute("coupleList", coupleList);

        return "/post_page/coupleList";
    }//커플게시판 메소드

    @GetMapping("noticeList.do")  //공지사항 
    public String noticeList(Model model, @PageableDefault(page = 0, size = 10, sort = "seq", direction = Sort.Direction.DESC) Pageable pageable,
                             @RequestParam(required = false, defaultValue = "") String searchText){

        PostListResult noticeList=service.getPostListResultWithBoardName("공지사항", searchText, searchText, pageable);
        model.addAttribute("noticeList", noticeList);

        return "/post_page/noticeList";
    }
    @GetMapping("familyList.do")  //가족여행
    public String familyList(Model model, @PageableDefault(page = 0, size = 10, sort = "seq", direction = Sort.Direction.DESC) Pageable pageable,
                             @RequestParam(required = false, defaultValue = "") String searchText){

        PostListResult familyList=service.getPostListResultWithBoardName("가족여행", searchText, searchText, pageable);
        model.addAttribute("familyList", familyList);

        return "/post_page/familyList";
    }

    @GetMapping("freeList.do")  //자유게시판
    public String freeList(Model model, @PageableDefault(page = 0, size = 10, sort = "seq", direction = Sort.Direction.DESC) Pageable pageable,
                           @RequestParam(required = false, defaultValue = "") String searchText){

        PostListResult freeList=service.getPostListResultWithBoardName("자유게시판", searchText, searchText, pageable);
        model.addAttribute("freeList", freeList);

        return "/post_page/freeBoardList";
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

    @GetMapping("boardviewtest")
    public String boardviewtest(){
        return "/post_page/boardviewtest";
    }
}
