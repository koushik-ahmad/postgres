-- Active: 1711704931069@@127.0.0.1@5432@ph@public

CREATE Table "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
)

CREATE Table post(
    id SERIAL PRIMARY KEY,
    title text NOT NULL,
    user_id INTEGER REFERENCES "user"(id)
)


INSERT INTO "user" (username) VALUES
('akash'),
('batash'),
('sagor'),
('nodi');

INSERT INTO post (title, user_id) VALUES
('Enjoying a sunny day with Akash! ☀️', 2),
('Batash just shared an amazing recipe! 🍲', 1),
('Exploring adventures with Sagor.🌟', 4),
('Nodi''s wisdom always leaves me inspired. 📚', 4);


DROP Table post;
DROP Table "user"; 

SELECT * from post;
SELECT * from "user";


SELECT title, username FROM post
JOIN "user" on post.user_id = "user".id;

SELECT * FROM post
JOIN "user" on post.user_id = "user".id;


SELECT post.id FROM post
JOIN "user" on post.user_id = "user".id;

SELECT p.id FROM post p
JOIN "user" u on p.user_id = u.id;

SELECT * FROM post as p
JOIN "user" as u on p.user_id = u.id;

SELECT * FROM post as p
Inner JOIN "user" as u on p.user_id = u.id;



SELECT * FROM "user"
JOIN post on post.user_id = "user".id;


SELECT * FROM post as p
LEFT OUTER JOIN "user" as u on p.user_id = u.id;

SELECT * FROM post as p
RIGHT OUTER JOIN "user" as u on p.user_id = u.id;


INSERT INTO post (id, title, user_id) VALUES
(5, 'This is a test post title', NULL);





SELECT * FROM post as p
FULL OUTER JOIN "user" as u on p.user_id = u.id;

