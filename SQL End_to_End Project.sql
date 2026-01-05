CREATE DATABASE logistics_db;
USE logistics_db;
SELECT COUNT(*) FROM logistics_cleaned_dataset;
SELECT DISTINCT Vendor FROM logistics_cleaned_dataset;
SELECT * FROM logistics_cleaned_dataset WHERE Weight_kg >20;
SELECT SUM(Selling_Price) AS total_revenue FROM logistics_cleaned_dataset;
SELECT Transport_Mode,AVG(Delivery_Time_Days) AS avg_delivery_time FROM logistics_cleaned_dataset GROUP BY Transport_Mode;
SELECT Destination_city,COUNT(*) AS Shipment_Count FROM logistics_cleaned_dataset GROUP BY Destination_City ORDER BY shipment_Count DESC Limit 5;
SELECT * FROM logistics_cleaned_dataset WHERE Delivery_Status = 'Delayed';
SELECT SUM(Return_Reason IS NOT NULL) * 100.0 / COUNT(*) AS return_rate_percentage FROM logistics_cleaned_dataset;
select Source_City,Destination_City,Total_Profit FROM (Select Source_City,Destination_City,SUM(Selling_Price - Cost) AS Total_Profit FROM logistics_Cleaned_Dataset GROUP BY Source_City,Destination_City) AS Route_Profit ORDER BY Total_Profit DESC LIMIT 1;
Select Vendor, Avg_Profit FROM (Select Vendor, Avg(Selling_Price - Cost) AS Avg_Profit FROM logistics_Cleaned_Dataset GROUP BY Vendor) AS Vendor_Profit ORDER BY Avg_Profit DESC;
Select Transport_Mode,Delivery_Status,Shipment_Count FROM (Select Transport_Mode,Delivery_Status,Count(*) AS Shipment_Count From logistics_Cleaned_Dataset GROUP BY Transport_Mode,Delivery_Status) AS Status_Matix ORDER BY Transport_Mode,Delivery_Status;
SELECT Transport_Mode, AVG(Delivery_Time_Days) AS avg_delivery_time,RANK() OVER (ORDER BY AVG(Delivery_Time_Days)) AS performance_rank FROM logistics_cleaned_dataset GROUP BY Transport_Mode;
SELECT Shipment_Date, COUNT(*) AS daily_shipments, SUM(COUNT(*)) OVER (ORDER BY Shipment_Date) AS running_total_shipments FROM logistics_cleaned_dataset GROUP BY Shipment_Date ORDER BY Shipment_Date;
 SELECT Destination_City, COUNT(*) AS city_shipments, COUNT(*) * 100.0 / SUM(COUNT(*)) OVER () AS shipment_percentage FROM logistics_cleaned_dataset GROUP BY Destination_City ORDER BY shipment_percentage DESC;
SELECT * FROM logistics_cleaned_dataset WHERE Return_Reason = 'Damaged';
SELECT * FROM logistics_cleaned_dataset WHERE 'Fuel_Consumption' < 0;










       

      








       



    








 


	







