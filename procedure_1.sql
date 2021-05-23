/* procedure to print out the oldest student*/
DELIMITER //

DROP PROCEDURE IF EXISTS oldest_student;

CREATE PROCEDURE oldest_student()
BEGIN

    DECLARE max_age INT;

    SELECT MAX(DATEDIFF(CURDATE(), Date_Of_Birth))
    INTO max_age
    FROM Students;

    SELECT CONCAT(FirstName, ' ', LastName) AS fullname, Date_Of_Birth
    FROM Students
    WHERE DATEDIFF(CURDATE(), Date_Of_Birth) = max_age;

END//

DELIMITER ;