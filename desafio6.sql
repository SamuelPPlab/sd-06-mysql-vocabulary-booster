USE hr;

SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
    j.JOB_TITLE AS `Cargo`,
    h.START_DATE AS `Data de início do cargo`,
    d.DEPARTMENT_NAME AS `Departamento`
FROM
    employees AS e
        INNER JOIN
    job_history AS h ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
        INNER JOIN
    jobs AS j ON h.JOB_ID = j.JOB_ID
        INNER JOIN
    departments AS d ON h.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY `Nome completo` DESC , Cargo ASC;
