namespace app.flight;

entity Airports {
  key IATA3      : String(3);
      Name       : String(100) @title: "Airport";
      City       : String(30)  @title: "City";
      Country    : String(50)  @title: "Country";
      Elevation  : Integer default 0;
      Latitude   : Decimal(12, 9);
      Longitude  : Decimal(12, 9);
      Departures : Association to many FlightRoutes on Departures.StartingAirport=$self;
      Arrivals   : Association to many FlightRoutes on Arrivals.DestinationAirport=$self;
};

entity Airline {
	key IATA     : String(2);
      Name      : String(100) @title: "Airline";
      Country   : String(50)  @title: "Country";
      Routes    : Association to many FlightRoutes on Routes.Airline=$self;
};

entity FlightRoutes {
	key ID                 : String(8);
      StartingAirport    : Association to Airports not null;
      DestinationAirport : Association to Airports not null;
      Airline            : Association to Airline;
      Distance           : Integer;
};