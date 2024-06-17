SELECT DISTINCT e1.email FROM employee e1, employee e2
WHERE e1.id <> e2.id AND e1.email=e2.email;
