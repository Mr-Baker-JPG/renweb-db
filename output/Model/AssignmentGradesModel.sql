--
-- FACTSAPI.
-- Prepared SQL queries for 'AssignmentGradesModel' definition.
--


--
-- SELECT template for table `AssignmentGradesModel`
--
SELECT `sisGradeId`, `sisAssignmentId`, `studentId`, `maxPoints`, `receivedPoints`, `curvePoints`, `penaltyPoints`, `bonusPoints`, `notes`, `weight`, `status`, `emailSent`, `displayGrade` FROM `AssignmentGradesModel` WHERE 1;

--
-- INSERT template for table `AssignmentGradesModel`
--
INSERT INTO `AssignmentGradesModel`(`sisGradeId`, `sisAssignmentId`, `studentId`, `maxPoints`, `receivedPoints`, `curvePoints`, `penaltyPoints`, `bonusPoints`, `notes`, `weight`, `status`, `emailSent`, `displayGrade`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `AssignmentGradesModel`
--
UPDATE `AssignmentGradesModel` SET `sisGradeId` = ?, `sisAssignmentId` = ?, `studentId` = ?, `maxPoints` = ?, `receivedPoints` = ?, `curvePoints` = ?, `penaltyPoints` = ?, `bonusPoints` = ?, `notes` = ?, `weight` = ?, `status` = ?, `emailSent` = ?, `displayGrade` = ? WHERE 1;

--
-- DELETE template for table `AssignmentGradesModel`
--
DELETE FROM `AssignmentGradesModel` WHERE 0;

