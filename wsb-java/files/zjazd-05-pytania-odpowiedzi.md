![WSB](https://maciejgowin.github.io/assets/img/wsb-merito-logo.png)

# Programowanie aplikacji Java

## Maciej Gowin

### Zjazd 5 - pytania/odpowiedzi

---

# Linki

#### Opis
https://maciejgowin.github.io/wsb-java/

#### Kod źródłowy przykładów oraz zadań
https://github.com/MaciejGowin/wsb-programowanie-aplikacji-java

---
# Różnica pomiędzy VARCHAR i CHAR

W przypadku typu CHAR używamy stałej długości ciągu znaków. Jeżeli do bazy zostanie wpisany ciąg krótszy, pozostała przestrzeń zostaje uzupełniona spacjami.
Konwersja ta odbywa się automatycznie podczas zapisu i odczytu.

Typ VARCHAR przechowuje ciągi o zmiennej długości wraz z informacją o ich faktycznej długości.

Ciekawie wygląda sytuacja podczas dodania ciągów z explicite dodana spacja na końcu. 
Konwersja CHAR odbywa się automatyczne dlatego też puste znaki zawsze będą traktowanie jako uzupełnienie wartości

---
# Różnica pomiędzy VARCHAR i CHAR

```
CREATE TABLE char_varchar_test
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    char_value VARCHAR(5) NOT NULL,
    varchar_value char(5) NOT NULL
);
```

```
INSERT INTO char_varchar_test(char_value, varchar_value) VALUES 
    ('abc', 'abc'),
    ('efg ', 'efg ');
```

---
# Różnica pomiędzy VARCHAR i CHAR

```
SELECT char_value, length(char_value), varchar_value, length(varchar_value)
    FROM char_varchar_test;
```

```
+------------+--------------------+---------------+-----------------------+
| char_value | length(char_value) | varchar_value | length(varchar_value) |
+------------+--------------------+---------------+-----------------------+
| abc        |                  3 | abc           |                     3 |
| efg        |                  4 | efg           |                     3 |
+------------+--------------------+---------------+-----------------------+
```

---
# Dodawanie dłuższych ciągów niż założone

Dodanie dłuższych ciągów niż przewidziany zakres może wywołać błąd lub też ciąg może zostać automatycznie dostosowany.

Zależy to od ustawień połącznenia lub też serwera.

```
CREATE TABLE varchar_truncate_test
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    value VARCHAR(5) NOT NULL
);
```

```
INSERT INTO varchar_truncate_test(value) VALUES
    ('sophisticated');
ERROR 1406 (22001): Data too long for column 'value' at row 1
```

---
# Dodawanie dłuższych ciągów niż założone

```
SELECT @@SESSION.sql_mode;

+-----------------------------------------------------------------------------------------------------------------------+
| @@SESSION.sql_mode                                                                                                    |
+-----------------------------------------------------------------------------------------------------------------------+
| ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION |
+-----------------------------------------------------------------------------------------------------------------------+
```

```
SET @@SESSION.sql_mode =
    'ONLY_FULL_GROUP_BY,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
```

```
INSERT INTO varchar_truncate_test(value) VALUES
    ('sophisticated');
Query OK, 1 row affected, 1 warning (0.00 sec)
```

---
# Łączenie NATURAL JOIN

NATURAL JOIN jest to łącznie podobne do JOIN oraz LEFT JOIN, w którym automatycznie dopasowywane są kolumny o tych samych nazwach oraz typach. Nie używamy wtedy klauzuli ON.

---
# Łączenie NATURAL JOIN

```
CREATE TABLE clients
(
    client_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE orders
(
    order_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    client_id INT UNSIGNED NOT NULL,
    total DECIMAL(10, 2) NOT NULL
);

INSERT INTO clients(name) VALUES
    ('Maciej Gowin'),
    ('Jan Nowak');

INSERT INTO orders(client_id, total) VALUES
    (1, 1.1),
    (1, 11.11),
    (2, 2.2);
```

---
# Łączenie NATURAL JOIN

```
SELECT * FROM clients NATURAL JOIN orders;
```

```
+-----------+--------------+----------+-------+
| client_id | name         | order_id | total |
+-----------+--------------+----------+-------+
|         1 | Maciej Gowin |        1 |  1.10 |
|         1 | Maciej Gowin |        2 | 11.11 |
|         2 | Jan Nowak    |        3 |  2.20 |
+-----------+--------------+----------+-------+
```
