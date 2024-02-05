/* Create Database */

CREATE DATABASE  IF NOT EXISTS `Sales_Atlik_Hardware`

/* Using Database */

USE `Sales_Atlik_Hardware`;

/* Create Table Customers */

DROP TABLE IF EXISTS `Customers`;
CREATE TABLE `Customers` (
  `customer_code` varchar(45) NOT NULL,
  `custmer_name` varchar(45) DEFAULT NULL,
  `customer_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`customer_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/* Create Table Products */

DROP TABLE IF EXISTS `Products`;
CREATE TABLE `Products` (
  `product_code` varchar(45) NOT NULL,
  `product_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`product_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/* Create Table Markets */

DROP TABLE IF EXISTS `Markets`;
CREATE TABLE `Markets` (
  `markets_code` varchar(45) NOT NULL,
  `markets_name` varchar(45) DEFAULT NULL,
  `zone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`markets_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/* Create Table Transactions */

DROP TABLE IF EXISTS `Transactions`;
CREATE TABLE `Transactions` (
  `product_code` varchar(45) DEFAULT NULL,
  `customer_code` varchar(45) DEFAULT NULL,
  `market_code` varchar(45) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `sales_qty` int DEFAULT NULL,
  `sales_amount` double DEFAULT NULL,
  `currency` varchar(45) DEFAULT NULL,
  `profit_margin_percentage` double DEFAULT NULL,
  `profit_margin` double DEFAULT NULL,
  `cost_price` double DEFAULT NULL  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/* Create Table Date */

DROP TABLE IF EXISTS `Date`;
CREATE TABLE `Date` (
  `date` date NOT NULL,
  `cy_date` date DEFAULT NULL,
  `year` int DEFAULT NULL,
  `month_name` varchar(45) DEFAULT NULL,
  `date_yy_mmm` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;