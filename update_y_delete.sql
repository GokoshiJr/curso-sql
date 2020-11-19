/*
  UPDATE, Hay 2 casos para actualizar
  1. Cuando tenemos un dato equivocado
  2. Cuando se actualiza la informacion que tenemos
*/

UPDATE clients 
SET 
  [columna = valor, ...]
WHERE
  [condiciones]
LIMIT 1;

UPDATE clients
SET active = 0
WHERE client_id = 9
LIMIT 1;

UPDATE clients
SET email = "carlos_quiros18@gmail.com"
WHERE client_id = 9
LIMIT 1;

/* DELETE */
DELETE FROM authors WHERE author_id = 162 LIMIT 1;
/* usar el limit 1, es caso de un error solo se borra 1 */
/* usar siempre que se pueda una bandera booleana "active" para no borrar datos */

/* TRUNCATE, borra el contenido de la tabla pero deja la estructura quieta */