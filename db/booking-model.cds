namespace app.booking;

using common.Managed as Managed from './common';
using app.flight as flight from './flight-model';

entity Bookings : Managed {
      key BookingNo          : String(25);    // e.g. "20180726/GA1B6"
      Route				 : Association to flight.FlightRoutes;
      CustomerName       : String(50);
      EmailAddress       : String(50);
      DateOfTravel       : DateTime       not null;
      Cost               : Integer		  not null;
      NumberOfPassengers : Integer        default 1;
};