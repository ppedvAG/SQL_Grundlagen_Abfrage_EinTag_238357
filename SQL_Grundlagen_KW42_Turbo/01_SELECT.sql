/* Eröffnet Kommentarblock
über mehrere Zeilen
bis geschlossen wird */

-- einzeiliger Kommentar ab "--"

-- Richtige Datenbank ansprechen (per Dropdown oben oder per USE Datenbankname Befehl)
USE Northwind


-- "*" bedeutet ALLE Spalten die vorhanden sind
SELECT * FROM Orders

SELECT * FROM Customers -- => Selektiert ALLES aus der Tabelle "Customers"

-- => Selektiert nur den CompanyName, Country und City aus der Tabelle "Customers" raus
SELECT CompanyName, Country, City 
FROM Customers

-- SQL nicht case sensitive
sElEcT cOmPanyName as Unternehmen, CiTy fRom

CusTomers


-- "Custom" Ausgabe in SQL
SELECT 100 -- => Gibt in einer Spalte, in einer Zeile, in einer Zeile die 100 aus


-- Selektiert 100, 5 und 'Hallo' aus => 3 Spalten, jeweils 1 Zelle für jede Spalte
-- Spaltennamen = "as" => Alias
-- In dem Fall die Ausgabe:
/*
	Hundert		Fuenf	  	Hallo
	-----------------------------
	100			5			Hallo
*/
SELECT 100 as Hundert, 5 as Fuenf, 'Hallo' as Hallo



/********************************************************/

-- ORDER BY - Sortiert Ergebnismengen

/********************************************************/

-- Selektiert alles von "Orders" und sortiert es nach der "Freight" absteigend (=> Von Groß nach Klein)
SELECT * FROM Orders
ORDER BY Freight DESC -- DESC = DESCENDING = absteigend
					  -- ASC = ASCENDING = aufsteigend

-- Es kann nach mehreren Spalten sortiert werden
-- Hier geben wir nur den CompanyName, Country und City aus und sortieren es
-- nach Country absteigend und City aufsteigend (=> aufsteigend = 'default')
SELECT CompanyName, Country, City FROM Customers
ORDER BY Country DESC, City


/********************************************************/

-- TOP X - werden nur die "obersten" X Zeilen ausgegeben

/********************************************************/

--> SELECT BOT X gibt es nicht

-- Selektiert die ersten 10% von der Tabelle Customers
-- 91 Rows => 9,1 rows? (Er rundet dann auf 10 auf)
SELECT TOP 10 PERCENT CompanyName, City FROM Customers

-- Die 20 Bestellungen mit den größten Freight Werten:
SELECT TOP 20 * FROM Orders
ORDER BY Freight DESC

-- Die 20 Bestellungen mit den kleinsten Freight Werten:
SELECT TOP 20 * FROM Orders
ORDER BY Freight 

/********************************************************/

-- DISTINCT - "filtert" Duplikate Ergebniszeilen

/********************************************************/

-- Selektiert Country von der Tabelle "Customers"
--		=> Gibt alle Laender aus (auch mehrmals)
SELECT Country FROM Customers

--	Loesung: DISTINCT => Duplikate herausfiltern
SELECT DISTINCT Country FROM Customers

-- Auch mit "TOP" kombinierbar
SELECT DISTINCT TOP 10 Country FROM Customers

-- Beispiel Order Details ausgeben
SELECT * FROM [Order Details]


/* Uebung: */
-- 1. Die ersten 20 Bestellungen aus der Tabelle "Orders"
--> Anzeigen lassen: OrderID, Freight, CustomerID
SELECT TOP 20 OrderID, Freight, CustomerID 
FROM Orders

-- 2. Die letzten!!! 10% Freight ausgeben lassen aus Orders (absteigend)
SELECT TOP 10 PERCENT * FROM Orders
ORDER BY Freight DESC


-- 3. Gebe mir alle Spalten aus "Customers" aus
SELECT * FROM Customers

