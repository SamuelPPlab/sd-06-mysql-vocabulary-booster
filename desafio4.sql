SELECT TEMP.Cargo, ROUND(AVG(TEMP.SALARY), 2) AS 'Média salarial', CASE WHEN ROUND(AVG(TEMP.SALARY), 2) >= 2000 AND ROUND(AVG(TEMP.SALARY), 2) <= 5800 THEN 'Júnior' WHEN ROUND(AVG(TEMP.SALARY), 2) >= 5801 AND ROUND(AVG(TEMP.SALARY), 2) <= 7500 THEN 'Pleno' WHEN ROUND(AVG(TEMP.SALARY), 2) >= 7501 AND ROUND(AVG(TEMP.SALARY), 2) <= 10500 THEN 'Sênior' ELSE 'CEO' END AS 'Senioridade' FROM (SELECT J.JOB_TITLE AS 'Cargo', E.SALARY FROM hr.jobs AS J INNER JOIN hr.employees AS E ON J.JOB_ID = E.JOB_ID) AS TEMP GROUP BY `Cargo` ORDER BY ROUND(AVG(TEMP.SALARY), 2) ASC, Cargo ASC;