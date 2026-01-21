-- ============================================================
-- Fact Table: Trips
-- ============================================================

SET search_path TO nyctaxi_dw;

DROP TABLE IF EXISTS fact_trips;

CREATE TABLE fact_trips (
    trip_id           BIGINT IDENTITY(1,1),
    vendor_sk         BIGINT,
    pickup_date_sk    INT,
    pickup_location_sk BIGINT,
    dropoff_location_sk BIGINT,
    passenger_count   INT,
    trip_distance     DECIMAL(8,2),
    fare_amount       DECIMAL(10,2),
    tip_amount        DECIMAL(10,2),
    total_amount      DECIMAL(10,2),
    PRIMARY KEY (trip_id)
)
DISTSTYLE KEY
DISTKEY (pickup_date_sk)
SORTKEY (pickup_date_sk);
