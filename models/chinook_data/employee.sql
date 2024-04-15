{{
    config(
        materialized='table'
    )
}}

select * from {{ source('sample1', 'employee') }}