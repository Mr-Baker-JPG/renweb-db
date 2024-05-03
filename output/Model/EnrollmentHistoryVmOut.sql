--
-- FACTSAPI.
-- Prepared SQL queries for 'EnrollmentHistoryVmOut' definition.
--


--
-- SELECT template for table `EnrollmentHistoryVmOut`
--
SELECT `beginDate`, `endDate`, `gradeLevel`, `note`, `schoolCode`, `status`, `studentId`, `yearId`, `enrollmentHistoryId` FROM `EnrollmentHistoryVmOut` WHERE 1;

--
-- INSERT template for table `EnrollmentHistoryVmOut`
--
INSERT INTO `EnrollmentHistoryVmOut`(`beginDate`, `endDate`, `gradeLevel`, `note`, `schoolCode`, `status`, `studentId`, `yearId`, `enrollmentHistoryId`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `EnrollmentHistoryVmOut`
--
UPDATE `EnrollmentHistoryVmOut` SET `beginDate` = ?, `endDate` = ?, `gradeLevel` = ?, `note` = ?, `schoolCode` = ?, `status` = ?, `studentId` = ?, `yearId` = ?, `enrollmentHistoryId` = ? WHERE 1;

--
-- DELETE template for table `EnrollmentHistoryVmOut`
--
DELETE FROM `EnrollmentHistoryVmOut` WHERE 0;

