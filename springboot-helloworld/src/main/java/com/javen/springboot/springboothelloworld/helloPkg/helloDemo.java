package com.javen.springboot.springboothelloworld.helloPkg;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class helloDemo {
    @RequestMapping("/hello")
    public String index() {
        String msg = null;
        msg.toUpperCase();
        return "Hello World";
    }
}
