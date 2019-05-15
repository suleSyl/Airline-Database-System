----LEFT OUTER JOIN

--SELECT *             --FFC tablosundaki check_in_airport bilgisi 1 olan müþterilerin, FFC ve CUSTOMER tablolarýnndaki bilgilerinin listelenmesi                              
--FROM FFC F LEFT OUTER JOIN CUSTOMER C ON C.Customer_name = F.Customer_name AND C.Customer_phone = F.Customer_phone
--WHERE F.Check_in_airport = '1'


----FULL OUTER JOIN

                            -- 15:00'ten sonra inecek uçaklardaki toplam koltuk sayýsý ve boþ koltuk sayýsý
--SELECT L.Flight_number, A.Total_number_of_seats, L.Number_of_available_seats  
--FROM AIRPLANE A FULL OUTER JOIN LEG_INSTANCE L ON A.Airplane_id=L.Airplane_id
--WHERE convert(time, Arrival_time) >= convert(time, '15:00')


----EXISTS

--SELECT *               --FFC tablosundaki kayýtlardan Date'i 1 Ocak 2018 tarihinden büyük olan uçuþlarýn SEAT_RESERVATION tablosundaki bilgilerinin listelenmesi
--FROM SEAT_RESERVATION S
--WHERE EXISTS (SELECT *
--				FROM FFC F
--				WHERE F.Date > '2018-01-01' 
--				AND S.Date = F.Date)


----NOT EXISTS

--SELECT *                                           -- Müþterilerden sýk uçmayanlarýn listesi
--FROM CUSTOMER C
--WHERE NOT EXISTS(SELECT *
--				 FROM FFC F
--				 WHERE C.Customer_name=F.Customer_name AND C.Customer_phone=F.Customer_phone )


----NESTED QUERIES

----1)
--SELECT Flight_number, Amount    --Pazar günü gerçekleþecek olan uçuþlarýn uçuþ numarasý ve ücret bilgisinin listelenmesi
--FROM FARE
--WHERE Flight_number IN (SELECT Flight_number 
--						FROM FLIGHT
--						WHERE Weekdays = 'Pazar')

----2)
--SELECT Flight_number, Date, Number_of_available_seats, Arrival_airport_code   --Arrival_airport_code'u ADB olan uçuþlarýn flight_number, date ve number_of_available_seats bilgilerinin listelenmesi
--FROM LEG_INSTANCE
--WHERE Arrival_airport_code IN (SELECT Airport_code
--								FROM CAN_LAND
--								WHERE Airport_code = 'ADB')

----3)
--SELECT F.Flight_number, C.Customer_name, F.Mileage_information             -- Pazartesi gerçekleþecek bir uçuþta yer alan sýk uçan yolcularýn listesi
--FROM FFC F JOIN CUSTOMER C ON F.Customer_name=C.Customer_name AND F.Customer_phone=C.Customer_phone
--WHERE F.Flight_number IN (SELECT Flight_number 
--						FROM FLIGHT
--						WHERE Weekdays = 'Pazartesi')