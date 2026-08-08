CREATE TABLE console (
    id BIGSERIAL PRIMARY KEY,
    nome VARCHAR(60) NOT NULL,
    fabricante VARCHAR(60) NOT NULL,
    geracao VARCHAR(60) NOT NULL,
    icone_url VARCHAR(200) NOT NULL
);

CREATE TABLE categoria (
    id BIGSERIAL PRIMARY KEY,
    nome VARCHAR(60) NOT NULL
);

CREATE TABLE jogo (
    id BIGSERIAL PRIMARY KEY,
    titulo VARCHAR(60) NOT NULL,
    console_id BIGINT NOT NULL REFERENCES console(id),
    ano_lancamento INT NOT NULL,
    capa_url VARCHAR(200) NOT NULL,
    descricao TEXT
);

CREATE TABLE usuario(
    id BIGSERIAL PRIMARY KEY,
    keycloak_sub VARCHAR UNIQUE NOT NULL,
    nome VARCHAR(60) NOT NULL,
    email VARCHAR(99) 
);

CREATE TABLE jogo_categoria(
    jogo_id BIGINT NOT NULL REFERENCES jogo(id),
    categoria_id BIGINT NOT NULL REFERENCES categoria(id),
    PRIMARY KEY (jogo_id, categoria_id)
);

CREATE TABLE jogo_usuario(
    id BIGSERIAL PRIMARY KEY,
    usuario_id BIGINT NOT NULL REFERENCES usuario(id),
    jogo_id BIGINT NOT NULL REFERENCES jogo(id),
    estado VARCHAR(20) NOT NULL,
    horas_de_jogo NUMERIC NOT NULL,
    nota SMALLINT,
    data_criacao TIMESTAMP NOT NULL,
    data_atualizacao TIMESTAMP NOT NULL,
    CONSTRAINT uq_usuario_jogo UNIQUE (usuario_id, jogo_id)
);