
USE GroundhogBus;

INSERT INTO Bus (BLPN, make, model, year, no_of_seats)
VALUES ('BLPN1', 'Make1', 'Model1', 2020, 40),
       ('BLPN2', 'Make2', 'Model2', 2021, 45),
       ('BLPN3', 'Make3', 'Model3', 2022, 50),
       ('BLPN4', 'Make4', 'Model4', 2023, 55),
       ('BLPN5', 'Make5', 'Model5', 2024, 60),
       ('BLPN6', 'Make6', 'Model6', 2025, 65)

INSERT INTO BusDriver (DLN, SSN, birthdate, fname, Iname)
VALUES ('DLN1', 'SSN1', '1990-01-01', 'Fname1', 'Iname1'),
       ('DLN2', 'SSN2', '1991-02-02', 'Fname2', 'Iname2'),
       ('DLN3', 'SSN3', '1992-03-03', 'Fname3', 'Iname3'),
       ('DLN4', 'SSN4', '1993-04-04', 'Fname4', 'Iname4'),
       ('DLN5', 'SSN5', '1994-05-05', 'Fname5', 'Iname5'),
       ('DLN6', 'SSN6', '1995-06-06', 'Fname6', 'Iname6')
USE GroundhogBus;

INSERT INTO BusDriverCertification (DLN,BLPN)
VALUES('DLN1','BLPN1'),
      ('DLN2','BLPN2'),
      ('DLN3','BLPN3'),
      ('DLN4','BLPN4'),
      ('DLN5','BLPN5'),
      ('DLN6','BLPN6')


-- Insert 7 rows into CharterAssignment
INSERT INTO CharterAssignment (CalD, datebegin, timebegin, dateend, timeend, startlocation, endlocation, BLPN, DLN)
VALUES ('CalD1', '2022-01-01', '08:00:00', '2022-01-02', '18:00:00', 'Location1', 'Location2', 'BLPN1', 'DLN1'),
       ('CalD2', '2022-02-01', '09:00:00', '2022-02-02', '19:00:00', 'Location2', 'Location3', 'BLPN2', 'DLN2'),
       ('CalD3', '2022-03-01', '10:00:00', '2022-03-02', '20:00:00', 'Location3', 'Location4', 'BLPN3', 'DLN3'),
       ('CalD4', '2022-04-01', '11:00:00', '2022-04-02', '21:00:00', 'Location4', 'Location5', 'BLPN4', 'DLN4')
