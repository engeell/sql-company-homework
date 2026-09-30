-- Detyra 1
SELECT employees.name, departments.name AS department
FROM employees
JOIN departments ON employees.department_id = departments.id;

-- Detyra 2
SELECT employees.name, employees.salary, departments.name AS department
FROM employees
JOIN departments ON employees.department_id = departments.id;

-- Detyra 3
SELECT employees.name
FROM employees
JOIN departments ON employees.department_id = departments.id
WHERE departments.name = 'IT';

-- Detyra 4
SELECT employees.name, employees.salary
FROM employees
JOIN departments ON employees.department_id = departments.id
WHERE departments.name = 'IT'
AND employees.salary > 1000;

-- Detyra 5
SELECT *
FROM employees
ORDER BY salary DESC;

-- Detyra 6
SELECT *
FROM employees
WHERE salary BETWEEN 900 AND 1500;

-- Detyra 7
SELECT employees.name, departments.name AS department
FROM employees
JOIN departments ON employees.department_id = departments.id
WHERE departments.name = 'IT'
OR departments.name = 'Finance';

-- Detyra 8
SELECT *
FROM employees
WHERE salary >= 1200
ORDER BY salary DESC;

-- Challengi
SELECT employees.name, departments.name AS department, employees.salary
FROM employees
JOIN departments ON employees.department_id = departments.id
WHERE employees.salary >= 1200
AND departments.name != 'HR'
ORDER BY employees.salary DESC
LIMIT 5;

-- Bonus
INSERT INTO employees (id, name, salary, department_id)
VALUES (11, 'Besnik', 1000, NULL);

-- INNER JOIN
SELECT employees.name, departments.name AS department
FROM employees
INNER JOIN departments ON employees.department_id = departments.id;

-- LEFT JOIN
SELECT employees.name, departments.name AS department
FROM employees
LEFT JOIN departments ON employees.department_id = departments.id;
