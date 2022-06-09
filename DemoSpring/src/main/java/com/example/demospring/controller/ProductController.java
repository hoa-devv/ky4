package com.example.demospring.controller;

import com.example.demospring.entity.Product;
import com.example.demospring.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;


@RestController
@RequestMapping(path = "api/v1/product")
@CrossOrigin(value = "*")
public class ProductController {

    //CRUD
    @Autowired
    private ProductRepository productRepository;
    @RequestMapping(method = RequestMethod.GET)
    public Iterable<Product> findAll(@RequestParam(defaultValue = "1")int page,
                                     @RequestParam(defaultValue = "10") int limit ){
        return productRepository.findAll();
    }

    @RequestMapping(method = RequestMethod.POST)
    public Product save(@RequestBody Product product){
      productRepository.save(product);
        return product;
    }

    @RequestMapping(method = RequestMethod.GET, path = "{id}")
    public Product findById(@PathVariable String id){
        Optional<Product> optionalProduct =productRepository.findById(id);
        if (optionalProduct.isPresent()){
           return optionalProduct.get();
        }
        return null;
    }

    @RequestMapping(method = RequestMethod.DELETE, path = "{id}")
    public boolean deleteById( @PathVariable String id){
        Optional<Product> optionalProduct =productRepository.findById(id);
        if ( optionalProduct.isPresent()){
            Product product = optionalProduct.get();
           productRepository.delete(product);
        }
        return false;
    }

    @RequestMapping(method = RequestMethod.PUT, path = "{id}")
    public Product update(@PathVariable String id, @RequestBody Product updateProduct){
        Optional<Product> optionalProduct = ProductRepository.findById(id);
        if (optionalProduct.isPresent()){
            Product existingProduct = optionalProduct.get ();
            existingProduct.setId(updateProduct.getId());
            existingProduct.setName(updateProduct.getName());
            existingProduct.setSlug(updateProduct.getSlug());
            existingProduct.setDescription(updateProduct.getDescription());
            existingProduct.setDetail(updateProduct.getDetail());
            existingProduct.setPrice(updateProduct.getPrice());
            existingProduct.setThumbnail(updateProduct.getThumbnail());
            existingProduct.setInfo_Manu(updateProduct.getInfo_Manu());
            existingProduct.setImportedAt(updateProduct.getImportedAt());
            existingProduct.setUpdatedAt(updateProduct.getUpdatedAt());
            existingProduct.setDeletedAt(updateProduct.getDeletedAt());
            existingProduct.setCreatedBy(updateProduct.getCreatedBy());
            existingProduct.setUpdatedBy(updateProduct.getUpdatedBy());
            existingProduct.setDeletedBy(updateProduct.getDeletedBy());

          productRepository.save(existingProduct);



        }
        return null;
    }
}