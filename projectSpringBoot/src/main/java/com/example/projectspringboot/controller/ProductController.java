package com.example.projectspringboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@CrossOrigin("http://localhost:3000/")
@RestController
@RequestMapping("api/v1/products")

public class ProductController {
    @Autowired
    com.example.projectspringboot.service.ProductService ProductService;

    @RequestMapping(method = RequestMethod.GET)
    public ResponseEntity<Iterable<com.example.projectspringboot.entity.Product>> getList() {
        return ResponseEntity.ok(ProductService.findAll());
    }

    @RequestMapping(method = RequestMethod.GET, path = "{id}")
    public ResponseEntity<?> getDetail(@PathVariable String id) {
        Optional<com.example.projectspringboot.entity.Product> optionalProduct = ProductService.findById(id);
        if (!optionalProduct.isPresent()) {
            ResponseEntity.badRequest().build();
        }
        return ResponseEntity.ok(optionalProduct.get());
    }

    @RequestMapping(method = RequestMethod.POST)
    public ResponseEntity<com.example.projectspringboot.entity.Product> create(@RequestBody com.example.projectspringboot.entity.Product product) {
        return ResponseEntity.ok(ProductService.save(product));
    }

    @RequestMapping(method = RequestMethod.PUT, path = "{id}")
    public ResponseEntity<com.example.projectspringboot.entity.Product> update(@PathVariable String id, @RequestBody com.example.projectspringboot.entity.Product product) {
        Optional<com.example.projectspringboot.entity.Product> optionalProduct = ProductService.findById(id);
        if (!optionalProduct.isPresent()) {
            ResponseEntity.badRequest().build();
        }
        com.example.projectspringboot.entity.Product existProduct = optionalProduct.get();
        existProduct.setName(product.getName());
        return ResponseEntity.ok(ProductService.save(existProduct));
    }

    @RequestMapping(method = RequestMethod.DELETE, path = "{id}")
    public ResponseEntity<?> delete(@PathVariable String id) {
        if (!ProductService.findById(id).isPresent()) {
            ResponseEntity.badRequest().build();
        }
        ProductService.deleteById(id);
        return ResponseEntity.ok().build();
    }
}
