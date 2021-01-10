use w3schools;
DELIMITER $$
CREATE TRIGGER trigger_date
BEFORE INSERT ON orders 
FOR EACH ROW
BEGIN
    SET NEW.OrderDate = NOW();
END; $$
DELIMITER ;
