-- poistetaan jos löytyy
drop database if exists n0majo01;
-- luodaan uusi
CREATE database n0majo01;
--luodaan taulu tunnus
CREATE table tunnus (user varCHAR(50) primary key NOT null, password varchar(150) not null);
--luodaan taulu tiedot
CREATE table tiedot (user varCHAR(50) UNIQUE, etunimi char(50), sukunimi char(50), email char(100), foreign key (user) references tunnus(user));

-----------------------------------------------------------------------------------------------------------------------------------------------------------

-- Testataksesi backendiä :
-- 1. luo esimerkkitunnus add.php, metodi POST {"user":"keijoman", "password":"keijonsalasana"}

-- 2. Kirjaudu sisään login.php, metodi get, authiin keijoman, keijonsalasana, token talteen

-- 3. Bearer-välilehteen käyttäjän token, Lisää käyttäjälle tiedot addTiedot.php, metodi POST {"etunimi":"Keijo", "sukunimi":"Keijola", "email":"keijoman@mail.com"}

-- 4. Tarkasta tuleeko käyttäjän tiedot-> Bearer-välilehteen käyttäjän token, resources.php metodi get-> pitäisi tulostua user, etunimi, sukunimi ja email.




