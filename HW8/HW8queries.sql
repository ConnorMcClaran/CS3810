--Connor McClaran
--Queries for HW8
-- I ran the queries within pgAdmin4 after using the setup instructions in the assignment


--Input Census Data
COPY usa.census2010 FROM 'C:\Users\Public\Documents\census2010.csv'
WITH (FORMAT csv, HEADER True, QUOTE '"');

--Introduction to Spatial Select Queries
SELECT name, ST_Centroid(geom) AS centroid
FROM states
WHERE sub_region = 'Soda';

SELECT name, ST_AsText(ST_Centroid(geom)) AS centroid
FROM states
WHERE sub_region = 'Soda';

SELECT name, ST_AsText(ST_Centroid(geom)) AS centroid, ST_Area(geom) AS area
FROM states
WHERE sub_region = 'Soda';

SELECT name, ST_AsText(ST_Centroid(geom)) AS centroid, ST_Area(ST_Transform(geom,2163)) AS area
FROM states
WHERE sub_region = 'Soda';

--PostGIS Geometry Types
--NOTE: For these tables gid and name were entered manually with pgAdmin4 colum entry tool


--Points Table
SET search_path TO nyc_poi, public;

SELECT AddGeometryColumn('nyc_poi','pts','geom',4269,'POINT',2);

INSERT INTO pts (name, geom)
VALUES ('Empire State Building', ST_GeomFromText('POINT(-73.985744 40.748549)',4269));

INSERT INTO pts (name, geom)
VALUES ('Statue of Liberty', ST_GeomFromText('POINT(-74.044508 40.689229)',4269));

INSERT INTO pts (name, geom)
VALUES ('World Trade Center', ST_GeomFromText('POINT(-74.013371 40.711549)',4269));

INSERT INTO pts (name, geom)
VALUES ('Radio City Music Hall', ST_GeomFromText('POINT(-73.97988 40.760171)',4269)),
('Madison Square Garden', ST_GeomFromText('POINT(-73.993544 40.750541)',4269));

--Lines table
SELECT AddGeometryColumn('nyc_poi','pts','geom',4269,'LINESTRING',2);

INSERT INTO lines (name, geom)
VALUES ('Holland Tunnel',ST_GeomFromText('LINESTRING(
-74.036486 40.730121,
-74.03125 40.72882,
-74.011123 40.725958)',4269)),
('Lincoln Tunnel',ST_GeomFromText('LINESTRING(
-74.019921 40.767119,
-74.002841 40.759773)',4269)),
('Brooklyn Bridge',ST_GeomFromText('LINESTRING(
-73.99945 40.708231,

--Polygon Table
SELECT AddGeometryColumn('nyc_poi','polys','geom',4269,'POLYGON',2);

INSERT INTO polys (name, geom)
VALUES ('Central Park',ST_GeomFromText('POLYGON((
-73.973057 40.764356,
-73.981898 40.768094,
-73.958209 40.800621,
-73.949282 40.796853,
-73.973057 40.764356))',4269));
-73.9937 40.703676)',4269));

INSERT INTO polys (name, geom)
VALUES ('Central Park',ST_GeomFromText('POLYGON((
-73.973057 40.764356,
-73.981898 40.768094,
-73.958209 40.800621,
-73.949282 40.796853,
-73.973057 40.764356),
(-73.966681 40.785221,
-73.966058 40.787674,
-73.965586 40.788064,
-73.9649 40.788291,
-73.963913 40.788194,
-73.963333 40.788291,
-73.962539 40.788259,
-73.962153 40.788389,
-73.96181 40.788714,
-73.961359 40.788909,
-73.960887 40.788925,
-73.959986 40.788649,
-73.959492 40.788649,
-73.958913 40.78873,
-73.958269 40.788974,
-73.957797 40.788844,
-73.957497 40.788568,
-73.957497 40.788259,
-73.957776 40.787739,
-73.95784 40.787057,
-73.957819 40.786569,
-73.960801 40.782394,
-73.961145 40.78215,
-73.961638 40.782036,
-73.962518 40.782199,
-73.963076 40.78267,
-73.963677 40.783661,
-73.965694 40.784457,
-73.966681 40.785221)
)',4269));

--Mixed table
SELECT AddGeometryColumn('nyc_poi','mixed','geom',4269,'GEOMETRY',2);

INSERT INTO mixed (name, geom)
VALUES ('Empire State Building', ST_GeomFromText('POINT(-73.985744 40.748549)',4269)),
('Statue of Liberty', ST_GeomFromText('POINT(-74.044508 40.689229)',4269)),
('World Trade Center', ST_GeomFromText('POINT(-74.013371 40.711549)',4269)),
('Radio City Music Hall', ST_GeomFromText('POINT(-73.97988 40.760171)',4269)),
('Madison Square Garden', ST_GeomFromText('POINT(-73.993544 40.750541)',4269)),
('Holland Tunnel',ST_GeomFromText('LINESTRING(
-74.036486 40.730121,
-74.03125 40.72882,
-74.011123 40.725958)',4269)),
('Lincoln Tunnel',ST_GeomFromText('LINESTRING(
-74.019921 40.767119,
-74.002841 40.759773)',4269)),
('Brooklyn Bridge',ST_GeomFromText('LINESTRING(
-73.99945 40.708231,
-73.9937 40.703676)',4269)),
('Central Park',ST_GeomFromText('POLYGON((
-73.973057 40.764356,
-73.981898 40.768094,
-73.958209 40.800621,
-73.949282 40.796853,
-73.973057 40.764356))',4269));

