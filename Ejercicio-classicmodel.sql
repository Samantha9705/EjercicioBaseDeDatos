use classicmodels;
CREATE OR REPLACE VIEW ordenes_por_cliente AS -- Crea la vista de la consulta 
-- a. Consultar las tablas por separado 
SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM orderdetails;
SELECT * FROM products;

-- Crear los JOINS necesarios para obtener las órdenes completas por cliente

SELECT 
    c.customerName,
    o.orderNumber,
    o.orderDate,
    o.status
FROM customers c
JOIN orders o 
ON c.customerNumber = o.customerNumber;
    
    -- c. Crear la vista con la consulta del paso previo
    SELECT * FROM ordenes_por_cliente; -- hace la consulta a la vista creada 
