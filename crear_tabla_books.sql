/* Sustantivo en plural del objeto general de la tabla para el nombre */
/* IF NOT EXISTS es caso de que no exista */

/* convencion; los libros deben tener un id unico */
/* cada fila sera un libro, y cada columna sera una caracteristica de este */
CREATE TABLE IF NOT EXISTS books (
  /* entero, llave primaria, autoincremental cuando vamos agregando mas elementos */
  /* unsigned para que no guarde el signo del numero entero, seria como el valor absoluto */
  book_id INTEGER UNSIGNED PRIMARY AUTO_INCREMENT,
  author,
  /* para que guarde un texto varchar(num) le indicamos el numero de caracteres */
  /* NOT NULL para que no guarde libros que no tengan titulo */
  title VARCHAR(100) NOT NULL,
  /* DEFAULT es que si no se envia nada pone un valor por defecto*/
  year_ INTEGER UNSIGNED NOT NULL DEFAULT 1900,
  /* COMMENT, comentario a la columna, que solo ven los que vean la estructura de la bd */
  languaje VARCHAR(2) NOT NULL DEFAULT 'es' COMMENT 'ISO 639-1 Languaje',
  cover_url VARCHAR(500),
  /* FLOAT almacena hasta 6 decimales se usa para calculos precisos */
  /* DOUBLE indicamos la cantidad de enteros y decimales */
  price DOUBLE(6, 2) NOT NULL DEFAULT 10.0,
  /* sellable = es vendible el libro */
  /* TINYINT(1) bandera 1 o 0 */
  sellabe TINYINT(1) DEFAULT 1,
  copies INTEGER NOT NULL DEFAULT 1,
  /* permite guardar grandes cantidades de texto */
  description_ TEXT
);