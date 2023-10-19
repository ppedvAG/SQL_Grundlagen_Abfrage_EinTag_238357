/*
	Datentypen in 3 große Gruppen:

	Charakter/String Datentypen:
	char(10) = 'Hallo     ' = 10 Byte Speicherplatz
	nchar
	ASCII = varchar(10) = 'Hallo'	= 5 Byte Speicherplatz
	Kann auch UTF-8 = nvarchar
	Legacy: text ---> varchar(MAX) = bis 2GB speicherplatz
	varchar(8000) sonst maximum
	nvarchar(4000)



	Numerische:

	tinyint 8 bit bis zu 255
	smallint 16 bit bis zu 32k
	int 32 bit 2,14 Mrd
	bigint 64 bit

	bit = 1 oder 0

	decimal(x,y) = x Ziffern gesamt, davon sind y Nachkommastellen
	float
	money


	Datum/Zeit:
	time = 00h 00m 00s
	date = YYYY/MM/DD
	datetime = date + time bis in Millisekunden
	datetime2 = bis Nanosekunden
	smalldatetime = präzise bis Sekunden bereich

	Andere:
	XML
	JSON
	geometry
	geography
*/