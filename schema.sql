
/*
DROP TABLE "geodata" CASCADE;
DROP TABLE "confirmed";
DROP TABLE "deaths";
DROP TABLE "recovered";


CREATE TABLE "confirmed" (
    "longitude" float   NOT NULL,
    "latitude" float   NOT NULL,
    "date" date   NOT NULL,
    "cases" bigint   NOT NULL
);
CREATE TABLE "deaths" (
    "longitude" float   NOT NULL,
    "latitude" float   NOT NULL,
    "date" date   NOT NULL,
    "cases" bigint   NOT NULL
);
CREATE TABLE "recovered" (
    "longitude" float   NOT NULL,
    "latitude" float   NOT NULL,
    "date" date   NOT NULL,
    "cases" bigint   NOT NULL
);
CREATE TABLE "geodata" (
    "longitude" float   ,
    "latitude" float   ,
    "province_state" varchar   ,
    "region_country" varchar   ,
    CONSTRAINT "pk_geodata" PRIMARY KEY (
        "longitude","latitude"
     )
);

*/