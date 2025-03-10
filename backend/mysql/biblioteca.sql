-- Crear la base de datos si no existe y usarla
CREATE DATABASE IF NOT EXISTS biblioteca;
USE biblioteca;

-- Crear la tabla libros
CREATE TABLE libros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo TEXT,
    autor TEXT,
    ISBN VARCHAR(50),
    edicion VARCHAR(50),
    editorial VARCHAR(50),
    añoPublicacion YEAR,
    ctdPaginas INT,
    genero ENUM ('poesia', 'soneto', 'romance', 'fábula', 'novela', 'cronica', 'cuento', 'ensayo', 'biografia', 'chicklit', 'fantasia', 'distopia', 'ficcion cientifica', 'terror', 'fantastica', 'infantojuvenil', 'young adult', 'suspenso', 'autoayuda', 'negocios', 'tecnologia', 'hq', 'aventura'),
    idioma VARCHAR(50),
    cantidad INT,
    disponible INT
);

-- Insertar datos de ejemplo
INSERT INTO libros (titulo, autor, ISBN, edicion, editorial, añoPublicacion, ctdPaginas, genero, idioma, cantidad, disponible) 
VALUES ('Orgullo y Prejuicio', 'Jane Austen', '978-8544001820', 'Lujo', 'Martin Claret', 2018, 424, 'romance', 'portugues', 2, 2);

-- Consultar todos los datos de la tabla
SELECT * FROM libros;