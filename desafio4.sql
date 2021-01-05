SELECT
    jobs.JOB_TITLE AS 'Cargo',
    ROUND(AVG(emp.SALARY), 2) AS 'Média salarial',
    CASE
        WHEN ROUND(AVG(emp.SALARY), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN ROUND(AVG(emp.SALARY), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN ROUND(AVG(emp.SALARY), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN ROUND(AVG(emp.SALARY), 2) > 10500 THEN 'CEO'
    END AS 'Senioridade'
FROM hr.jobs AS jobs
JOIN hr.employees AS emp
ON jobs.JOB_ID = emp.JOB_ID
GROUP BY jobs.JOB_TITLE
ORDER BY AVG(emp.SALARY) ASC, jobs.JOB_TITLE;
