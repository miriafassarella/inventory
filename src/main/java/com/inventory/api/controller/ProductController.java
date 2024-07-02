package com.inventory.api.controller;

import com.inventory.api.domain.model.Product;
import com.inventory.api.domain.repository.ProductRepository;
import com.inventory.api.domain.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@RestController
@RequestMapping("/products")
public class ProductController {

    @Autowired
    ProductRepository repository;

    @Autowired
    ProductService productService;

    @GetMapping
    public List<Product> list(){
        return repository.findAll();
    }

    @PostMapping
    public ResponseEntity<Product> addProduct(@RequestBody Product product){
        Product productSave = productService.addProduct(product);

        return ResponseEntity.status(HttpStatus.CREATED).body(productSave);
    }

}
