/* Connor McClaran
   10/9/2017
   CS 3810
   HW3
 */

 CREATE TABLE Aircraft
 {
 	ID INT,
 	Group INT,
 	Type INT,
 	Config INT,
 	Class VARCHAR(4),
 	Seats INT,
 	CONSTRAINT Aircraft_pkey (ID)
 };

 CREATE TABLE Carrier 
 {
 	Unique_Carrier VARCHAR(6),
 	Airline_ID INT, 
 	Unique_Carrier_Name VARCHAR(50),
 	Unique_Carrier_Entity VARCHAR(6),
 	Region VARCHAR(1)
 	CONSTRAINT Carrier_pkey (Unique_Carrier)
 };


CREATE TABLE State
{

	State_Abr VARCHAR(2),
	State_Fips INTEGER,
	State_Nm VARCHAR(30),
	WAC INTEGER

};


CREATE TABLE City
{

	City_Market_ID BIGINT,
	City_Name VARCHAR(40),
	State_NM VARCHAR(30)
};


CREATE TABLE Airport
{

	Airport_ID BIGINT,
	Airport_SEQ_ID BIGINT,
	City_Name VARCHAR(30)
};


CREATE TABLE Flight
{

	Airline_ID BIGINT,
	Origin_Airport_ID BIGINT,
	Dest_Airport_ID BIGINT,
	Month INTEGER,
	Passengers INTEGER,
	Freight BIGINT,
	Distance INTEGER,
	Mail BIGINT,
	Aircraft_Type INTEGER,
	Ramp_To_Ramp INTEGER,
	Departures_Scheduled INTEGER,
	Departures_Performed INTEGER,
	Class VARCHAR(1),
	Seats BIGINT
};