/* Sintaxis basica INSERT INTO tabla (COLUMNAS*) VALUES(VALORES) */

INSERT INTO authors(author_id, `name`, nacionality) 
VALUES (NULL, 'Julio Gonzalez', 'VEN');

INSERT INTO authors(`name`, nacionality)
VALUES ('Maria Fernanda', 'VEN');

INSERT INTO authors 
VALUES (NULL, 'Fortunato', 'Peñaloza'); 

INSERT INTO authors (`name`, nacionality) 
VALUES ('Enrique Rincon', 'VEN'), ('Andres Gonzalez', 'VEN');

/*
  Formas de insertar una nueva fila:
  
  de forma explicita todos los atributos:
  INSERT INTO authors(author_id, name, nationality ) VALUES ('', 'Juan Rulfo', 'MEX');
  
  de forma explicita solo algunos de los atributos:
  INSERT INTO authors(name, nationality ) VALUES ('Gabriel Garcia Márquez', 'COL');

  de forma implícita todos de los atributos:
  INSERT INTO authors VALUES ('', 'Juan Gabriel Vasquez', 'COL');
  
  Insertando multiples lineas:
  INSERT INTO authors(name, nationality ) VALUES 
  ('Juan Rulfo', 'MEX'), ('Gabriel Garcia Márquez', 'COL'), ('Juan Gabriel Vasquez', 'COL');
  
  NOTA: Se pueden insertar multiples fila de las mismas 3 formas de insertar una sola fila.
*/