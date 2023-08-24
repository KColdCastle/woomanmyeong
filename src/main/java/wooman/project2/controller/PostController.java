package wooman.project2.controller;


import ch.qos.logback.core.net.SyslogOutputStream;
import lombok.AllArgsConstructor;
import org.eclipse.tags.shaded.org.apache.xml.utils.SystemIDResolver;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import wooman.project2.domain.Good;
import wooman.project2.domain.Post;
import wooman.project2.domain.PostListResult;
import wooman.project2.domain.Reply;
import wooman.project2.service.GoodService;
import wooman.project2.service.PostService;
import wooman.project2.service.ReplyService;

import java.util.List;

@AllArgsConstructor
@RequestMapping("post_page")
@Controller
public class PostController {
    @Autowired
    private final PostService service;
    @Autowired
    private final ReplyService replyService;
    @Autowired
    private final GoodService goodService;

    @GetMapping("list.do")
    public String list(Model model, @PageableDefault(page = 0, size = 10, sort = "seq", direction = Sort.Direction.DESC) Pageable pageable,
                       @RequestParam(required = false, defaultValue = "") String searchText){

        PostListResult listResult=service.getPostListResult(searchText, searchText, pageable);
        model.addAttribute("listResult", listResult);

        return "/post_page/list";
    }

    @GetMapping("soloList.do")
    public String soloList(Model model, @PageableDefault(page = 0, size = 10, sort = "seq") Pageable pageable,
                           @RequestParam(required = false, defaultValue = "") String searchText){

        PostListResult soloList=service.getPostListResultWithBoardName("혼자여행", searchText, searchText, pageable);
        model.addAttribute("soloList", soloList);

        return "/post_page/soloList";
    }//혼자여행으로 가는 메소드


    @GetMapping("coupleList.do")
    public String coupleList(Model model, @PageableDefault(page = 0, size = 10, sort = "seq") Pageable pageable,
                             @RequestParam(required = false, defaultValue = "") String searchText){

        PostListResult coupleList=service.getPostListResultWithBoardName("커플여행", searchText, searchText, pageable);
        model.addAttribute("coupleList", coupleList);

        return "/post_page/coupleList";
    }//커플게시판 메소드

    @GetMapping("noticeList.do")  //공지사항 
    public String noticeList(Model model, @PageableDefault(page = 0, size = 10, sort = "seq") Pageable pageable,
                             @RequestParam(required = false, defaultValue = "") String searchText){

        PostListResult noticeList=service.getPostListResultWithBoardName("공지사항", searchText, searchText, pageable);
        model.addAttribute("noticeList", noticeList);

        return "/post_page/noticeList";
    }
    @GetMapping("familyList.do")  //가족여행
    public String familyList(Model model, @PageableDefault(page = 0, size = 10, sort = "seq") Pageable pageable,
                             @RequestParam(required = false, defaultValue = "") String searchText){

        PostListResult familyList=service.getPostListResultWithBoardName("가족여행", searchText, searchText, pageable);
        model.addAttribute("familyList", familyList);

        return "/post_page/familyList";
    }

    @GetMapping("freeList.do")  //자유게시판
    public String freeList(Model model, @PageableDefault(page = 0, size = 10, sort = "seq") Pageable pageable,
                           @RequestParam(required = false, defaultValue = "") String searchText){

        PostListResult freeList=service.getPostListResultWithBoardName("자유게시판", searchText, searchText, pageable);
        model.addAttribute("freeList", freeList);

        return "/post_page/freeBoardList";
    }
    @GetMapping("mywritelist.do")  //내가 쓴 글 게시판
    public String mywritelist(Model model, @PageableDefault(page = 0, size = 10, sort = "seq", direction = Sort.Direction.DESC) Pageable pageable,
                           @RequestParam(required = false, defaultValue = "") String searchText, String email){
        PostListResult mywritelist=service.getPostListResultWithEmail(email, searchText, pageable);
        System.out.println(mywritelist);
        model.addAttribute("mywritelist", mywritelist);

        return "/post_page/mywritelist";
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
        List<Reply> reply=replyService.findReplyPostseq(seq);
        model.addAttribute("post", post);
        model.addAttribute("reply", reply);
        return "/post_page/contentReply";
    }
    @PostMapping("comment.do")
    public String comment(Reply reply){
        System.out.println("##reply: "+reply);
        replyService.insertS(reply);
        return "redirect:content.do?seq="+reply.getPostseq();
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
    @PostMapping("good.do")
    public Good good(Good good){
        System.out.println("작동확인");
        System.out.println("받은 정보:" +good);
        goodService.insertG(good);

        return good;
    }
}
