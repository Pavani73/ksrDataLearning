with
customers as (select * from {{ ref('customers') }}),
genre as (select * from {{ ref('genre') }}),

student as (select * from {{ ref('student1') }}

select * from customers 
inner join 
select * from student
