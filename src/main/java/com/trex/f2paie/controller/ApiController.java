package com.trex.f2paie.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ApiController {

    @RequestMapping("/api1")
    public String api1(){
        return "ok test";
    }
}
