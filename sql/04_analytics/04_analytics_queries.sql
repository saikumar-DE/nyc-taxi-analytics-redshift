-- ============================================================
-- Analytics Queries
-- ============================================================

---------------------------------------------------------------
-- Trips by Day
---------------------------------------------------------------
SELECT
    d.date_value,
    COUNT(*) AS total_trips
FROM fact_trips f
JOIN dim_date d
  ON f.pickup_date_sk = d.date_sk
GROUP BY d.date_value
ORDER BY d.date_value;

---------------------------------------------------------------
-- Revenue by Borough
---------------------------------------------------------------
SELECT
    l.borough,
    SUM(f.total_amount) AS total_revenue
FROM fact_trips f
JOIN dim_location l
  ON f.pickup_location_sk = l.location_sk
GROUP BY l.borough;

---------------------------------------------------------------
-- Vendor Performance
---------------------------------------------------------------
SELECT
    v.vendor_name,
    COUNT(*) AS total_trips,
    SUM(f.total_amount) AS revenue
FROM fact_trips f
JOIN dim_vendor v
  ON f.vendor_sk = v.vendor_sk
GROUP BY v.vendor_name;
