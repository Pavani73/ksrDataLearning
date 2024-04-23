{{
    config(
        materialized='table', tags= '[jira_987]',
        pre_hook = "insert into {{source('sample1', 'model_execution_log')}}
        values('started', current_timestamp(),{{this.name}})"
    )
}}

{% set custid=3%}
select customerid, email, supportrepid,
{{ date_comparsions(LOAD_TIMESTAMP, UPDATED_TIMESTAMP) }} 
from
{{ source('sample1', 'customers') }}

where  customerid={{custid}}