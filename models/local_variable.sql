{% set var_filter=5 %}

select * from {{ ref('employee') }}
where employeeid = {{ var_filter }}

