CREATE Table "user"(
     id SERIAL PRIMARY KEY,
     user_name VARCHAR(25) NOT NULL
);

CREATE Table post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id) 
);