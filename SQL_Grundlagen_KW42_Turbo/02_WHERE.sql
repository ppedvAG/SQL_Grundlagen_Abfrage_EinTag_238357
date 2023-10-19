/*******************************************************/

-- WHERE - Filtert die Ergebnismenge nach einem oder mehreren Kriterien

/*******************************************************/

SELECT * FROM Customers
WHERE Country = 'Germany' -- Wichtig! Hochkommas aufgrund eines Strings

-- Mit = Operator nur EXAKTE Treffer
SELECT * FROM Customers
WHERE City = 'Paris'

-- WHERE Bedingung funktionieren mit allen "boolschen" Vergleichsoperatoren
--> >, >=, <, <=, =, !=
SELECT * FROM Orders
WHERE Freight > 100
ORDER BY Freight --> ORDER BY immer am Ende

SELECT * FROM Customers
WHERE Country != 'Germany'

-- Mehr als eine Bedingung mit AND oder OR
SELECT * FROM Customers
WHERE Country = 'France' OR Country = 'Brazil'

SELECT * FROM Customers
WHERE Country = 'Germany' --AND City = 'Berlin'


-- BETWEEN gibt eine Reichweite an, Grenzwerte mit inbegriffen
SELECT * FROM Orders
WHERE Freight BETWEEN 100 AND 500

SELECT * FROM Orders
WHERE Freight >= 100 AND Freight <= 500

-- IN Operator fasst mehrere OR Bedingungen zusammen
SELECT * FROM Customers
WHERE Country = 'France' OR
Country = 'Brazil' OR
Country = 'Austria' OR
Country = 'Germany'


--> kürzere Schreibweise mit IN:
SELECT * FROM Customers
WHERE Country IN('France', 'brazil', 'Austria', 'Germany')


-- Aufgaben:
-- 1. Alle Bestellungen (Orders) die nach Deutschland gingen
SELECT * FROM Orders
WHERE ShipCountry = 'Germany'

-- 2. Alle Kunden aus Deutschland oder Frankreich, die aus Berlin oder Paris sind
--> Tabelle: (Customers)
SELECT * FROM Customers
WHERE (Country = 'Germany' OR Country = 'France') AND (City = 'Berlin' OR City = 'Paris')

-- 3. Alle Kunden die eine Fax Nummer hinterlegt haben
--> Tabelle: (Customers)
SELECT Fax FROM Customers
WHERE Fax != 'NULL'

-- Lösung Nr.2
SELECT Fax FROM Customers
WHERE Fax IS NOT NULL

-- 4. Alle Ansprechpartner (ContactNames) die im JobTitel "Manager" haben
--> Tabelle: (Customers)
SELECT * FROM Customers

-- "Gebe mir den ContactName, ContactTitle von der Tabelle "Customers" aus
-- und filter mir die ContactTitle's raus wo das Wort "Manager" vorkommt
SELECT ContactName, ContactTitle FROM Customers
WHERE ContactTitle LIKE '%Manager%'


