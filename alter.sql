/*
  ALTER, es la manera en la que podemos alterar el esquema de una bd
  de una tabla en una bd
*/

-- AGREGAR UNA COL
ALTER TABLE authors 
ADD COLUMN birthyear INT DEFAULT 1930 AFTER NAME -- lo pone despues de name

-- MODIFICAR UNA COL
ALTER TABLE authors
MODIFY COLUMN birthyear YEAR DEFAULT 1950; 

-- ELIMINAR UNA COL
ALTER TABLE authors
DROP COLUMN birthyear;