package com.gameshelf.gameshelf_backend.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "usuario")
@Getter
@Setter
public class Usuario {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "keycloak_sub", nullable = false, unique = true, length = 255)
    private String keycloakSub;

    @Column(nullable = false, length = 60)
    private String nome;
    
    @Column(nullable = false, length = 99)
    private String email;

}
