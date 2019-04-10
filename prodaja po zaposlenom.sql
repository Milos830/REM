SELECT  zaposleni, nekretnina, n.Povrsina, cena_po_kvadratu, (cena_po_kvadratu*n.Povrsina) as ukupno, ((cena_po_kvadratu*n.Povrsina*3/100)) as provizija,
(((cena_po_kvadratu*n.Povrsina*3/100))*30/100) as 'Provizija zaposlenog'
FROM  nekretnina n, prodaja p inner join stavke_prodaje sp
on sp.IDstavke_prodaje = p.IDevidencija_prodaje where zaposleni=1 group by (p.IDevidencija_prodaje)  ;

