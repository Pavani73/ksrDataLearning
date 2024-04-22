{{
    config(
        materialized='table', tags = ['jira_22042024']
    )
}}

select customerid,email,SUPPORTREPID as emp_id, load_timestamp

from {{ source('sample1', 'customers') }}


