package demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by sunwei0427 on 2017/11/7.
 */
@Controller
public class HomeController {
    @RequestMapping(value = "/swagger")
    public String index() {
        System.out.println("swagger-ui.html");
        return "redirect:swagger-ui.html";
    }
}
