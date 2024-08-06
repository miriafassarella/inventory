package com.inventory.api.controller;

import com.inventory.api.domain.model.Board;
import com.inventory.api.domain.repository.BoardRepository;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.annotation.HttpConstraint;
import java.util.List;

@RestController
@RequestMapping("/boards")
public class BoardController {

    @Autowired
    BoardRepository boardRepository;

    @GetMapping
    public List<Board> list(){
        return boardRepository.findAll();
    }

}
