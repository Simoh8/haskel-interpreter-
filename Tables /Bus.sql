USE GroundhogBus

CREATE TABLE Bus (
    BLPN VARCHAR(50) PRIMARY KEY,
    make VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year INT NOT NULL,
    no_of_seats INT NOT NULL
);
