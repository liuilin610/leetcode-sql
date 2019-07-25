
--leetcode 177. Nth Highest Salary

Create Function getNthHighestSalary(N, INT) Returns INT
Begin 
    set N= N-1
  Return(
      select distinct Salary from Employee order by Desc limit N, 1
    );
END

