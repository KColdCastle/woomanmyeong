package wooman.project2.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import wooman.project2.domain.Post;
import wooman.project2.service.FileUpService;
import wooman.project2.service.WriteService;

import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("write")
public class WriteController {
    @Autowired
    WriteService service;

    FileUpService fileUpService;

    @GetMapping("insert.do")
    public String form(){
        return "write";
    }

    @PostMapping("boardin")
    public String write(Post post)/*,
                        @RequestParam("file") MultipartFile file,
                        @RequestParam("files") List<MultipartFile> files) throws IOException
                         */{
                             System.out.println(post);
        service.insertS(post);
        System.out.println("insertS(): "+service.insertS(post));
       /*
        long fileSize = file.getSize();
        System.out.println("@@FileController fileSize: " + fileSize);
        fileUpService.saveFile(file); //단일파일

        for(MultipartFile mfile: files){ //멀티파일
            fileUpService.saveFile(mfile);
        }

        */
        return "redirect:../";
    }


}
