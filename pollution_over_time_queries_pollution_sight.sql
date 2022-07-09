--Top Ten State NO2 AQIs per Month 
SELECT top_ten_state_no2aqi_per_month.* FROM
	(SELECT usstate, DATE_PART('year', local_date) AS local_year, DATE_PART('month', local_date) AS local_month, AVG(no2aqi) AS no2aqi, 
	 	rank() OVER (PARTITION BY DATE_PART('year', local_date),DATE_PART('month', local_date) ORDER BY AVG(no2aqi) DESC)
		FROM us_pollution_2000_2016
		GROUP BY usstate,local_year,local_month) top_ten_state_no2aqi_per_month
	WHERE rank <=10;

--Top Ten County NO2 AQIs per Month 
SELECT top_ten_state_no2aqi_per_county.* FROM
	(SELECT county, DATE_PART('year', local_date) AS local_year, DATE_PART('month', local_date) AS local_month, AVG(no2aqi) AS no2aqi, 
	 	rank() OVER (PARTITION BY DATE_PART('year', local_date),DATE_PART('month', local_date) ORDER BY AVG(no2aqi) DESC)
		FROM us_pollution_2000_2016
		GROUP BY county,local_year,local_month) top_ten_state_no2aqi_per_county
	WHERE rank <=10;

--Top Ten City NO2 AQIs per Month 
SELECT top_ten_state_no2aqi_per_county.* FROM
	(SELECT city, DATE_PART('year', local_date) AS local_year, DATE_PART('month', local_date) AS local_month, AVG(no2aqi) AS no2aqi, 
	 	rank() OVER (PARTITION BY DATE_PART('year', local_date),DATE_PART('month', local_date) ORDER BY AVG(no2aqi) DESC)
		FROM us_pollution_2000_2016
	 	WHERE city <> 'Not in a city'
		GROUP BY city,local_year,local_month) top_ten_state_no2aqi_per_county
	WHERE rank <=10;

--Top Ten State NO2 AQIs per Year
SELECT top_ten_state_no2aqi_per_year.* FROM
	(SELECT usstate, DATE_PART('year', local_date) AS local_year, AVG(no2aqi) AS no2aqi, rank() OVER (PARTITION BY DATE_PART('year', local_date) ORDER BY AVG(no2aqi) DESC)
		FROM us_pollution_2000_2016
		GROUP BY usstate,local_year) top_ten_state_no2aqi_per_year
	WHERE rank <=10;

--Top Ten County NO2 AQIs per Year
SELECT top_ten_state_no2aqi_per_year.* FROM
	(SELECT county, DATE_PART('year', local_date) AS local_year, AVG(no2aqi) AS no2aqi, rank() OVER (PARTITION BY DATE_PART('year', local_date) ORDER BY AVG(no2aqi) DESC)
		FROM us_pollution_2000_2016
		GROUP BY county,local_year) top_ten_state_no2aqi_per_year
	WHERE rank <=10;

--Top Ten City NO2 AQIs per Year
SELECT top_ten_state_no2aqi_per_year.* FROM
	(SELECT city, DATE_PART('year', local_date) AS local_year, AVG(no2aqi) AS no2aqi, rank() OVER (PARTITION BY DATE_PART('year', local_date) ORDER BY AVG(no2aqi) DESC)
		FROM us_pollution_2000_2016
		GROUP BY city,local_year) top_ten_state_no2aqi_per_year
	WHERE rank <=10;
