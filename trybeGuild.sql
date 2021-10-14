DROP DATABASE IF EXISTS TrybeGuild;

CREATE DATABASE TrybeGuild;

USE TrybeGuild;

CREATE TABLE classes(
    id INT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
) engine = InnoDB;

CREATE TABLE armas(
    id INT AUTO_INCREMENT,
    tipo VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
) engine = InnoDB;

CREATE TABLE herois(
    id INT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    `força` TINYINT,
    agilidade TINYINT,
    magia TINYINT,
    classe_id INT,
    `em missão` VARCHAR(5) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (classe_id) REFERENCES classes(id)
) engine = InnoDB;

CREATE TABLE herois_armas(
    heroi_id INT,
    arma_id INT,
    PRIMARY KEY (heroi_id, arma_id),
    FOREIGN KEY (heroi_id) REFERENCES herois(id),
    FOREIGN KEY (arma_id) REFERENCES armas(id)
) engine = InnoDB;

INSERT INTO classes (nome)
VALUES
  ('Guerreiro(a)'),
  ('Mago(a)'),
  ('Ladino(a)'),
  ('Bardo(a)'),
  ('Clérigo(a)'),
  ('Druida'),
  ('Monge'),
  ('Paladino(a)'),
  ('Feiticeiro(a)'),
  ('Arqueiro(a)'),
  ('Necromante'),
  ('Amazona');
  
INSERT INTO armas (tipo)
VALUES
  ('Arco'),
  ('Espada Curta'),
  ('Machado'),
  ('Escudo'),
  ('Adaga'),
  ('Maça'),
  ('Alabarda'),
  ('Flauta'),
  ('Bandolim'),
  ('Cajado'),
  ('Livro de Feitiços'),
  ('Besta'),
  ('Espada Longa'),
  ('Lança'),
  ('Varinha'),
  ('Chicote	'),
  ('Orbe');
  
  INSERT INTO herois (nome, `força`, agilidade, magia, classe_id, `em missão`)
VALUES
  ('Sir Gus Cae IV', 90, 50, 10, 1, "true"),
  ('Ja’ De', 30, 60, 75, 6, "true"),
  ('Princesa Re', 15, 30, 95, 2, "true"),
  ('Lobo', 40, 60, 75, 6, "false"),
  ('Lady Bora', 45, 75, 35, 10, "false"),
  ('Yensen', 90, 60, 15, 1, "true"),
  ('Ritti', 25, 70, 30, 3, "false"),
  ('Pierre', 15, 30, 95, 9, "true"),
  ('Nahto', 20, 90, 10, 7, "false"),
  ('Rafa VI', 90, 45, 5, 1, "true"),
  ('Lady Sil', 50, 50, 50, 5, "false"),
  ('Luh Luppo', 15, 30, 95, 2, "false"),
  ('Giselle Sant', 70, 70, 20, 12, "true"),
  ('Izaak', 30, 60, 80, 4, "true"),
  ('Barão Ronald', 25, 70, 30, 3, "false");
  
    INSERT INTO herois_armas (heroi_id, arma_id)
VALUES
  (1, 13),
  (2, 10),
  (13, 14),
  (15, 2),
  (13, 13),
  (4, 14),
  (3, 11),
  (14, 9),
  (10, 4),
  (4, 2),
  (7, 12),
  (8, 15),
  (11, 4),
  (13, 6),
  (13, 1),
  (15, 5),
  (14, 5),
  (6, 13),
  (3, 15),
  (2, 1),
  (10, 1),
  (5, 1),
  (12, 11),
  (13, 2),
  (15, 1),
  (10, 12),
  (11, 6),
  (12, 5),
  (14, 1),
  (7, 2),
  (4, 1),
  (3, 10),
  (6, 1),
  (7, 5),
  (10, 2),
  (6, 3),
  (8, 11);
