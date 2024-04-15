{{
    config(
        materialized='table'
    )
}}

select customerid as cust_id,
supportrepid as support_rep_id 
from {{ source('sample1', 'customers') }}




