{{
    config(
        materialized='table'
    )
}}

select artistid, name 
from {{ source('chinook_data', 'artist') }}
