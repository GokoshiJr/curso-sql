/* Consulta normal */
SELECT b.title, a.name 
FROM authors AS a, books AS b 
WHERE a.author_id = b.author_id
LIMIT 10;

/* Con JOIN */
SELECT b.title, a.name
FROM authors AS a
JOIN books AS b
  ON a.author_id = b.author_id
LIMIT 10;


SELECT a.author_id, a.name, a.nationality, b.title
FROM authors AS a
JOIN books AS b
  ON a.author_id = b.author_id
WHERE a.author_id BETWEEN 1 AND 5
ORDER BY a.author_id ; /* puede ser asc o desc*/

/* LEFT JOIN, Muestra la informacion de la tabla pivote y 
tambien de la tabla secundaria aunque este vacio */
SELECT a.author_id, a.name, a.nationality, b.title
FROM authors AS a
LEFT JOIN books AS b
  ON a.author_id = b.author_id
WHERE a.author_id BETWEEN 1 AND 5
ORDER BY a.author_id;  

/* FUNCIONES DE COLUMNAS, FUNCIONES AGRUPADAS, COUNT */
/* obliga a usar el group by, le indicamos el dato unico que no se va a repetir 
que va a pivotear lo pivoteado ya */
SELECT a.author_id, a.name, a.nationality, COUNT(b.book_id)
FROM authors AS a
LEFT JOIN books AS b
  ON a.author_id = b.author_id
WHERE a.author_id BETWEEN 1 AND 5
GROUP BY a.author_id
ORDER BY a.author_id;
