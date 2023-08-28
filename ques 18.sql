Use ineuron;
CREATE TABLE IF NOT EXISTS PlaneCoordinates (
    X INT,
    Y INT
);


INSERT INTO PlaneCoordinates (X, Y) VALUES (-1, -1);
INSERT INTO PlaneCoordinates (X, Y) VALUES (0, 0);
INSERT INTO PlaneCoordinates (X, Y) VALUES (-1, -2);


SELECT
    SQRT(POW(MAX(X) - MIN(X), 2) + POW(MAX(Y) - MIN(Y), 2)) AS ShortestDistance
FROM PlaneCoordinates;