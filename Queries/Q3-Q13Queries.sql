-- Question 3

SELECT * FROM Bus
WHERE year > 2020;

-- Question 4
SELECT DISTINCT make FROM Bus;



-- Question 5
SELECT * FROM Bus
ORDER BY make ASC, year DESC;  

-- OR

SELECT * FROM Bus
ORDER BY year DESC;

-- Question 6
SELECT * FROM Bus
WHERE make LIKE 'M_d_';
--  OR
SELECT * FROM Bus
WHERE make LIKE 'M%';

-- Question 7

-- Use COUNT to count the number of rows in the Bus table
SELECT COUNT(*) FROM Bus;

-- Use SUM to calculate the total number of seats in all buses
SELECT SUM(no_of_seats) FROM Bus;

-- Use AVG to calculate the average number of seats in all buses
SELECT AVG(no_of_seats) FROM Bus;

-- Use MIN to find the oldest bus (by year)
SELECT MIN(year) FROM Bus;

-- Use MAX to find the newest bus (by year)
SELECT MAX(year) FROM Bus;



-- Question 8

SELECT make, COUNT(*) FROM Bus
GROUP BY make;

-- OR

SELECT make, model, COUNT(*) FROM Bus
GROUP BY make, model;

-- Question 9

SELECT * FROM Bus
WHERE year = (SELECT MAX(year) FROM Bus);

-- Question 10

SELECT B.BLPN, B.make, B.model, B.year, B.no_of_seats, D.DLN, D.SSN, D.birthdate, D.fname, D.Iname
FROM Bus AS B
INNER JOIN BusDriver AS D
ON B.BLPN = D.DLN;

-- Question 11
USE GroundhogBus

SELECT B.BLPN, B.make, B.model, B.year, B.no_of_seats, D.DLN, D.SSN, D.birthdate, D.fname, D.Iname
FROM Bus AS B
INNER JOIN BusDriver AS D
ON B.BLPN = D.DLN;

-- Question 12

UPDATE Bus
SET make = 'NewMake', model = 'NewModel'
WHERE BLPN = 'BLPN1';

-- Question 13

DELETE FROM BusDriverCertification
WHERE DLN = 'DLN1';
