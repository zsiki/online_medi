# on-line MEDI

## Szükséges csomagok:

- Apache 2.x
- MySQL 5.x
- PHP 7.x

## Adatbázis

### Felépítése:

1. createdb.sql - adatbázis létrehozása
1. medi_mysql.sql - adatbázis táblák létrehozása
1. forms.sql - űrlap (adminisztratív) táblák feltöltése
1. insert.sql - számítási képletek feltöltése

### Táblák

- **groups** feladat csoportok hierarchiája
- **forms** űrlap elemek (field_var mező tartalmát kell használni a képlet leírásánál a **tasks** táblában)
- **tasks** számítási képletek az egyes feladatokhoz
- **elements**, **lists**, **projects**, **users** táblákat nem használjuk még

## Működés

js - AJAX - PHP - MySQL - js
