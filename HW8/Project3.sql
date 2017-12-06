--Connor McClaran
--Project 3 SQL file

--Load postal_codes into table
COPY public.postal_codes FROM 'C:\Users\Public\Documents\postal_codes.txt'
WITH (FORMAT csv, HEADER True, QUOTE '"');
--Create points 
SELECT AddGeometryColumn('public','postal_codes','geom',4269,'POINT',2);
--Load values into classroster
INSERT INTO classroster (last,first,postalcode) VALUES ('McClaran','Connor',80013);

INSERT INTO classroster (last,first,postalcode) VALUES ('Cain','David',75001);

INSERT INTO classroster (last,first,postalcode) VALUES ('Coryell','Christian',56301);

INSERT INTO classroster (last,first,postalcode) VALUES ('Narkewicz','Kenny',05060);

INSERT INTO classroster (last,first,postalcode) VALUES ('Santons','Migel',92354);

UPDATE postal_codes
SET geom = 'POINT(' || postal_codes.long|| ' ' || postal_codes.lat || ')';