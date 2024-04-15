{{
    config(
        materialized='table', tags= ['dev']
    )
}}

select * from {{ source('sample1', 'employee') }}








