--use AIRLINE

--CREATE TRIGGER MileageInfoInputNotAllowed    -- Havaliman�nda check-in yap�lmazsa Mileage bilgisinin girilmesine izin vermez.
--ON FFC
--FOR INSERT 
--AS
--BEGIN
--	DECLARE @check_in_airport bit	
--	DECLARE @mileage_information varchar(50)
--	SELECT @check_in_airport = Check_in_airport FROM inserted
--	SELECT @mileage_information = Mileage_information FROM inserted
--	IF(@check_in_airport = '0' AND @mileage_information != '')
--	BEGIN		
--		PRINT('Havaliman�nda check-in yap�lmad��� s�rece (Check_in_airport=0) Mileage Information eklenemez.')
--		ROLLBACK TRANSACTION
--	END
--END


--CREATE TRIGGER AddMileageInfo           -- Havaliman�nda check-in yap�l�rsa Mileage bilgisinin girilmesini sa�lar.
--ON FFC
--FOR INSERT 
--AS
--BEGIN
--	DECLARE @check_in_airport bit	
--	DECLARE @mileage_information varchar(50)
--	SELECT @check_in_airport = Check_in_airport FROM inserted
--	SELECT @mileage_information = Mileage_information FROM inserted
--	IF(@check_in_airport = '1' AND @mileage_information = '')
--	BEGIN		
--		PRINT('Havaliman�nda check-in yap�ld�ysa (Check_in_airport=1) Mileage Information bo� kalamaz.')
--		ROLLBACK TRANSACTION
--	END
--END


--CREATE TRIGGER CheckInControl           -- Havaliman�nda ve internet �zerinde check-in yapma bilgilerinin tutarl�l���n� kontrol eder.
--ON FFC 
--FOR INSERT 
--AS
--BEGIN
--	DECLARE @check_in_airport bit	
--	DECLARE @check_in_online bit	
--	SELECT @check_in_airport = Check_in_airport FROM inserted
--	SELECT @check_in_online = Check_in_online FROM inserted
--	IF((@check_in_airport = '0' AND @check_in_online = '0') OR (@check_in_airport = '1' AND @check_in_online = '1'))
--	BEGIN		
--		PRINT('Check_in_airport ve Check_in_online ayn� de�ere sahip olamaz.')
--		ROLLBACK TRANSACTION
--	END
--END



-- CHECK CONSTRAINTS

--ALTER TABLE CUSTOMER   
--ADD CONSTRAINT CheckPassportNumber           -- Pasaport numaralar� 8 haneli olmal�d�r.
--CHECK (Passport_number like '________')


--ALTER TABLE AIRPLANE_TYPE              --AIRPLANE_TYPE tablosundaki max_seats de�eri 0'dan b�y�k olmal�d�r.
--ADD CONSTRAINT CheckMaxSeats
--CHECK (Max_seats > 0)



-- VIEWS

--CREATE VIEW FrequentFlyersNamePhone     --S�k u�an m��terilerin isim ve telefon numaras� bilgilerinin g�sterilmesi
--AS SELECT DISTINCT Customer_name, Customer_phone
--FROM FFC


--CREATE VIEW CustomerNameMailAddress          -- B�t�n m��terilerin bilgileri
--AS SELECT Customer_name, Email, Address
--FROM CUSTOMER


--CREATE VIEW AvailableSeats                           -- Mevcut u�u�lara dair bo� koltuk say�s� bilgisi
--AS SELECT L.Flight_number, L.Number_of_available_seats, L.Departure_airport_code, A.City
--FROM LEG_INSTANCE L JOIN AIRPORT A ON L.Departure_airport_code=A.Airport_code
