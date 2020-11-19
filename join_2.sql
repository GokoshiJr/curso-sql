SELECT b.book_id AS `ID Libro`, b.title AS `Titulo Libro`, 
a.author_id AS `ID Autor`, a.name AS `Nombre Autor`, b.price AS `Precio Libro`  
FROM books AS b 
JOIN authors AS a
  ON b.author_id = a.author_id
WHERE a.author_id BETWEEN 1 AND 5
  AND b.price > 0;


