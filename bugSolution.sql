```sql
CREATE INDEX idx_department_id_salary ON employees (department_id, salary);

-- Improved query with error handling
SELECT * FROM employees WHERE department_id = 10 AND salary > 100000;
IF @@ROWCOUNT = 0 THEN
    -- Handle the case where no rows are returned
    SELECT 'No employees found matching the criteria.' AS message;
END IF;
```