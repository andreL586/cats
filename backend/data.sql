DROP TABLE IF EXISTS `shop_products`;

CREATE TABLE `shop_products` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `article_number` int DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` text,
  `price` decimal(15,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `shop_products` (`id`, `article_number`, `name`, `description`, `price`, `image`)
VALUES
    (1,3040,'Poster 30 x 40 cm','Ein Katzenposter in 30 x 40 cm',5.00,'https://placekitten.com/300/400'),
    (2,5070,'Poster 50 x 70 cm','Ein Katzenposter in 50 x 70 cm',7.50,'https://placekitten.com/500/700'),
    (3,2130,'Poster 21 x 30 cm','Ein Katzenposter in 21 x 30 cm',4.50,'https://placekitten.com/210/300'),
    (4,1318,'Poster 13 x 18 cm','Ein Katzenposter in 13 x 18 cm',2.50,'https://placekitten.com/130/180');


DROP TABLE IF EXISTS `fe_users`;

CREATE TABLE `fe_users` (
                                 `id` int unsigned NOT NULL AUTO_INCREMENT,
                                 `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                                 `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                                 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `fe_users` (`id`, `name`, `password`)
VALUES
    (1,'shop', 'shop');
