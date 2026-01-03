-- scripts/02_alter_orders_add_comments.sql
-- Evolución del esquema: agregar columna comments a orders

USE FoodTrack;


ALTER TABLE dbo.orders
ADD comments VARCHAR(255) NULL;

