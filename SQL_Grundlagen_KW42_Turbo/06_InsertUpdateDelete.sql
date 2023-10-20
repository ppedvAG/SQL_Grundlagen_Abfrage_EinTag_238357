/******************************************************/

-- CREATE / ALTER / DROP - DDL (Data Definition Language)

/******************************************************/

-- Immer wenn wir Datenbankobjekte "bearbeiten" gelten diese Befehle


-- Neue Tabelle anlegen mit dem Namen "PurchasingOrders"
CREATE TABLE PurchasingOrders
(
	ID int identity(1, 1) PRIMARY KEY, 
	OrderDate date NOT NULL,		   
	ProductID int NOT NULL
)

-- Beziehung zwischen PurchasingOrders und Products anlegen über ProductID
ALTER TABLE PurchasingOrders
ADD FOREIGN KEY (ProductID) REFERENCES Products (ProductID)

-- Neue Spalte hinzufuegen in PurchasingOrders
-- "NeueSpalte" mit varchar(50)
ALTER TABLE PurchasingOrders
ADD NeueSpalte VARCHAR(50)

-- Tabelle loeschen
DROP TABLE PurchasingOrders

-- Spalte loeschen in PurchasingOrders
ALTER TABLE PurchasingOrders
DROP COLUMN NeueSpalte

-- Tabelle erneut anzeigen
SELECT * FROM PurchasingOrders



/******************************************************/

-- INSERT - Hinzufuegen von Datensaetzen in bestehender Table

/******************************************************/

-- Alle Spalten befuellen:
INSERT INTO PurchasingOrders
VALUES ('20231020', 5)

-- Explizit einzelne Spalten befuellen:
INSERT INTO PurchasingOrders (OrderDate, ProductId)
VALUES ('20231020', 3)

-- Das Ergebnis vom SELECT in die Tabelle speichern 
INSERT INTO PurchasingOrders
SELECT GETDATE(), 3

/******************************************************/

-- DELETE - Loeschen von Datensaetzen in einem bestehendem Table

/******************************************************/

-- WICHTIG!: WHERE nutzen, sonst loeschen wir alles in der Tabelle
DELETE FROM PurchasingOrders
WHERE ID = 3

SELECT * FROM PurchasingOrders

/******************************************************/

-- UPDATE - Aendern von Spaltenwerten in einem vorhandenden Datensatz

/******************************************************/

-- Wir veraendern den Wert in ProductID zu 10
-- wo die ID = 1 ist
-- in der Tabelle PurchasingOrders
UPDATE PurchasingOrders
SET ProductID = 10
WHERE id = 1

/******************************************************/

/*
	Uebung: Erstelle mir die Tabelle TestTabelle
	--> ID, Automatisch inkrementieren, soll nicht NULL sein, PRIMARY KEY
	--> TestDaten varchar(50) NOT null
	--> Infos varchar(50) null
*/

CREATE TABLE TestTabelle
(
	ID int identity(1, 1) primary key NOT NULL,
	TestDaten varchar(50) NOT NULL,
	Infos varchar(50) NULL
)

SELECT * FROM TestTabelle

/*
	Tabelle befüllen 2x
	Beim ersten mal mit allen Werten
	Beim zweiten mal nur die Testdaten
*/
INSERT INTO TestTabelle 
VALUES ('Test', 'Text')

INSERT INTO TestTabelle (TestDaten)
VALUES ('Hallo')


-- 	Beim zweiten Datensatz mit UPDATE eine Info hinzufügen
UPDATE TestTabelle
SET Infos = 'Klaus'
WHERE ID = 2