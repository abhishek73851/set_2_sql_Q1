CREATE TABLE person (
    id INT PRIMARY KEY,
    email VARCHAR(255)
);

INSERT INTO person (id, email) VALUES (1, 'alice@example.com');
INSERT INTO person (id, email) VALUES (2, 'bob@example.com');
INSERT INTO person (id, email) VALUES (3, 'alice@example.com');

FROM person
GROUP BY email
HAVING COUNT(*) > 1;
