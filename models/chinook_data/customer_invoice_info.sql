{{
    config(
        materialized='table'
    )
}}

with
customers as (select * from {{ ref('customers') }}),
invoice as (select * from {{ ref('invoice') }}),
employee as (select * from {{ ref('employee') }})

Select c.cust_id, i.invoiceid,e.firstname

from customers as c

left join invoice as i on i.customerid = c.cust_id

left join employee as e on e.employeeid = c.support_rep_id





