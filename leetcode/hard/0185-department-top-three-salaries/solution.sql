# Write your MySQL query statement below
select department.name as Department,Employee.name as Employee,Employee.salary as Salary from (
    select * ,dense_rank()over (partition by departmentId order by salary  desc) as Salary_rank from Employee
) as Employee
join Department 
on employee.departmentId = department.id
where Salary_rank<=3;
