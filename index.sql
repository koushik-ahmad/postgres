-- Active: 1711704931069@@127.0.0.1@5432@ph@public


SELECT * from employees;


EXPLAIN ANALYSE
SELECT * from employees WHERE department_name = 'Administration';

CREATE INDEX idx_employees_department_name
on employees (department_name);


SHOW data_directory;



















