package com.example.demospring.controller;

import com.example.demospring.entity.Product;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;

@RestController
@RequestMapping(path = "api/hello")
public class HelloController {
        @RequestMapping(path = "world", method = RequestMethod.GET)
        public String say(){ return "Hello World";}

        @RequestMapping(path = "talk", method = RequestMethod.GET)
        public String talk(){ return "Talk to World";}

        @RequestMapping(path = "product", method = RequestMethod.GET)
        public Product GetStudent(){
                return Product.builder()
                        .id("A001")
                        .name("Hong Xuan")
                        .slug("0987456321")
                        .description("Hanoi Vietnam")
                        .detail
                        .price
                        .thumbnail
                        .info_Manu
                        .importedAt
                        .updateAt
                        .deleteAt
                        .createAt
                        .deleteAt
                        .createBy
                        .updateBy
                        .deleteBy



        }
}