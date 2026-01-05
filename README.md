# FoodTrack DB 01

Este repositorio contiene el diseño e implementación inicial de la base de datos **FoodTrack**, una plataforma para gestionar operaciones de *foodtrucks* en distintos puntos de una ciudad.

## Objetivo

Modelar e implementar el esquema relacional inicial que permita gestionar:

- Información de **foodtrucks**
- **Productos** ofrecidos
- **Pedidos** realizados
- **Ubicaciones** donde operan los foodtrucks
- **Detalle de ítems** de cada pedido

El proyecto está pensado como una simulación de un entorno profesional, utilizando:

- **Motor de base de datos:** Microsoft SQL Server  
- **Cliente de base de datos:** DBeaver  
- **Control de versiones:** Git + GitHub

## Contenido del repositorio

- `README.md`: descripción general del caso.
- (Próximamente) scripts SQL para:
  - Creación del esquema (`DDL`)
  - Inserción de datos de prueba (`DML`)

## Estructura del repositorio

- `/scripts/`: scripts SQL (DDL) para crear y evolucionar el esquema en SQL Server.
- `/data/`: archivos CSV utilizados para el análisis y/o carga de datos.
- `README.md`: descripción general del proyecto y del modelo relacional.

## Modelo relacional (resumen)

Tablas:
- `foodtrucks`
- `products` (FK → `foodtrucks`)
- `locations` (FK → `foodtrucks`)
- `orders` (FK → `foodtrucks`)
- `order_items` (FK → `orders`, FK → `products`)

Relaciones principales:
- Un foodtruck tiene muchos productos, pedidos y ubicaciones.
- Un pedido tiene múltiples ítems (detalle).
