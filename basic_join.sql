CREATE TABLE table1 (
    ID INT, VALUE VARCHAR(10)
);

CREATE TABLE table2 (
    ID INT, VALUE VARCHAR(10)
);

INSERT INTO table1 (ID, VALUE)
values (1, 'First'),
       (2, 'Second'),
       (3, 'Third'),
       (4, 'Fourth'),
       (5, 'Fifth');

INSERT INTO table2 (ID, VALUE)
values (1, 'First'),
       (2, 'Second'),
       (3, 'Third'),
       (6, 'Sixth'),
       (7, 'Seventh'),
       (8, 'Eight');

SELECT *
FROM table1;

select *
FROM table2;

SELECT *
FROM table1 t1
INNER JOIN table2 t2 ON t1.ID = t2.ID; #laczy wspolne wartosci

SELECT t1.ID AS t1ID, t2.ID, t1.Value AS t1Value, t2.Value AS t2Value
FROM table1 t1
INNER JOIN table2 t2 on t1.ID = t2.id;

select *
from table1 t1
LEFT JOIN table2 t2 ON t1.ID = t2.ID;

select *
from table1 t1
RIGHT JOIN table2 t2 ON t1.ID = t2.ID;

select *
from table1 t1
FULL JOIN table2 t2 ON t1.ID = t2.ID;

select *
from table1 t1
RIGHT JOIN table2 t2 ON t1.ID = t2.ID;

select *
from table1 t1
RIGHT JOIN table2 t2 ON t1.ID = t2.ID
WHERE t1.id IS NULL;

select *
from table1 t1
cross join table2 t2;

