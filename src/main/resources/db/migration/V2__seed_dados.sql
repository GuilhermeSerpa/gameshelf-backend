-- ==========================================================
-- V2 — Seed de dados iniciais (GameShelf)
-- ==========================================================

-- ----------------------------------------------------------
-- CONSOLES
-- ----------------------------------------------------------
INSERT INTO console (nome, fabricante, geracao, icone_url) VALUES
('PlayStation 5', 'Sony', '9ª geracao', 'https://exemplo.com/icones/ps5.png'),
('Xbox Series X', 'Microsoft', '9ª geracao', 'https://exemplo.com/icones/xbox-series-x.png'),
('Nintendo Switch', 'Nintendo', '8ª geracao', 'https://exemplo.com/icones/switch.png'),
('PC', 'Diversos', 'N/A', 'https://exemplo.com/icones/pc.png');

-- ----------------------------------------------------------
-- CATEGORIAS
-- ----------------------------------------------------------
INSERT INTO categoria (nome) VALUES
('RPG'),
('Aventura'),
('Plataforma'),
('Corrida'),
('Mundo Aberto');

-- ----------------------------------------------------------
-- JOGOS
-- ----------------------------------------------------------
-- console_id: 1=PS5, 2=Xbox Series X, 3=Switch, 4=PC
-- categoria_id: 1=RPG, 2=Aventura, 3=Plataforma, 4=Corrida, 5=Mundo Aberto

INSERT INTO jogo (titulo, console_id, ano_lancamento, capa_url, descricao) VALUES
-- PS5 (4 jogos)
('The Last of Us Part II', 1, 2020, 'https://exemplo.com/capas/tlou2.jpg', 'Sequencia sombria de aventura pos-apocaliptica.'),
('Horizon Forbidden West', 1, 2022, 'https://exemplo.com/capas/horizon-fw.jpg', 'Mundo aberto com maquinas gigantes e tribos.'),
('Gran Turismo 7', 1, 2022, 'https://exemplo.com/capas/gt7.jpg', 'Simulador de corrida realista.'),
('Final Fantasy XVI', 1, 2023, 'https://exemplo.com/capas/ff16.jpg', 'RPG de acao com historia epica de fantasia.'),

-- Xbox Series X (4 jogos)
('Forza Horizon 5', 2, 2021, 'https://exemplo.com/capas/forza5.jpg', 'Corrida em mundo aberto no Mexico.'),
('Halo Infinite', 2, 2021, 'https://exemplo.com/capas/halo-infinite.jpg', 'FPS de ficcao cientifica com o Master Chief.'),
('Starfield', 2, 2023, 'https://exemplo.com/capas/starfield.jpg', 'RPG espacial de mundo aberto.'),
('Sea of Thieves', 2, 2018, 'https://exemplo.com/capas/sea-of-thieves.jpg', 'Aventura de piratas em mundo compartilhado.'),

-- Nintendo Switch (4 jogos)
('The Legend of Zelda: Tears of the Kingdom', 3, 2023, 'https://exemplo.com/capas/totk.jpg', 'Aventura em mundo aberto nos ceus de Hyrule.'),
('Super Mario Odyssey', 3, 2017, 'https://exemplo.com/capas/mario-odyssey.jpg', 'Plataforma 3D classico do encanador.'),
('Mario Kart 8 Deluxe', 3, 2017, 'https://exemplo.com/capas/mk8-deluxe.jpg', 'Corrida de karts com personagens da Nintendo.'),
('Pokemon Scarlet', 3, 2022, 'https://exemplo.com/capas/pokemon-scarlet.jpg', 'RPG de mundo aberto com criaturas colecionaveis.'),

-- PC (3 jogos)
('Baldur''s Gate 3', 4, 2023, 'https://exemplo.com/capas/bg3.jpg', 'RPG tatico baseado em D&D.'),
('Elden Ring', 4, 2022, 'https://exemplo.com/capas/elden-ring.jpg', 'RPG de acao em mundo aberto brutal.'),
('Celeste', 4, 2018, 'https://exemplo.com/capas/celeste.jpg', 'Plataforma desafiador sobre superacao.');

-- ----------------------------------------------------------
-- JOGO_CATEGORIA (associando jogos a categorias, N:N)
-- ----------------------------------------------------------
INSERT INTO jogo_categoria (jogo_id, categoria_id) VALUES
(1, 2),           -- TLOU2: Aventura
(2, 2), (2, 5),   -- Horizon FW: Aventura, Mundo Aberto
(3, 4),           -- GT7: Corrida
(4, 1),           -- FF16: RPG
(5, 4), (5, 5),   -- Forza Horizon 5: Corrida, Mundo Aberto
(6, 2),           -- Halo Infinite: Aventura
(7, 1), (7, 5),   -- Starfield: RPG, Mundo Aberto
(8, 2),           -- Sea of Thieves: Aventura
(9, 2), (9, 5),   -- Tears of the Kingdom: Aventura, Mundo Aberto
(10, 3),          -- Mario Odyssey: Plataforma
(11, 4),          -- Mario Kart 8: Corrida
(12, 1), (12, 5), -- Pokemon Scarlet: RPG, Mundo Aberto
(13, 1),          -- Baldur's Gate 3: RPG
(14, 1), (14, 5), -- Elden Ring: RPG, Mundo Aberto
(15, 3);          -- Celeste: Plataforma