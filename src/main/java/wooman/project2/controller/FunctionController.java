package wooman.project2.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("other")
@Controller
public class FunctionController {
    @GetMapping("weather")
    public String weather(){
        return "other/weather";
    }
}
