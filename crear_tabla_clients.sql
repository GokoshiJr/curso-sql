CREATE TABLE clients (
  client_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  /* UNIQUE (tipo de llave), el valor de esta columna debe ser unico para cada tupla */
  email VARCHAR(100) NOT NULL UNIQUE,
  birthdate DATETIME,
  /* tipo de dato ENUM, es una enumeracion de datos, le vamos a decir a la bd cuales son 
  las opciones que puede tomar la columna */
  gender ENUM('M', 'F', 'ND') COMMENT 'M = Male, F = Female, ND = No dice',
  /* Buena practica ninguna tupla se las bd se borra jamas */
  active TINYINT(1) NOT NULL DEFAULT 1,
  /* DEFAULT CURRENT_TIMESTAMP, si no viene el dato toma la hora de la pc */
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP 
  COMMENT 'yyyy-mm-dd hh:mm:ss desde 1970-01-01 00:00:01 numero epoch',
  /* CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, 
  Si se modifica cualquier columna el update_at lo detecta y actualiza su valor */
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);