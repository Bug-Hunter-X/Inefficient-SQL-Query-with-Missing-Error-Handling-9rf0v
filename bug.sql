```sql
SELECT * FROM employees WHERE department_id = 10 AND salary > 100000;
```
This SQL query might work as expected most of the time, but it could fail if the `department_id` column does not have an index.  Without an index, a full table scan could occur, making the query inefficient for large tables.  Furthermore, if there are no employees with department_id 10 and salary greater than 100000, it will return an empty result set which is unexpected behavior.  The problem is the lack of error handling or alternative strategies when the query returns an empty set.