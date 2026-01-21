-- ============================================
-- Project: NYC Taxi Analytics (Redshift)
-- Layer  : Setup
-- File   : 00_create_schemas.sql
-- Purpose: Create schemas for staging & DW
-- ============================================

CREATE SCHEMA IF NOT EXISTS nyctaxi_stage;
CREATE SCHEMA IF NOT EXISTS nyctaxi_dw;
