-- scripts/00_create_database.sql
-- Creación de la base de datos FoodTrack

IF DB_ID('FoodTrack') IS NULL
BEGIN
    CREATE DATABASE FoodTrack;
END
GO
