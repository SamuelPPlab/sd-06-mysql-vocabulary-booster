SELECT CONCAT(e.FIRST_NAME, " ", e.LAST_NAME) AS "Nome Completo",
j.JOB_TITLE AS "Cargo",
jh.START_DATE AS "Data de início do cargo",
d.DEPARTMENT_NAME AS "Departamento"
FROM HR.EMPLOYEES AS e
INNER JOIN HR.JOBS AS j
ON e.JOB_ID = j.JOB_ID
INNER JOIN HR.DEPARTMENTS AS d
ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
INNER JOIN HR.JOB_HISTORY AS jh
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
ORDER BY `Nome Completo` DESC, `Cargo`;
