-- Active: 1711704931069@@127.0.0.1@5432@ph

 SHOW timezone;

 SELECT now();

create table timeZ (ts TIMESTAMP without time zone , tsz TIMESTAMP with time zone );

INSERT into timeZ VALUES('2024-01-12 10:45:00', '2024-01-12 10:45:00' );

SELECT * from timeZ;



 SELECT now();

 SELECT CURRENT_DATE;

 SELECT now()::date;

 SELECT now()::time;

 SELECT to_char(now(), 'dd/mm/yyyy');

 SELECT to_char(now(), 'Month');

 SELECT to_char(now(), 'DDD');

 SELECT CURRENT_DATE - INTERVAL '1 year 2 month';

 SELECT age(CURRENT_DATE , '1995-07-20');

 SELECT *, age(CURRENT_DATE, dob) from students;

SELECT extract(month from '2025-01-25'::date);


SELECT 'n'::BOOLEAN;











