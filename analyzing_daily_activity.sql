--Calculate the number of days each user tracked physical activity

SELECT
DISTINCT Id,
COUNT(ActivityDate) OVER (PARTITION BY Id) AS days_activity_recorded

FROM Bellabeat.dbo.daily_activity

ORDER BY days_activity_recorded DESC

--Calculate average minutes for each activity level and total hours device used

SELECT
ROUND(AVG(VeryActiveMinutes),2) AS Average_Very_Active_Minutes,
ROUND(AVG(FairlyActiveMinutes),2) AS Average_Fairly_Active_Minutes,
ROUND(AVG(LightlyActiveMinutes)/60,2) AS Average_Lightly_Active_Hours,
ROUND(AVG(SedentaryMinutes)/60,2) AS Average_Sedentary_Active_Hours,
ROUND((SELECT(SUM(VeryActiveMinutes) + SUM(FairlyActiveMinutes) + SUM(LightlyActiveMinutes) + SUM(SedentaryMinutes))/COUNT(Bellabeat.dbo.daily_activity.Id)
FROM Bellabeat.dbo.daily_activity)/60, 2) AS Average_Hours_Device_Used
	

FROM Bellabeat.dbo.daily_activity