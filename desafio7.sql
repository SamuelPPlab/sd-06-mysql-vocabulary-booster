SELECT UPPER(CONCAT(hr.employees.FIRST_NAME, ' ', hr.employees.LAST_NAME)) AS 'Nome completo',
hr.job_history.START_DATE AS  'Data de início',
hr.employees.SALARY AS 'Salário',
FROM hr.employees
INNER JOIN hr.job_history ON hr.job_history.EMPLOYEE_ID = hr.employees.EMPLOYEE_ID
ORDER BY hr.employees.FIRST_NAME, hr.job_history.START_DATE;
