USE FoodTrack;

CREATE TABLE foodtrucks (
	foodtruck_id INT PRIMARY KEY ,
	name VARCHAR (100) NOT NULL UNIQUE,
	cuisine_type VARCHAR(50) NOT NULL,
	city VARCHAR(100) NOT NULL UNIQUE,	
)

CREATE TABLE products(
	product_id INT PRIMARY KEY,
	foodtruck_id INT NOT NULL,
	name VARCHAR (120) NOT NULL UNIQUE ,
	price DECIMAL(10,2) NOT NULL CHECK (price>0),
	stock INT NOT NULL CHECK (stock >=0),
	CONSTRAINT FK_products_foodtrucks FOREIGN KEY (foodtruck_id) REFERENCES foodtrucks(foodtruck_id),	
)

CREATE TABLE locations(
	location_id INT NOT NULL PRIMARY KEY ,
	foodtruck_id INT NOT NULL,
	lication_date DATE NOT NULL,
	zone VARCHAR (80) NOT NULL,
	CONSTRAINT FK_locations_foodtrucks FOREIGN KEY(foodtruck_id) REFERENCES foodtrucks (foodtruck_id)
);

CREATE TABLE orders (
	order_id INT PRIMARY KEY,
	foodtruck_id INT NOT NULL,
	order_date DATE NOT NULL,
	status VARCHAR(20) NOT NULL CHECK (status IN ('pendiente','entregado','cancelado')),
	total DECIMAL(10,2) NOT NULL CHECK (total>=0),
	CONSTRAINT FK_orders_foodtrucks FOREIGN KEY (foodtruck_id) REFERENCES foodtrucks (foodtruck_id)
)

CREATE TABLE order_items (
	order_item_id INT PRIMARY KEY,
	order_id INT NOT NULL,
	product_id INT NOT NULL,
	quantity INT NOT NULL ,
	CONSTRAINT FK_order_items_orders FOREIGN KEY (order_id) REFERENCES orders (order_id),
	CONSTRAINT FK_order_items_products FOREIGN KEY (product_id) REFERENCES products (product_id)
);
