
select * from {{ ref('employee') }}
where employeeid = {{ var('employeeid') }}





