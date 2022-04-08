DELIMITER $$
DROP PROCEDURE IF EXISTS CountOrderByStudent $$

CREATE PROCEDURE CountOrderByStudent
(IN sumstd VARCHAR(30), OUT Total INT)

BEGIN

    SELECT COUNT(std_code) 
    INTO Total 
    FROM student 
    WHERE std_fac_code = sumstd;

END$$

DELIMITER ;