
CREATE DATABASE `orderservice` 


CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordernumber` varchar(45) DEFAULT NULL,
  `confirmationnumber` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ordernumber_UNIQUE` (`ordernumber`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;


CREATE TABLE `orderservice`.`lineitems` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `orderItemNumber` VARCHAR(45) NULL,
  `description` VARCHAR(45) NULL,
  `orderid` INT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `orderid`
    FOREIGN KEY (`id`)
    REFERENCES `orderservice`.`orders` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
