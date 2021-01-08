SELECT
  JOB_TITLE as Cargo,
  (
    CASE
      WHEN MAX_SALARY >= 5000
      and MAX_SALARY <= 10000 THEN 'Baixo'
      WHEN MAX_SALARY > 10000
      and MAX_SALARY <= 20000 THEN 'Médio'
      WHEN MAX_SALARY > 20000
      and MAX_SALARY <= 30000 THEN 'Alto'
      WHEN MAX_SALARY > 30000 THEN 'Altíssimo'
    END
  ) as 'Nível'
FROM
  hr.jobs
ORDER BY
  JOB_TITLE ASC;
