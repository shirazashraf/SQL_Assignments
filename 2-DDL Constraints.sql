-- database creation
CREATE DATABASE Sales;

-- selecting the database
USE Sales;

-- creating new table under the database
CREATE TABLE orders(
Order_id INT PRIMARY KEY NOT NULL UNIQUE, 
Customer_name VARCHAR(30), 
Product_category VARCHAR(30), 
Ordered_item VARCHAR(30),
Contact_no VARCHAR(30));

-- 1. Add a new column named “order_quantity” to the orders table. 
ALTER TABLE orders ADD COLUMN order_quantity INT;

-- Rename the orders table to the sales_orders table. 
RENAME TABLE orders TO sales_orders;

-- 3. Insert 10 rows into the sales_orders table. 
INSERT INTO sales_orders VALUES(1292, "Tony", "Phone","Iphone",9051647607,1);
INSERT INTO sales_orders VALUES(1293, "Sudeesh", "Phone","Samsung",9895289023,3);
INSERT INTO sales_orders VALUES(1294, "Rahul", "Laptop","Lenovo",9053976273,2);
INSERT INTO sales_orders VALUES(1295, "Sanjay", "Phone","Iphone",9892573974,2);
INSERT INTO sales_orders VALUES(1296, "Pradeep", "Laptop","Macbook",912174008,1);
INSERT INTO sales_orders VALUES(1297, "Ramya", "Laptop","DELL",9812336715,1);
INSERT INTO sales_orders VALUES(1298, "Sujatha", "TV","Oneplus",9051732017,1);
INSERT INTO sales_orders VALUES(1299, "Aiswarya", "Phone","VIVO",9007648663,1);
INSERT INTO sales_orders VALUES(1300, "Fasin", "Phone","Iphone",9995923723,3);
INSERT INTO sales_orders VALUES(1301, "Zaiq", "TV","Samsung",9978723922,1);

-- to display all the records
SELECT * from sales_orders;

-- 4. Retrieve customer_name and Ordered_Item from the sales_orders table. 
SELECT Customer_name,Ordered_item from sales_orders;

-- 5. Use the update command to change the name of the product for any row. 
SET SQL_SAFE_UPDATES = 0;
UPDATE sales_orders SET Ordered_item = 'Apple_Iphone' WHERE Ordered_item = 'Iphone';

-- Delete the sales_orders table from the database.
DROP TABLE sales_orders;
