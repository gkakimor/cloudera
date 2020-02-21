-- Conectar no MySQL

-- Executar os comandos

CREATE DATABASE nyse;

CREATE USER 'nyse_user' IDENTIFIED BY 'nyse_password';

GRANT ALL ON nyse.* TO nyse_user;
GRANT FILE ON *.* TO nyse_user;
GRANT SUPER ON *.* TO nyse_user;

FLUSH PRIVILEGES;

USE nyse;

CREATE TABLE 'stock_eod' (
  'stockticker' varchar(10) NOT NULL DEFAULT '',
  'tradedate' varchar(30) NOT NULL DEFAULT '',
  'openprice' decimal(10,2) DEFAULT NULL,
  'highprice' decimal(10,2) DEFAULT NULL,
  'lowprice' decimal(10,2) DEFAULT NULL,
  'closeprice' decimal(10,2) DEFAULT NULL,
  'volume' bigint(20) DEFAULT NULL,
  PRIMARY KEY ('stockticker','tradedate')
);