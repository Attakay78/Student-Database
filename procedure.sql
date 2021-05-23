/* procedure to select all 4th year students*/
DELIMITER //

CREATE PROCEDURE printResults()
BEGIN
    SELECT * FROM Students WHERE Year = 4;
END//

DELIMITER ;