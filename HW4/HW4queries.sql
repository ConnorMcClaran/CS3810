
--Query 1

SELECT CITY_NM, STATE_NM, AIRPORT, UNIQUE_CARRIER_NAME, Sum(PASSENGERS)
FORM City natural join State natural join Airport, FlightSummary natural join Carrier
WHERE FlightSummary.ORIGIN_AIRPORT_ID = Airport.AIRPORT_ID and Airport.CITY_MARKET_ID = Cities.CITY_MARKET_ID and Cities.STATE_ABR = 'CO' 
group by CITY_NM, STATE_NM, AIRPORT, UNIQUE_CARRIER_NAME
order by UNIQUE_CARRIER_NAME;

--Query 2

SELECT CITY_NM, STATE_NM, AIRPORT, UNIQUE_CARRIER_NAME, Sum(FREIGHT)
FROM City natural join State natural join Airport, FlightSummary natural join Carrier
WHERE FlightSummary.ORIGIN_AIRPORT_ID = Airport.AIRPORT_ID and Airport.CITY_MARKET_ID = Cities.CITY_MARKET_ID and Cities.STATE_ABR = 'CO' 
group by CITY_NM, STATE_NM, AIRPORT, UNIQUE_CARRIER_NAME
order by UNIQUE_CARRIER_NAME;

--Query 3

SELECT originC.CITY_NM as originCity, originS.STATE_NM as originState, destC.CITY_NM as destCity, UNIQUE_CARRIER_NAME, sum(Passengers)
FROM City originC ,Cities destC, State originS, Carrier natural join FlightSummary, Airport originAirport , Airport destAirport
WHERE FlightSummary.ORIGIN_AIRPORT_ID = originAirport.AIRPORT_ID and originAirport.CITY_MARKET_ID = originC.CITY_MARKET_ID and originC.STATE_ABR <> 'CO' 
	and originC.STATE_ABR = originS.STATE_ABR and FlightSummary.DEST_AIRPORT_ID = destAirport.AIRPORT_ID and destAirport.CITY_MARKET_ID = destC.CITY_MARKET_ID
	and destC.STATE_ABR = 'CO'
group by originCity, originState, destCity, UNIQUE_CARRIER_NAME
order by originCity;

--Query 4

SELECT CITY_NM originCity, STATE_NM originSTATE, UNIQUE_CARRIER_NAME
FROM City, State, Carrier, FlightSummary, Airport
WHERE FlightSummary.ORIGIN_AIRPORT_ID = Airport.AIRPORT_ID and Airport.CITY_MARKET_ID = Cities.CITY_MARKET_ID and Cities.STATE_ABR = States.STATE_ABR 
	and FlightSummary.AIRLINE_ID = Carrier.AIRLINE_ID and FlightSummary.DISTANCE between 500 and 1200
group by originCity, originState, UNIQUE_CARRIER_NAME;