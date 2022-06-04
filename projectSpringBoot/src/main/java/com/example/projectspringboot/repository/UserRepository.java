package com.example.projectspringboot.repository;

import com.example.projectspringboot.entity.Product;
import com.example.projectspringboot.entity.User;
import org.springframework.data.repository.CrudRepository;
public interface UserRepository  extends CrudRepository<User, Integer>{


}
