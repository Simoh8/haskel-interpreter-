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
