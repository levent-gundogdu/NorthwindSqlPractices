--Select
--ANSII
SELECT ContactName Adi, CompanyName SirketAdi, City  FROM Customers

SELECT * FROM Customers WHERE City = 'London'

--Case insensitive
seLEcT * FROM Products WHERE CategoryId = 1 or CategoryId = 3
SELECT * FROM Products WHERE CategoryId = 1 and UnitPrice >= 10

SELECT * FROM Products where categoryId=1 order by UnitPrice desc            --ASC(ascending), DESC(descending)

SELECT count(*) FROM Products where CategoryId = 2               --COUNT: Counts the rows

SELECT CategoryId, COUNT(*) FROM Products WHERE UnitPrice > 20 
GROUP BY CategoryId having count(*)<10 --icinde on taneden az olan kategorileri verir.

SELECT Products.ProductId, Products.ProductName, Products.UnitPrice, Categories.CategoryName 
FROM Products 
INNER JOIN Categories ON Products.CategoryId = Categories.CategoryId                 --Inner join sadece eslesen kayitlarda gecerlidir.
WHERE Products.UnitPrice > 10

--DTO Data Transformation Object

SELECT * FROM Products p INNER JOIN [Order Details] od                              --Koseli parantez bosluk olunca kullanilir.
ON p.ProductId = od.ProductID                                                      --LEFT JOIN Solda olup sagda olmayanlari getirir.
INNER JOIN Orders o
ON o.OrderID = od.OrderID

SELECT * FROM Customers c LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID
WHERE o.CustomerID is null






















