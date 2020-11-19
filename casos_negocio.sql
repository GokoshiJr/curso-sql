-- 1. ¿Cuales nacionalidades hay?

-- DISTINCT, trae los diferentes elementos 
SELECT DISTINCT nationality 
FROM authors
ORDER BY nationality;

-- 2. ¿Cuantos escritores hay de cada nacionalidad?
SELECT nationality, COUNT(author_id) AS c_authors
FROM authors
WHERE nationality IS NOT NULL
  AND nationality NOT IN('RUS', 'AUT')
GROUP BY nationality
ORDER BY c_authors DESC, nationality ASC;

-- 3. ¿Cuantos libros hay de cada nacionalidad?
-- 4. ¿Cual es el promedio/desviacion estandar del precio de los libros?
-- AVG promedio, STDDEV desviacion estandar
SELECT nationality, COUNT(book_id) AS libros, AVG(price) AS prom, STDDEV(price) AS std 
FROM books AS b 
JOIN authors AS a
  ON a.author_id = b.author_id
GROUP BY nationality
ORDER BY libros DESC;

-- 5. idem, pero por nacionalidad

-- 6. ¿Cual es el precio maximo/minimo de un libro?
SELECT nationality, MAX(price), MIN(price) 
FROM books AS b
JOIN authors AS a
  ON a.author_id = b.author_id
GROUP BY nationality
ORDER BY nationality;

-- 7. ¿Como quedaria el report de prestamos?
-- CONCAT, para concatenar texto
-- TO_DAYS(), retorna el numero de dias pasados desde el inicio del calendario gregoriano
SELECT c.name, t.type, b.title, 
  CONCAT(a.name, " (", a.nationality, ")") AS autor,
  TO_DAYS(NOW()) - TO_DAYS(t.created_at) AS ago
FROM transactions AS t
LEFT JOIN clients AS c
  ON c.client_id = t.client_id
LEFT JOIN books AS b
  ON b.book_id = t.book_id
LEFT JOIN authors AS a
  ON b.author_id = a.author_id;