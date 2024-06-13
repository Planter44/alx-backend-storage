-- Sql script creating a function SafeDiv that divides
-- the first by the second number or returns 0.
DELIMITER $$

CREATE FUNCTION SafeDiv(a INT, b INT) RETURNS FLOAT
BEGIN
    -- Check if the denominator is zero
    IF b = 0 THEN
        RETURN 0;
    ELSE
        -- Perform the division if the denominator is not zero
        RETURN a / b;
    END IF;
END$$

DELIMITER ;
