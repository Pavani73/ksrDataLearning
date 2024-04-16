{{
    config(
        materialized='table'
    )
}}

select name from {{ source('chinook_data', 'genre_sub_info') }}
