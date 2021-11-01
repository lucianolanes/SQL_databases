DROP DATABASE IF EXISTS biblioteca_magica;

CREATE DATABASE biblioteca_magica;

USE biblioteca_magica;

CREATE TABLE autores(
    id INT AUTO_INCREMENT,
    `nome` VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
) engine = InnoDB;

CREATE TABLE `secao`(
    id INT AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
) engine = InnoDB;

CREATE TABLE `livro`(
    id INT AUTO_INCREMENT,
    `titulo` VARCHAR(200) NOT NULL,
    autor_id INT,
	estoque INT,
    `secao_id` INT,
    PRIMARY KEY (id),
    FOREIGN KEY (autor_id) REFERENCES autores(id),
    FOREIGN KEY (`secao_id`) REFERENCES `secao`(id)
) engine = InnoDB;

INSERT INTO autores (nome)
VALUES
  ('Alvo Dumbledore'),
  ('Jaina Proudmoore'),
  ('Willow Rosenberg'),
  ('Agatha Harkness'),
  ('Rei Gelado');

INSERT INTO `secao` (titulo)
VALUES
  ('Proteção e Defesa'),
  ('Elemental'),
  ('Feitiços Básicos'),
  ('Arte das Trevas'),
  ('Necromancia');

INSERT INTO `livro` (`titulo`, autor_id, estoque, `secao_id`)
VALUES
  ('Como dominar a magia elemental', 2, 100, 2),
  ('Defesa contra arte das trevas', 1, 150, 1),
  ('Fundamentos da feitiçaria', 4, 97, 3),
  ('Eu, gelado', 5, 200, NULL),
  ('Magia contemporânea', 3, 100, 3),
  ('Poções e suas utilidades', 3, 100, 3),
  ('Como capturar seu dragão', 2, 97, NULL);
