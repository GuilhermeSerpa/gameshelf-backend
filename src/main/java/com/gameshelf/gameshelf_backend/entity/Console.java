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
@Table(name="console")
@Getter
@Setter
public class Console {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable= false, length=60)
    private String nome;

    @Column(nullable= false, length=60)
    private String fabricante;

    @Column(nullable=false, length=60)
    private String geracao;

    @Column(name="icone_url",nullable=false, length=200)
    private String iconeUrl;

}
