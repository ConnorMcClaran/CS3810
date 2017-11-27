/* Connor McClaran
   10/9/2017
   CS 3810
   HW3
*/



Copy Aircraft (AIRCRAFT_ID, AIRCRAFT_GROUP, AIRCRAFT_TYPE, AIRCRAFT_CONFIG, CLASS, SEATS)
from './Aircraft.csv' DELIMITER ',' CSV HEADER;

Copy Carrier (UNIQUE_CARRIER, AIRLINE_ID, UNIQUE_CARRIER_NAME, UNIQUE_CARRIER_ENTITY, REGION)
from './Carrier.csv' DELIMITER ',' CSV HEADER;

COPY State( State_Abr, State_Fips, State_Nm, WAC)
FROM './State.csv' DELIMITER ',' CSV HEADER;

COPY City( City_Market_ID, City_Name, State_Nm)
FROM './City.csv' DELIMITER ',' CSV HEADER;

COPY Flight( Airline_ID, Origin_Airport_ID, Dest_Airport_ID, Month, Passengers, Freight, Distance, Mail, Aircraft_Type, Ramp_To_Ramp, Departures_Scheduled, Departures_Performed, Class, Seats)
FROM './Flight.csv' DELIMITER ',' CSV HEADER;

COPY Airport( Airport_ID, Airport_SEQ_ID, City_Name)
FROM './Airport.csv' DELIMITER ',' CSV HEADER;