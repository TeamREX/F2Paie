package com.trex.f2paie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

    @RequestMapping("/index")
    public String index(){
        System.out.println("here ok ");
        return"index";
    }
}
