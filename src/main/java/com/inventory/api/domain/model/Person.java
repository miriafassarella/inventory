package com.inventory.api.domain.model;

import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.*;
import java.util.List;

@EqualsAndHashCode(onlyExplicitlyIncluded = true)
@Data
@Entity
public class Person {

    @EqualsAndHashCode.Include
    @Id
    private Long id;
    private String name;
    private String mail;
    private String password;

    @ManyToMany
    private List<Permission> permission;
}
