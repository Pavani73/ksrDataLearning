{{
    config(
        materialized='table'
    )
}}
select * from  {{ source('chinook_data', 'genre') }}
