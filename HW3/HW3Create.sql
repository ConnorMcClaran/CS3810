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


CREATE TABLE States
{
	STATE_NM  VARCHAR(40),
	STATE_ABR   VARCHAR(40),
	STATE_FIPS  INT,
	WAC         INT,
	PRIMARY KEY (STATE_ABR)
};

CREATE TABLE Cities
{
    	CITY_NM     VARCHAR(50),
	STATE_ABR   VARCHAR(50),
	CITY_MARKET_ID INT,
	PRIMARY KEY (CITY_NM)	
};


CREATE TABLE Airport
{
	AIRPORT_ID INT,
	AIRPORT_SEQ_ID INT,
	CITY_MARKET_ID INT,
	AIRPORT VARCHAR(5),
	PRIMARY KEY (AIRPORT_ID)	
};



CREATE TABLE FlightSummary
{
	DEPARTURES_SCHEDULED INT,
	DEPARTURES_PERFORMED INT,
	PAYLOAD INT,
	SEATS INT, 
	PASSENGERS INT,
	FREIGHT INT,
	MAIL INT,
	DISTANCE INT,
	RAMP_TO_RAMP INT,
	AIR_TIME INT,
	AIRLINE_ID INT,
	ORIGIN_AIRPORT_ID INT,
	DEST_AIRPORT_ID INT,
	YEAR INT,
	QUARTER INT,
	MONTH INT,
	DISTANCE_GROUP INT,
	CLASS CHAR,
	AIRCRAFT_TYPE INT	
};