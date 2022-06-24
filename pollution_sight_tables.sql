DROP TABLE IF EXISTS us_pollution_2000_2016 CASCADE;
CREATE TABLE "us_pollution" (
    "usstate" VARCHAR   NOT NULL,
    "county" VARCHAR   NOT NULL,
    "city" VARCHAR   NOT NULL,
    "local_date" DATE   NOT NULL,
    "city" VARCHAR   NOT NULL,
    "county" VARCHAR   NOT NULL,
    "usstate" VARCHAR   NOT NULL,
    "no2avg" INT   NOT NULL,
    "no2maxvalue" INT   NOT NULL,
    "no2maxhour" INT   NOT NULL,
    "no2aqi" INT   NOT NULL,
    "o3avg" INT   NOT NULL,
    "o3maxvalue" INT   NOT NULL,
    "o3maxhour" INT   NOT NULL,
    "o3aqi" INT   NOT NULL,
    "so2avg" INT   NOT NULL,
    "so2maxvalue" INT   NOT NULL,
    "so2maxhour" INT   NOT NULL,
    "so2aqi" INT   NOT NULL,
    "coavg" INT   NOT NULL,
    "comaxvalue" INT   NOT NULL,
    "comaxhour" INT   NOT NULL,
    "coaqi" INT   NOT NULL
);

CREATE TABLE "wildfire_locations" (
    "InitialLatitude" INT   NOT NULL,
    "InitialLongitude" INT   NOT NULL,
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