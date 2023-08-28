Use ineuron;
CREATE TABLE Person (
    PersonID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50)
);


CREATE TABLE Address (
    AddressID INT PRIMARY KEY,
    PersonID INT,
    City VARCHAR(50),
    State VARCHAR(50),
    FOREIGN KEY (PersonID) REFERENCES Person(PersonID)
);

INSERT INTO Person (PersonID, FirstName, LastName)
VALUES
    (1, 'John', 'Doe'),
    (2, 'Jane', 'Smith'),
    (3, 'Michael', 'Johnson');


INSERT INTO Address (AddressID, PersonID, City, State)
VALUES
    (1, 1, 'New York', 'NY'),
    (2, 2, 'Los Angeles', 'CA'),
    (3, 3, 'Chicago', 'IL');
    
SELECT p.FirstName, p.LastName, a.City, a.State
FROM Person p
JOIN Address a ON p.PersonID = a.PersonID;