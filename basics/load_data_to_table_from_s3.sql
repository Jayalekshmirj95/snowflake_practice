CREATE OR REPLACE TABLE CUSTOMER(
    ID STRING,
    NAME STRING,
    ADDRESS STRING,
    CITY STRING,
    POSTCODE NUMBER,
    STATE STRING,
    COMPANY STRING,
    CONTACT STRING
);

CREATE OR REPLACE STAGE my_s3_stage URL='s3://snowflake-essentials/';
COPY INTO CUSTOMER
    FROM s3://snowflake-essentials/customer.csv
    file_format= (type=csv field_delimiter='|' skip_header=1);

SELECT * FROM CUSTOMER;
