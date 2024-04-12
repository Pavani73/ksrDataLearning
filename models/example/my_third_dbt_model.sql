{{
    config(
        materialized='view'
    )
}}

select * from {{ref('my_second_dbt_model')}}