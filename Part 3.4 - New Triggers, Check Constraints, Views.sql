--use AIRLINE

--CREATE TRIGGER MileageInfoInputNotAllowed    -- Havalimanýnda check-in yapýlmazsa Mileage bilgisinin girilmesine izin vermez.
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
--		PRINT('Havalimanýnda check-in yapýlmadýðý sürece (Check_in_airport=0) Mileage Information eklenemez.')
--		ROLLBACK TRANSACTION
--	END
--END


--CREATE TRIGGER AddMileageInfo           -- Havalimanýnda check-in yapýlýrsa Mileage bilgisinin girilmesini saðlar.
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
--		PRINT('Havalimanýnda check-in yapýldýysa (Check_in_airport=1) Mileage Information boþ kalamaz.')
--		ROLLBACK TRANSACTION
--	END
--END


--CREATE TRIGGER CheckInControl           -- Havalimanýnda ve internet üzerinde check-in yapma bilgilerinin tutarlýlýðýný kontrol eder.
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
--		PRINT('Check_in_airport ve Check_in_online ayný deðere sahip olamaz.')
--		ROLLBACK TRANSACTION
--	END
--END



-- CHECK CONSTRAINTS

--ALTER TABLE CUSTOMER   
--ADD CONSTRAINT CheckPassportNumber           -- Pasaport numaralarý 8 haneli olmalýdýr.
--CHECK (Passport_number like '________')


--ALTER TABLE AIRPLANE_TYPE              --AIRPLANE_TYPE tablosundaki max_seats deðeri 0'dan büyük olmalýdýr.
--ADD CONSTRAINT CheckMaxSeats
--CHECK (Max_seats > 0)



-- VIEWS

--CREATE VIEW FrequentFlyersNamePhone     --Sýk uçan müþterilerin isim ve telefon numarasý bilgilerinin gösterilmesi
--AS SELECT DISTINCT Customer_name, Customer_phone
--FROM FFC


--CREATE VIEW CustomerNameMailAddress          -- Bütün müþterilerin bilgileri
--AS SELECT Customer_name, Email, Address
--FROM CUSTOMER


--CREATE VIEW AvailableSeats                           -- Mevcut uçuþlara dair boþ koltuk sayýsý bilgisi
--AS SELECT L.Flight_number, L.Number_of_available_seats, L.Departure_airport_code, A.City
--FROM LEG_INSTANCE L JOIN AIRPORT A ON L.Departure_airport_code=A.Airport_code
