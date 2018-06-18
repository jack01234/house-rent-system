package com.wmli.system.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Auther: Administrator
 * @Date: 2018/6/17 0017 18:43
 * @Description: test
 */
@Controller
public class HelloController {
    @RequestMapping(value = "/")
    public String sayHello(ModelMap modelMap){
        modelMap.put("msg", "Hello!");
        return "hello";
    }
}
