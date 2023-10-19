/*******************************************************/

--LIKE - im WHERE statt boolschen Vergleichsoperatoren; Filtert nach "ungenauen" Eingaben

/*******************************************************/

-- "%" => egal welche Symbole, egal wieviele davon
SELECT CompanyName FROM Customers
WHERE CompanyName LIKE 'B%'

-- " _ " => egal welches Symbol, aber NUR EINS
SELECT CompanyName FROM Customers
WHERE CompanyName LIKE 'B_r%'

SELECT CompanyName FROM Customers
WHERE CompanyName LIKE '_r%'

-- "[]" => alle Symbole in den Klammern gültig, an dieser EINEN Stelle
SELECT PostalCode FROM Customers
WHERE PostalCode LIKE '[012345]%'

-- Dasselbe mit Buchstaben (Characters)
SELECT CompanyName FROM Customers
WHERE CompanyName LIKE '[ABCD]%'

-- [^] => Stellt ein beliebiges Zeichen dar, das nicht in eckigen Klammern steht
SELECT * FROM Customers
WHERE CompanyName LIKE '[^ABCD]%'

-- [x-y] => kürzere Schreibweise zu [012345]%
SELECT PostalCode FROM Customers
WHERE PostalCode LIKE '[0-5]%'

-- Sonderfälle

-- % => Prozentzeichen ausgeben lassen
SELECT * FROM Customers
WHERE CompanyName LIKE '%[%]%'

-- '' => Hochkomma ausgeben lassen
SELECT * FROM Customers
WHERE CompanyName LIKE '%''%'
