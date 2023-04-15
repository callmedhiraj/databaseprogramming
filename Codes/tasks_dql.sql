
select INTO "e".employee_id, last_name, first_name,
COUNT("jh".employee_id) "total job changes"
FROM employees "e"
JOIN job_history "jh"
ON "e".employee_id = "jh".employee_id
WHERE "e".employee_id = 101
GROUP BY "e".employee_id, last_name, first_name;

