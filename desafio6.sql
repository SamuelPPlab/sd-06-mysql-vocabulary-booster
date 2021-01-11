SELECT UPPER(CONCAT(N.FIRST_NAME, ' ', N.LAST_NAME)) AS `Nome completo`,
C.JOB_TITLE AS `Cargo`,
S.START_DATE AS `Data de início do cargo`,
d.DEPARTMENT_NAME AS `Departamento`
FROM hr.job_history AS S
JOIN hr.employees AS N ON S.EMPLOYEE_ID = N.EMPLOYEE_ID
JOIN hr.jobs AS C ON S.JOB_ID = C.JOB_ID
JOIN hr.departments AS D ON S.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo`;
