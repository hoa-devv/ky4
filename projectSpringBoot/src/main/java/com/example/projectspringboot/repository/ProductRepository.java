package com.example.projectspringboot.repository;

import com.example.projectspringboot.entity.Product;
import org.springframework.data.repository.CrudRepository;

public interface ProductRepository extends CrudRepository<Product, String> {

}
