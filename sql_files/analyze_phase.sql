--Analyze Phase

--Total riders count by year
SELECT
	YEAR(started_at) AS year,
	COUNT(ride_id) AS no_of_riders,
	member_casual
FROM [11].dbo.[cyclist_rides_data]
GROUP BY
	YEAR(started_at),
	member_casual
ORDER BY
	YEAR(started_at);


--Total riders count by month
SELECT
	MONTH(started_at) AS month,
CASE
    WHEN MONTH(started_at) = 1 THEN 'January'
    WHEN MONTH(started_at) = 2 THEN 'February'
    WHEN MONTH(started_at) = 3 THEN 'March'
    WHEN MONTH(started_at) = 4 THEN 'April'
    WHEN MONTH(started_at) = 5 THEN 'May'
    WHEN MONTH(started_at) = 6 THEN 'June'
    WHEN MONTH(started_at) = 7 THEN 'July'
    WHEN MONTH(started_at) = 8 THEN 'August'
    WHEN MONTH(started_at) = 9 THEN 'September'
    WHEN MONTH(started_at) = 10 THEN 'October'
    WHEN MONTH(started_at) = 11 THEN 'November'
    WHEN MONTH(started_at) = 12 THEN 'December'
END AS month_name,
	COUNT(ride_id) AS no_of_riders,
	member_casual
FROM [11].dbo.[cyclist_rides_data]
GROUP BY
	MONTH(started_at),
	member_casual
ORDER BY 
	MONTH(started_at);

--Total rides count by day
SELECT
	DATEPART(WEEKDAY, started_at) AS day_number,
	DATENAME(WEEKDAY,started_at) AS day,
	member_casual,
	COUNT(ride_id)
FROM [11].dbo.[cyclist_rides_data]
GROUP BY
	DATEPART(WEEKDAY, started_at),
	DATENAME(WEEKDAY,started_at),
	member_casual
ORDER BY
    CASE 
        WHEN DATEPART(WEEKDAY, started_at) = 1 THEN 7 
        ELSE DATEPART(WEEKDAY, started_at) - 1
    END;

--rideable type popularty
SELECT
	rideable_type,
	member_casual,
	COUNT(ride_id) AS no_of_riders
FROM [11].dbo.[cyclist_rides_data]
GROUP BY 
	rideable_type,
	member_casual
ORDER BY
	rideable_type;

--ride duration 
SELECT 
    DATEDIFF(MINUTE, 
             CAST(started_at AS DATETIME2), 
             CAST(ended_at AS DATETIME2)) AS duration_in_minutes,
    COUNT(*) AS number_of_rides,
	member_casual
FROM [11].dbo.[cyclist_rides_data]
WHERE
	DATEDIFF(MINUTE, 
             CAST(started_at AS DATETIME2), 
             CAST(ended_at AS DATETIME2)) > 0
	AND DATEDIFF(MINUTE, 
             CAST(started_at AS DATETIME2), 
             CAST(ended_at AS DATETIME2)) < 60
GROUP BY 
    DATEDIFF(MINUTE, 
             CAST(started_at AS DATETIME2), 
             CAST(ended_at AS DATETIME2)),
	member_casual
ORDER BY 
    duration_in_minutes;


--Top 5 started stations of casual riders
SELECT TOP 5
	COUNT(ride_id) AS no_of_rides,
	member_casual,
	start_station_name
FROM [11].dbo.[cyclist_rides_data]
WHERE
	start_station_name != 'NULL'
	AND member_casual = 'casual'
GROUP BY
	member_casual,
	start_station_name
ORDER BY	
	COUNT(ride_id) DESC


--Top 5 start station of members
SELECT TOP 5
	COUNT(ride_id) AS no_of_rides,
	member_casual,
	start_station_name
FROM [11].dbo.[cyclist_rides_data]
WHERE
	start_station_name != 'NULL'
	AND member_casual = 'member'
GROUP BY
	member_casual,
	start_station_name
ORDER BY	
	COUNT(ride_id) DESC
 