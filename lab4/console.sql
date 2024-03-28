SELECT model
from Aircrafts
         join Flights on Aircrafts.ID = Flights.Aircrafts_ID
where Routes_flight_nr = '69'
group by model

Select Routes_flight_nr, name, Routes.origin_iata_code, Routes.destination_iata_code
FROM ((Aircrafts join Flights on Aircrafts.ID = Flights.Aircrafts_ID) join Routes
      on Routes_flight_nr = Routes.flight_nr)
         join Airports on origin_iata_code = iata_code or destination_iata_code = iata_code
where model = '747'

SELEct a2.name, model, Airports.name
from (((Aircrafts as a1 join Flights on a1.ID = Flights.Aircrafts_ID)
    join Routes as r1 on Routes_flight_nr = r1.flight_nr)
         join Airports as a2 on origin_iata_code = iata_code) join Airports on destination_iata_code = Airports.iata_code
where flight_nr = '200'