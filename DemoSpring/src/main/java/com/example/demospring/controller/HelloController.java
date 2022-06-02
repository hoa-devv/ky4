package com.example.demospring.controller;


import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.time.LocalDateTime;
import java.util.ArrayList;
@RequestMapping(path = "api/hello")
public class HelloController {

        @RequestMapping (path = "world", method = RequestMethod.GET)
        public String say() {return "Hello world";}

        @RequestMapping (path =" talk", method = RequestMethod.GET)
        public String talk () { return "Talk to world";}

        @RequestMapping (path = "student", method = RequestMethod.GET)
        public Student getStudent(){
            return Student.builder()
                    .rollNumber("A001")
                    .fullName("Bui Hoa")
                    .phone("012350589")
                    .address("HaNoi VietNam")
                    .dob(LocalDateTime.of(2007, 10, 10, 9, 0))
                    .build();

        }



}
