DROP TABLE Passenger;
DROP TABLE Ships;
DROP TABLE Capitans;
DROP TABLE Routes;
DROP TABLE Ports;


CREATE TABLE IF NOT EXISTS Ports (
    ID INT UNIQUE NOT NULL,
    Name VARCHAR(255),
    Country VARCHAR(255),
    Capacity INT NOT NULL,
    Occupancy INT NOT NULL DEFAULT 0,
    PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS Routes (
    ID INT UNIQUE NOT NULL,
    SourceID INT NOT NULL,
    DestinationID INT NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY (SourceID) REFERENCES Ports(ID),
    FOREIGN KEY (DestinationID) REFERENCES Ports(ID)
);

CREATE TABLE IF NOT EXISTS Capitans (
    ID INT UNIQUE NOT NULL,
    Name VARCHAR(255),
    Age INT NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS Ships (
    ID INT UNIQUE NOT NULL,
    Name VARCHAR(255),
    Capacity INT NOT NULL,
    PortID INT,
    RouteID INT,
    CapitanID INT NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY (RouteID) REFERENCES Routes(ID),
    FOREIGN KEY (CapitanID) REFERENCES Capitans(ID),
    FOREIGN KEY (PortID) REFERENCES Ports(ID)
);

CREATE TABLE IF NOT EXISTS Passenger (
    ID INT UNIQUE NOT NULL,
    Name VARCHAR(255) NOT NULL,
    Surname VARCHAR(255),
    Age INT NOT NULL,
    ShipID INT NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY (ShipID) REFERENCES Ships(ID)
);




INSERT INTO ports (ID, Name, Country, Capacity, Occupancy) VALUES (1, 'Florida', 'USA', 15, 0), (2, 'Columbia', 'Columbia', 10, 0), (3, 'Singapore', 'Singapore', 30, 0), (4, 'Born', 'Netherlands', 10, 0), (5, 'India', 'India', 60, 0);

INSERT INTO routes (ID, SourceID, DestinationID) VALUES (1, 1, 5), (2, 1, 4), (3, 2 ,4), (4, 4, 1), (5, 3, 2), (6, 2, 3);

INSERT INTO capitans (ID, Name, Age) VALUES (1, 'Bartholomew Roberts', 33), (2, 'Anne Bonny', 21), (3, 'Thomas Tew', 65), (4, 'Samuel Bellamy',57), (5,'Mary Read',53), (6, 'Blackbeard', 217), (7,'Monkey D Luffy', 15), (8, 'Cheung Po Tsai', 77);

INSERT INTO ships (ID, Name, Capacity, PortID, RouteID, CapitanID) VALUES (1, 'Nautilus', 100, NULL, 1, 1), (2, 'Valhala', 300, 4, NULL, 2), (3, 'Piece of Ship', 50, 3, NULL, 3), (4, 'Unsinkable', 150, 1, NULL, 4), (5, 'Aquaholic', 10, NULL, 2, 5), (6, 'Pirate-Hookers', 40, NULL, 4, 4), (7, 'Glory Haul', 600, NULL, 3, 6), (8, 'Fishsizzle', 5000, 4, NULL,7), (9, 'Tip Sea', 2, 2, NULL,4), (10, 'The Leaky Barrel', 128, NULL, 5,5), (11, 'Fortuna', 255, 1, NULL, 8), (12, 'Ghost in the Tacobell', 1337, NULL, 6 ,5);

INSERT INTO passenger (ID, Name, Surname, Age, ShipID) VALUES (1,'Kiran', 'Harding',10, 1),
                                                (2,'Sharon', 'Blake',19, 2),
                                                (3,'Wayne', 'Horne',33, 3),
                                                (4,'Danyal', 'Serrano',37, 4),
                                                (5,'Jak', 'Arias',22, 5),
                                                (6,'Aayan', 'Wagner',93, 6),
                                                (7,'Tilly', 'Carlson',54, 1),
                                                (8,'Kelvin', 'Archer',63, 8),
                                                (9,'Calvin', 'Daniels',29, 12),
                                                (10,'Katelyn', 'Cotton',45, 1),
                                                (11,'Alan', 'Cox', 23, 7),
                                                (12,'Cindy', 'Horn',11, 4),
                                                (13,'Mikey', 'Hull',76, 4),
                                                (14,'Brooklyn', 'Mueller',23, 4),
                                                (15,'Lewys', 'Wilkins',10,2),
                                                (16,'Ayden', 'Stein', 67, 7),
                                                (17,'Norman', 'Cole', 61, 8),
                                                (18,'Kirsten', 'Kirby', 54,6),
                                                (19,'Benedict', 'Blackwell', 10, 4),
                                                (20,'Jamil', 'Green', 50, 2),
                                                (21,'Aliya', 'Mcclure', 34,9),
                                                (22,'Ridwan', 'England', 67,10),
                                                (23,'Denzel', 'Richmond', 68, 10),
                                                (24,'Ewan', 'Wiley', 43, 11),
                                                (25,'Melvin', 'Wong', 62, 12),
                                                (26,'Alfie', 'Pierce', 12, 9),
                                                (27,'Zohaib', 'Joseph', 34, 6),
                                                (28,'Jakub', 'Padilla', 90, 2),
                                                (29,'Maia', 'Hale', 36, 3),
                                                (30,'Sumaya', 'Matthams', 88, 4);

