--
-- FACTSAPI.
-- Prepared SQL queries for 'AssignmentGradesModelIn' definition.
--


--
-- SELECT template for table `AssignmentGradesModelIn`
--
SELECT `sisAssignmentId`, `studentId`, `maxPoints`, `receivedPoints`, `curvePoints`, `penaltyPoints`, `bonusPoints`, `notes`, `weight`, `status`, `emailSent`, `displayGrade` FROM `AssignmentGradesModelIn` WHERE 1;

--
-- INSERT template for table `AssignmentGradesModelIn`
--
INSERT INTO `AssignmentGradesModelIn`(`sisAssignmentId`, `studentId`, `maxPoints`, `receivedPoints`, `curvePoints`, `penaltyPoints`, `bonusPoints`, `notes`, `weight`, `status`, `emailSent`, `displayGrade`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `AssignmentGradesModelIn`
--
UPDATE `AssignmentGradesModelIn` SET `sisAssignmentId` = ?, `studentId` = ?, `maxPoints` = ?, `receivedPoints` = ?, `curvePoints` = ?, `penaltyPoints` = ?, `bonusPoints` = ?, `notes` = ?, `weight` = ?, `status` = ?, `emailSent` = ?, `displayGrade` = ? WHERE 1;

--
-- DELETE template for table `AssignmentGradesModelIn`
--
DELETE FROM `AssignmentGradesModelIn` WHERE 0;

