CREATE TABLE actor_sample
(
    actor_id    SERIAL,
    first_name  VARCHAR(45) NOT NULL,
    last_name   VARCHAR(45) NOT NULL,
    last_update TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP
        PRIMARY KEY (actor_id)
);

INSERT INTO actor_sample (FIRST_NAME, LAST_NAME)
VALUES ('Jaroslaw', 'K'),
       ('Antoni', 'M'),
       ('Lech', 'K');

DROP table actor_sample;

SELECT *
FROM actor_sample;

INSERT INTO actor_sample (first_name, last_name)
SELECT first_name, last_name
from actor
where first_name = 'KENNETH';

SELECT *
FROM actor_sample;

DROP TABLE actor_sample;