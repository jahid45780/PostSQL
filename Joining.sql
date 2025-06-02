CREATE Table "users"(
     id SERIAL PRIMARY KEY,
     user_name VARCHAR(25) NOT NULL
);

CREATE Table posts (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "users"(id)
);

INSERT INTO "users" (user_name) 
VALUES 
('jayed'),
('kasem'),
('nasir'),
('niloy');

INSERT INTO posts(title, user_id) VALUES
('injoy the home jahid👋', 1),
('injoy your single life kasem',2),
('nodi you chert with nasir',4),
('evan date with niloy', 4);

SELECT * FROM "users";
SELECT * FROM posts;

SELECT title, user_name FROM posts
 JOIN "users" ON posts.user_id = "users".id;

 SELECT title, user_name FROM posts
 RIGHT JOIN "users" ON posts.user_id = "users".id;

 INSERT INTO posts(title, user_id) VALUES
('injoy the home kahid👋', NULL);