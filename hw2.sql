/* Connor McClaran
MTH 3810 HW2 
-------------------------------------------------------------------------------------------------
\o   /Users/cmccl/Desktop/CS3810/output/hw2output.txt 
\i hw2.sql                  
-------------------------------------------------------------------------------------------------
Using the length of the border with germany in km as the primary key */

CREATE TABLE COUNTRIES ( germanborder INT,name VARCHAR(20) ,latitude VARCHAR(10),
			             longitude VARCHAR(10),area INT,population INT,gdp BIGINT,gdpyear INT);

INSERT INTO COUNTRIES (germanborder,name, latitude, longitude, area, population, gdp, gdpyear)
VALUES (0,'Germany', '51 00 N', '9 00 E', 357022, 80594017, 3495000000000000,2016 ),
       (575,'Netherlands','52 30 N','5 45 E',41543,17084719,773900000000,2016 ) ,
       (133,'Belgium', '50 50 N', '4 00 E', 30528,11491346,470200000000,2016 ),
	   (128,'Luxembourg','49 45 N','6 10 E',2586,594130,60980000000,2016),
	   (467,'Poland', '52 00 N','20 00 E',312685,38476269,467400000000,2016),  
	   (704,'Czechia','49 45 N','15 30 E',78867,10674723,193500000000,2016),
	   (801,'Austria','47 20 N','13 20 E',83871,8754413,387300000000,2016),
	   (418,'France','46 00 N','2 00 E',643801,67106161,2699000000000000,2016),
	   (348,'Switzerland','47 00 N','8 00 E',41277,8236303,662500000000,2016);

CREATE TABLE BORDERS (name VARCHAR(20),borderlength INT,population INT);

INSERT INTO BORDERS (name,borderlength,population)
VALUES ('Netherlands',575,17084719),
       ('Belgium', 133,11491346),
	   ('Luxembourg',128,594130),
	   ('Poland',467,38476269),
	   ('Czechia',704,10674723),
	   ('Austria',801,8754413),
	   ('France',418,67106161),
	   ('Switzerland',348,8236303);



SELECT *FROM COUNTRIES; /*display  countries table*/

/*problem 4b)*/
SELECT * FROM BORDERS; /* display borders table*/

/* problem 4d*/
SELECT name, population FROM BORDERS
WHERE population > 35000000;


















