CREATE Table "user"(
     id SERIAL PRIMARY KEY,
     user_name VARCHAR(25) NOT NULL
);

CREATE Table post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id) on delete CASCADE
);

INSERT INTO "user" (user_name) 
VALUES 
('jahid'),
('sagor'),
('nodi'),
('evan');


INSERT INTO post(title, user_id) VALUES
('injoy the home jahid👋', 1),
('injoy your single life sagor',2),
('nodi you chert with kasm',4),
('evan date with sadia', 4);

DROP Table post;
DROP Table "user";

DELETE FROM "user"
 WHERE id = 4;

SELECT * FROM "user"; 
SELECT * FROM post;
