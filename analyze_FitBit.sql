--Calculating number of users and daily averages including users physical activities, average steps, average distance, and average calories.

SELECT 
COUNT(DISTINCT Id) AS users_tracking_activity,
AVG(TotalSteps) AS average_steps,
AVG(TotalDistance) AS average_distance,
AVG(Calories) AS average_calories

FROM Bellabeat.dbo.daily_activity

--Calculating number of users, average, minimum, and maximum heart rates

SELECT
COUNT(DISTINCT Id) AS users_tracking_heart_rate,
AVG(Value) AS average_heart_rate, 
MIN(Value) AS minimum_heart_rate,
MAX(Value) AS maximum_heart_rate

FROM Bellabeat.dbo.heartrate_seconds

--Calculating number of users tracking their sleep patterns including average, minimum, and maximum hours of sleep

SELECT 
COUNT(DISTINCT Id) AS users_tracking_sleep,
COUNT(DISTINCT Id)/33.0*100 AS percentage_users,
AVG(TotalMinutesAsleep)/60 AS average_hours_asleep,
MIN(TotalMinutesAsleep)/60 AS minimum_hours_asleep,
MAX(TotalMinutesAsleep)/60 AS maximum_hours_asleep,
AVG(TotalTimeInBed)/60 AS average_hours_in_bed

FROM Bellabeat.dbo.sleep_day

--Calculating average, minimum, and maximum weight for each user

SELECT 
COUNT(DISTINCT Id) AS users_tracking_weight,
AVG(WeightKg) AS average_weight, 
MIN(WeightKg) AS minimum_weight,
MAX(WeightKg) AS maximum_weight

FROM Bellabeat.dbo.weight_cleaned


--Calculating average heart rate per user
SELECT
Id,
AVG(CAST(Value AS INT)) AS Average_Heart_Rate

FROM Bellabeat.dbo.heartrate_seconds

GROUP BY Id