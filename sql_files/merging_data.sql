--Merging All the Data into one file--

SELECT
	ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	end_station_name,
	member_casual
FROM [11].dbo.[2020_04]
UNION

SELECT
	ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	end_station_name,
	member_casual
FROM [11].dbo.[2020_05]
UNION 

SELECT
	ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	end_station_name,
	member_casual
FROM [11].dbo.[2020_06]
UNION 

SELECT
	ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	end_station_name,
	member_casual
FROM [11].dbo.[2020_07]
UNION 

SELECT
	ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	end_station_name,
	member_casual
FROM [11].dbo.[2020_08]
UNION

SELECT
	ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	end_station_name,
	member_casual
FROM [11].dbo.[2020_09]
UNION

SELECT
	ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	end_station_name,
	member_casual
FROM [11].dbo.[2020_10]
UNION

SELECT
	ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	end_station_name,
	member_casual
FROM [11].dbo.[2020_11]
UNION

SELECT
	ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	end_station_name,
	member_casual
FROM [11].dbo.[2020_12]
UNION 

SELECT
	ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	end_station_name,
	member_casual
FROM [11].dbo.[2021_01]
UNION

SELECT
	ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	end_station_name,
	member_casual
FROM [11].dbo.[2021_02]
UNION

SELECT
	ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	end_station_name,
	member_casual
FROM [11].dbo.[2021_03]
UNION

SELECT
	ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	end_station_name,
	member_casual
FROM [11].dbo.[2021_04]
