mysql> SELECT * FROM customers;
+----+------+-------+
| ID | NAME | PHONE |
+----+------+-------+
|  1 | Josh |  NULL |
+----+------+-------+
1 row in set (0.00 sec)

mysql> INSERT INTO customers (ID, NAME)
    -> VALUES (2, 'Ben');
Query OK, 1 row affected (0.02 sec)

mysql> SELECT * FROM customers;
+----+------+-------+
| ID | NAME | PHONE |
+----+------+-------+
|  1 | Josh |  NULL |
|  2 | Ben  |  NULL |
+----+------+-------+
2 rows in set (0.00 sec)

mysql> INSERT INTO customers (ID, NAME)
    -> VALUES (3, 'Olly');
Query OK, 1 row affected (0.00 sec)

mysql> SELECT * FROM customers;
+----+------+-------+
| ID | NAME | PHONE |
+----+------+-------+
|  1 | Josh |  NULL |
|  2 | Ben  |  NULL |
|  3 | Olly |  NULL |
+----+------+-------+
3 rows in set (0.00 sec)

mysql> INSERT INTO customers (ID, NAME)
    -> VALUES (4, 'Joe');
Query OK, 1 row affected (0.02 sec)

mysql> SELECT * FROM customers;
+----+------+-------+
| ID | NAME | PHONE |
+----+------+-------+
|  1 | Josh |  NULL |
|  2 | Ben  |  NULL |
|  3 | Olly |  NULL |
|  4 | Joe  |  NULL |
+----+------+-------+
4 rows in set (0.00 sec)

mysql> INSERT INTO customers (ID, NAME)
    -> VALUES (5, 'Will');
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM customers;
+----+------+-------+
| ID | NAME | PHONE |
+----+------+-------+
|  1 | Josh |  NULL |
|  2 | Ben  |  NULL |
|  3 | Olly |  NULL |
|  4 | Joe  |  NULL |
|  5 | Will |  NULL |
+----+------+-------+
5 rows in set (0.00 sec)

mysql> SHOW TABLES;
+---------------------+
| Tables_in_game_shop |
+---------------------+
| customers           |
| games               |
| orders              |
+---------------------+
3 rows in set (0.00 sec)

mysql> DESC games;
+---------+--------------+------+-----+---------+-------+
| Field   | Type         | Null | Key | Default | Extra |
+---------+--------------+------+-----+---------+-------+
| ID      | int          | NO   | PRI | NULL    |       |
| Title   | varchar(200) | YES  |     | NULL    |       |
| R_Date  | date         | YES  |     | NULL    |       |
| InStock | int          | YES  |     | NULL    |       |
+---------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> INSERT INTO games (ID, Title, R_Date, InStock)
    -> VALUES (1, 'The Witcher 3', '18-5-2015', 10);
ERROR 1292 (22007): Incorrect date value: '18-5-2015' for column 'R_Date' at row 1
mysql> INSERT INTO games (ID, Title, R_Date, InStock)
    -> VALUES (1, 'The Witcher 3', '2015-05-18', 10);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM games;
+----+---------------+------------+---------+
| ID | Title         | R_Date     | InStock |
+----+---------------+------------+---------+
|  1 | The Witcher 3 | 2015-05-18 |      10 |
+----+---------------+------------+---------+
1 row in set (0.00 sec)

mysql> INSERT INTO games (ID, Title, R_Date, InStock)
    -> VALUES (2, 'Counter Strike Global Offensive', '2012-08-21', 10);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM games;
+----+---------------------------------+------------+---------+
| ID | Title                           | R_Date     | InStock |
+----+---------------------------------+------------+---------+
|  1 | The Witcher 3                   | 2015-05-18 |      10 |
|  2 | Counter Strike Global Offensive | 2012-08-21 |      10 |
+----+---------------------------------+------------+---------+
2 rows in set (0.00 sec)

mysql> INSERT INTO games (ID, Title, R_Date, InStock)
    -> VALUES (3, 'Team Fortress 2', '2007-10-10', 10);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM games;
+----+---------------------------------+------------+---------+
| ID | Title                           | R_Date     | InStock |
+----+---------------------------------+------------+---------+
|  1 | The Witcher 3                   | 2015-05-18 |      10 |
|  2 | Counter Strike Global Offensive | 2012-08-21 |      10 |
|  3 | Team Fortress 2                 | 2007-10-10 |      10 |
+----+---------------------------------+------------+---------+
3 rows in set (0.00 sec)

mysql> INSERT INTO games (ID, Title, R_Date, InStock)
    -> VALUES (4, 'Cyberpunk 2077', '2020-12-10', 15);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM games;
+----+---------------------------------+------------+---------+
| ID | Title                           | R_Date     | InStock |
+----+---------------------------------+------------+---------+
|  1 | The Witcher 3                   | 2015-05-18 |      10 |
|  2 | Counter Strike Global Offensive | 2012-08-21 |      10 |
|  3 | Team Fortress 2                 | 2007-10-10 |      10 |
|  4 | Cyberpunk 2077                  | 2020-12-10 |      15 |
+----+---------------------------------+------------+---------+
4 rows in set (0.00 sec)

mysql> INSERT INTO games (ID, Title, R_Date, InStock)
    -> VALUES (5, 'Mount and Blade Warband', '2010-03-30', 15);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM games;
+----+---------------------------------+------------+---------+
| ID | Title                           | R_Date     | InStock |
+----+---------------------------------+------------+---------+
|  1 | The Witcher 3                   | 2015-05-18 |      10 |
|  2 | Counter Strike Global Offensive | 2012-08-21 |      10 |
|  3 | Team Fortress 2                 | 2007-10-10 |      10 |
|  4 | Cyberpunk 2077                  | 2020-12-10 |      15 |
|  5 | Mount and Blade Warband         | 2010-03-30 |      15 |
+----+---------------------------------+------------+---------+
5 rows in set (0.00 sec)

mysql> SHOW TABLES
    -> ADA
    -> SHOW TABLES;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ADA
SHOW TABLES' at line 2
mysql> SHOW TABLES;
+---------------------+
| Tables_in_game_shop |
+---------------------+
| customers           |
| games               |
| orders              |
+---------------------+
3 rows in set (0.00 sec)

mysql> DESC orders;
+------------+------+------+-----+---------+-------+
| Field      | Type | Null | Key | Default | Extra |
+------------+------+------+-----+---------+-------+
| ID         | int  | NO   | PRI | NULL    |       |
| OderNumber | int  | YES  |     | NULL    |       |
| CustomerID | int  | YES  | MUL | NULL    |       |
| ProductID  | int  | YES  | MUL | NULL    |       |
| OrderDate  | date | YES  |     | NULL    |       |
+------------+------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> INSERT INTO orders (ID, OderNumber, CustomerID, ProductID, OrderDate)
    ->  VALUES (1, 1, 1, 2, '2023-07-17');
Query OK, 1 row affected (0.02 sec)

mysql> SELECT * FROM orders;
+----+------------+------------+-----------+------------+
| ID | OderNumber | CustomerID | ProductID | OrderDate  |
+----+------------+------------+-----------+------------+
|  1 |          1 |          1 |         2 | 2023-07-17 |
+----+------------+------------+-----------+------------+
1 row in set (0.00 sec)

mysql> INSERT INTO orders (ID, OderNumber, CustomerID, ProductID, OrderDate)
    ->  VALUES (2, 2, 3, 3, '2023-07-16');
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM orders;
+----+------------+------------+-----------+------------+
| ID | OderNumber | CustomerID | ProductID | OrderDate  |
+----+------------+------------+-----------+------------+
|  1 |          1 |          1 |         2 | 2023-07-17 |
|  2 |          2 |          3 |         3 | 2023-07-16 |
+----+------------+------------+-----------+------------+
2 rows in set (0.00 sec)

mysql> INSERT INTO orders (ID, OderNumber, CustomerID, ProductID, OrderDate)
    ->  VALUES (3, 3, 5, 1, '2023-07-10');
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM orders;
+----+------------+------------+-----------+------------+
| ID | OderNumber | CustomerID | ProductID | OrderDate  |
+----+------------+------------+-----------+------------+
|  1 |          1 |          1 |         2 | 2023-07-17 |
|  2 |          2 |          3 |         3 | 2023-07-16 |
|  3 |          3 |          5 |         1 | 2023-07-10 |
+----+------------+------------+-----------+------------+
3 rows in set (0.00 sec)

mysql> INSERT INTO orders (ID, OderNumber, CustomerID, ProductID, OrderDate)
    ->  VALUES (4, 4, 2, 4, '2023-07-15');
Query OK, 1 row affected (0.03 sec)

mysql> SELECT * FROM orders;
+----+------------+------------+-----------+------------+
| ID | OderNumber | CustomerID | ProductID | OrderDate  |
+----+------------+------------+-----------+------------+
|  1 |          1 |          1 |         2 | 2023-07-17 |
|  2 |          2 |          3 |         3 | 2023-07-16 |
|  3 |          3 |          5 |         1 | 2023-07-10 |
|  4 |          4 |          2 |         4 | 2023-07-15 |
+----+------------+------------+-----------+------------+
4 rows in set (0.00 sec)

mysql> INSERT INTO orders (ID, OderNumber, CustomerID, ProductID, OrderDate)
    ->  VALUES (5, 5, 4, 5, '2023-07-11');
Query OK, 1 row affected (0.00 sec)

mysql> SELECT * FROM orders;
+----+------------+------------+-----------+------------+
| ID | OderNumber | CustomerID | ProductID | OrderDate  |
+----+------------+------------+-----------+------------+
|  1 |          1 |          1 |         2 | 2023-07-17 |
|  2 |          2 |          3 |         3 | 2023-07-16 |
|  3 |          3 |          5 |         1 | 2023-07-10 |
|  4 |          4 |          2 |         4 | 2023-07-15 |
|  5 |          5 |          4 |         5 | 2023-07-11 |
+----+------------+------------+-----------+---