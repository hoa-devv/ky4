package com.example.projectspringboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@CrossOrigin("http://localhost:3000/")
@RestController
@RequestMapping("api/v1/users")


public class UserController {
    @Autowired
    private com.example.projectspringboot.service.UserService userService;

    @RequestMapping(method = RequestMethod.GET)
    public ResponseEntity<Iterable<com.example.projectspringboot.entity.User>> getList() {
        return ResponseEntity.ok(userService.findAll());
    }

    @RequestMapping(method = RequestMethod.GET, path = "{id}")
    public ResponseEntity<?> getDetail(@PathVariable Integer id) {
        Optional<com.example.projectspringboot.entity.User> optionalUser = userService.findById(id);
        if (!optionalUser.isPresent()) {
            ResponseEntity.badRequest().build();
        }
        return ResponseEntity.ok(optionalUser.get());
    }
    @RequestMapping(method = RequestMethod.POST)
    public ResponseEntity<com.example.projectspringboot.entity.User> create(@RequestBody com.example.projectspringboot.entity.User user) {
        return ResponseEntity.ok(userService.save(user));
    }
    @RequestMapping(method = RequestMethod.PUT, path = "{id}")
    public ResponseEntity<com.example.projectspringboot.entity.User> update(@PathVariable Integer id, @RequestBody com.example.projectspringboot.entity.User user) {
        Optional<com.example.projectspringboot.entity.User> optionalUser = userService.findById(id);
        if (!optionalUser.isPresent()) {
            ResponseEntity.badRequest().build();
        }
        com.example.projectspringboot.entity.User existUser = optionalUser.get();
        existUser.setName(user.getName());
        existUser.setEmail(user.getEmail());
        existUser.setPhone(user.getPhone());
        existUser.setAddress(user.getAddress());
        return ResponseEntity.ok(userService.save(existUser));
    }
    @RequestMapping(method = RequestMethod.DELETE, path = "{id}")
    public ResponseEntity<?> delete(@PathVariable Integer id) {
        if (!userService.findById(id).isPresent()) {
            ResponseEntity.badRequest().build();
        }
        userService.deleteById(id);
        return ResponseEntity.ok().build();
    }

}
