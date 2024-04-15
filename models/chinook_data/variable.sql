select * from {{ ref('emplyees') }}
where emp_id = {{ var('employee_id') }}


