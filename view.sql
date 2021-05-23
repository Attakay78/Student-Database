/* create a view to store info of all second year students*/

CREATE VIEW secondYearStudents AS
SELECT * FROM Students 
WHERE Year = 2;