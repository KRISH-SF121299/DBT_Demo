{% macro Execute_query() %}

    {% set query %} 
            CREATE OR REPLACE DATABASE CUSTOMER_DB;
            CREATE OR REPLACE SCHEMA CUSTOMER_SCHEMA;
            CREATE OR REPLACE TABLE CUSTOMER_DB.CUSTOMER_SCHEMA.CUSTOMER(
            CUSTOMER_ID       NUMBER(10,0) PRIMARY KEY,
            FIRST_NAME        VARCHAR(50),
            LAST_NAME         VARCHAR(50),
            EMAIL             VARCHAR(100),
            PHONE_NUMBER      VARCHAR(15),
            GENDER            VARCHAR(10),
            DATE_OF_BIRTH     DATE,
            CITY              VARCHAR(50),
            STATE             VARCHAR(50),
            COUNTRY           VARCHAR(50),
            CUSTOMER_STATUS   VARCHAR(20),
            CREATED_DATE      TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP(),
            UPDATED_DATE      TIMESTAMP_NTZ
        );



    {% endset %}

    {% do run_query(query) %}

{% endmacro %}