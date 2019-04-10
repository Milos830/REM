SELECT iz.Zaposleni, iz.Nekretnina, iz.Datum_pocetka, iz.Datum_kraja, iz.Cena, (((iz.Datum_kraja-iz.Datum_pocetka) / (10.0  * 360.0 * 24.0)) / 30.0) as ukupno,
((((iz.Datum_kraja-iz.Datum_pocetka) / (10.0  * 360.0 * 24.0)) / 30.0)*iz.Cena)-iz.Cena/2 as Zarada, 
 iz.Cena/2 as provizija FROM iznajmljivanja iz where iz.zaposleni like '%1';
 