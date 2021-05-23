/* Function to return the concatenation of student's first & last names*/
delimiter //

CREATE FUNCTION printFullName(userFirstName VARCHAR(40), userLastName VARCHAR(40))
RETURNS VARCHAR(100) DETERMINISTIC
BEGIN
    DECLARE results VARCHAR(100);
    SET results = concat(userFirstName, " ", userLastName);
    RETURN results;
END//

delimiter ;
