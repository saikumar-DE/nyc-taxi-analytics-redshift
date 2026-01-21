-- ============================================
-- File: 01_create_stage_tables.sql
-- Purpose: Create staging tables for raw NYC Taxi data
-- Layer: STAGE
-- ============================================

-- Ensure schema exists
CREATE SCHEMA IF NOT EXISTS nyctaxi_stage;

-- ============================================
-- Staging table: Yellow Taxi Trips
-- ============================================
DROP TABLE IF EXISTS nyctaxi_stage.stg_yellow_trips;

CREATE TABLE nyctaxi_stage.stg_yellow_trips (
    vendorid                INT,
    tpep_pickup_datetime    TIMESTAMP,
    tpep_dropoff_datetime   TIMESTAMP,
    passenger_count         INT,
    trip_distance           DECIMAL(8,2),
    ratecodeid              INT,
    store_and_fwd_flag      VARCHAR(1),
    pulocationid            INT,
    dolocationid            INT,
    payment_type            INT,
    fare_amount             DECIMAL(10,2),
    extra                   DECIMAL(10,2),
    mta_tax                 DECIMAL(10,2),
    tip_amount              DECIMAL(10,2),
    tolls_amount            DECIMAL(10,2),
    improvement_surcharge   DECIMAL(10,2),
    total_amount            DECIMAL(10,2)
)
DISTSTYLE AUTO;

-- ============================================
-- Staging table: Taxi Zone Lookup
-- ============================================
DROP TABLE IF EXISTS nyctaxi_stage.stg_taxi_zone_lookup;

CREATE TABLE nyctaxi_stage.stg_taxi_zone_lookup (
    location_id     INT,
    borough         VARCHAR(50),
    zone            VARCHAR(100),
    service_zone    VARCHAR(50)
)
DISTSTYLE ALL;
