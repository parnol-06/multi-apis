 -- 1) Crear un esquema específico para Users
 CREATE SCHEMA IF NOT EXISTS products_schema AUTHORIZATION afppadmin;
 -- 2) Crear la tabla dentro del esquema
 CREATE TABLE IF NOT EXISTS products_schema.products (
 id SERIAL PRIMARY KEY,
 name  TEXT NOT NULL,
 price DOUBLE PRECISION
 );
 -- 3) (Opcional) Dar privilegios al usuario administrador
 GRANT ALL PRIVILEGES ON SCHEMA products_schema TO afppadmin;
 GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA products_schema TO afppadmin;