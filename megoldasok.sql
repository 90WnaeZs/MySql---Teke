A feladatok megoldására elkészített SQL parancsokat illessze be a feladat sorszáma után!


1. feladat:
CREATE DATABASE teke2
CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci;

3. feladat:
SELECT nev FROM `versenyzok` WHERE korcsop='A' ORDER BY nev ASC;

4. feladat:
SELECT DISTINCT(versenyzo) FROM eredmenyek WHERE ures=0;

5. feladat:
SELECT versenyzok.nev,AVG(eredmenyek.tarolas) AS 'atlagpont' FROM versenyzok JOIN eredmenyek ON versenyzok.rajtszam=eredmenyek.versenyzo
GROUP BY versenyzok.nev
ORDER BY atlagpont DESC;

6. feladat:
SELECT egyesuletek.nev
FROM egyesuletek
JOIN versenyzok
ON egyesuletek.id=versenyzok.egyid
GROUP BY versenyzok.egyid
ORDER BY COUNT(versenyzok.egyid) DESC
LIMIT 1;

7. feladat:
SELECT versenyzok.nev AS 'nev',
SUM(eredmenyek.teli+eredmenyek.tarolas) AS 'eredmeny',
SUM(eredmenyek.tarolas) AS 'tarolas',
SUM(eredmenyek.ures) AS 'ures'
FROM versenyzok
JOIN eredmenyek
ON versenyzok.rajtszam=eredmenyek.versenyzo
GROUP BY eredmenyek.versenyzo
ORDER BY eredmeny DESC,tarolas DESC,ures DESC;

