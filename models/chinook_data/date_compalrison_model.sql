{{
    config(
        materialized='table', tags= '[jira_987]'
    )
}}

{% set custid=3%}
select customerid, email, supportrepid,

select{{ date_comparsions(LOAD_TIMESTAMP, UPDATED_TIMESTAMP) }} 
from
{{ source('sample1', 'customers') }}

where  customerid={{custid}}