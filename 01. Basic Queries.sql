Enter password: **********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 36
Server version: 8.0.34 MySQL Community Server - GPL

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| college            |
| cricket_records    |
| information_schema |
| lco_films          |
| movie_database     |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
8 rows in set (0.00 sec)

mysql> CREATE DATABASE pk;
Query OK, 1 row affected (0.08 sec)

mysql> DROP DATABASE pk;
Query OK, 0 rows affected (0.06 sec)

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| college            |
| cricket_records    |
| information_schema |
| lco_films          |
| movie_database     |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
8 rows in set (0.00 sec)

mysql> USE college;
Database changed
mysql> CREATE TABLE students (first_name varchar(20), last_name varchar(20), uid integer, address varchar(30));
Query OK, 0 rows affected (0.13 sec)

mysql> show tables;
+-------------------+
| Tables_in_college |
+-------------------+
| students          |
+-------------------+
1 row in set (0.00 sec)

mysql> INSERT INTO students (first_name, last_name, uid, address) values ("Priyamanshu", "Mehta", 17266, "Madhepura");
Query OK, 1 row affected (0.09 sec)

mysql> INSERT INTO students (first_name, last_name, uid, address) values ("Lovyansh", "Dhanraj", 12646, "Saharsha");
Query OK, 1 row affected (0.07 sec)

mysql> INSERT INTO students (first_name, last_name, uid, address) values ("Aditya", "Kumar", 50103, "Delhi");
Query OK, 1 row affected (0.09 sec)

mysql> INSERT INTO students (first_name, last_name, uid, address) values ("Nikhil", "Kumar", 50090, "Punjab");
Query OK, 1 row affected (0.07 sec)

mysql> SHOW TABLES;
+-------------------+
| Tables_in_college |
+-------------------+
| students          |
+-------------------+
1 row in set (0.00 sec)

mysql> SELECT * FROM students;
+-------------+-----------+-------+-----------+
| first_name  | last_name | uid   | address   |
+-------------+-----------+-------+-----------+
| Priyamanshu | Mehta     | 17266 | Madhepura |
| Lovyansh    | Dhanraj   | 12646 | Saharsha  |
| Aditya      | Kumar     | 50103 | Delhi     |
| Nikhil      | Kumar     | 50090 | Punjab    |
+-------------+-----------+-------+-----------+
4 rows in set (0.00 sec)

mysql> SELECT uid and address FROM students;
+-----------------+
| uid and address |
+-----------------+
|               0 |
|               0 |
|               0 |
|               0 |
+-----------------+
4 rows in set, 4 warnings (0.06 sec)

mysql> SELECT uid, address FROM students;
+-------+-----------+
| uid   | address   |
+-------+-----------+
| 17266 | Madhepura |
| 12646 | Saharsha  |
| 50103 | Delhi     |
| 50090 | Punjab    |
+-------+-----------+
4 rows in set (0.00 sec)

mysql> SELECT first_name FROM students;
+-------------+
| first_name  |
+-------------+
| Priyamanshu |
| Lovyansh    |
| Aditya      |
| Nikhil      |
+-------------+
4 rows in set (0.00 sec)

mysql>
