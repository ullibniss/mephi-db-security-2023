SELECT * FROM Routes WHERE DestinationID IN ( SELECT ID FROM Ports WHERE Capacity > 10 );

SELECT Ships.Name, Passenger.Age FROM Ships, Passenger WHERE Passenger.ShipID = Ships.ID;

SELECT ID FROM ships WHERE RouteID IS NULL INTERSECT SELECT ShipID FROM Passenger;

WITH ships_in_ports AS (SELECT PortID FROM ships WHERE PortID IS NOT NULL) SELECT * FROM Ports WHERE ID IN (SELECT * FROM ships_in_ports);

SELECT * FROM Passenger WHERE ShipID IN (SELECT ID FROM Ships WHERE RouteID IS NOT NULL);

SELECT * FROM Passenger WHERE ShipID IN (SELECT ID FROM ships where RouteID IN (SELECT ID FROM Routes WHERE DestinationID = 1 or SourceID = 1));

SELECT * FROM Passenger WHERE ShipID IN (SELECT ID FROM ships where RouteID IN (SELECT ID FROM Routes WHERE DestinationID = 2 or SourceID = 2) INTERSECT SELECT ID FROM Ships WHERE ID != 12); 

SELECT * FROM RouteID WHERE DestinationID NOT IN (SELECT PortID FROM Ships); 