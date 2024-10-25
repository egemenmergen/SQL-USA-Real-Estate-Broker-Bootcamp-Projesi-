create database USARealEstateBroker

create table RealEstateBroker(
BrokerID int primary key identity(1,1),
HouseID int,
BrokerCode int,
HouseStatus nvarchar(50),
Price int
foreign key (HouseID) references HouseInfo(HouseID) );

create table HouseAddress(
AddressID int primary key identity(1,1),
HouseID int,
HouseState nvarchar(50),
City nvarchar(50),
Street nvarchar(50),
ZipCode int
foreign key (HouseID) references HouseInfo(HouseID)
)

create table HouseInfo(
HouseID int primary key identity(1,1),
Bed int,
Bath int,
AcreLot int,
HouseSize int,
)



