ALTER TABLE OrderDetail 
    ADD Total DECIMAL;

UPDATE OrderDetail
    SET Total = (UnitPrice - Discount) * Quantity;

SELECT OrderId, count(ProductId) AS NbProduct, Total FROM OrderDetail
	GROUP BY OrderId
	HAVING NbProduct > 5;