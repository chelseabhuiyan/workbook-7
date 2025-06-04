Use northwind;

/* 1. Add a new supplier.*/
INSERT INTO Suppliers (CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone)
VALUES ('Sunshine Grocery', 'Alice Wonderland', 'Sales Manager', '123 Dean St', 'Brooklyn', 'NY', '11201', 'USA', '555-678-1234');

/*2. Add a new product provided by that supplier */
INSERT INTO Products (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued)
VALUES ('Organic Honey', 30, 2, '12 jars per case', 10.00, 50, 0, 10, 0);

/*3. List all products and their suppliers. */
SELECT p.ProductID, p.ProductName, p.UnitPrice, s.CompanyName AS Supplier
FROM Products p
JOIN Suppliers s ON p.SupplierID = s.SupplierID
ORDER BY p.ProductName;

/*4. Raise the price of your new product by 15%. */
UPDATE Products
SET UnitPrice = UnitPrice * 1.15
WHERE ProductName = 'Organic Honey';

/*5. List the products and prices of all products from that supplier. */
SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE SupplierID = (
    SELECT SupplierID
    FROM Suppliers
    WHERE CompanyName = 'Sunshine Grocery'
);
/*6. Delete the new product. */
DELETE FROM Products
WHERE ProductName = 'Organic Honey';

/*7. Delete the new supplier. */
DELETE FROM Suppliers
WHERE CompanyName = 'Sunshine Grocery';

/*8. List all products. */
SELECT * FROM Products;

/*9.List all suppliers.*/
select * from suppliers;