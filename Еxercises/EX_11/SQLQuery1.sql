CREATE VIEW VIEW_ONE
AS
SELECT  Airline.airline_name,
		Flight.flight_airline_operator,
		Flight.flight_number,
		COUNT(booking_customer_id) AS CUSTOMER_COUNT
FROM Flight JOIN Airline ON Flight.flight_airline_operator=Airline.airline_code
		JOIN Booking ON Booking.booking_flight_number=Flight.flight_number 
GROUP BY Airline.airline_name,
		Flight.flight_number,
		Flight.flight_airline_operator