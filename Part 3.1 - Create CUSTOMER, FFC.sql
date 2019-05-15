use AIRLINE

--create table CUSTOMER (
--	Customer_name varchar(100) not null,
--	Customer_phone varchar(50) not null,
--	Email varchar(50) not null,
--	Address varchar(50) not null,
--	Country varchar(50) not null,
--	Passport_number varchar(50) UNIQUE not null,	
--	CONSTRAINT pk_customer PRIMARY KEY (Customer_name, Customer_phone)
--)

--create table FFC (
--	Flight_number varchar(50) not null,
--	Leg_number varchar(50) not null,
--	Date Date not null,
--	Seat_number varchar(50) not null,
--	Customer_name varchar(100) not null,
--	Customer_phone varchar(50) not null,
--	Check_in_airport bit,
--	Check_in_online bit,
--	Mileage_information varchar(50),
--	CONSTRAINT pk_ffc PRIMARY KEY (Flight_number, Leg_number, Date, Seat_number),
--	CONSTRAINT fk1_ffc FOREIGN KEY (Customer_name, Customer_phone) REFERENCES CUSTOMER(Customer_name, Customer_phone),
--	CONSTRAINT fk2_ffc FOREIGN KEY (Flight_number, Leg_number, Date, Seat_number) REFERENCES SEAT_RESERVATION(Flight_number, Leg_number, Date, Seat_number)
--)


--ALTER TABLE SEAT_RESERVATION
--  DROP CONSTRAINT CheckPhone


--ALTER TABLE CUSTOMER   
--ADD CONSTRAINT CheckPhone
--CHECK (Customer_phone like '0__________')


--ALTER TABLE SEAT_RESERVATION
--DROP COLUMN Customer_name


--ALTER TABLE SEAT_RESERVATION
--DROP COLUMN Customer_phone


--DROP TRIGGER TicketControl


--DROP VIEW Customer_Information

