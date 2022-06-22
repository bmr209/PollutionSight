DROP TABLE IF EXISTS us_pollution_2000_2016 CASCADE;
DROP TABLE IF EXISTS wildfire_locations CASCADE;
DROP TABLE IF EXISTS census_data_2000s CASCADE;
DROP TABLE IF EXISTS census_data_2010s CASCADE;
CREATE TABLE "us_pollution" (
    "usstate" VARCHAR   NOT NULL,
    "county" VARCHAR   NOT NULL,
    "city" VARCHAR   NOT NULL,    
    "local_date" DATE   NOT NULL,
    "no2avg" float   NOT NULL,
    "no2maxvalue" float   NOT NULL,
    "no2maxhour" float   NOT NULL,
    "no2aqi" float   NOT NULL,
    "o3avg" float   NOT NULL,
    "o3maxvalue" float   NOT NULL,
    "o3maxhour" float   NOT NULL,
    "o3aqi" float   NOT NULL,
    "so2avg" float   NOT NULL,
    "so2maxvalue" float   NOT NULL,
    "so2maxhour" float   NOT NULL,
    "so2aqi" float   NOT NULL,
    "coavg" float   NOT NULL,
    "comaxvalue" float   NOT NULL,
    "comaxhour" float   NOT NULL,
    "coaqi" float   NOT NULL
);

CREATE TABLE "wildfire_locations" (
    "InitialLatitude" float   NOT NULL,
    "InitialLongitude" float   NOT NULL,
    "FireDiscoveryDateTime" DATE   NOT NULL,
    "ContainmentDateTime" DATE   NOT NULL,
    "DailyAcres" INT   NOT NULL
);

CREATE TABLE "census_data_2000s" (
    "NAME" VARCHAR   NOT NULL,
    "STNAME" VARCHAR   NOT NULL,
    "POPESTIMATE2000" INT   NOT NULL,
    "POPESTIMATE2001" INT   NOT NULL,
    "POPESTIMATE2002" INT   NOT NULL,
    "POPESTIMATE2003" INT   NOT NULL,
    "POPESTIMATE2004" INT   NOT NULL,
    "POPESTIMATE2005" INT   NOT NULL,
    "POPESTIMATE2006" INT   NOT NULL,
    "POPESTIMATE2007" INT   NOT NULL,
    "POPESTIMATE2008" INT   NOT NULL,
    "POPESTIMATE2009" INT   NOT NULL,
    "POPESTIMATE2010" INT   NOT NULL
);

CREATE TABLE "census_data_2010s" (
    "NAME" VARCHAR   NOT NULL,
    "STNAME" VARCHAR   NOT NULL,
    "POPESTIMATE2011" INT   NOT NULL,
    "POPESTIMATE2012" INT   NOT NULL,
    "POPESTIMATE2013" INT   NOT NULL,
    "POPESTIMATE2014" INT   NOT NULL,
    "POPESTIMATE2015" INT   NOT NULL,
    "POPESTIMATE2016" INT   NOT NULL,
    "POPESTIMATE2017" INT   NOT NULL,
    "POPESTIMATE2018" INT   NOT NULL,
    "POPESTIMATE2019" INT   NOT NULL
);
