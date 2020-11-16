INSERT INTO `clients`(client_id, `name`, email, birthdate, gender, active) VALUES
(1, 'Maria Dolores Gomez', 'Maria Dolores.95983222J@outlook.com', '1971-06-06', 'F', 1),
(2, 'Adrian Fernandez', 'Adrian.55818851J@yahoo.com', '1970-04-09', 'M', 1),
(3, 'Maria Luisa Marin', 'Maria Luisa.83726282A@hotmail.com', '1957-07-30', 'F', 1),
(4, 'Pedro Sanchez', 'Pedro.78522059J@gmail.com', '1992-01-31', 'M', 1);

/* UPDATE mediante un INSERT, para actualizar el active a 0*/
INSERT INTO `clients` (`name`, email, birthdate, gender, active) VALUES 
('Pedro Sanchez', 'Pedro.78522059J@gmail.com', '1992-01-31', 'M', 0)
ON DUPLICATE KEY UPDATE active = VALUES(active); /* update con el active a 0 */

/*
ON DUPLICATE KEY sirve para insertar un dato que ya esta creado pero queremos actualizar un atributo de ese dato por uno nuevo.

1 opcion: ON DUPLICATE KEY IGNORE ALL esto indica que si hay algun error, lo va a ignorar y va a correr la sentencia, NUNCA UTILIZAR, EVITAR A TODA COSTA.

2 opcion: ON DUPLICATE KEY UPDATE active = VALUES(active) para cambiarle el valor de activo, de 1 a 0.
Esta sentencia con la palabra UPDATE nos permite actualizar la información por alguna otra.

Luego indicamos la columna y directamente podemos hacerlo de dos formas:
Ejemplo:
1- ON DUPLICATE KEY UPDATE gender = F;
2- ON DUPLICATE KEY UPDATE gender = VALUES(gender); Esta segunda con el valor que actualizamos previamente como el siguiente ejemplo
*/

