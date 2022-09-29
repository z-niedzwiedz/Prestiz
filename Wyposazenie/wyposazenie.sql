SELECT (select Nazwa from JEDNORG_GET_NAZWAZLOZONA(S.Id_JednOrg, '-'))
as NazwaJO, CAST(P.Imie || ' ' || P.Nazwisko as VarChar(51)) as
KAL_NAZWISKOIMIE, W.Nazwa, S.Ilosc, W.CENA, W.DATALIKWIDACJI,
W.NRINWENTARZOWY
FROM Wyposazenie_Stan S 
Left outer join Pracownik P on(P.Id_Pracownik = S.Id_Pracownik)
Left outer join Wyposazenie W on(W.Id_Wyposazenie = S.Id_Wyposazenie)
