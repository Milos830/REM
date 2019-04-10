SELECT distinct zaposleni, nekretnina, Datum_kraj, Datum_pocetak, cena, 
(((Datum_kraj-Datum_pocetak)/(10.0  * 360.0 * 24.0)) / 30.0) as 'Ukupan broj meseci', 
(((Datum_kraj-Datum_pocetak)/(10.0  * 360.0 * 24.0)) / 30.0)*cena as Zarada, cena/2 as provizija
from izdavanjenekretnina.iznajmljivanja iz right join stavke_iznajmljivanja si
on iz.IDevidencija_iznajmljivanja = si.IDIznajmljivanje where zaposleni= + ID





