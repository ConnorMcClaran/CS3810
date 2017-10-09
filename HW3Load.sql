/* Connor McClaran
   10/9/2017
   CS 3810
   HW3
*/



Copy Aircraft (AIRCRAFT_ID, AIRCRAFT_GROUP, AIRCRAFT_TYPE, AIRCRAFT_CONFIG, CLASS, SEATS)
from './Aircraft.csv' DELIMITER ',' CSV HEADER;

Copy Carrier (UNIQUE_CARRIER, AIRLINE_ID, UNIQUE_CARRIER_NAME, UNIQUE_CARRIER_ENTITY, REGION)
from './Carrier.csv' DELIMITER ',' CSV HEADER;

Copy Destination (DEST_AIRPORT_ID, DEST_AIRPORT_SEQ_ID, DEST_CITY_MARKET_ID, DEST, DEST_CITY_NAME, DEST_STATE_ABR, DEST_STATE_FIPS, DEST_STATE_NM, DEST_WAC)
from './Destination.csv' DELIMITER ',' CSV HEADER;

Copy Origin (ORIGIN_AIRPORT_ID, ORIGIN_AIRPORT_SEQ_ID, ORIGIN_CITY_MARKET_ID, ORIGIN, ORIGIN_CITY_NAME, ORIGIN_STATE_ABR, ORIGIN_STATE_FIPS, ORIGIN_STATE_NM, ORIGIN_WAC)
from './Origin.csv' DELIMITER ',' CSV HEADER;

Copy Departure (AIRCRAFT_ID, DEPARTURES_SCHEDULED, DEPARTURES_PERFORMED, PAYLOAD, FREIGHT, MAIL, YEAR, QUARTER, MONTH)
from './Departure.csv' DELIMITER ',' CSV HEADER;

Copy Flight (AIRCRAFT_ID, DISTANCE, RAMP_TO_RAMP, AIR_TIME, DISTANCE_GROUP)
from './Flight.csv' DELIMITER ',' CSV HEADER;