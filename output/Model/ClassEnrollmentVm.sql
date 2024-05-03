--
-- FACTSAPI.
-- Prepared SQL queries for 'ClassEnrollmentVm' definition.
--


--
-- SELECT template for table `ClassEnrollmentVm`
--
SELECT `altYearId`, `classId`, `enrolled`, `enrolled1`, `enrolled2`, `enrolled3`, `enrolled4`, `enrolled5`, `enrolled6`, `gradeLevel`, `modifiedBy`, `modifiedDate`, `studentId` FROM `ClassEnrollmentVm` WHERE 1;

--
-- INSERT template for table `ClassEnrollmentVm`
--
INSERT INTO `ClassEnrollmentVm`(`altYearId`, `classId`, `enrolled`, `enrolled1`, `enrolled2`, `enrolled3`, `enrolled4`, `enrolled5`, `enrolled6`, `gradeLevel`, `modifiedBy`, `modifiedDate`, `studentId`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `ClassEnrollmentVm`
--
UPDATE `ClassEnrollmentVm` SET `altYearId` = ?, `classId` = ?, `enrolled` = ?, `enrolled1` = ?, `enrolled2` = ?, `enrolled3` = ?, `enrolled4` = ?, `enrolled5` = ?, `enrolled6` = ?, `gradeLevel` = ?, `modifiedBy` = ?, `modifiedDate` = ?, `studentId` = ? WHERE 1;

--
-- DELETE template for table `ClassEnrollmentVm`
--
DELETE FROM `ClassEnrollmentVm` WHERE 0;

