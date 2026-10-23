# Write your MySQL query statement below
select Department.name as Department,Employee.name as Employee,Employee.salary as Salary from Employee
JOIN Department
on Employee.departmentid=Department.id
WHERE (Employee.departmentId, Employee.salary) IN (
    SELECT departmentId, MAX(salary) 
    FROM Employee 
    GROUP BY departmentId
);