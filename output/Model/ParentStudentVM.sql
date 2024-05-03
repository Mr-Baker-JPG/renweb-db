--
-- FACTSAPI.
-- Prepared SQL queries for 'ParentStudentVM' definition.
--


--
-- SELECT template for table `ParentStudentVM`
--
SELECT `parentID`, `studentID`, `custody`, `correspondence`, `relationship`, `grandparent`, `emergencyContact`, `reportCard`, `pwBlock`, `pickUp`, `parentsWeb`, `reEnroll` FROM `ParentStudentVM` WHERE 1;

--
-- INSERT template for table `ParentStudentVM`
--
INSERT INTO `ParentStudentVM`(`parentID`, `studentID`, `custody`, `correspondence`, `relationship`, `grandparent`, `emergencyContact`, `reportCard`, `pwBlock`, `pickUp`, `parentsWeb`, `reEnroll`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `ParentStudentVM`
--
UPDATE `ParentStudentVM` SET `parentID` = ?, `studentID` = ?, `custody` = ?, `correspondence` = ?, `relationship` = ?, `grandparent` = ?, `emergencyContact` = ?, `reportCard` = ?, `pwBlock` = ?, `pickUp` = ?, `parentsWeb` = ?, `reEnroll` = ? WHERE 1;

--
-- DELETE template for table `ParentStudentVM`
--
DELETE FROM `ParentStudentVM` WHERE 0;

