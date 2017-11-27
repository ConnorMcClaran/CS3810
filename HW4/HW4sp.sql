create or replace function FlightAnalysis()
	return varchar(70) as $carrierName$, 
			int as $totalFlights$, 
			float as $avgDistance$,
			float as $passengersToDistance$,
			float as $freightToDistance$,
			int as $corrCoeffPassengersToDistance$,
			int as $corrCoeffFreightToDistance$
	
	declare carrierName	varchar(70);
			totalFlights int;
			avgDistance float;
			passengersToDistance float;
			freightToDistance float;
			corrCoefPtoD int;
			corrCoefFtoD int;

BEGIN
	select distinct UNIQUE_CARRIER_NAME from Carrier into carrierName;
	select count(*) from FlightSummary where FlightSummary.UNIQUE_CARRIER_NAME = carrierName into totalFlights;
	select avg(Distance) from FlightSummary where FlightSummary.UNIQUE_CARRIER_NAME = carrierName into avgDistance;
	select passengers / Distance from FlightSummary where FlightSummary.UNIQUE_CARRIER_NAME = carrierName into passengersToDistance;
	select freight / Distance from FlightSummary where FlightSummary.UNIQUE_CARRIER_NAME = carrierName into freightToDistance; 
	
	if passengersToDistance > 1
	Then corrCoefPToD = 1;
	Else corrCoefPToD = -1;
	End if;

	if freightToDistance > 1
	Then corrCoefFToD = 1;
	Else corrCoefFToD = -1;
	End if;

End
