CREATE TABLE `user` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `nombre` varchar(255),
  `email` vachar UNIQUE NOT NULL,
  `password` varchar(255) NOT NULL,
  `age` int
);

CREATE TABLE `Entradas` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(255),
  `id_author` int,
  `content` varchar(255),
  `id_categorias` int,
  `id_user` int,
  `id_comment` int
);

CREATE TABLE `categorias` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255)
);

CREATE TABLE `comentarios` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `comment` varchar(255),
  `id_user` int
);

CREATE TABLE `author` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255)
);

ALTER TABLE `comentarios` ADD FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

ALTER TABLE `Entradas` ADD FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

ALTER TABLE `Entradas` ADD FOREIGN KEY (`id_author`) REFERENCES `author` (`id`);

ALTER TABLE `Entradas` ADD FOREIGN KEY (`id_categorias`) REFERENCES `categorias` (`id`);

ALTER TABLE `Entradas` ADD FOREIGN KEY (`id_comment`) REFERENCES `comentarios` (`id`);
