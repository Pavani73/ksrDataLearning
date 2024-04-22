{{
    config(
        materialized='incremental', tags = ['jira_22042024']
    )
}}
select * from {{ ref('incr_customers') }}

{% if is_incremental() %}
    -- this filter will only be applied on an incremental run
    where load_timestamp > (select max(load_timestamp) from {{ this }}) 
{% endif %}
