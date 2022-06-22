DROP TABLE IF EXISTS us_pollution_2000_2016 CASCADE;
CREATE TABLE "us_pollution" (
    "local_date" DATE   NOT NULL,
    "city" VARCHAR(30)   NOT NULL,
    "county" VARCHAR(30)   NOT NULL,
    "usstate" VARCHAR(30)   NOT NULL,
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
    "NAME" VARCHAR(30)   NOT NULL,
    "STNAME" VARCHAR(30)   NOT NULL,
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
    "NAME" VARCHAR(30)   NOT NULL,
    "STNAME" VARCHAR(30)   NOT NULL,
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

ALTER TABLE "census_data_2000s" ADD CONSTRAINT "fk_census_data_2000s_NAME_STNAME" FOREIGN KEY("NAME", "STNAME")
REFERENCES "us_pollution" ("city", "usstate");

ALTER TABLE "census_data_2010s" ADD CONSTRAINT "fk_census_data_2010s_NAME_STNAME" FOREIGN KEY("NAME", "STNAME")
REFERENCES "census_data_2000s" ("NAME", "STNAME");

