{{
    config(
        materialized='table'
    )
}}

with
customers as (select * from {{ ref('customers') }}),
invoice as (select * from {{ ref('invoice') }}),
employee as (select * from {{ ref('employee') }})

Select c.cust_id, i.invoice_id,e.emp_name

from customer as c

left join invoice as i on i.cust_id = c.cust_id

left join employee as e on e.emp_id = c.support_rep_id




