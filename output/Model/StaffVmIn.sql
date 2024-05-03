--
-- FACTSAPI.
-- Prepared SQL queries for 'StaffVmIn' definition.
--


--
-- SELECT template for table `StaffVmIn`
--
SELECT `active`, `administrator`, `blockSurvey`, `districtUser`, `districtWideUser`, `dualEnrolledUser`, `elementary`, `faculty`, `fullTime`, `highSchool`, `middleSchool`, `preschool`, `staffDirectoryBlock`, `substitute`, `unsubscribeRenWebEmail`, `endDate`, `startDate`, `fte`, `financialFamilyId`, `pda`, `roomId`, `schools`, `department`, `firstName`, `lastName`, `legacyStaffId`, `middleName`, `parentAlertPin`, `spouse`, `teacherSite` FROM `StaffVmIn` WHERE 1;

--
-- INSERT template for table `StaffVmIn`
--
INSERT INTO `StaffVmIn`(`active`, `administrator`, `blockSurvey`, `districtUser`, `districtWideUser`, `dualEnrolledUser`, `elementary`, `faculty`, `fullTime`, `highSchool`, `middleSchool`, `preschool`, `staffDirectoryBlock`, `substitute`, `unsubscribeRenWebEmail`, `endDate`, `startDate`, `fte`, `financialFamilyId`, `pda`, `roomId`, `schools`, `department`, `firstName`, `lastName`, `legacyStaffId`, `middleName`, `parentAlertPin`, `spouse`, `teacherSite`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `StaffVmIn`
--
UPDATE `StaffVmIn` SET `active` = ?, `administrator` = ?, `blockSurvey` = ?, `districtUser` = ?, `districtWideUser` = ?, `dualEnrolledUser` = ?, `elementary` = ?, `faculty` = ?, `fullTime` = ?, `highSchool` = ?, `middleSchool` = ?, `preschool` = ?, `staffDirectoryBlock` = ?, `substitute` = ?, `unsubscribeRenWebEmail` = ?, `endDate` = ?, `startDate` = ?, `fte` = ?, `financialFamilyId` = ?, `pda` = ?, `roomId` = ?, `schools` = ?, `department` = ?, `firstName` = ?, `lastName` = ?, `legacyStaffId` = ?, `middleName` = ?, `parentAlertPin` = ?, `spouse` = ?, `teacherSite` = ? WHERE 1;

--
-- DELETE template for table `StaffVmIn`
--
DELETE FROM `StaffVmIn` WHERE 0;

