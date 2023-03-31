CREATE TABLE actor_sample(
    actor_id    SERIAL,
    first_name  VARCHAR(45) NOT NULL,
    last_name   VARCHAR(45) NOT NULL,
    last_update TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP
    PRIMARY KEY (actor_id));

INSERT INTO actor_sample (first_name, last_name)
SELECT first_name, last_name, actor_id
from actor;



UPDATE actor_sample
SET first_name = 'LECH'
WHERE actor_id = 1;

UPDATE actor_sample
set first_name = 'Antoni', last_name = "M"
where actor_id =1;

DROP table actor_sample;
