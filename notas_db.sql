CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    firstName VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL, 
    UNIQUE (email)
);

CREATE TABLE notes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    creationDate DATETIME NOT NULL,
    modificationDate DATETIME NOT NULL,
    description TEXT NOT NULL,
    deleted TINYINT NOT NULL,
    userId INT NOT NULL,
    FOREIGN KEY (userId) REFERENCES users (id)

);


CREATE TABLE categories (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE note_category (
    id INT PRIMARY KEY AUTO_INCREMENT,
    noteId INT NOT NULL,
    FOREIGN KEY (noteId) REFERENCES notes (id),
    categoryId INT NOT null,
    FOREIGN KEY (categoryId) REFERENCES categories(id)
 );

 INSERT INTO users VALUES (
     1, "Barbara", "bar.rivas@gmail.com"
    
 );

INSERT INTO users (id, firstName, email) 
VALUES 
     (2, "Alexis", "alexis@gmail.com"),
     (3, "Cecilia", "cecilia@hotmail.com"),
     (4, "Carolina", "caro@yahoo.com"),
     (5, "Joan", "joan2020@gmail.com"),
     (6, "Sophie", "sophiek-pa@hotmail.com"),
     (7, "Nicolas", "nicotorres@hotmail.com"),
     (8, "Maria", "marialaicia@yahoo.com"),
     (9, "Inti", "intisol@gmail.com"),
     (10, "Manuel", "manolito@hotmail.com")
;

INSERT INTO notes
VALUES
(1, "Primera nota", "2020-01-28 12:12:12", "2020-01-28 18:32:20", "Esta es mi primera nota en el mundo mundial", true, 1);

INSERT INTO notes
VALUES
(2, "Seguna nota", "2020-01-28 12:12:12", "2020-01-28 18:32:20", "Esta es mi segunda nota en el mundo mundial", true, 1),
(3, "Tercera nota", "2020-01-28 12:12:12", "2020-01-28 18:32:20", "Esta es mi tercera nota en el mundo mundial", false, 1),
(4, "Cuarta nota", "2020-01-28 12:12:12", "2020-01-28 18:32:20", "Esta es mi cuarta nota en el mundo mundial", false, 4),
(5, "Quinta nota", "2020-01-28 12:12:12", "2020-01-28 18:32:20", "Esta es mi quinta nota en el mundo mundial", false, 6),
(6, "Sexta nota", "2020-01-28 12:12:12", "2020-01-28 18:32:20", "Esta es mi sexta nota en el mundo mundial", true, 5),
(7, "Septima nota", "2020-01-28 12:12:12", "2020-01-28 18:32:20", "Esta es mi septimaa nota en el mundo mundial", false, 10),
(8, "Octava nota", "2020-01-28 12:12:12", "2020-01-28 18:32:20", "Esta es mi octava nota en el mundo mundial", false, 5),
(9, "Novena nota", "2020-01-28 12:12:12", "2020-01-28 18:32:20", "Esta es mi novena nota en el mundo mundial", false, 8),
(10, "Decima nota", "2020-01-28 12:12:12", "2020-01-28 18:32:20", "Esta es mi decima nota en el mundo mundial", false, 2);

INSERT INTO  categories
VALUES
(1, "Actualidad"),
(2, "Economía"),
(3, "Familia"),
(4, "Entretenimiento"),
(5, "Educación"),
(6, "Entrenamiento");

INSERT INTO note_category
VALUES
(1, 1, 2),
(2, 1, 6),
(3, 4, 2),
(4, 3, 2),
(5, 7, 2),
(6, 10, 6),
(7, 2, 5),
(8, 8, 6),
(9, 9, 4),
(10, 6, 3),
(11, 6, 1),
(12, 6, 1);


--Había repetido name de categoría
UPDATE categories
SET name = "Ocio"
WHERE id=6;

--Modificación nombre tabla intermedia
ALTER TABLE note_category
RENAME TO category_note;

--Me habían faltado registros en la tabla de categories
INSERT INTO categories
VALUES 
(7, "Sociedad"),
(8, "Medio ambiente"),
(9, "Cultura"),
(10, "Deporte");








