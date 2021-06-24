

USE Week10;

Create Table Airline(
		airline_code char(2) CONSTRAINT pk_airline PRIMARY KEY,
		airline_name varchar(50) UNIQUE,
		airline_country varchar(50)
);
Create Table Airport(
		airport_code char(3) CONSTRAINT pk_airport PRIMARY KEY,
		airport_name varchar(100),
		airport_country varchar(100),
		airport_city varchar(100),
		UNIQUE(airport_name, airport_country)
);

Create Table Airplane(
		airplane_code char(3) CONSTRAINT pk_aiplane PRIMARY KEY,
		airplane_type varchar(100),
		airplane_seats int,
		airplane_year int,
		CHECK (airplane_seats>0)
);

Create Table Flight(
		flight_number varchar(10) CONSTRAINT pk_flight PRIMARY KEY,
		flight_airline_operator char(2) NOT NULL,
		flight_dep_airport char(3) NOT NULL,
		flight_arr_airport char(3) NOT NULL,
		flight_time time NOT NULL,
		flight_duration int NOT NULL,
		flight_airplane char(3) NOT NULL,
		FOREIGN KEY (flight_airline_operator) REFERENCES Airline(airline_code), 
		FOREIGN KEY (flight_airplane) REFERENCES Airplane(airplane_code),
		FOREIGN KEY (flight_dep_airport) REFERENCES Airport(airport_code),
		FOREIGN KEY (flight_arr_airport) REFERENCES Airport(airport_code)
);

Create Table Customer(
		customer_id int CONSTRAINT pk_customer PRIMARY KEY,
		customer_fname varchar(20) NOT NULL,
		customer_lname varchar(20),
		customer_email varchar(20),
		CONSTRAINT ch_email CHECK (LEN(customer_email)>6 AND (customer_email like '%@%.%'))
);

Create Table Agency(
		agency_name varchar(50) CONSTRAINT pk_agency PRIMARY KEY,
		agency_country varchar(50),
		agency_city varchar(50),
		agency_phone varchar(10)
);

Create Table Booking(
		booking_code char(6) CONSTRAINT pk_booking PRIMARY KEY,
		booking_agency varchar(50) NOT NULL,
		booking_airline_code char(2) NOT NULL,
		booking_flight_number varchar(10) NOT NULL,
		booking_customer_id int NOT NULL,
		booking_date Date NOT NULL,
		booking_flight_date Date NOT NULL,
		booking_price int NOT NULL,
		booking_status TINYINT NOT NULL CHECK (booking_status IN(0,1)),
		CHECK (booking_date<booking_flight_date),
		FOREIGN KEY (booking_agency) REFERENCES Agency(agency_name)
);
ALTER Table Booking 
ADD FOREIGN KEY (booking_airline_code) REFERENCES Airline (airline_code);
ALTER Table Booking
ADD FOREIGN KEY (booking_flight_number) REFERENCES Flight(flight_number);
ALTER Table Booking 
ADD FOREIGN KEY (booking_customer_id) REFERENCES Customer(customer_id);

