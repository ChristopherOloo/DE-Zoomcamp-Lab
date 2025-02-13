
--q1
SELECT  count(*) FROM `pro-plasma-448701-j3.yellow_trips.yellow_tax_trips` limit 5; --20332093

--q2
SELECT count(distinct PULocationID) FROM `pro-plasma-448701-j3.yellow_trips.yellow_tax_trips`; --155.12MB

SELECT count(distinct PULocationID) FROM `pro-plasma-448701-j3.yellow_trips.yellow_trips_regular`; --155.12MB

--q3
SELECT PULocationID FROM `pro-plasma-448701-j3.yellow_trips.yellow_trips_regular`; --155,12MB
SELECT PULocationID, DOLocationID FROM `pro-plasma-448701-j3.yellow_trips.yellow_trips_regular`; --310.24MB

--q4
SELECT count(*) FROM `pro-plasma-448701-j3.yellow_trips.yellow_tax_trips` where `fare_amount` = 0;--8333

--q5
CREATE OR REPLACE TABLE `pro-plasma-448701-j3.yellow_trips.yellow_trips_regular_partitioned`
PARTITION BY DATE(tpep_dropoff_datetime)
CLUSTER BY VendorID AS (
  SELECT * FROM `pro-plasma-448701-j3.yellow_trips.yellow_trips_regular`
);

--q6
SELECT distinct(VendorID) FROM  `pro-plasma-448701-j3.yellow_trips.yellow_trips_regular`
WHERE DATE(tpep_dropoff_datetime) BETWEEN '2024-03-01' AND '2024-03-15'; --310.24MB

SELECT distinct(VendorID) FROM  `pro-plasma-448701-j3.yellow_trips.yellow_trips_regular_partitioned`
WHERE DATE(tpep_dropoff_datetime) BETWEEN '2024-03-01' AND '2024-03-15'; --26.84MB






