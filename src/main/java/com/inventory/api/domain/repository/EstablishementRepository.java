package com.inventory.api.domain.repository;

import com.inventory.api.domain.model.Establishment;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EstablishementRepository extends JpaRepository<Establishment, Long> {
}
