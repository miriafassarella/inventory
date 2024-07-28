package com.inventory.api.controller;

import com.inventory.api.domain.model.Product;
import com.inventory.api.domain.repository.ProductRepository;
import com.inventory.api.domain.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "http://localhost:4200", maxAge = 4200)
@RestController
@RequestMapping("/products")
public class ProductController {

    @Autowired
    ProductRepository repository;

    @Autowired
    ProductService productService;

    @GetMapping
    @PreAuthorize("hasAuthority('ROLE_SEARCH_PRODUCT') and hasAuthority('SCOPE_read')")
    public Page<Product> list(Pageable pageable){
        Page<Product> products =  repository.findAll(pageable);
        List<Product> productPage =  products.getContent();
        Page<Product> pageImpl = new PageImpl<>(productPage, pageable, products.getTotalElements());
        return pageImpl;
    }

    @GetMapping("/{id}")
    @PreAuthorize("hasAuthority('ROLE_SEARCH_PRODUCT') and hasAuthority('SCOPE_read')")
    public ResponseEntity<Product> listProduct(@PathVariable Long id){
        Product product = productService.listProduct(id);
        return ResponseEntity.status(HttpStatus.FOUND).body(product);
    }

    @PostMapping
    @PreAuthorize("hasAuthority('ROLE_REGISTER_PRODUCT') and hasAuthority('SCOPE_write')")
    public ResponseEntity<Product> addProduct(@RequestBody Product product){
        Product productSave = productService.addProduct(product);

        return ResponseEntity.status(HttpStatus.CREATED).body(productSave);
    }

    @DeleteMapping("/{id}")
    @PreAuthorize("hasAuthority('ROLE_DELETE_PRODUCT') and hasAuthority('SCOPE_write')")
    public ResponseEntity<Product> deleteProduct(@PathVariable Long id){
        productService.removeProduct(id);
        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
    }

    @PutMapping("/{id}")
    @PreAuthorize("hasAuthority('ROLE_UPDATE_PRODUCT') and hasAuthority('SCOPE_write')")
    public ResponseEntity<Product> updateProduct(@PathVariable Long id, @RequestBody Product product){
        Product productSave = productService.updateProduct(id, product);
        return ResponseEntity.status(HttpStatus.OK).body(productSave);
    }

}
