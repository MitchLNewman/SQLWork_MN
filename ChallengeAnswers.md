Using COUNT, get the number of cities in the USA.

mysql> SELECT COUNT(CountryCode) FROM city WHERE CountryCode = 'USA';
+--------------------+
| COUNT(CountryCode) |
+--------------------+
|                274 |
+--------------------+
1 row in set (0.02 sec)

Find out the population and life expectancy for people in Argentina.

SELECT Population, LifeExpectancy FROM country WHERE name = 'Argentina';
+------------+----------------+
| Population | LifeExpectancy |
+------------+----------------+
|   37032000 |           75.1 |
+------------+----------------+
1 row in set (0.00 sec)

Using IS NOT NULL, ORDER BY, and LIMIT, which country has the highest life expectancy?

SELECT * FROM country WHERE lifeexpectancy IS NOT NULL ORDER BY lifeexpectancy DESC LIMIT 1;
+------+---------+-----------+-----------------+-------------+-----------+------------+----------------+---------+--------+-----------+------------------------------+-------------+---------+-------+
| Code | Name    | Continent | Region          | SurfaceArea | IndepYear | Population | LifeExpectancy | GNP     | GNPOld | LocalName | GovernmentForm               | HeadOfState | Capital | Code2 |
+------+---------+-----------+-----------------+-------------+-----------+------------+----------------+---------+--------+-----------+------------------------------+-------------+---------+-------+
| AND  | Andorra | Europe    | Southern Europe |      468.00 |      1278 |      78000 |           83.5 | 1630.00 |   NULL | Andorra   | Parliamentary Coprincipality |             |      55 | AD    |
+------+---------+-----------+-----------------+-------------+-----------+------------+----------------+---------+--------+-----------+------------------------------+-------------+---------+-------+
1 row in set (0.00 sec)

Using JOIN ... ON, find the capital city of Spain.

SELECT city.name FROM country LEFT JOIN city ON country.capital = city.id WHERE country.code = 'ESP';
+--------+
| name   |
+--------+
| Madrid |
+--------+
1 row in set (0.00 sec)

Using JOIN ... ON, list all the languages spoken in the Southeast Asia region.

SELECT cl.language FROM country c LEFT JOIN countrylanguage cl ON c.code = cl.countrycode WHERE c.region = 'Southeast Asia';
+---------------+
| language      |
+---------------+
| Chinese       |
| English       |
| Malay         |
| Malay-English |
| Bali          |
| Banja         |
| Batakki       |
| Bugi          |
| Javanese      |
| Madura        |
| Malay         |
| Minangkabau   |
| Sunda         |
| Chinese       |
| Khmer         |
| T?am          |
| Vietnamese    |
| Lao           |
| Lao-Soung     |
| Mon-khmer     |
| Thai          |
| Burmese       |
| Chin          |
| Kachin        |
| Karen         |
| Kayah         |
| Mon           |
| Rakhine       |
| Shan          |
| Chinese       |
| Dusun         |
| English       |
| Iban          |
| Malay         |
| Tamil         |
| Bicol         |
| Cebuano       |
| Hiligaynon    |
| Ilocano       |
| Maguindanao   |
| Maranao       |
| Pampango      |
| Pangasinan    |
| Pilipino      |
| Waray-waray   |
| Chinese       |
| Malay         |
| Tamil         |
| Chinese       |
| Khmer         |
| Kuy           |
| Lao           |
| Malay         |
| Thai          |
| Portuguese    |
| Sunda         |
| Chinese       |
| Khmer         |
| Man           |
| Miao          |
| Muong         |
| Nung          |
| Thai          |
| Tho           |
| Vietnamese    |
+---------------+
65 rows in set (0.03 sec)

Using a single query, list 25 cities around the world that start with the letter F.

SELECT name FROM city WHERE SUBSTRING(name FROM 1 FOR 1) = 'F' LIMIT 25;
+---------------------------+
| name                      |
+---------------------------+
| Fagatogo                  |
| Florencio Varela          |
| Formosa                   |
| Francistown               |
| Fortaleza                 |
| Feira de Santana          |
| Franca                    |
| Florianópolis             |
| Foz do Iguaçu             |
| Ferraz de Vasconcelos     |
| Francisco Morato          |
| Franco da Rocha           |
| Fuenlabrada               |
| Faridabad                 |
| Firozabad                 |
| Farrukhabad-cum-Fatehgarh |
| Faizabad                  |
| Fatehpur                  |
| Firenze                   |
| Foggia                    |
| Ferrara                   |
| Forlì                     |
| Fukuoka                   |
| Funabashi                 |
| Fukuyama                  |
+---------------------------+
25 rows in set (0.02 sec)

Using COUNT and JOIN ... ON, get the number of cities in China.

