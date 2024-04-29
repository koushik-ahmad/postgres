-- Active: 1711704931069@@127.0.0.1@5432@ph@public

/*
A trigger is a database object in PostgreSQL (and other database management systems) that automatically executes a specified set of actions in response to certain database events or conditions. 
*/

-- Table-Level Events:
    -- INSERT, UPDATE, DELETE, TRUNCATE
-- Database-Level Events
    -- Database Startup, Database Shutdown, Connection start and end etc

-- CREATE TRIGGER trigger_name
-- {BEFORE | AFTER | INSTEAD OF} {INSERT | UPDATE | DELETE | TRUNCATE}
-- ON table_name
-- [FOR EACH ROW] 
-- EXECUTE FUNCTION function_name();



-- CREATE Trigger TR
-- BEFORE DELETE
-- on user  
-- for each row 
-- EXECUTE FUNCTION function_name();  



CREATE Table my_users
(
    user_name VARCHAR(50),
    email VARCHAR(100)
);


INSERT INTO my_users VALUES('Mezba', 'mezba@gmail.com'), ('Mir bhai', 'mir@gmail.com');

SELECT * from my_users;


CREATE Table deleted_users_audit
(
    deleted_user_name VARCHAR(50),
    deletedAt TIMESTAMP
)

SELECT * from deleted_users_audit;


-- trigger function
CREATE or REPLACE Function save_deleted_user()
RETURNS TRIGGER
LANGUAGE plpgsql 
AS
$$
    BEGIN
        INSERT INTO deleted_users_audit VALUES(OLD.user_name, now());
        RAISE NOTICE 'deleted user audit log created';
        RETURN OLD;
    END
$$


CREATE or REPLACE Trigger save_deleted_user_trigger
BEFORE DELETE
on my_users
FOR EACH ROW 
EXECUTE FUNCTION save_deleted_user();


DELETE from my_users WHERE user_name = 'Mir bhai';


SELECT * from deleted_users_audit;























