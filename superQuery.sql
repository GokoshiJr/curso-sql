SELECT DISTINCT nationality FROM authors; 

UPDATE authors
SET nationality = "GBR"
WHERE nationality = "ENG";

SELECT COUNT(book_id), SUM(IF(condicion, true, false)) FROM books;

SELECT sellable, SUM(price*copies) 
FROM books
GROUP BY sellable;

SELECT nationality, COUNT(book_id), 
  SUM(IF(year < 1950, 1, 0)) AS "<1950",
  SUM(IF(year >= 1950 AND year < 1990, 1, 0)) AS "<1990",
  SUM(IF(year >= 1990 AND year < 2000, 1, 0)) AS "<2000",
  SUM(IF(year >= 2000, 1, 0)) AS "Hoy"
FROM books AS b
JOIN authors AS a
  ON b.author_id = a.author_id
WHERE nationality IS NOT NULL
GROUP BY nationality
ORDER BY nationality;