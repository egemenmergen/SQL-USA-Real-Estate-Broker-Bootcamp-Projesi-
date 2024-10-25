CREATE VIEW BrokerTotalSales AS
SELECT 
    BrokerCode,
    SUM(Price) AS TotalSales
FROM RealEstateBroker
WHERE HouseStatus = 'for_sale'
GROUP BY BrokerCode;

SELECT * FROM BrokerTotalSales;

CREATE PROCEDURE OdaVeBanyoSayisinaGoreEvGetir
    @MinYatakOdasi INT,
    @MinBanyo INT
AS
BEGIN
    SELECT *
    FROM HouseInfo
    WHERE Bed >= @MinYatakOdasi
    AND Bath >= @MinBanyo;
END;

EXEC OdaVeBanyoSayisinaGoreEvGetir 3, 2;