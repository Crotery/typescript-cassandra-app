CREATE TABLE IF NOT EXISTS users (
                login text,
                name text,
                PRIMARY KEY (login)
        );


        INSERT INTO users (login,name) VALUES ('vas', 'Vasya');
        INSERT INTO users (login,name) VALUES ('goga', 'tadjik');