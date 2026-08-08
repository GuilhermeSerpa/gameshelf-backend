package com.gameshelf.gameshelf_backend.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name="jogo")
@Getter
@Setter
public class Jogo {
    
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, length=60)
    private String titulo;

    @ManyToOne
    @JoinColumn(name ="console_id", nullable = false)
    private Console console;

    @Column(name = "ano_lancamento", nullable=false)
    private Integer anoLancamento;

    @Column(name = "capa_url", nullable = false, length = 200)
    private String capaUrl;

    @Column(nullable = true)
    private String descricao;
    
    
}
