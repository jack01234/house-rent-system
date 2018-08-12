package com.wmli.system.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Auther: Administrator
 * @Date: 2018/6/17 0017 18:43
 * @Description: test
 */
@Slf4j
@Controller
public class HelloController {
    @RequestMapping(value = "/hello")
    public String sayHello(ModelMap modelMap){
        log.info("hello world !!!!");
        modelMap.put("msg", "Hello!");
        return "register";
    }
}
