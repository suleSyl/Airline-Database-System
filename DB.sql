USE [master]
GO
/****** Object:  Database [AIRLINE]    Script Date: 7.01.2018 23:10:28 ******/
CREATE DATABASE [AIRLINE]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AIRLINE', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\AIRLINE.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AIRLINE_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\AIRLINE_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [AIRLINE] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AIRLINE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AIRLINE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AIRLINE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AIRLINE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AIRLINE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AIRLINE] SET ARITHABORT OFF 
GO
ALTER DATABASE [AIRLINE] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AIRLINE] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [AIRLINE] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AIRLINE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AIRLINE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AIRLINE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AIRLINE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AIRLINE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AIRLINE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AIRLINE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AIRLINE] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AIRLINE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AIRLINE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AIRLINE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AIRLINE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AIRLINE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AIRLINE] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AIRLINE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AIRLINE] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AIRLINE] SET  MULTI_USER 
GO
ALTER DATABASE [AIRLINE] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AIRLINE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AIRLINE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AIRLINE] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [AIRLINE]
GO
/****** Object:  Table [dbo].[AIRPLANE]    Script Date: 7.01.2018 23:10:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AIRPLANE](
	[Airplane_id] [varchar](50) NOT NULL,
	[Total_number_of_seats] [varchar](50) NOT NULL,
	[Airplane_type] [varchar](50) NOT NULL,
 CONSTRAINT [pk_airplane] PRIMARY KEY CLUSTERED 
(
	[Airplane_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AIRPLANE_TYPE]    Script Date: 7.01.2018 23:10:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AIRPLANE_TYPE](
	[Airplane_type_name] [varchar](50) NOT NULL,
	[Max_seats] [varchar](50) NOT NULL,
	[Company] [varchar](50) NOT NULL,
 CONSTRAINT [pk_airplane_type] PRIMARY KEY CLUSTERED 
(
	[Airplane_type_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AIRPORT]    Script Date: 7.01.2018 23:10:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AIRPORT](
	[Airport_code] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[State] [varchar](50) NULL,
 CONSTRAINT [pk_airport] PRIMARY KEY CLUSTERED 
(
	[Airport_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAN_LAND]    Script Date: 7.01.2018 23:10:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAN_LAND](
	[Airplane_type_name] [varchar](50) NOT NULL,
	[Airport_code] [varchar](50) NOT NULL,
 CONSTRAINT [pk_can_land] PRIMARY KEY CLUSTERED 
(
	[Airplane_type_name] ASC,
	[Airport_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CUSTOMER]    Script Date: 7.01.2018 23:10:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CUSTOMER](
	[Customer_name] [varchar](100) NOT NULL,
	[Customer_phone] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[Country] [varchar](50) NOT NULL,
	[Passport_number] [varchar](50) NOT NULL,
 CONSTRAINT [pk_customer] PRIMARY KEY CLUSTERED 
(
	[Customer_name] ASC,
	[Customer_phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FARE]    Script Date: 7.01.2018 23:10:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FARE](
	[Flight_number] [varchar](50) NOT NULL,
	[Fare_code] [varchar](50) NOT NULL,
	[Amount] [float] NOT NULL,
	[Restrictions] [varchar](100) NOT NULL,
 CONSTRAINT [pk_fare] PRIMARY KEY CLUSTERED 
(
	[Flight_number] ASC,
	[Fare_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FFC]    Script Date: 7.01.2018 23:10:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FFC](
	[Flight_number] [varchar](50) NOT NULL,
	[Leg_number] [varchar](50) NOT NULL,
	[Date] [date] NOT NULL,
	[Seat_number] [varchar](50) NOT NULL,
	[Customer_name] [varchar](100) NOT NULL,
	[Customer_phone] [varchar](50) NOT NULL,
	[Check_in_airport] [bit] NULL,
	[Check_in_online] [bit] NULL,
	[Mileage_information] [varchar](50) NULL,
 CONSTRAINT [pk_ffc] PRIMARY KEY CLUSTERED 
(
	[Flight_number] ASC,
	[Leg_number] ASC,
	[Date] ASC,
	[Seat_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FLIGHT]    Script Date: 7.01.2018 23:10:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FLIGHT](
	[Flight_number] [varchar](50) NOT NULL,
	[Airline] [varchar](50) NOT NULL,
	[Weekdays] [varchar](50) NOT NULL,
 CONSTRAINT [pk_flight] PRIMARY KEY CLUSTERED 
(
	[Flight_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FLIGHT_LEG]    Script Date: 7.01.2018 23:10:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FLIGHT_LEG](
	[Flight_number] [varchar](50) NOT NULL,
	[Leg_number] [varchar](50) NOT NULL,
	[Departure_airport_code] [varchar](50) NOT NULL,
	[Scheduled_departure_time] [time](0) NOT NULL,
	[Arrival_airport_code] [varchar](50) NOT NULL,
	[Scheduled_arrival_time] [time](0) NOT NULL,
 CONSTRAINT [pk_flight_leg] PRIMARY KEY CLUSTERED 
(
	[Flight_number] ASC,
	[Leg_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LEG_INSTANCE]    Script Date: 7.01.2018 23:10:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LEG_INSTANCE](
	[Flight_number] [varchar](50) NOT NULL,
	[Leg_number] [varchar](50) NOT NULL,
	[Date] [date] NOT NULL,
	[Number_of_available_seats] [varchar](50) NOT NULL,
	[Airplane_id] [varchar](50) NOT NULL,
	[Departure_airport_code] [varchar](50) NOT NULL,
	[Departure_time] [time](0) NOT NULL,
	[Arrival_airport_code] [varchar](50) NOT NULL,
	[Arrival_time] [time](0) NOT NULL,
 CONSTRAINT [pk_leg_instance] PRIMARY KEY CLUSTERED 
(
	[Flight_number] ASC,
	[Leg_number] ASC,
	[Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SEAT_RESERVATION]    Script Date: 7.01.2018 23:10:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SEAT_RESERVATION](
	[Flight_number] [varchar](50) NOT NULL,
	[Leg_number] [varchar](50) NOT NULL,
	[Date] [date] NOT NULL,
	[Seat_number] [varchar](50) NOT NULL,
 CONSTRAINT [pk_seat_reservation] PRIMARY KEY CLUSTERED 
(
	[Flight_number] ASC,
	[Leg_number] ASC,
	[Date] ASC,
	[Seat_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[AvailableSeats]    Script Date: 7.01.2018 23:10:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--use AIRLINE

--CREATE TRIGGER MileageInfoInputNotAllowed
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
--		PRINT('Havalimanında check-in yapılmadığı sürece (Check_in_airport=0) Mileage Information eklenemez.')
--		ROLLBACK TRANSACTION
--	END
--END


--CREATE TRIGGER AddMileageInfo
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
--		PRINT('Havalimanında check-in yapıldıysa (Check_in_airport=1) Mileage Information boş kalamaz.')
--		ROLLBACK TRANSACTION
--	END
--END


--CREATE TRIGGER CheckInControl
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
--		PRINT('Check_in_airport ve Check_in_online aynı değere sahip olamaz.')
--		ROLLBACK TRANSACTION
--	END
--END



-- CHECK CONSTRAINTS

--ALTER TABLE CUSTOMER   
--ADD CONSTRAINT CheckPassportNumber           -- Pasaport numaraları 8 haneli olmalıdır.
--CHECK (Passport_number like '________')


--ALTER TABLE AIRPLANE_TYPE              --AIRPLANE_TYPE tablosundaki max_seats değeri 0'dan büyük olmalıdır.
--ADD CONSTRAINT CheckMaxSeats
--CHECK (Max_seats > 0)



-- VIEWS

--CREATE VIEW FrequentFlyersNamePhone     --Sık uçan müşterilerin isim ve telefon numarası bilgilerinin gösterilmesi
--AS SELECT DISTINCT Customer_name, Customer_phone
--FROM FFC


--CREATE VIEW CustomerNameMailAddress
--AS SELECT Customer_name, Email, Address
--FROM CUSTOMER


CREATE VIEW [dbo].[AvailableSeats]
AS SELECT L.Flight_number, L.Number_of_available_seats, L.Departure_airport_code, A.City
FROM LEG_INSTANCE L JOIN AIRPORT A ON L.Departure_airport_code=A.Airport_code

GO
/****** Object:  View [dbo].[CustomerNameMailAddress]    Script Date: 7.01.2018 23:10:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--use AIRLINE

--CREATE TRIGGER MileageInfoInputNotAllowed
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
--		PRINT('Havalimanında check-in yapılmadığı sürece (Check_in_airport=0) Mileage Information eklenemez.')
--		ROLLBACK TRANSACTION
--	END
--END


--CREATE TRIGGER AddMileageInfo
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
--		PRINT('Havalimanında check-in yapıldıysa (Check_in_airport=1) Mileage Information boş kalamaz.')
--		ROLLBACK TRANSACTION
--	END
--END


--CREATE TRIGGER CheckInControl
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
--		PRINT('Check_in_airport ve Check_in_online aynı değere sahip olamaz.')
--		ROLLBACK TRANSACTION
--	END
--END



-- CHECK CONSTRAINTS

--ALTER TABLE CUSTOMER   
--ADD CONSTRAINT CheckPassportNumber           -- Pasaport numaraları 8 haneli olmalıdır.
--CHECK (Passport_number like '________')


--ALTER TABLE AIRPLANE_TYPE              --AIRPLANE_TYPE tablosundaki max_seats değeri 0'dan büyük olmalıdır.
--ADD CONSTRAINT CheckMaxSeats
--CHECK (Max_seats > 0)



-- VIEWS

--CREATE VIEW FrequentFlyersNamePhone     --Sık uçan müşterilerin isim ve telefon numarası bilgilerinin gösterilmesi
--AS SELECT DISTINCT Customer_name, Customer_phone
--FROM FFC


CREATE VIEW [dbo].[CustomerNameMailAddress]
AS SELECT Customer_name, Email, Address
FROM CUSTOMER
GO
/****** Object:  View [dbo].[FlightsIn2018]    Script Date: 7.01.2018 23:10:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[FlightsIn2018]    -- 2018'de gerçekleştirilecek uçuşlar
AS SELECT *
FROM LEG_INSTANCE
WHERE Date > '2017-12-31'
GO
/****** Object:  View [dbo].[FrequentFlyersNamePhone]    Script Date: 7.01.2018 23:10:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--use AIRLINE

--CREATE TRIGGER MileageInfoInputNotAllowed
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
--		PRINT('Havalimanında check-in yapılmadığı sürece (Check_in_airport=0) Mileage Information eklenemez.')
--		ROLLBACK TRANSACTION
--	END
--END



--CREATE TRIGGER AddMileageInfo
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
--		PRINT('Havalimanında check-in yapıldıysa (Check_in_airport=1) Mileage Information boş kalamaz.')
--		ROLLBACK TRANSACTION
--	END
--END



--CREATE TRIGGER CheckInControl
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
--		PRINT('Check_in_airport ve Check_in_online aynı değere sahip olamaz.')
--		ROLLBACK TRANSACTION
--	END
--END



-- CHECK CONSTRAINTS

--ALTER TABLE CUSTOMER   
--ADD CONSTRAINT CheckPassportNumber           -- Pasaport numaraları 8 haneli olmalıdır.
--CHECK (Passport_number like '________')


------CHECK CONSTRAINT
--ALTER TABLE AIRPLANE_TYPE              --AIRPLANE_TYPE tablosundaki max_seats değeri 0'dan büyük olmalıdır.
--ADD CONSTRAINT CheckMaxSeats
--CHECK (Max_seats > 0)



-- VIEWS
CREATE VIEW [dbo].[FrequentFlyersNamePhone]     --Sık uçan müşterilerin isim ve telefon numarası bilgilerinin gösterilmesi
AS SELECT DISTINCT Customer_name, Customer_phone
FROM FFC


GO
/****** Object:  View [dbo].[THY]    Script Date: 7.01.2018 23:10:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[THY]                                                 --Türk Hava Yolları ile uçulan uçuşların tarih ve ücret bilgisinin listelenmesi   
AS SELECT DISTINCT F.Flight_number, F.Airline, S.Date, FA.Amount 
FROM FLIGHT F, FARE FA, SEAT_RESERVATION S
WHERE F.Airline='Türk Hava Yolları'
AND F.Flight_number=FA.Flight_number
AND F.Flight_number=S.Flight_number
GO
INSERT [dbo].[AIRPLANE] ([Airplane_id], [Total_number_of_seats], [Airplane_type]) VALUES (N'Airbus A320', N'150', N'Airbus')
INSERT [dbo].[AIRPLANE] ([Airplane_id], [Total_number_of_seats], [Airplane_type]) VALUES (N'Airbus A321-200', N'150', N'Airbus')
INSERT [dbo].[AIRPLANE] ([Airplane_id], [Total_number_of_seats], [Airplane_type]) VALUES (N'Boeing 737-800', N'186', N'Boeing')
INSERT [dbo].[AIRPLANE_TYPE] ([Airplane_type_name], [Max_seats], [Company]) VALUES (N'Airbus', N'150', N'Airbus')
INSERT [dbo].[AIRPLANE_TYPE] ([Airplane_type_name], [Max_seats], [Company]) VALUES (N'Boeing', N'186', N'Boeing')
INSERT [dbo].[AIRPORT] ([Airport_code], [Name], [City], [State]) VALUES (N'ADA', N'Şakirpaşa Havaalanı', N'Adana', N'Türkiye')
INSERT [dbo].[AIRPORT] ([Airport_code], [Name], [City], [State]) VALUES (N'ADB', N'Adnan Menderes Havaalanı', N'İzmir', N'Türkiye')
INSERT [dbo].[AIRPORT] ([Airport_code], [Name], [City], [State]) VALUES (N'ASR', N'Erkilet Havaalanı', N'Kayseri', N'Türkiye')
INSERT [dbo].[AIRPORT] ([Airport_code], [Name], [City], [State]) VALUES (N'AYT', N'Antalya Havaalanı', N'Antalya', N'Türkiye')
INSERT [dbo].[AIRPORT] ([Airport_code], [Name], [City], [State]) VALUES (N'ESB', N'Esenboğa Havaalanı', N'Ankara', N'Türkiye')
INSERT [dbo].[AIRPORT] ([Airport_code], [Name], [City], [State]) VALUES (N'GZT', N'Oğuzeli Havaalanı', N'Gaziantep', N'Türkiye')
INSERT [dbo].[AIRPORT] ([Airport_code], [Name], [City], [State]) VALUES (N'IST', N'Atatürk Havaalanı', N'İstanbul', N'Türkiye')
INSERT [dbo].[AIRPORT] ([Airport_code], [Name], [City], [State]) VALUES (N'SAW', N'Sabiha Gökçen Havaalanı', N'İstanbul', N'Türkiye')
INSERT [dbo].[AIRPORT] ([Airport_code], [Name], [City], [State]) VALUES (N'SZF', N'Çarşamba Havaalanı', N'Samsun', N'Türkiye')
INSERT [dbo].[AIRPORT] ([Airport_code], [Name], [City], [State]) VALUES (N'TZX', N'Trabzon Havaalanı', N'Trabzon', N'Türkiye')
INSERT [dbo].[CAN_LAND] ([Airplane_type_name], [Airport_code]) VALUES (N'Airbus', N'ADB')
INSERT [dbo].[CAN_LAND] ([Airplane_type_name], [Airport_code]) VALUES (N'Airbus', N'AYT')
INSERT [dbo].[CAN_LAND] ([Airplane_type_name], [Airport_code]) VALUES (N'Airbus', N'IST')
INSERT [dbo].[CAN_LAND] ([Airplane_type_name], [Airport_code]) VALUES (N'Airbus', N'TZX')
INSERT [dbo].[CAN_LAND] ([Airplane_type_name], [Airport_code]) VALUES (N'Boeing', N'ADB')
INSERT [dbo].[CAN_LAND] ([Airplane_type_name], [Airport_code]) VALUES (N'Boeing', N'AYT')
INSERT [dbo].[CAN_LAND] ([Airplane_type_name], [Airport_code]) VALUES (N'Boeing', N'ESB')
INSERT [dbo].[CAN_LAND] ([Airplane_type_name], [Airport_code]) VALUES (N'Boeing', N'GZT')
INSERT [dbo].[CAN_LAND] ([Airplane_type_name], [Airport_code]) VALUES (N'Boeing', N'IST')
INSERT [dbo].[CAN_LAND] ([Airplane_type_name], [Airport_code]) VALUES (N'Boeing', N'SAW')
INSERT [dbo].[CAN_LAND] ([Airplane_type_name], [Airport_code]) VALUES (N'Boeing', N'SZF')
INSERT [dbo].[CUSTOMER] ([Customer_name], [Customer_phone], [Email], [Address], [Country], [Passport_number]) VALUES (N'Ahmet KARA', N'05387418778', N'ahmetkara@gmail.com', N'İzmir', N'Türkiye', N'12456124')
INSERT [dbo].[CUSTOMER] ([Customer_name], [Customer_phone], [Email], [Address], [Country], [Passport_number]) VALUES (N'Burak YILDIZ', N'05315254523', N'burakyildiz@gmail.com', N'İzmir', N'Türkiye', N'12312312')
INSERT [dbo].[CUSTOMER] ([Customer_name], [Customer_phone], [Email], [Address], [Country], [Passport_number]) VALUES (N'Burcu AK', N'05335859669', N'burcuak@gmail.com', N'İstanbul', N'Türkiye', N'16716716')
INSERT [dbo].[CUSTOMER] ([Customer_name], [Customer_phone], [Email], [Address], [Country], [Passport_number]) VALUES (N'Engin ÇETİN', N'05394452010', N'engincetin@gmail.com', N'İzmir', N'Türkiye', N'12345678')
INSERT [dbo].[CUSTOMER] ([Customer_name], [Customer_phone], [Email], [Address], [Country], [Passport_number]) VALUES (N'Esra ŞAHİN', N'05325659874', N'esrasahin@gmail.com', N'Ankara', N'Türkiye', N'23142314')
INSERT [dbo].[CUSTOMER] ([Customer_name], [Customer_phone], [Email], [Address], [Country], [Passport_number]) VALUES (N'Feyza ASLAN', N'05391206568', N'feyzaaslan@gmail.com', N'Denizli', N'Türkiye', N'45678912')
INSERT [dbo].[CUSTOMER] ([Customer_name], [Customer_phone], [Email], [Address], [Country], [Passport_number]) VALUES (N'Gözde AYDIN', N'05355652585', N'gozdeaydin@gmail.com', N'İstanbul', N'Türkiye', N'23423423')
INSERT [dbo].[CUSTOMER] ([Customer_name], [Customer_phone], [Email], [Address], [Country], [Passport_number]) VALUES (N'Tuğçe YILMAZ', N'05324551278', N'tugceyilmaz@gmail.com', N'Bursa', N'Türkiye', N'99887766')
INSERT [dbo].[CUSTOMER] ([Customer_name], [Customer_phone], [Email], [Address], [Country], [Passport_number]) VALUES (N'Ufuk DEMİR', N'05435227598', N'ufukdemir@gmail.com', N'Antalya', N'Türkiye', N'98798798')
INSERT [dbo].[CUSTOMER] ([Customer_name], [Customer_phone], [Email], [Address], [Country], [Passport_number]) VALUES (N'Yusuf YILDIRIM', N'05391206568', N'yusufyildirim@gmail.com', N'Ankara', N'Türkiye', N'78978978')
INSERT [dbo].[FARE] ([Flight_number], [Fare_code], [Amount], [Restrictions]) VALUES (N'8Q82', N'M', 187.71, N'15 kg')
INSERT [dbo].[FARE] ([Flight_number], [Fare_code], [Amount], [Restrictions]) VALUES (N'8Q95', N'X', 79.9, N'15 kg')
INSERT [dbo].[FARE] ([Flight_number], [Fare_code], [Amount], [Restrictions]) VALUES (N'PC2689', N'1', 59.99, N'15 kg')
INSERT [dbo].[FARE] ([Flight_number], [Fare_code], [Amount], [Restrictions]) VALUES (N'PC3230', N'V', 179.99, N'15 kg')
INSERT [dbo].[FARE] ([Flight_number], [Fare_code], [Amount], [Restrictions]) VALUES (N'PC3302', N'Z', 134.99, N'15 kg')
INSERT [dbo].[FARE] ([Flight_number], [Fare_code], [Amount], [Restrictions]) VALUES (N'TK2011', N'P', 180.98, N'15 kg')
INSERT [dbo].[FARE] ([Flight_number], [Fare_code], [Amount], [Restrictions]) VALUES (N'TK2135', N'B', 471, N'15 kg')
INSERT [dbo].[FARE] ([Flight_number], [Fare_code], [Amount], [Restrictions]) VALUES (N'TK2463', N'B', 465, N'15 kg')
INSERT [dbo].[FARE] ([Flight_number], [Fare_code], [Amount], [Restrictions]) VALUES (N'TK7016', N'E', 241.99, N'15 kg')
INSERT [dbo].[FARE] ([Flight_number], [Fare_code], [Amount], [Restrictions]) VALUES (N'TK7270', N'P', 90.99, N'15 kg')
INSERT [dbo].[FARE] ([Flight_number], [Fare_code], [Amount], [Restrictions]) VALUES (N'XQ9090', N'E', 84.99, N'15 kg')
INSERT [dbo].[FARE] ([Flight_number], [Fare_code], [Amount], [Restrictions]) VALUES (N'XQ9158', N'A', 74.98, N'15 kg')
INSERT [dbo].[FFC] ([Flight_number], [Leg_number], [Date], [Seat_number], [Customer_name], [Customer_phone], [Check_in_airport], [Check_in_online], [Mileage_information]) VALUES (N'8Q82', N'1', CAST(0xB43D0B00 AS Date), N'6F', N'Engin ÇETİN', N'05394452010', 1, 0, N'920,11 km')
INSERT [dbo].[FFC] ([Flight_number], [Leg_number], [Date], [Seat_number], [Customer_name], [Customer_phone], [Check_in_airport], [Check_in_online], [Mileage_information]) VALUES (N'8Q95', N'1', CAST(0xBC3D0B00 AS Date), N'10C', N'Engin ÇETİN', N'05394452010', 1, 0, N'920,11 km')
INSERT [dbo].[FFC] ([Flight_number], [Leg_number], [Date], [Seat_number], [Customer_name], [Customer_phone], [Check_in_airport], [Check_in_online], [Mileage_information]) VALUES (N'PC3230', N'1', CAST(0xCB3D0B00 AS Date), N'10E', N'Feyza ASLAN', N'05391206568', 0, 1, N'')
INSERT [dbo].[FFC] ([Flight_number], [Leg_number], [Date], [Seat_number], [Customer_name], [Customer_phone], [Check_in_airport], [Check_in_online], [Mileage_information]) VALUES (N'XQ9158', N'1', CAST(0xBF3D0B00 AS Date), N'7E', N'Feyza ASLAN', N'05391206568', 0, 1, N'')
INSERT [dbo].[FLIGHT] ([Flight_number], [Airline], [Weekdays]) VALUES (N'8Q82', N'Onur Air', N'Cumartesi')
INSERT [dbo].[FLIGHT] ([Flight_number], [Airline], [Weekdays]) VALUES (N'8Q95', N'Onur Air', N'Pazar')
INSERT [dbo].[FLIGHT] ([Flight_number], [Airline], [Weekdays]) VALUES (N'PC2689', N'Pegasus', N'Cuma')
INSERT [dbo].[FLIGHT] ([Flight_number], [Airline], [Weekdays]) VALUES (N'PC3230', N'Pegasus', N'Pazartesi')
INSERT [dbo].[FLIGHT] ([Flight_number], [Airline], [Weekdays]) VALUES (N'PC3302', N'Pegasus', N'Pazar')
INSERT [dbo].[FLIGHT] ([Flight_number], [Airline], [Weekdays]) VALUES (N'TK2011', N'Pegasus', N'Cumartesi')
INSERT [dbo].[FLIGHT] ([Flight_number], [Airline], [Weekdays]) VALUES (N'TK2135', N'Türk Hava Yolları', N'Cumartesi')
INSERT [dbo].[FLIGHT] ([Flight_number], [Airline], [Weekdays]) VALUES (N'TK2463', N'Türk Hava Yolları', N'Perşembe')
INSERT [dbo].[FLIGHT] ([Flight_number], [Airline], [Weekdays]) VALUES (N'TK7016', N'AnadoluJet', N'Perşembe')
INSERT [dbo].[FLIGHT] ([Flight_number], [Airline], [Weekdays]) VALUES (N'TK7270', N'AnadoluJet', N'Perşembe')
INSERT [dbo].[FLIGHT] ([Flight_number], [Airline], [Weekdays]) VALUES (N'XQ9090', N'SunExpress', N'Pazartesi')
INSERT [dbo].[FLIGHT] ([Flight_number], [Airline], [Weekdays]) VALUES (N'XQ9158', N'Sun Express', N'Çarşamba')
INSERT [dbo].[FLIGHT_LEG] ([Flight_number], [Leg_number], [Departure_airport_code], [Scheduled_departure_time], [Arrival_airport_code], [Scheduled_arrival_time]) VALUES (N'8Q82', N'1', N'IST', CAST(0x0028040100000000 AS Time), N'TZX', CAST(0x00981B0100000000 AS Time))
INSERT [dbo].[FLIGHT_LEG] ([Flight_number], [Leg_number], [Departure_airport_code], [Scheduled_departure_time], [Arrival_airport_code], [Scheduled_arrival_time]) VALUES (N'8Q95', N'1', N'TZX', CAST(0x00A46A0000000000 AS Time), N'IST', CAST(0x006C840000000000 AS Time))
INSERT [dbo].[FLIGHT_LEG] ([Flight_number], [Leg_number], [Departure_airport_code], [Scheduled_departure_time], [Arrival_airport_code], [Scheduled_arrival_time]) VALUES (N'PC2689', N'1', N'ESB', CAST(0x00B8A10000000000 AS Time), N'SAW', CAST(0x00C8AF0000000000 AS Time))
INSERT [dbo].[FLIGHT_LEG] ([Flight_number], [Leg_number], [Departure_airport_code], [Scheduled_departure_time], [Arrival_airport_code], [Scheduled_arrival_time]) VALUES (N'PC3230', N'1', N'ADB', CAST(0x00A0D70000000000 AS Time), N'SZF', CAST(0x00E4ED0000000000 AS Time))
INSERT [dbo].[FLIGHT_LEG] ([Flight_number], [Leg_number], [Departure_airport_code], [Scheduled_departure_time], [Arrival_airport_code], [Scheduled_arrival_time]) VALUES (N'PC3302', N'1', N'ADB', CAST(0x00E4A20000000000 AS Time), N'IST', CAST(0x0020B20000000000 AS Time))
INSERT [dbo].[FLIGHT_LEG] ([Flight_number], [Leg_number], [Departure_airport_code], [Scheduled_departure_time], [Arrival_airport_code], [Scheduled_arrival_time]) VALUES (N'TK2011', N'1', N'ASR', CAST(0x00748B0000000000 AS Time), N'IST', CAST(0x008CA00000000000 AS Time))
INSERT [dbo].[FLIGHT_LEG] ([Flight_number], [Leg_number], [Departure_airport_code], [Scheduled_departure_time], [Arrival_airport_code], [Scheduled_arrival_time]) VALUES (N'TK2011', N'2', N'IST', CAST(0x00D0B60000000000 AS Time), N'ADB', CAST(0x000CC60000000000 AS Time))
INSERT [dbo].[FLIGHT_LEG] ([Flight_number], [Leg_number], [Departure_airport_code], [Scheduled_departure_time], [Arrival_airport_code], [Scheduled_arrival_time]) VALUES (N'TK2135', N'1', N'ESB', CAST(0x00DC9B0000000000 AS Time), N'IST', CAST(0x00C8AF0000000000 AS Time))
INSERT [dbo].[FLIGHT_LEG] ([Flight_number], [Leg_number], [Departure_airport_code], [Scheduled_departure_time], [Arrival_airport_code], [Scheduled_arrival_time]) VALUES (N'TK2135', N'2', N'IST', CAST(0x0064C80000000000 AS Time), N'AYT', CAST(0x0024DB0000000000 AS Time))
INSERT [dbo].[FLIGHT_LEG] ([Flight_number], [Leg_number], [Departure_airport_code], [Scheduled_departure_time], [Arrival_airport_code], [Scheduled_arrival_time]) VALUES (N'TK2463', N'1', N'ADA', CAST(0x003CF00000000000 AS Time), N'IST', CAST(0x00D8080100000000 AS Time))
INSERT [dbo].[FLIGHT_LEG] ([Flight_number], [Leg_number], [Departure_airport_code], [Scheduled_departure_time], [Arrival_airport_code], [Scheduled_arrival_time]) VALUES (N'TK2463', N'2', N'IST', CAST(0x0040190100000000 AS Time), N'ESB', CAST(0x00A8290100000000 AS Time))
INSERT [dbo].[FLIGHT_LEG] ([Flight_number], [Leg_number], [Departure_airport_code], [Scheduled_departure_time], [Arrival_airport_code], [Scheduled_arrival_time]) VALUES (N'TK7016', N'1', N'ESB', CAST(0x0010EF0000000000 AS Time), N'ADB', CAST(0x00A4000100000000 AS Time))
INSERT [dbo].[FLIGHT_LEG] ([Flight_number], [Leg_number], [Departure_airport_code], [Scheduled_departure_time], [Arrival_airport_code], [Scheduled_arrival_time]) VALUES (N'TK7270', N'1', N'SAW', CAST(0x0070620000000000 AS Time), N'GZT', CAST(0x00B4780000000000 AS Time))
INSERT [dbo].[FLIGHT_LEG] ([Flight_number], [Leg_number], [Departure_airport_code], [Scheduled_departure_time], [Arrival_airport_code], [Scheduled_arrival_time]) VALUES (N'XQ9090', N'1', N'ADB', CAST(0x0088770000000000 AS Time), N'AYT', CAST(0x00C4860000000000 AS Time))
INSERT [dbo].[FLIGHT_LEG] ([Flight_number], [Leg_number], [Departure_airport_code], [Scheduled_departure_time], [Arrival_airport_code], [Scheduled_arrival_time]) VALUES (N'XQ9158', N'1', N'ADB', CAST(0x00C05D0000000000 AS Time), N'SZF', CAST(0x0004740000000000 AS Time))
INSERT [dbo].[LEG_INSTANCE] ([Flight_number], [Leg_number], [Date], [Number_of_available_seats], [Airplane_id], [Departure_airport_code], [Departure_time], [Arrival_airport_code], [Arrival_time]) VALUES (N'8Q82', N'1', CAST(0xB43D0B00 AS Date), N'45', N'Airbus A320', N'IST', CAST(0x0064040100000000 AS Time), N'TZX', CAST(0x00D41B0100000000 AS Time))
INSERT [dbo].[LEG_INSTANCE] ([Flight_number], [Leg_number], [Date], [Number_of_available_seats], [Airplane_id], [Departure_airport_code], [Departure_time], [Arrival_airport_code], [Arrival_time]) VALUES (N'8Q95', N'1', CAST(0xBC3D0B00 AS Date), N'14', N'Airbus A321-200', N'TZX', CAST(0x00A46A0000000000 AS Time), N'IST', CAST(0x006C840000000000 AS Time))
INSERT [dbo].[LEG_INSTANCE] ([Flight_number], [Leg_number], [Date], [Number_of_available_seats], [Airplane_id], [Departure_airport_code], [Departure_time], [Arrival_airport_code], [Arrival_time]) VALUES (N'PC2689', N'1', CAST(0xC13D0B00 AS Date), N'1', N'Boeing 737-800', N'ESB', CAST(0x00B8A10000000000 AS Time), N'SAW', CAST(0x00C8AF0000000000 AS Time))
INSERT [dbo].[LEG_INSTANCE] ([Flight_number], [Leg_number], [Date], [Number_of_available_seats], [Airplane_id], [Departure_airport_code], [Departure_time], [Arrival_airport_code], [Arrival_time]) VALUES (N'PC3230', N'1', CAST(0xCB3D0B00 AS Date), N'39', N'Boeing 737-800', N'ADB', CAST(0x00A0D70000000000 AS Time), N'SZF', CAST(0x00E4ED0000000000 AS Time))
INSERT [dbo].[LEG_INSTANCE] ([Flight_number], [Leg_number], [Date], [Number_of_available_seats], [Airplane_id], [Departure_airport_code], [Departure_time], [Arrival_airport_code], [Arrival_time]) VALUES (N'PC3302', N'1', CAST(0x8B3D0B00 AS Date), N'20', N'Boeing 737-800', N'ADB', CAST(0x00E4A20000000000 AS Time), N'IST', CAST(0x0020B20000000000 AS Time))
INSERT [dbo].[LEG_INSTANCE] ([Flight_number], [Leg_number], [Date], [Number_of_available_seats], [Airplane_id], [Departure_airport_code], [Departure_time], [Arrival_airport_code], [Arrival_time]) VALUES (N'TK2011', N'1', CAST(0xC23D0B00 AS Date), N'34', N'Boeing 737-800', N'ASR', CAST(0x00748B0000000000 AS Time), N'IST', CAST(0x008CA00000000000 AS Time))
INSERT [dbo].[LEG_INSTANCE] ([Flight_number], [Leg_number], [Date], [Number_of_available_seats], [Airplane_id], [Departure_airport_code], [Departure_time], [Arrival_airport_code], [Arrival_time]) VALUES (N'TK2011', N'2', CAST(0xC23D0B00 AS Date), N'21', N'Airbus A320', N'IST', CAST(0x00D0B60000000000 AS Time), N'ADB', CAST(0x000CC60000000000 AS Time))
INSERT [dbo].[LEG_INSTANCE] ([Flight_number], [Leg_number], [Date], [Number_of_available_seats], [Airplane_id], [Departure_airport_code], [Departure_time], [Arrival_airport_code], [Arrival_time]) VALUES (N'TK2135', N'1', CAST(0xAD3D0B00 AS Date), N'44', N'Boeing 737-800', N'ESB', CAST(0x00DC9B0000000000 AS Time), N'IST', CAST(0x00C8AF0000000000 AS Time))
INSERT [dbo].[LEG_INSTANCE] ([Flight_number], [Leg_number], [Date], [Number_of_available_seats], [Airplane_id], [Departure_airport_code], [Departure_time], [Arrival_airport_code], [Arrival_time]) VALUES (N'TK2135', N'2', CAST(0xAD3D0B00 AS Date), N'32', N'Airbus A320', N'IST', CAST(0x0064C80000000000 AS Time), N'AYT', CAST(0x0024DB0000000000 AS Time))
INSERT [dbo].[LEG_INSTANCE] ([Flight_number], [Leg_number], [Date], [Number_of_available_seats], [Airplane_id], [Departure_airport_code], [Departure_time], [Arrival_airport_code], [Arrival_time]) VALUES (N'TK2463', N'1', CAST(0xB93D0B00 AS Date), N'16', N'Boeing 737-800', N'ADA', CAST(0x003CF00000000000 AS Time), N'IST', CAST(0x00D8080100000000 AS Time))
INSERT [dbo].[LEG_INSTANCE] ([Flight_number], [Leg_number], [Date], [Number_of_available_seats], [Airplane_id], [Departure_airport_code], [Departure_time], [Arrival_airport_code], [Arrival_time]) VALUES (N'TK2463', N'2', CAST(0xB93D0B00 AS Date), N'21', N'Boeing 737-800', N'IST', CAST(0x0040190100000000 AS Time), N'ESB', CAST(0x00A8290100000000 AS Time))
INSERT [dbo].[LEG_INSTANCE] ([Flight_number], [Leg_number], [Date], [Number_of_available_seats], [Airplane_id], [Departure_airport_code], [Departure_time], [Arrival_airport_code], [Arrival_time]) VALUES (N'TK7016', N'1', CAST(0x8F3D0B00 AS Date), N'40', N'Boeing 737-800', N'ESB', CAST(0x0010EF0000000000 AS Time), N'ADB', CAST(0x00A4000100000000 AS Time))
INSERT [dbo].[LEG_INSTANCE] ([Flight_number], [Leg_number], [Date], [Number_of_available_seats], [Airplane_id], [Departure_airport_code], [Departure_time], [Arrival_airport_code], [Arrival_time]) VALUES (N'TK7270', N'1', CAST(0xAB3D0B00 AS Date), N'35', N'Boeing 737-800', N'SAW', CAST(0x0070620000000000 AS Time), N'GZT', CAST(0x00B4780000000000 AS Time))
INSERT [dbo].[LEG_INSTANCE] ([Flight_number], [Leg_number], [Date], [Number_of_available_seats], [Airplane_id], [Departure_airport_code], [Departure_time], [Arrival_airport_code], [Arrival_time]) VALUES (N'XQ9090', N'1', CAST(0xB63D0B00 AS Date), N'67', N'Boeing 737-800', N'ADB', CAST(0x0088770000000000 AS Time), N'AYT', CAST(0x00C4860000000000 AS Time))
INSERT [dbo].[LEG_INSTANCE] ([Flight_number], [Leg_number], [Date], [Number_of_available_seats], [Airplane_id], [Departure_airport_code], [Departure_time], [Arrival_airport_code], [Arrival_time]) VALUES (N'XQ9158', N'1', CAST(0xBF3D0B00 AS Date), N'6', N'Boeing 737-800', N'ADB', CAST(0x00845D0000000000 AS Time), N'SZF', CAST(0x0004740000000000 AS Time))
INSERT [dbo].[SEAT_RESERVATION] ([Flight_number], [Leg_number], [Date], [Seat_number]) VALUES (N'8Q82', N'1', CAST(0xB43D0B00 AS Date), N'6F')
INSERT [dbo].[SEAT_RESERVATION] ([Flight_number], [Leg_number], [Date], [Seat_number]) VALUES (N'8Q95', N'1', CAST(0xBC3D0B00 AS Date), N'10C')
INSERT [dbo].[SEAT_RESERVATION] ([Flight_number], [Leg_number], [Date], [Seat_number]) VALUES (N'PC2689', N'1', CAST(0xC13D0B00 AS Date), N'1A')
INSERT [dbo].[SEAT_RESERVATION] ([Flight_number], [Leg_number], [Date], [Seat_number]) VALUES (N'PC3230', N'1', CAST(0xCB3D0B00 AS Date), N'10E')
INSERT [dbo].[SEAT_RESERVATION] ([Flight_number], [Leg_number], [Date], [Seat_number]) VALUES (N'PC3302', N'1', CAST(0x8B3D0B00 AS Date), N'10A')
INSERT [dbo].[SEAT_RESERVATION] ([Flight_number], [Leg_number], [Date], [Seat_number]) VALUES (N'TK2011', N'1', CAST(0xC23D0B00 AS Date), N'5D')
INSERT [dbo].[SEAT_RESERVATION] ([Flight_number], [Leg_number], [Date], [Seat_number]) VALUES (N'TK2011', N'2', CAST(0xC23D0B00 AS Date), N'7C')
INSERT [dbo].[SEAT_RESERVATION] ([Flight_number], [Leg_number], [Date], [Seat_number]) VALUES (N'TK2135', N'1', CAST(0xAD3D0B00 AS Date), N'11C')
INSERT [dbo].[SEAT_RESERVATION] ([Flight_number], [Leg_number], [Date], [Seat_number]) VALUES (N'TK2135', N'2', CAST(0xAD3D0B00 AS Date), N'9A')
INSERT [dbo].[SEAT_RESERVATION] ([Flight_number], [Leg_number], [Date], [Seat_number]) VALUES (N'TK2463', N'1', CAST(0xB93D0B00 AS Date), N'9B')
INSERT [dbo].[SEAT_RESERVATION] ([Flight_number], [Leg_number], [Date], [Seat_number]) VALUES (N'TK2463', N'2', CAST(0xB93D0B00 AS Date), N'8C')
INSERT [dbo].[SEAT_RESERVATION] ([Flight_number], [Leg_number], [Date], [Seat_number]) VALUES (N'TK7016', N'1', CAST(0x8F3D0B00 AS Date), N'7C')
INSERT [dbo].[SEAT_RESERVATION] ([Flight_number], [Leg_number], [Date], [Seat_number]) VALUES (N'TK7270', N'1', CAST(0xAB3D0B00 AS Date), N'20C')
INSERT [dbo].[SEAT_RESERVATION] ([Flight_number], [Leg_number], [Date], [Seat_number]) VALUES (N'XQ9090', N'1', CAST(0xB63D0B00 AS Date), N'11B')
INSERT [dbo].[SEAT_RESERVATION] ([Flight_number], [Leg_number], [Date], [Seat_number]) VALUES (N'XQ9158', N'1', CAST(0xBF3D0B00 AS Date), N'7E')
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__CUSTOMER__B9E14D8C8FB68FF9]    Script Date: 7.01.2018 23:10:29 ******/
ALTER TABLE [dbo].[CUSTOMER] ADD UNIQUE NONCLUSTERED 
(
	[Passport_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AIRPLANE]  WITH CHECK ADD  CONSTRAINT [fk1_airplane] FOREIGN KEY([Airplane_type])
REFERENCES [dbo].[AIRPLANE_TYPE] ([Airplane_type_name])
GO
ALTER TABLE [dbo].[AIRPLANE] CHECK CONSTRAINT [fk1_airplane]
GO
ALTER TABLE [dbo].[CAN_LAND]  WITH CHECK ADD  CONSTRAINT [fk1_can_land] FOREIGN KEY([Airplane_type_name])
REFERENCES [dbo].[AIRPLANE_TYPE] ([Airplane_type_name])
GO
ALTER TABLE [dbo].[CAN_LAND] CHECK CONSTRAINT [fk1_can_land]
GO
ALTER TABLE [dbo].[CAN_LAND]  WITH CHECK ADD  CONSTRAINT [fk2_can_land] FOREIGN KEY([Airport_code])
REFERENCES [dbo].[AIRPORT] ([Airport_code])
GO
ALTER TABLE [dbo].[CAN_LAND] CHECK CONSTRAINT [fk2_can_land]
GO
ALTER TABLE [dbo].[FARE]  WITH CHECK ADD  CONSTRAINT [fk1_fare] FOREIGN KEY([Flight_number])
REFERENCES [dbo].[FLIGHT] ([Flight_number])
GO
ALTER TABLE [dbo].[FARE] CHECK CONSTRAINT [fk1_fare]
GO
ALTER TABLE [dbo].[FFC]  WITH CHECK ADD  CONSTRAINT [fk1_ffc] FOREIGN KEY([Customer_name], [Customer_phone])
REFERENCES [dbo].[CUSTOMER] ([Customer_name], [Customer_phone])
GO
ALTER TABLE [dbo].[FFC] CHECK CONSTRAINT [fk1_ffc]
GO
ALTER TABLE [dbo].[FFC]  WITH CHECK ADD  CONSTRAINT [fk2_ffc] FOREIGN KEY([Flight_number], [Leg_number], [Date], [Seat_number])
REFERENCES [dbo].[SEAT_RESERVATION] ([Flight_number], [Leg_number], [Date], [Seat_number])
GO
ALTER TABLE [dbo].[FFC] CHECK CONSTRAINT [fk2_ffc]
GO
ALTER TABLE [dbo].[FLIGHT_LEG]  WITH CHECK ADD  CONSTRAINT [fk1_flight_leg] FOREIGN KEY([Flight_number])
REFERENCES [dbo].[FLIGHT] ([Flight_number])
GO
ALTER TABLE [dbo].[FLIGHT_LEG] CHECK CONSTRAINT [fk1_flight_leg]
GO
ALTER TABLE [dbo].[FLIGHT_LEG]  WITH CHECK ADD  CONSTRAINT [fk2_flight_leg] FOREIGN KEY([Departure_airport_code])
REFERENCES [dbo].[AIRPORT] ([Airport_code])
GO
ALTER TABLE [dbo].[FLIGHT_LEG] CHECK CONSTRAINT [fk2_flight_leg]
GO
ALTER TABLE [dbo].[FLIGHT_LEG]  WITH CHECK ADD  CONSTRAINT [fk3_flight_leg] FOREIGN KEY([Arrival_airport_code])
REFERENCES [dbo].[AIRPORT] ([Airport_code])
GO
ALTER TABLE [dbo].[FLIGHT_LEG] CHECK CONSTRAINT [fk3_flight_leg]
GO
ALTER TABLE [dbo].[LEG_INSTANCE]  WITH CHECK ADD  CONSTRAINT [fk1_leg_instance] FOREIGN KEY([Flight_number], [Leg_number])
REFERENCES [dbo].[FLIGHT_LEG] ([Flight_number], [Leg_number])
GO
ALTER TABLE [dbo].[LEG_INSTANCE] CHECK CONSTRAINT [fk1_leg_instance]
GO
ALTER TABLE [dbo].[LEG_INSTANCE]  WITH CHECK ADD  CONSTRAINT [fk2_leg_instance] FOREIGN KEY([Airplane_id])
REFERENCES [dbo].[AIRPLANE] ([Airplane_id])
GO
ALTER TABLE [dbo].[LEG_INSTANCE] CHECK CONSTRAINT [fk2_leg_instance]
GO
ALTER TABLE [dbo].[LEG_INSTANCE]  WITH CHECK ADD  CONSTRAINT [fk3_leg_instance] FOREIGN KEY([Departure_airport_code])
REFERENCES [dbo].[AIRPORT] ([Airport_code])
GO
ALTER TABLE [dbo].[LEG_INSTANCE] CHECK CONSTRAINT [fk3_leg_instance]
GO
ALTER TABLE [dbo].[LEG_INSTANCE]  WITH CHECK ADD  CONSTRAINT [fk4_leg_instance] FOREIGN KEY([Arrival_airport_code])
REFERENCES [dbo].[AIRPORT] ([Airport_code])
GO
ALTER TABLE [dbo].[LEG_INSTANCE] CHECK CONSTRAINT [fk4_leg_instance]
GO
ALTER TABLE [dbo].[SEAT_RESERVATION]  WITH CHECK ADD  CONSTRAINT [fk1_seat_reservation] FOREIGN KEY([Flight_number], [Leg_number], [Date])
REFERENCES [dbo].[LEG_INSTANCE] ([Flight_number], [Leg_number], [Date])
GO
ALTER TABLE [dbo].[SEAT_RESERVATION] CHECK CONSTRAINT [fk1_seat_reservation]
GO
ALTER TABLE [dbo].[AIRPLANE_TYPE]  WITH CHECK ADD  CONSTRAINT [CheckMaxSeats] CHECK  (([Max_seats]>(0)))
GO
ALTER TABLE [dbo].[AIRPLANE_TYPE] CHECK CONSTRAINT [CheckMaxSeats]
GO
ALTER TABLE [dbo].[CUSTOMER]  WITH CHECK ADD  CONSTRAINT [CheckPassportNumber] CHECK  (([Passport_number] like '________'))
GO
ALTER TABLE [dbo].[CUSTOMER] CHECK CONSTRAINT [CheckPassportNumber]
GO
ALTER TABLE [dbo].[CUSTOMER]  WITH CHECK ADD  CONSTRAINT [CheckPhone] CHECK  (([Customer_phone] like '0__________'))
GO
ALTER TABLE [dbo].[CUSTOMER] CHECK CONSTRAINT [CheckPhone]
GO
ALTER TABLE [dbo].[FARE]  WITH CHECK ADD  CONSTRAINT [CheckAmount] CHECK  (([Amount]<>(0)))
GO
ALTER TABLE [dbo].[FARE] CHECK CONSTRAINT [CheckAmount]
GO
ALTER TABLE [dbo].[FLIGHT]  WITH CHECK ADD  CONSTRAINT [CheckDays] CHECK  (([Weekdays]='Pazar' OR [Weekdays]='Cumartesi' OR [Weekdays]='Cuma' OR [Weekdays]='Perşembe' OR [Weekdays]='Çarşamba' OR [Weekdays]='Salı' OR [Weekdays]='Pazartesi'))
GO
ALTER TABLE [dbo].[FLIGHT] CHECK CONSTRAINT [CheckDays]
GO
/****** Object:  Trigger [dbo].[CapacityControl]    Script Date: 7.01.2018 23:10:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[CapacityControl]    -- Total_number_of_seats değerinin Max_seats değerinden büyük olmamasını kontrol eder.
ON [dbo].[AIRPLANE]
FOR INSERT
AS
BEGIN
	DECLARE @total_number_of_seats varchar(50)  
	DECLARE @airplane_type varchar(50)
  SELECT @total_number_of_seats = Total_number_of_seats FROM inserted 
	SELECT @airplane_type = Airplane_type FROM inserted
	IF (@total_number_of_seats > (SELECT Max_seats from AIRPLANE_TYPE A where A.Airplane_type_name=@airplane_type))
	BEGIN
		PRINT ('Yolcu kapasitesi hatalı girildi.')
		ROLLBACK TRANSACTION	
	END
END
GO
/****** Object:  Trigger [dbo].[SetState]    Script Date: 7.01.2018 23:10:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[SetState]        -- AIRPORT tablosundaki State bilgisini eklenen her veri için 'Türkiye' yapar.
ON [dbo].[AIRPORT]
AFTER INSERT  
AS
BEGIN  
  DECLARE @airport_code varchar(50)  
  SELECT @airport_code = Airport_code FROM inserted 
  UPDATE AIRPORT SET State = 'Türkiye' WHERE airport_code = @Airport_code  
END
GO
/****** Object:  Trigger [dbo].[AddMileageInfo]    Script Date: 7.01.2018 23:10:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AddMileageInfo]           -- Havalimanında check-in yapılırsa Mileage bilgisinin girilmesini sağlar.
ON [dbo].[FFC]
FOR INSERT 
AS
BEGIN
	DECLARE @check_in_airport bit	
	DECLARE @mileage_information varchar(50)
	SELECT @check_in_airport = Check_in_airport FROM inserted
	SELECT @mileage_information = Mileage_information FROM inserted
	IF(@check_in_airport = '1' AND @mileage_information = '')
	BEGIN		
		PRINT('Havalimanında check-in yapıldıysa (Check_in_airport=1) Mileage Information boş kalamaz.')
		ROLLBACK TRANSACTION
	END
END
GO
/****** Object:  Trigger [dbo].[CheckInControl]    Script Date: 7.01.2018 23:10:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[CheckInControl]           -- Havalimanında ve internet üzerinde check-in yapma bilgilerinin tutarlılığını kontrol eder.
ON [dbo].[FFC] 
FOR INSERT 
AS
BEGIN
	DECLARE @check_in_airport bit	
	DECLARE @check_in_online bit	
	SELECT @check_in_airport = Check_in_airport FROM inserted
	SELECT @check_in_online = Check_in_online FROM inserted
	IF((@check_in_airport = '0' AND @check_in_online = '0') OR (@check_in_airport = '1' AND @check_in_online = '1'))
	BEGIN		
		PRINT('Check_in_airport ve Check_in_online aynı değere sahip olamaz.')
		ROLLBACK TRANSACTION
	END
END
GO
/****** Object:  Trigger [dbo].[MileageInfoInputNotAllowed]    Script Date: 7.01.2018 23:10:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--use AIRLINE

CREATE TRIGGER [dbo].[MileageInfoInputNotAllowed]    -- Havalimanında check-in yapılmazsa Mileage bilgisinin girilmesine izin vermez.
ON [dbo].[FFC]
FOR INSERT 
AS
BEGIN
	DECLARE @check_in_airport bit	
	DECLARE @mileage_information varchar(50)
	SELECT @check_in_airport = Check_in_airport FROM inserted
	SELECT @mileage_information = Mileage_information FROM inserted
	IF(@check_in_airport = '0' AND @mileage_information != '')
	BEGIN		
		PRINT('Havalimanında check-in yapılmadığı sürece (Check_in_airport=0) Mileage Information eklenemez.')
		ROLLBACK TRANSACTION
	END
END
GO
/****** Object:  Trigger [dbo].[CheckAirportCodes]    Script Date: 7.01.2018 23:10:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[CheckAirportCodes]                  -- Kalkış ve varış havaalanı kodlarının aynı olmasına engel olur.
ON [dbo].[FLIGHT_LEG]
FOR INSERT
AS
BEGIN
    DECLARE @departure_airport_code varchar(50)
	  DECLARE @arrival_airport_code varchar(50)
	  SELECT @departure_airport_code = Departure_airport_code FROM inserted
	  SELECT @arrival_airport_code = Arrival_airport_code FROM inserted
	  IF (@departure_airport_code=@arrival_airport_code)
	  BEGIN
		 PRINT('Kalkış ve varış havaalanları aynı olamaz!')
	     ROLLBACK TRANSACTION
	  END
END
GO
/****** Object:  Trigger [dbo].[CheckLegInstance]    Script Date: 7.01.2018 23:10:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[CheckLegInstance]    -- Bir FLIGHT_LEG'e göre oluşturulan LEG_INSTANCE'ın kalkış ve varış havaalanının FLIGHT_LEG'deki kalkış ve varış havaalanına eşit olmasını sağlar.
ON [dbo].[LEG_INSTANCE]
FOR INSERT
AS
BEGIN
    DECLARE @departure_airport_code varchar(50)
    DECLARE @arrival_airport_code varchar(50)
	  DECLARE @flight_number varchar(50)
    DECLARE @leg_number varchar(50)
    SELECT @departure_airport_code = Departure_airport_code FROM inserted
    SELECT @arrival_airport_code = Arrival_airport_code FROM inserted
    SELECT @flight_number = Flight_number FROM inserted
    SELECT @leg_number = Leg_number FROM inserted
    IF NOT EXISTS (SELECT * FROM FLIGHT_LEG 
                 WHERE Flight_number=@flight_number AND Leg_number=@leg_number AND
				   Departure_airport_code=@departure_airport_code AND Arrival_airport_code=@arrival_airport_code)
    BEGIN
			PRINT('Kalkış ve varış havaalanları için girdiğiniz bilgi FLIGHT_LEG bilgisiyle tutarlı değildir.')
			ROLLBACK TRANSACTION
	  END
END 
GO
/****** Object:  Trigger [dbo].[IncreaseorDecreaseSeats]    Script Date: 7.01.2018 23:10:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[IncreaseorDecreaseSeats]    --Yeni müşteri eklenince boş koltuk sayısını 1 azaltırken müşteri silinirse boş koltuk sayısını 1 artırır.
ON [dbo].[SEAT_RESERVATION]
AFTER DELETE, INSERT  
AS
BEGIN    
	DECLARE @Action as char(1)
	SET @Action = (CASE WHEN EXISTS(SELECT * FROM INSERTED)
                        THEN 'I'  -- Insert
                        WHEN EXISTS(SELECT * FROM DELETED)
                        THEN 'D'  -- Delete
                        ELSE NULL     
                   END)
	DECLARE @flight_number varchar(50)
	IF (@Action='I')
	BEGIN
		SELECT @flight_number = Flight_number FROM inserted
		UPDATE LEG_INSTANCE SET Number_of_available_seats=Number_of_available_seats-1 WHERE Flight_number=@flight_number
	END
	ELSE IF (@Action='D')
	BEGIN
		SELECT @flight_number = Flight_number FROM deleted
		UPDATE LEG_INSTANCE SET Number_of_available_seats=Number_of_available_seats+1 WHERE Flight_number=@flight_number
	END	
END
GO
USE [master]
GO
ALTER DATABASE [AIRLINE] SET  READ_WRITE 
GO
