mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| cricket_records    |
| information_schema |
| lco_films          |
| movie_database     |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
7 rows in set (0.00 sec)

mysql> use lco_films;
Database changed
mysql> show tables;
+---------------------+
| Tables_in_lco_films |
+---------------------+
| actor               |
| address             |
| category            |
| city                |
| country             |
| film                |
| film_actor          |
| film_category       |
| language            |
+---------------------+
9 rows in set (0.00 sec)

mysql> select * from actor limit 15;
+----------+------------+--------------+------------+---------------------+
| actor_id | first_name | last_name    | address_id | last_update         |
+----------+------------+--------------+------------+---------------------+
|        1 | PENELOPE   | GUINESS      |          1 | 2020-07-30 18:07:51 |
|        2 | NICK       | WAHLBERG     |          4 | 2020-07-30 18:07:51 |
|        3 | ED         | CHASE        |          2 | 2020-07-30 18:07:51 |
|        4 | JENNIFER   | DAVIS        |          3 | 2020-07-30 18:07:51 |
|        5 | JOHNNY     | LOLLOBRIGIDA |          5 | 2020-07-30 18:07:51 |
|        6 | BETTE      | NICHOLSON    |          7 | 2020-07-30 18:07:51 |
|        7 | GRACE      | MOSTEL       |          6 | 2020-07-30 18:07:51 |
|        8 | MATTHEW    | JOHANSSON    |          8 | 2020-07-30 18:07:51 |
|        9 | JOE        | SWANK        |         10 | 2020-07-30 18:07:51 |
|       10 | CHRISTIAN  | GABLE        |          9 | 2020-07-30 18:07:51 |
|       11 | ZERO       | CAGE         |         11 | 2020-07-30 18:07:51 |
|       12 | KARL       | BERRY        |         13 | 2020-07-30 18:07:51 |
|       13 | UMA        | WOOD         |        110 | 2020-07-30 18:07:51 |
|       14 | VIVIEN     | BERGEN       |         25 | 2020-07-30 18:07:51 |
|       15 | CUBA       | OLIVIER      |         40 | 2020-07-30 18:07:51 |
+----------+------------+--------------+------------+---------------------+
15 rows in set (0.00 sec)

mysql> select * from address limit 15;
+------------+------------------------------------+----------+----------------+---------+-------------+--------------+---------------------+
| address_id | address                            | address2 | district       | city_id | postal_code | phone        | last_update         |
+------------+------------------------------------+----------+----------------+---------+-------------+--------------+---------------------+
|          1 | 47 MySakila Drive                  | NULL     | Alberta        |     300 |             |              | 2020-07-30 18:07:51 |
|          2 | 28 MySQL Boulevard                 | NULL     | QLD            |     576 |             |              | 2020-07-30 18:07:51 |
|          3 | 23 Workhaven Lane                  | NULL     | Alberta        |     300 |             | 14033335568  | 2020-07-30 18:07:51 |
|          4 | 1411 Lillydale Drive               | NULL     | QLD            |     576 |             | 6172235589   | 2020-07-30 18:07:51 |
|          5 | 1913 Hanoi Way                     |          | Nagasaki       |     463 | 35200       | 28303384290  | 2020-07-30 18:07:51 |
|          6 | 1121 Loja Avenue                   |          | California     |     449 | 17886       | 838635286649 | 2020-07-30 18:07:51 |
|          7 | 692 Joliet Street                  |          | Attika         |      38 | 83579       | 448477190408 | 2020-07-30 18:07:51 |
|          8 | 1566 Inegl Manor                   |          | Mandalay       |     349 | 53561       | 705814003527 | 2020-07-30 18:07:51 |
|          9 | 53 Idfu Parkway                    |          | Nantou         |     361 | 42399       | 10655648674  | 2020-07-30 18:07:51 |
|         10 | 1795 Santiago de Compostela Way    |          | Texas          |     295 | 18743       | 860452626434 | 2020-07-30 18:07:51 |
|         11 | 900 Santiago de Compostela Parkway |          | Central Serbia |     280 | 93896       | 716571220373 | 2020-07-30 18:07:51 |
|         12 | 478 Joliet Way                     |          | Hamilton       |     200 | 77948       | 657282285970 | 2020-07-30 18:07:51 |
|         13 | 613 Korolev Drive                  |          | Masqat         |     329 | 45844       | 380657522649 | 2020-07-30 18:07:51 |
|         14 | 1531 Sal Drive                     |          | Esfahan        |     162 | 53628       | 648856936185 | 2020-07-30 18:07:51 |
|         15 | 1542 Tarlac Parkway                |          | Kanagawa       |     440 | 1027        | 635297277345 | 2020-07-30 18:07:51 |
+------------+------------------------------------+----------+----------------+---------+-------------+--------------+---------------------+
15 rows in set (0.00 sec)

mysql> select first_name, last_name, address FROM actor JOIN address ON actor.address_id = address.address_id limit 15;
+------------+--------------+----------------------------------------+
| first_name | last_name    | address                                |
+------------+--------------+----------------------------------------+
| PENELOPE   | GUINESS      | 47 MySakila Drive                      |
| NICK       | WAHLBERG     | 1411 Lillydale Drive                   |
| ED         | CHASE        | 28 MySQL Boulevard                     |
| JENNIFER   | DAVIS        | 23 Workhaven Lane                      |
| JOHNNY     | LOLLOBRIGIDA | 1913 Hanoi Way                         |
| BETTE      | NICHOLSON    | 692 Joliet Street                      |
| GRACE      | MOSTEL       | 1121 Loja Avenue                       |
| MATTHEW    | JOHANSSON    | 1566 Inegl Manor                       |
| JOE        | SWANK        | 1795 Santiago de Compostela Way        |
| CHRISTIAN  | GABLE        | 53 Idfu Parkway                        |
| ZERO       | CAGE         | 900 Santiago de Compostela Parkway     |
| KARL       | BERRY        | 613 Korolev Drive                      |
| UMA        | WOOD         | 1867 San Juan Bautista Tuxtepec Avenue |
| VIVIEN     | BERGEN       | 262 A Corua (La Corua) Parkway         |
| CUBA       | OLIVIER      | 334 Munger (Monghyr) Lane              |
+------------+--------------+----------------------------------------+
15 rows in set (0.00 sec)

mysql> select * from actor JOIN address ON actor.address_id = address.address_id limit 20;
+----------+------------+--------------+------------+---------------------+------------+----------------------------------------+----------+----------------+---------+-------------+--------------+---------------------+
| actor_id | first_name | last_name    | address_id | last_update         | address_id | address                                | address2 | district       | city_id | postal_code | phone        | last_update         |
+----------+------------+--------------+------------+---------------------+------------+----------------------------------------+----------+----------------+---------+-------------+--------------+---------------------+
|        1 | PENELOPE   | GUINESS      |          1 | 2020-07-30 18:07:51 |          1 | 47 MySakila Drive                      | NULL     | Alberta        |     300 |             |              | 2020-07-30 18:07:51 |
|        2 | NICK       | WAHLBERG     |          4 | 2020-07-30 18:07:51 |          4 | 1411 Lillydale Drive                   | NULL     | QLD            |     576 |             | 6172235589   | 2020-07-30 18:07:51 |
|        3 | ED         | CHASE        |          2 | 2020-07-30 18:07:51 |          2 | 28 MySQL Boulevard                     | NULL     | QLD            |     576 |             |              | 2020-07-30 18:07:51 |
|        4 | JENNIFER   | DAVIS        |          3 | 2020-07-30 18:07:51 |          3 | 23 Workhaven Lane                      | NULL     | Alberta        |     300 |             | 14033335568  | 2020-07-30 18:07:51 |
|        5 | JOHNNY     | LOLLOBRIGIDA |          5 | 2020-07-30 18:07:51 |          5 | 1913 Hanoi Way                         |          | Nagasaki       |     463 | 35200       | 28303384290  | 2020-07-30 18:07:51 |
|        6 | BETTE      | NICHOLSON    |          7 | 2020-07-30 18:07:51 |          7 | 692 Joliet Street                      |          | Attika         |      38 | 83579       | 448477190408 | 2020-07-30 18:07:51 |
|        7 | GRACE      | MOSTEL       |          6 | 2020-07-30 18:07:51 |          6 | 1121 Loja Avenue                       |          | California     |     449 | 17886       | 838635286649 | 2020-07-30 18:07:51 |
|        8 | MATTHEW    | JOHANSSON    |          8 | 2020-07-30 18:07:51 |          8 | 1566 Inegl Manor                       |          | Mandalay       |     349 | 53561       | 705814003527 | 2020-07-30 18:07:51 |
|        9 | JOE        | SWANK        |         10 | 2020-07-30 18:07:51 |         10 | 1795 Santiago de Compostela Way        |          | Texas          |     295 | 18743       | 860452626434 | 2020-07-30 18:07:51 |
|       10 | CHRISTIAN  | GABLE        |          9 | 2020-07-30 18:07:51 |          9 | 53 Idfu Parkway                        |          | Nantou         |     361 | 42399       | 10655648674  | 2020-07-30 18:07:51 |
|       11 | ZERO       | CAGE         |         11 | 2020-07-30 18:07:51 |         11 | 900 Santiago de Compostela Parkway     |          | Central Serbia |     280 | 93896       | 716571220373 | 2020-07-30 18:07:51 |
|       12 | KARL       | BERRY        |         13 | 2020-07-30 18:07:51 |         13 | 613 Korolev Drive                      |          | Masqat         |     329 | 45844       | 380657522649 | 2020-07-30 18:07:51 |
|       13 | UMA        | WOOD         |        110 | 2020-07-30 18:07:51 |        110 | 1867 San Juan Bautista Tuxtepec Avenue |          | Ivanovo        |     225 | 78311       | 547003310357 | 2020-07-30 18:07:51 |
|       14 | VIVIEN     | BERGEN       |         25 | 2020-07-30 18:07:51 |         25 | 262 A Corua (La Corua) Parkway         |          | Dhaka          |     525 | 34418       | 892775750063 | 2020-07-30 18:07:51 |
|       15 | CUBA       | OLIVIER      |         40 | 2020-07-30 18:07:51 |         40 | 334 Munger (Monghyr) Lane              |          | Markazi        |      31 | 38145       | 481183273622 | 2020-07-30 18:07:51 |
|       16 | FRED       | COSTNER      |         65 | 2020-07-30 18:07:51 |         65 | 915 Ponce Place                        |          | Basel-Stadt    |      56 | 83980       | 1395251317   | 2020-07-30 18:07:51 |
|       17 | HELEN      | VOIGHT       |         77 | 2020-07-30 18:07:51 |         77 | 1947 Poos de Caldas Boulevard          |          | Chiayi         |     114 | 60951       | 427454485876 | 2020-07-30 18:07:51 |
|       18 | DAN        | TORN         |        414 | 2020-07-30 18:07:51 |        414 | 1936 Lapu-Lapu Parkway                 |          | Bauchi & Gombe |     141 | 7122        | 653436985797 | 2020-07-30 18:07:51 |
|       19 | BOB        | FAWCETT      |        125 | 2020-07-30 18:07:51 |        125 | 211 Chiayi Drive                       |          | Uttar Pradesh  |     164 | 58186       | 665993880048 | 2020-07-30 18:07:51 |
|       20 | LUCILLE    | TRACY        |         80 | 2020-07-30 18:07:51 |         80 | 602 Paarl Street                       |          | Pavlodar       |     402 | 98889       | 896314772871 | 2020-07-30 18:07:51 |
+----------+------------+--------------+------------+---------------------+------------+----------------------------------------+----------+----------------+---------+-------------+--------------+---------------------+
20 rows in set (0.00 sec)

mysql>
mysql> show tables;
+---------------------+
| Tables_in_lco_films |
+---------------------+
| actor               |
| address             |
| category            |
| city                |
| country             |
| film                |
| film_actor          |
| film_category       |
| language            |
+---------------------+
9 rows in set (0.00 sec)

mysql> select * from actor limit 5;
+----------+------------+--------------+------------+---------------------+
| actor_id | first_name | last_name    | address_id | last_update         |
+----------+------------+--------------+------------+---------------------+
|        1 | PENELOPE   | GUINESS      |          1 | 2020-07-30 18:07:51 |
|        2 | NICK       | WAHLBERG     |          4 | 2020-07-30 18:07:51 |
|        3 | ED         | CHASE        |          2 | 2020-07-30 18:07:51 |
|        4 | JENNIFER   | DAVIS        |          3 | 2020-07-30 18:07:51 |
|        5 | JOHNNY     | LOLLOBRIGIDA |          5 | 2020-07-30 18:07:51 |
+----------+------------+--------------+------------+---------------------+
5 rows in set (0.00 sec)

mysql> select * from address limit 5;
+------------+----------------------+----------+----------+---------+-------------+-------------+---------------------+
| address_id | address              | address2 | district | city_id | postal_code | phone       | last_update         |
+------------+----------------------+----------+----------+---------+-------------+-------------+---------------------+
|          1 | 47 MySakila Drive    | NULL     | Alberta  |     300 |             |             | 2020-07-30 18:07:51 |
|          2 | 28 MySQL Boulevard   | NULL     | QLD      |     576 |             |             | 2020-07-30 18:07:51 |
|          3 | 23 Workhaven Lane    | NULL     | Alberta  |     300 |             | 14033335568 | 2020-07-30 18:07:51 |
|          4 | 1411 Lillydale Drive | NULL     | QLD      |     576 |             | 6172235589  | 2020-07-30 18:07:51 |
|          5 | 1913 Hanoi Way       |          | Nagasaki |     463 | 35200       | 28303384290 | 2020-07-30 18:07:51 |
+------------+----------------------+----------+----------+---------+-------------+-------------+---------------------+
5 rows in set (0.00 sec)

mysql> select * from city limit 5;
+---------+--------------------+------------+---------------------+
| city_id | city               | country_id | last_update         |
+---------+--------------------+------------+---------------------+
|       1 | A Corua (La Corua) |         87 | 2020-07-30 18:07:52 |
|       2 | Abha               |         82 | 2020-07-30 18:07:52 |
|       3 | Abu Dhabi          |        101 | 2020-07-30 18:07:52 |
|       4 | Acua               |         60 | 2020-07-30 18:07:52 |
|       5 | Adana              |         97 | 2020-07-30 18:07:52 |
+---------+--------------------+------------+---------------------+
5 rows in set (0.00 sec)

mysql> select first_name, last_name, address, city FROM actor JOIN address JOIN city ON actor.address_id = address.address_id and address.address_id = city.city_id limit 5;
+------------+--------------+----------------------+--------------------+
| first_name | last_name    | address              | city               |
+------------+--------------+----------------------+--------------------+
| PENELOPE   | GUINESS      | 47 MySakila Drive    | A Corua (La Corua) |
| NICK       | WAHLBERG     | 1411 Lillydale Drive | Acua               |
| ED         | CHASE        | 28 MySQL Boulevard   | Abha               |
| JENNIFER   | DAVIS        | 23 Workhaven Lane    | Abu Dhabi          |
| JOHNNY     | LOLLOBRIGIDA | 1913 Hanoi Way       | Adana              |
+------------+--------------+----------------------+--------------------+
5 rows in set (0.00 sec)

mysql> select first_name, last_name, address, city FROM actor JOIN address JOIN city ON actor.address_id = address.address_id and address.city_id = city.city_id limit 5;
+------------+--------------+----------------------+------------+
| first_name | last_name    | address              | city       |
+------------+--------------+----------------------+------------+
| PENELOPE   | GUINESS      | 47 MySakila Drive    | Lethbridge |
| NICK       | WAHLBERG     | 1411 Lillydale Drive | Woodridge  |
| ED         | CHASE        | 28 MySQL Boulevard   | Woodridge  |
| JENNIFER   | DAVIS        | 23 Workhaven Lane    | Lethbridge |
| JOHNNY     | LOLLOBRIGIDA | 1913 Hanoi Way       | Sasebo     |
+------------+--------------+----------------------+------------+
5 rows in set (0.00 sec)

mysql>
