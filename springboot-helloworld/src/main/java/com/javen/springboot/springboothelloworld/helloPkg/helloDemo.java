package com.javen.springboot.springboothelloworld.helloPkg;

import com.javen.springboot.springboothelloworld.exception.BusinessException;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class helloDemo {
    @RequestMapping("/hello")
    public String index() {
        String msg = null;
        try {
            msg.toUpperCase();
        }catch (Exception e) {
            throw new BusinessException("123456", "用户密码错误!");
        }
        return "Hello World";
    }
}
