#### in this problem to find employees with multiple department is easy task

#### but to find employees in single department with N flag is little tricky

#### isnted of using UNION we have to use subquery here becase we can't use group by only on employee_id in 2nd case

#### is we use groupby on both employee_id and department_id it'll result all entries with N flag

#### and if we use subquery we can use IN to get all employee_id for employee working in single department
