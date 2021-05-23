DROP trigger IF EXISTS tri_ins_students;

CREATE trigger tri_ins_students
BEFORE INSERT ON Students
FOR EACH ROW
SET NEW.LastName = UPPER(NEW.LastName);