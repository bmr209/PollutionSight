SELECT DISTINCT census_data_2000s.city, census_data_2000s.usstate, census_data_2000s."POPESTIMATE2000",census_data_2000s."POPESTIMATE2001",
	census_data_2000s."POPESTIMATE2002",census_data_2000s."POPESTIMATE2003",census_data_2000s."POPESTIMATE2004",census_data_2000s."POPESTIMATE2005",
	census_data_2000s."POPESTIMATE2006",census_data_2000s."POPESTIMATE2007",census_data_2000s."POPESTIMATE2008",census_data_2000s."POPESTIMATE2009",
	census_data_2000s."POPESTIMATE2010",census_data_2010s."POPESTIMATE2011",census_data_2010s."POPESTIMATE2012",census_data_2010s."POPESTIMATE2013",
	census_data_2010s."POPESTIMATE2014",census_data_2010s."POPESTIMATE2015",census_data_2010s."POPESTIMATE2016",census_data_2010s."POPESTIMATE2017",
	census_data_2010s."POPESTIMATE2018",census_data_2010s."POPESTIMATE2019",census_data_2010s."POPESTIMATE2020"
	INTO census_data
	FROM census_data_2010s
	LEFT JOIN census_data_2000s ON census_data_2000s.city = census_data_2010s.city AND census_data_2000s.usstate = census_data_2010s.usstate
	ORDER BY census_data_2000s.city,census_data_2000s.usstate;
