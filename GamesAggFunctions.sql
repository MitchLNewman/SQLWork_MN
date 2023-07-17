mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| game_shop          |
| information_schema |
| movielens          |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
8 rows in set (0.00 sec)

mysql> USE WORLD
Database changed
mysql> SHOW TABLES;
+-----------------+
| Tables_in_world |
+-----------------+
| city            |
| country         |
| countrylanguage |
+-----------------+
3 rows in set (0.00 sec)

mysql> DESC city;
+-------------+----------+------+-----+---------+----------------+
| Field       | Type     | Null | Key | Default | Extra          |
+-------------+----------+------+-----+---------+----------------+
| ID          | int      | NO   | PRI | NULL    | auto_increment |
| Name        | char(35) | NO   |     |         |                |
| CountryCode | char(3)  | NO   | MUL |         |                |
| District    | char(20) | NO   |     |         |                |
| Population  | int      | NO   |     | 0       |                |
+-------------+----------+------+-----+---------+----------------+
5 rows in set (0.00 sec)

mysql> DESC country;
+----------------+---------------------------------------------------------------------------------------+------+-----+---------+-------+
| Field          | Type                                                                                  | Null | Key | Default | Extra |
+----------------+---------------------------------------------------------------------------------------+------+-----+---------+-------+
| Code           | char(3)                                                                               | NO   | PRI |         |       |
| Name           | char(52)                                                                              | NO   |     |         |       |
| Continent      | enum('Asia','Europe','North America','Africa','Oceania','Antarctica','South America') | NO   |     | Asia    |       |
| Region         | char(26)                                                                              | NO   |     |         |       |
| SurfaceArea    | decimal(10,2)                                                                         | NO   |     | 0.00    |       |
| IndepYear      | smallint                                                                              | YES  |     | NULL    |       |
| Population     | int                                                                                   | NO   |     | 0       |       |
| LifeExpectancy | decimal(3,1)                                                                          | YES  |     | NULL    |       |
| GNP            | decimal(10,2)                                                                         | YES  |     | NULL    |       |
| GNPOld         | decimal(10,2)                                                                         | YES  |     | NULL    |       |
| LocalName      | char(45)                                                                              | NO   |     |         |       |
| GovernmentForm | char(45)                                                                              | NO   |     |         |       |
| HeadOfState    | char(60)                                                                              | YES  |     | NULL    |       |
| Capital        | int                                                                                   | YES  |     | NULL    |       |
| Code2          | char(2)                                                                               | NO   |     |         |       |
+----------------+---------------------------------------------------------------------------------------+------+-----+---------+-------+
15 rows in set (0.00 sec)

mysql> SELECT Continent, AVG(GNP) AS AVG FROM country GROUP BY Continent ORDER BY AVG;
+---------------+---------------+
| Continent     | AVG           |
+---------------+---------------+
| Antarctica    |      0.000000 |
| Africa        |  10006.465517 |
| Oceania       |  14991.953571 |
| South America | 107991.000000 |
| Asia          | 150105.725490 |
| Europe        | 206497.065217 |
| North America | 261854.789189 |
+---------------+---------------+
7 rows in set (0.03 sec)

mysql> Select Continent, AVG(LifeExpectancy) AS AVG FROM country GROUP BY Continent ORDER BY AVG;
+---------------+----------+
| Continent     | AVG      |
+---------------+----------+
| Antarctica    |     NULL |
| Africa        | 52.57193 |
| Asia          | 67.44118 |
| Oceania       | 69.71500 |
| South America | 70.94615 |
| North America | 72.99189 |
| Europe        | 75.14773 |
+---------------+----------+
7 rows in set (0.00 sec)

mysql> SELECT COUNT(Continent) FROM country;
+------------------+
| COUNT(Continent) |
+------------------+
|              239 |
+------------------+
1 row in set (0.03 sec)

mysql> SELECT MIN(GNP) FROM country;
+----------+
| MIN(GNP) |
+----------+
|     0.00 |
+----------+
1 row in set (0.00 sec)
mysql> SELECT MAX(GNP) FROM country;
+------------+
| MAX(GNP)   |
+------------+
| 8510700.00 |
+------------+
1 row in set (0.00 sec)

