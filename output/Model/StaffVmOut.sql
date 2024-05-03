--
-- FACTSAPI.
-- Prepared SQL queries for 'StaffVmOut' definition.
--


--
-- SELECT template for table `StaffVmOut`
--
SELECT `active`, `administrator`, `blockSurvey`, `districtUser`, `districtWideUser`, `dualEnrolledUser`, `elementary`, `faculty`, `fullTime`, `highSchool`, `middleSchool`, `preschool`, `staffDirectoryBlock`, `substitute`, `unsubscribeRenWebEmail`, `endDate`, `startDate`, `fte`, `financialFamilyId`, `pda`, `roomId`, `schools`, `department`, `firstName`, `lastName`, `legacyStaffId`, `middleName`, `parentAlertPin`, `spouse`, `teacherSite`, `staffId`, `name` FROM `StaffVmOut` WHERE 1;

--
-- INSERT template for table `StaffVmOut`
--
INSERT INTO `StaffVmOut`(`active`, `administrator`, `blockSurvey`, `districtUser`, `districtWideUser`, `dualEnrolledUser`, `elementary`, `faculty`, `fullTime`, `highSchool`, `middleSchool`, `preschool`, `staffDirectoryBlock`, `substitute`, `unsubscribeRenWebEmail`, `endDate`, `startDate`, `fte`, `financialFamilyId`, `pda`, `roomId`, `schools`, `department`, `firstName`, `lastName`, `legacyStaffId`, `middleName`, `parentAlertPin`, `spouse`, `teacherSite`, `staffId`, `name`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `StaffVmOut`
--
UPDATE `StaffVmOut` SET `active` = ?, `administrator` = ?, `blockSurvey` = ?, `districtUser` = ?, `districtWideUser` = ?, `dualEnrolledUser` = ?, `elementary` = ?, `faculty` = ?, `fullTime` = ?, `highSchool` = ?, `middleSchool` = ?, `preschool` = ?, `staffDirectoryBlock` = ?, `substitute` = ?, `unsubscribeRenWebEmail` = ?, `endDate` = ?, `startDate` = ?, `fte` = ?, `financialFamilyId` = ?, `pda` = ?, `roomId` = ?, `schools` = ?, `department` = ?, `firstName` = ?, `lastName` = ?, `legacyStaffId` = ?, `middleName` = ?, `parentAlertPin` = ?, `spouse` = ?, `teacherSite` = ?, `staffId` = ?, `name` = ? WHERE 1;

--
-- DELETE template for table `StaffVmOut`
--
DELETE FROM `StaffVmOut` WHERE 0;

