{{
    config(materialized='table')
}}

select NAME, AGE from {{ source('pavani', 'STUDENT') }}