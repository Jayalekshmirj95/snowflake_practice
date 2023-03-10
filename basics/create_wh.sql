USE ROLE SYSADMIN;
CREATE WAREHOUSE COMPUTE_WH1 WITH
WAREHOUSE_SIZE = 'SMALL'
WAREHOUSE_TYPE = 'STANDARD'
AUTO_SUSPEND = 300
AUTO_RESUME = TRUE;
GRANT USAGE ON WAREHOUSE COMPUTE_WH1 TO PUBLIC;

SELECT * FROM SNOWFLAKE_SAMPLE_DATA.TPCDS_SF100TCL.CALL_CENTER;

CREATE DATABASE OUR_FIRST_DB;

CREATE OR REPLACE TABLE OUR_FIRST_TABLE (
    FIRST_NAME STRING,
    LAST_NAME STRING,
    AGE NUMBER,
    CITY STRING,
    STATE STRING
);

SELECT * FROM OUR_FIRST_TABLE;