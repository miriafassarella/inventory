package com.inventory.api.controller;

import com.inventory.api.domain.model.Establishment;
import com.inventory.api.domain.repository.EstablishementRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin(origins = "http://localhost:4200", maxAge = 4200)
@RestController
@RequestMapping("/establishments")
public class EstablishmentController {

    @Autowired
    EstablishementRepository repository;

    @GetMapping
    public List<Establishment> list(){
        return repository.findAll();
    }


}
