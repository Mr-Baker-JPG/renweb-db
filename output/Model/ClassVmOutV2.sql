--
-- FACTSAPI.
-- Prepared SQL queries for 'ClassVmOutV2' definition.
--


--
-- SELECT template for table `ClassVmOutV2`
--
SELECT `aideId`, `closed`, `color`, `colorText`, `courseID`, `googleCourseId`, `legacyClassId`, `linkedClassId`, `maleFemale`, `modifiedBy`, `modifiedDate`, `name`, `pattern`, `requiredRoom`, `section`, `staffId`, `term1`, `term2`, `term3`, `term4`, `term5`, `term6`, `yearId`, `secondaryStaffId`, `classId` FROM `ClassVmOutV2` WHERE 1;

--
-- INSERT template for table `ClassVmOutV2`
--
INSERT INTO `ClassVmOutV2`(`aideId`, `closed`, `color`, `colorText`, `courseID`, `googleCourseId`, `legacyClassId`, `linkedClassId`, `maleFemale`, `modifiedBy`, `modifiedDate`, `name`, `pattern`, `requiredRoom`, `section`, `staffId`, `term1`, `term2`, `term3`, `term4`, `term5`, `term6`, `yearId`, `secondaryStaffId`, `classId`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `ClassVmOutV2`
--
UPDATE `ClassVmOutV2` SET `aideId` = ?, `closed` = ?, `color` = ?, `colorText` = ?, `courseID` = ?, `googleCourseId` = ?, `legacyClassId` = ?, `linkedClassId` = ?, `maleFemale` = ?, `modifiedBy` = ?, `modifiedDate` = ?, `name` = ?, `pattern` = ?, `requiredRoom` = ?, `section` = ?, `staffId` = ?, `term1` = ?, `term2` = ?, `term3` = ?, `term4` = ?, `term5` = ?, `term6` = ?, `yearId` = ?, `secondaryStaffId` = ?, `classId` = ? WHERE 1;

--
-- DELETE template for table `ClassVmOutV2`
--
DELETE FROM `ClassVmOutV2` WHERE 0;

