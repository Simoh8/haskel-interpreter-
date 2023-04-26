USE GroundhogBus

CREATE TABLE Bus (
    BLPN VARCHAR(50) PRIMARY KEY,
    make VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year INT NOT NULL,
    no_of_seats INT NOT NULL
);

USE GroundhogBus

CREATE TABLE BusDriverCertification (
    DLN VARCHAR(50) NOT NULL,
    BLPN VARCHAR(50) NOT NULL,
    FOREIGN KEY (DLN) REFERENCES BusDriver (DLN),
    FOREIGN KEY (BLPN) REFERENCES Bus (BLPN)
);
USE GroundhogBus

CREATE TABLE CharterAssignment (
    CalD VARCHAR(50) PRIMARY KEY,
    datebegin DATE NOT NULL,
    timebegin TIME NOT NULL,
    dateend DATE NOT NULL,
    timeend TIME NOT NULL,
    startlocation VARCHAR(50) NOT NULL,
    endlocation VARCHAR(50) NOT NULL,
    BLPN VARCHAR(50) NOT NULL,
    DLN VARCHAR(50) NOT NULL,
    FOREIGN KEY (BLPN) REFERENCES Bus (BLPN),
    FOREIGN KEY (DLN) REFERENCES BusDriver (DLN)
);


USE GroundhogBus

CREATE TABLE BusDriver (
    DLN VARCHAR(50) PRIMARY KEY,
    SSN VARCHAR(50) NOT NULL,
    birthdate DATE NOT NULL,
    fname VARCHAR(50) NOT NULL,
    Iname VARCHAR(50) NOT NULL
);
