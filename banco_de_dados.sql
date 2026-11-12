create database jogos_api;

use jogos_api;

CREATE TABLE generos (
  id int  PRIMARY KEY AUTO_INCREMENT,
  nome varchar(200) NOT NULL,
  descricao text NOT NULL
);

CREATE TABLE games (
  id int PRIMARY KEY AUTO_INCREMENT,
  nome varchar(200) NOT NULL,
  desenvolvedora varchar(200) NOT NULL,
  sinopse text NOT NULL,
  id_genero int NOT NULL,
  foreign key (id_genero) references generos(id)
);
