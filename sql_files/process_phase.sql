--Process Phase

--Check NULL Values
SELECT*
FROM [11].dbo.[cyclist_rides_data]
WHERE 
	ride_id IS NULL
	OR rideable_type IS NULL
	OR started_at IS NULL
	OR ended_at IS NULL
	OR start_station_name IS NULL
	OR end_station_name IS NULL
	OR member_casual IS NULL

--Remove NULL Values if exists
DELETE FROM [11].dbo.[cyclist_rides_data]
WHERE
	ride_id IS NULL
	OR rideable_type IS NULL
	OR started_at IS NULL
	OR ended_at IS NULL
	OR start_station_name IS NULL
	OR end_station_name IS NULL
	OR member_casual IS NULL

--Identidy Duplicate Values
SELECT
	COUNT(*) AS no_of_duplicates
FROM [11].dbo.[cyclist_rides_data]
GROUP BY 
	ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	end_station_name,
	member_casual
HAVING COUNT(*) >1
