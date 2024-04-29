-- Active: 1711704931069@@127.0.0.1@5432@ph
SELECT * from person2;

-- add column
ALTER TABLE person2
    ADD COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com' NOT NULL;

-- delete column
ALTER TABLE person2
    DROP COLUMN email;

-- rename column name
ALTER TABLE person2
    RENAME COLUMN age to user_age;

-- type change
ALTER TABLE person2
    ALTER COLUMN user_name TYPE VARCHAR(50);

-- add constraint
ALTER TABLE person2
    ALTER COLUMN user_age set UNIQUE;

-- remove constraint  
ALTER TABLE person2
    ALTER COLUMN user_age drop NOT NULL;

ALTER TABLE person2
    ADD constraint unique_person2_user_age UNIQUE(user_age);

ALTER TABLE person2
    DROP constraint unique_person2_user_age;

DROP TABLE person2;







INSERT into person2 values(8, 'test2', 45, 'test2@gmail.com')







