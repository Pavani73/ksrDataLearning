{{
    config(materialized='table')
}}

select * from {{ source('pavani', 'STUDENT') }}
