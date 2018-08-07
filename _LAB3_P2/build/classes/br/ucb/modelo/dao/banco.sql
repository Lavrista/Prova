CREATE DATABASE copa2018;

USE copa2018;

CREATE TABLE selecao (
  id int(10) unsigned NOT NULL AUTO_INCREMENT,
  nome varchar(50) NOT NULL,
  grupo varchar(1) NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO selecao(nome, grupo) VALUES ("Russia", "A");
INSERT INTO selecao(nome, grupo) VALUES ("Egito", "A");
INSERT INTO selecao(nome, grupo) VALUES ("Uruguai", "A");
INSERT INTO selecao(nome, grupo) VALUES ("Arabia Saudita", "A");

INSERT INTO selecao(nome, grupo) VALUES ("Espanha", "B");
INSERT INTO selecao(nome, grupo) VALUES ("Ira", "B");
INSERT INTO selecao(nome, grupo) VALUES ("Marrocos", "B");
INSERT INTO selecao(nome, grupo) VALUES ("Portugal", "B");

INSERT INTO selecao(nome, grupo) VALUES ("Australia", "C");
INSERT INTO selecao(nome, grupo) VALUES ("Dinamarca", "C");
INSERT INTO selecao(nome, grupo) VALUES ("Franca", "C");
INSERT INTO selecao(nome, grupo) VALUES ("Peru", "C");

INSERT INTO selecao(nome, grupo) VALUES ("Argentina", "D");
INSERT INTO selecao(nome, grupo) VALUES ("Croacia", "D");
INSERT INTO selecao(nome, grupo) VALUES ("Islandia", "D");
INSERT INTO selecao(nome, grupo) VALUES ("Nigeria", "D");

INSERT INTO selecao(nome, grupo) VALUES ("Brasil", "E");
INSERT INTO selecao(nome, grupo) VALUES ("Costa Rica", "E");
INSERT INTO selecao(nome, grupo) VALUES ("Servia", "E");
INSERT INTO selecao(nome, grupo) VALUES ("Suica", "E");

INSERT INTO selecao(nome, grupo) VALUES ("Alemanha", "F");
INSERT INTO selecao(nome, grupo) VALUES ("Coreia do Sul", "F");
INSERT INTO selecao(nome, grupo) VALUES ("Mexico", "F");
INSERT INTO selecao(nome, grupo) VALUES ("Suecia", "F");

INSERT INTO selecao(nome, grupo) VALUES ("Belgica", "G");
INSERT INTO selecao(nome, grupo) VALUES ("Inglaterra", "G");
INSERT INTO selecao(nome, grupo) VALUES ("Panama", "G");
INSERT INTO selecao(nome, grupo) VALUES ("Tunisia", "G");

INSERT INTO selecao(nome, grupo) VALUES ("Colombia", "H");
INSERT INTO selecao(nome, grupo) VALUES ("Japao", "H");
INSERT INTO selecao(nome, grupo) VALUES ("Polonia", "H");
INSERT INTO selecao(nome, grupo) VALUES ("Senegal", "H");


CREATE TABLE jogos (
  id int(10) unsigned NOT NULL AUTO_INCREMENT,
  idSelecao1 int(10) unsigned NOT NULL,
  golSelecao1 int unsigned NOT NULL,
  idSelecao2 int(10) unsigned NOT NULL,
  golSelecao2 int unsigned NOT NULL,
  ocorreu boolean DEFAULT NULL,
  dia datetime NOT NULL,
  PRIMARY KEY (id),
  KEY fk_selecao1(idSelecao1),
  KEY fk_selecao2(idSelecao2),
  CONSTRAINT fk_selecao1 FOREIGN KEY(idSelecao1) REFERENCES selecao(id),
  CONSTRAINT fk_selecao2 FOREIGN KEY(idSelecao2) REFERENCES selecao(id)
);

INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (1, 4, "2018-06-14", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (2, 3, "2018-06-15", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (7, 6, "2018-06-15", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (8, 5, "2018-06-15", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (11, 9, "2018-06-16", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (12, 10, "2018-06-16", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (13, 15, "2018-06-16", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (14, 16, "2018-06-16", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (18, 19, "2018-06-17", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (17, 20, "2018-06-17", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (21, 23, "2018-06-17", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (24, 22, "2018-06-18", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (25, 27, "2018-06-18", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (28, 26, "2018-06-18", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (31, 32, "2018-06-19", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (29, 30, "2018-06-19", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (1, 2, "2018-06-19", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (3, 4, "2018-06-20", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (8, 7, "2018-06-20", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (6, 5, "2018-06-20", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (11, 12, "2018-06-21", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (10, 9, "2018-06-21", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (13, 14, "2018-06-21", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (16, 15, "2018-06-22", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (17, 18, "2018-06-22", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (19, 20, "2018-06-22", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (21, 24, "2018-06-23", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (22, 23, "2018-06-23", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (25, 28, "2018-06-23", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (26, 27, "2018-06-24", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (30, 32, "2018-06-24", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (31, 29, "2018-06-24", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (3, 1, "2018-06-25", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (4, 2, "2018-06-25", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (6, 8, "2018-06-25", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (5, 7, "2018-06-25", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (9, 12, "2018-06-26", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (10, 11, "2018-06-26", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (16, 13, "2018-06-26", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (15, 14, "2018-06-26", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (20, 18, "2018-06-27", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (19, 17, "2018-06-27", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (23, 24, "2018-06-27", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (22, 21, "2018-06-27", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (26, 25, "2018-06-28", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (27, 28, "2018-06-28", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (30, 31, "2018-06-28", false, 0, 0);
INSERT INTO jogos(idSelecao1, idSelecao2, dia, ocorreu, golSelecao1, golSelecao2) VALUES (32, 29, "2018-06-28", false, 0, 0);
