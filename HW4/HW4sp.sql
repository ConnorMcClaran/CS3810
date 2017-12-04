CREATE OR REPLACE FUNCTION spFlightAnalysis()
DECLARE		Carrier_Name varchar(70);
			Total_Flights int;
			Average_Distance float;
			PassengersToDistance float;
			FreightToDistance float;
			CCPTD int;
			CCFTD int;

BEGIN
	select distinct Unique_Carrier_Name from Carrier into Carrier_Name;
	select count(Unique_Carrier_Name) from Flight where Flight.Unique_Carrier_Entity = Carrier.Unique_Carrier_Entity into Total_Flights;
	select avg(Distance) from Flight where Flight.Unique_Carrier_Entity = Carrier.Unique_Carrier_Entity into Average_Distance;
	select Passengers / Distance from Flight where Flight.Unique_Carrier_Entity = Carrier.Unique_Carrier_Entity into PassengersToDistance;
	select Freight / Distance from Flight where Flight.Unique_Carrier_Entity = Carrier.Unique_Carrier_Entity into FreightToDistance; 
	select corr(Passengers, Distance) from Flight where Flight.Unique_Carrier_Entity = Carrier.Unique_Carrier_Entity into CCPTD; 
	select corr(Freight, Distance) from Flight where Flight.Unique_Carrier_Entity = Carrier.Unique_Carrier_Entity into CCFTD; 


	return  Carrier_Name;
			Total_Flights;
			Average_Distance;
			PassengersToDistance;
			FreightToDistance;
			CCPTD;
			CCFTD;
END;	