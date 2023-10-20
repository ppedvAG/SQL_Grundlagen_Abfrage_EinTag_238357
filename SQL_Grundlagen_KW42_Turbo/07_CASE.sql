/******************************************************/

-- CASE - unterscheiden wir definierte Fälle, die die Ausgabe abändern

/******************************************************/


-- Wenn ein Fall gefunden wird, der nicht abgedeckt ist: Ergebnis NULL
SELECT *,
CASE
	WHEN UnitsInStock < 10 THEN 'Nachbestellen'
	WHEN UnitsInStock >= 10 THEN 'Passt.'
	ELSE 'Fehler!'
END as Prüfung
FROM Products

-- Funktioniert auch in UPDATE:
UPDATE Customers
SET City =
CASE
	WHEN Country = 'Germany' THEN 'Berlin'
	WHEN Country = 'France' THEN 'Paris'
	ELSE City
END

SELECT * FROM Customers