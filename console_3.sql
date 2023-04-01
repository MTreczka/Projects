CREATE TABLE IF NOT EXISTS actor_sample
(
    actor_id SERIAL,
    first_name varchar(45) NOT NULL,
    last_name varchar(45) not null,
    last_update timestamp not null default current_timestamp,
    primary key (actor_id)
)

insert into actor_sample (first_name, last_name)
select first_name, last_name
from actor;

delete
from actor_sample
where actor_id = 1;

delete
from actor_sample
where first_name = 'NICK';

select *
from actor_sample;

delete
from actor_sample
WHERE actor_id in (select actor_id from film_actor where film_id = 1);

delete