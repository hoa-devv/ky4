package com.example.eadtest.service;

import com.example.eadtest.entity.Product;
import com.example.eadtest.entity.Sale;
import com.example.eadtest.repository.ProductRepository;
import com.example.eadtest.repository.SaleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SaleService {
    @Autowired
    SaleRepository saleRepository;

    public List<Sale> findAll() {
        return saleRepository.findAll();
    }
}
