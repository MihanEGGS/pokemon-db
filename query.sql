--
-- Docs
-- https://www.w3schools.com/sql/default.asp
-- https://sqlzoo.net/wiki/SQL_Tutorial
-- Playground:
-- https://sqlfiddle.com/sqlite/online-compiler
-- https://sqlite.org/fiddle/
--

-- Izveidot tabulu
-- Izveidot 10 pokemonu ierakstus
-- Atlasīt visus pokemonus un visas kolonnas
-- Atlasīt visu pokemonu nosaukums un tos kuriem ir "Fire" tips
-- Atlasīt pokemonus ar kopējām statistikām (total) virs 500
-- Atlasīt pokemonus ar "Flying" tipu un statistikam virs 500
-- Atlasīt unikālās vērtības no type_1 stabiņa (DISTINCT)

-- Sakārtot pokemonus pēc augstāka HP

-- Izdzēst tos, kam attack mazāks par 50

-- INIT database
CREATE TABLE Pokemons (
  NumberID INTEGER,
  Name TEXT,
  Type_1 TEXT,
  Type_2 TEXT, 
  Total INTEGER,
  HP INTEGER,
  Attack INTEGER,
  Defense INTEGER
  
);

INSERT INTO Pokemons(NumberID, Name, Type_1, Type_2, Total, HP, Attack, Defense) VALUES (1,'Bulbasaur','Grass','Poison',318,45,49,49);
INSERT INTO Pokemons(NumberID, Name, Type_1, Type_2, Total, HP, Attack, Defense) VALUES (2,'Ivysaur','Grass','Poison',405,60,62,63);
INSERT INTO Pokemons(NumberID, Name, Type_1, Type_2, Total, HP, Attack, Defense) VALUES (3,'Venusaur','Grass','Poison',525,80,82,83);
INSERT INTO Pokemons(NumberID, Name, Type_1, Type_2, Total, HP, Attack, Defense) VALUES (3,'VenusaurMega Venusaur','Grass','Poison',625,80,100,123);
INSERT INTO Pokemons(NumberID, Name, Type_1, Type_2, Total, HP, Attack, Defense) VALUES (4,'Charmander','Fire','',309,39,52,43);
INSERT INTO Pokemons(NumberID, Name, Type_1, Type_2, Total, HP, Attack, Defense) VALUES (5,'Charmeleon','Fire','',405,58,64,58);
INSERT INTO Pokemons(NumberID, Name, Type_1, Type_2, Total, HP, Attack, Defense) VALUES (6,'Charizard','Fire','Flying',534,78,84,78);
INSERT INTO Pokemons(NumberID, Name, Type_1, Type_2, Total, HP, Attack, Defense) VALUES (6,'CharizardMega Charizard X','Fire','Dragon',634,78,130,111);
INSERT INTO Pokemons(NumberID, Name, Type_1, Type_2, Total, HP, Attack, Defense) VALUES (6,'CharizardMega Charizard Y','Fire','Flying',634,78,104,78);
INSERT INTO Pokemons(NumberID, Name, Type_1, Type_2, Total, HP, Attack, Defense) VALUES (7,'Squirtle','Water','',314,44,48,65);



-- QUERY database
SELECT * FROM Pokemons;
SELECT * FROM Pokemons WHERE Type_1 = 'Fire';  
SELECT * FROM Pokemons WHERE Total > 500;
SELECT * FROM Pokemons WHERE Type_2 = 'Flying' AND Total > 500;
SELECT DISTINCT Type_1 FROM Pokemons;
SELECT * FROM Pokemons ORDER BY HP DESC; 
DELETE * FROM Pokemons WHERE Attack < 50; 
SELECT * FROM Pokemons; 
