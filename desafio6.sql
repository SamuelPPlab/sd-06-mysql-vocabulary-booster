SELECT
  CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) 'Nome completo',
  j.JOB_TITLE 'Cargo',
  h.START_DATE 'Data de início do cargo',
  d.DEPARTMENT_NAME 'Departamento'
FROM hr.employees e
  LEFT JOIN hr.jobs j
    ON e.JOB_ID = j.JOB_ID
  LEFT JOIN hr.departments d
    ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
  INNER JOIN hr.job_history h
    ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
ORDER BY e.FIRST_NAME DESC, e.LAST_NAME DESC, j.JOB_TITLE ASC;
