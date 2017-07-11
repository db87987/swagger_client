# SwaggerClient::Reservation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**flight_tickets** | [**FlightTicket**](FlightTicket.md) |  | [optional] 
**unticketed_flights** | [**Array&lt;FlightReservationBound&gt;**](FlightReservationBound.md) | The flight itineraries in this reservation that have not yet been ticketed or priced. | [optional] 
**cars** | [**Array&lt;CarReservation&gt;**](CarReservation.md) | The rental cars reserved. | [optional] 
**hotels** | [**Array&lt;HotelReservation&gt;**](HotelReservation.md) | The hotel room bookings in this reservation. | [optional] 
**others** | [**Array&lt;OtherReservation&gt;**](OtherReservation.md) | Free text information to represent other travel items that may be considered part of the travel itinerary in this reservation. | [optional] 


