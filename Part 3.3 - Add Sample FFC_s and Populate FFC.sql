INSERT INTO dbo.AIRPLANE(Airplane_id, Total_number_of_seats, Airplane_type)
VALUES ('Airbus A321-200', '150', 'Airbus')

INSERT INTO dbo.FLIGHT(Flight_number,Airline,Weekdays)
VALUES ('8Q95','Onur Air','Pazar');

INSERT INTO dbo.FARE(Flight_number,Fare_code,Amount,Restrictions)
VALUES ('8Q95','X','79.90','15 kg');

INSERT INTO dbo.FLIGHT_LEG(Flight_number,Leg_number,Departure_airport_code,Scheduled_departure_time,Arrival_airport_code,Scheduled_arrival_time)
VALUES ('8Q95','1','TZX','07:35','IST','09:25');

INSERT INTO dbo.LEG_INSTANCE(Flight_number,Leg_number,Date,Number_of_available_seats,Airplane_id,Departure_airport_code,Departure_time,Arrival_airport_code,Arrival_time)
VALUES ('8Q95','1','2018-01-07','15','Airbus A321-200','TZX','07:35','IST','09:25');

INSERT INTO dbo.CAN_LAND(Airplane_type_name,Airport_code)
VALUES ('Airbus','IST');

INSERT INTO dbo.SEAT_RESERVATION(Flight_number,Leg_number,Date,Seat_number)
VALUES ('8Q95','1','2018-01-07','10C');



INSERT INTO dbo.FLIGHT(Flight_number,Airline,Weekdays)
VALUES ('PC3230','Pegasus','Pazartesi');

INSERT INTO dbo.FARE(Flight_number,Fare_code,Amount,Restrictions)
VALUES ('PC3230','V','179.99','15 kg');

INSERT INTO dbo.FLIGHT_LEG(Flight_number,Leg_number,Departure_airport_code,Scheduled_departure_time,Arrival_airport_code,Scheduled_arrival_time)
VALUES ('PC3230','1','ADB','15:20','SZF','16:55');

INSERT INTO dbo.LEG_INSTANCE(Flight_number,Leg_number,Date,Number_of_available_seats,Airplane_id,Departure_airport_code,Departure_time,Arrival_airport_code,Arrival_time)
VALUES ('PC3230','1','2018-01-22','40','Boeing 737-800','ADB','15:20','SZF','16:55');

INSERT INTO dbo.SEAT_RESERVATION(Flight_number,Leg_number,Date,Seat_number)
VALUES ('PC3230','1','2018-01-22','10E');



-- POPULATING FFC

INSERT INTO dbo.FFC (Flight_number, Leg_number, Date, Seat_number, Customer_name, Customer_phone, Check_in_airport, Check_in_online, Mileage_information)
VALUES ('8Q82', '1', '2017-12-30', '6F', 'Engin ÇETÝN', '05394452010', '1', '0', '920,11 km')

INSERT INTO dbo.FFC (Flight_number, Leg_number, Date, Seat_number, Customer_name, Customer_phone, Check_in_airport, Check_in_online, Mileage_information)
VALUES ('8Q95', '1', '2018-01-07', '10C', 'Engin ÇETÝN', '05394452010', '1', '0', '920,11 km')

INSERT INTO dbo.FFC (Flight_number, Leg_number, Date, Seat_number, Customer_name, Customer_phone, Check_in_airport, Check_in_online, Mileage_information)
VALUES ('PC3230', '1', '2018-01-22', '10E', 'Feyza ASLAN', '05391206568', '0', '1', '')

INSERT INTO dbo.FFC (Flight_number, Leg_number, Date, Seat_number, Customer_name, Customer_phone, Check_in_airport, Check_in_online, Mileage_information)
VALUES ('XQ9158', '1', '2018-01-10', '7E', 'Feyza ASLAN', '05391206568', '0', '1', '')


