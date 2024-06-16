package com.inventory.api.domain.model;

import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.Objects;

@EqualsAndHashCode(onlyExplicitlyIncluded = true)
@Data
@Entity
public class Product {

    @EqualsAndHashCode.Include
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nproduct;
    private String model;
    private LocalDate dpurchase = LocalDate.now();
    private String nserie;

    @JoinColumn(name = "id_professional")
    @ManyToOne
    private Professional professional;

    @JoinColumn(name = "id_establishment")
    @ManyToOne
    private Establishment establishment;


}
