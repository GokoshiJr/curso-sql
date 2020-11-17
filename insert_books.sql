/* El Arte de la guerra, Enrique Rincon, 2020 */
/* Estructuras defensivas, Enrique Rincon, 2018 */
 
INSERT INTO books (title, author_id) 
VALUES ('El Arte de la guerra', 4);

INSERT INTO books (title, author_id, `year`) 
VALUES ('Estructuras defensivas', 
(SELECT author_id FROM authors WHERE `name` = 'Enrique Rincon' LIMIT 1) /* Sub Query*/ 
, 2018
);