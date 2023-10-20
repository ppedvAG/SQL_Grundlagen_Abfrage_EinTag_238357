/******************************************************/

-- JOINs 

/******************************************************/

-- "verbinden" Datensätze von Tabellen miteinander ins selbe Ergebnisfenster
-- Wichtig!: Ergebnisfenster, NICHT die Tabelle!!!

-- Wie schaffen wir es die 2 Tabellen zusammen zu fügen?
-- => Lösung: JOINs
SELECT * FROM Orders
SELECT * FROM Customers

/*
	SELECT Spalten FROM TabelleA JOIN TabelleB ON TabelleA.Spalte = TabelleB.Spalte
*/

-- Selektiert uns den CompanyName, ContactName und alles von der Tabelle Orders
-- Verknuepfung zwischen Orders & Customers
SELECT CompanyName, ContactName, Orders.* FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID

-- Selektiert uns alles aus Customers & Orders
SELECT * FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID

-- Selektiert mir nur die CustomerID aus der Tabelle Orders, obwohl wir
-- beides gejoined haben
SELECT Orders.CustomerID FROM Orders
JOIN Customers ON Customers.CustomerID = Orders.CustomerID

-- Selektiert alles von Orders & Customers
-- Wo bei Country "Germany" ist
SELECT * FROM Customers as cus
JOIN Orders ON cus.CustomerID = Orders.CustomerID
JOIN Employees ON Employees.EmployeeID = Orders.EmployeeID
WHERE cus.Country = 'Germany'



-- Übungen:

-- 1. Alle Bestellungen (Orders) die der Mitarbeiter "King" (LastName in Employees) bearbeitet hat
-- Tables: Orders --> Employees
SELECT * FROM Orders
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
WHERE LastName = 'King'

-- 2. Alle Bestellungen (Orders) aus Frankreich (Customers), deren Lieferkosten (Freight) über 300 lag
-- Tables: Orders --> Customers
SELECT * FROM Orders 
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID
WHERE Country = 'France' AND Freight > 300


-- 3. Welche verschiedenen Produkte (ProductName in Products) wurden in Austria verkauft
-- Tables: Customers --> Orders --> Order Details --> Products
SELECT DISTINCT CompanyName, ProductName FROM Orders
INNER JOIN Customers ON Customers.CustomerID = Orders.CustomerID
INNER JOIN [Order Details] ON [Order Details].OrderID = Orders.OrderID
INNER JOIN Products ON [Order Details].ProductID = Products.ProductID
WHERE Country = 'Austria'


/******************************************************/

-- OUTER Joins

/******************************************************/

-- LEFT/RIGHT Join = Zeigt Tabelle A oder B vollständig an (zusätzlich zur Schnittmenge)
SELECT * FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
--> 2 Ergebnisse mehr (832) --> 2 Customer die noch nie bestellt haben

-- FULL OUTER JOIN = Left + Right gleichzeitig
SELECT * FROM Customers FULL OUTER JOIN Orders ON Orders.CustomerID = Customers.CustomerID


