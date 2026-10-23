# Write your MySQL query statement below
select e1.name AS Employee from Employee e1
inner join Employee e2
on e1.managerID=e2.id
wHERE e1.salary > e2.salary;