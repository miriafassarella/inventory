package com.inventory.api.domain.model;

import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.Entity;
import javax.persistence.Id;

@EqualsAndHashCode(onlyExplicitlyIncluded = true)
@Data
@Entity
public class Permission {

    @EqualsAndHashCode.Include
    @Id
    private Long id;
    private String description;
}
