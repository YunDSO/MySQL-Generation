CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
id INT AUTO_INCREMENT,
descricao VARCHAR (255),
subclasses VARCHAR (255),
PRIMARY KEY (id)
);

INSERT INTO tb_classes(descricao,subclasses)
VALUES ("Bruxo","Diabrete");
INSERT INTO tb_classes(descricao,subclasses)
VALUES ("Guerreiro","Pirata");
INSERT INTO tb_classes(descricao,subclasses)
VALUES ("Sacerdote","Ressucitar");
INSERT INTO tb_classes(descricao,subclasses)
VALUES ("Caçador","Mech");
INSERT INTO tb_classes(descricao,subclasses)
VALUES ("Mago","Feitiços");

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255),
elo VARCHAR (255),
poderheroico VARCHAR (255),
vida INT,
classe INT,
PRIMARY KEY(id),
FOREIGN KEY (classe) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens(nome,elo,poderheroico,vida,classe)
VALUES ("Guldan","Lenda","Gaste dois de vida e compre um card",40,1);
INSERT INTO tb_personagens(nome,elo,poderheroico,vida,classe)
VALUES ("Garrosh","Platina","Ganhe dois de armadura",30,2);
INSERT INTO tb_personagens(nome,elo,poderheroico,vida,classe)
VALUES ("Anduin","Prata","Restaure dois de vida",10,3);
INSERT INTO tb_personagens(nome,elo,poderheroico,vida,classe)
VALUES ("Rexxar","Ouro","Dois de dano ao oponente",20,4);
INSERT INTO tb_personagens(nome,elo,poderheroico,vida,classe)
VALUES ("Jaina","Diamante","Cause um de dano ao oponente",35,5);
INSERT INTO tb_personagens(nome,elo,poderheroico,vida,classe)
VALUES ("Lord Jaraxxus","Lenda","Evoque um demonio",40,1);
INSERT INTO tb_personagens(nome,elo,poderheroico,vida,classe)
VALUES ("Magister Aurafirme","Diamante","Cause dois de dano",35,5);
INSERT INTO tb_personagens(nome,elo,poderheroico,vida,classe)
VALUES ("Rokara, a Valorosa","Diamante","Cause dois de dano, receba armadura",30,2);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE vida > 30;

SELECT * FROM tb_personagens WHERE vida BETWEEN 20 AND 35 ORDER BY vida;

SELECT * FROM tb_personagens WHERE nome like "%a%";

SELECT nome,elo,poderheroico,vida,tb_classes.descricao,tb_classes.subclasses
FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe;