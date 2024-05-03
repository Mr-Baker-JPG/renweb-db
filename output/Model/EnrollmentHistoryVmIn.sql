--
-- FACTSAPI.
-- Prepared SQL queries for 'EnrollmentHistoryVmIn' definition.
--


--
-- SELECT template for table `EnrollmentHistoryVmIn`
--
SELECT `beginDate`, `endDate`, `gradeLevel`, `note`, `schoolCode`, `status`, `studentId`, `yearId` FROM `EnrollmentHistoryVmIn` WHERE 1;

--
-- INSERT template for table `EnrollmentHistoryVmIn`
--
INSERT INTO `EnrollmentHistoryVmIn`(`beginDate`, `endDate`, `gradeLevel`, `note`, `schoolCode`, `status`, `studentId`, `yearId`) VALUES (?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `EnrollmentHistoryVmIn`
--
UPDATE `EnrollmentHistoryVmIn` SET `beginDate` = ?, `endDate` = ?, `gradeLevel` = ?, `note` = ?, `schoolCode` = ?, `status` = ?, `studentId` = ?, `yearId` = ? WHERE 1;

--
-- DELETE template for table `EnrollmentHistoryVmIn`
--
DELETE FROM `EnrollmentHistoryVmIn` WHERE 0;

