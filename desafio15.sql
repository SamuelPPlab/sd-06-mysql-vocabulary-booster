USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN JOB VARCHAR(100))
BEGIN
SELECT ROUND(AVG(E.SALARY),2)
FROM hr.employees AS E
INNER JOIN hr.jobs AS J
ON E.JOB_ID = J.JOB_ID
WHERE J.JOB_TITLE = JOB;
END $$

DELIMITER ;
