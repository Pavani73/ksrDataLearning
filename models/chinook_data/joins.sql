{{
    config(
        materialized='table'
    )
}}

select * from {{ source('pavani', 'STUDENT') }}
inner join 
{{ source('sample1', 'customers') }}
