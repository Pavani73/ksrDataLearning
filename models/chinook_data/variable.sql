
select * from {{ ref('employee') }}
where emp_id = {{ var('employeeid') }}



