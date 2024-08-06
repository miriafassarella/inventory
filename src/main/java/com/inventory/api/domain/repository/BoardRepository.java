package com.inventory.api.domain.repository;

import com.inventory.api.domain.model.Board;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BoardRepository extends JpaRepository<Board, Long> {
}
