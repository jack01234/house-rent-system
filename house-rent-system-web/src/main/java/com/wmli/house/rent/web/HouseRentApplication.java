package com.wmli.house.rent.web;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Auther: Administrator
 * @Date: 2018/10/11 0011 22:27
 * @Description:
 */
@RestController
@EnableAutoConfiguration
@SpringBootApplication
public class HouseRentApplication {
    @RequestMapping("/")
    public String home() {
        return "Hello World!";
    }

    public static void main(String[] args) {
        SpringApplication.run(HouseRentApplication.class,args);
    }
}
