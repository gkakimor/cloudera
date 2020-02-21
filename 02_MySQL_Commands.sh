-- No terminal:

-- Conectar MySQL:
mysql -u root -p -h localhost -P 3306
cloudera

-- Verificar serviço do MySQL
sudo service mysqld status

show databases;
use <<DATABASE>>;
show tables;
SELECT COUNT(1) FROM <<TABLE>>;
DESCRIBE <<TABLE>>;
exit;