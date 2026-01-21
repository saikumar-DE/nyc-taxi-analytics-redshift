-- ============================================================
-- Dimension Tables
-- Layer: DIMENSIONS
-- ============================================================

SET search_path TO nyctaxi_dw;

---------------------------------------------------------------
-- Vendor Dimension
---------------------------------------------------------------
DROP TABLE IF EXISTS dim_vendor;

CREATE TABLE dim_vendor (
    vendor_sk     BIGINT IDENTITY(1,1),
    vendor_id     INT,
    vendor_name   VARCHAR(50),
    PRIMARY KEY (vendor_sk)
)
DISTSTYLE ALL;

---------------------------------------------------------------
-- Location Dimension
---------------------------------------------------------------
DROP TABLE IF EXISTS dim_location;

CREATE TABLE dim_location (
    location_sk   BIGINT IDENTITY(1,1),
    location_id   INT,
    borough       VARCHAR(50),
    zone          VARCHAR(100),
    service_zone  VARCHAR(50),
    PRIMARY KEY (location_sk)
)
DISTSTYLE ALL;

---------------------------------------------------------------
-- Date Dimension
---------------------------------------------------------------
DROP TABLE IF EXISTS dim_date;

CREATE TABLE dim_date (
    date_sk        INT IDENTITY(1,1),
    date_value     DATE,
    year           INT,
    month          INT,
    day            INT,
    day_of_week    INT,
    PRIMARY KEY (date_sk)
)
DISTSTYLE ALL;
