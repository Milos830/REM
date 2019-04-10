SELECT nekretnina, ne.povrsina, Cena_po_kvadratu, Cena_po_kvadratu*ne.Povrsina as ukupno, ((Cena_po_kvadratu*ne.Povrsina*3/100)) as provizija   
FROM izdavanjenekretnina.stavke_prodaje sp 
left join nekretnina ne 
on sp.Nekretnina = ne.IDnekretnina 
group by nekretnina;

