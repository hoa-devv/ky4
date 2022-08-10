package com.example.buivanhoa.service;

import com.example.buivanhoa.entity.Product;
import com.example.buivanhoa.repository.ProductRepository;
import com.example.buivanhoa.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.Optional;

@Service
@Transactional
public class ProductService {
    @Autowired
    private ProductRepository productRepository;

    public Iterable<Product> findAll(){
        return productRepository.findAll();
    }

    public Optional<Product> findById(String id){
        return productRepository.findById(id);
    }
    public Product save(Product product){
        return productRepository.save(product);
    }
}
