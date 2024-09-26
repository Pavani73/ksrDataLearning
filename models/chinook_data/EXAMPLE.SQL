{{
    config(
        materialized='table'
    )
}}

SELECT * FROM DBT_LEARNING.CHINOOK_DATA.EMPLOYEE