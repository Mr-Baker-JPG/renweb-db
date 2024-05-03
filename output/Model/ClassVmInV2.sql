--
-- FACTSAPI.
-- Prepared SQL queries for 'ClassVmInV2' definition.
--


--
-- SELECT template for table `ClassVmInV2`
--
SELECT `aideId`, `closed`, `color`, `colorText`, `courseID`, `googleCourseId`, `legacyClassId`, `linkedClassId`, `maleFemale`, `modifiedBy`, `modifiedDate`, `name`, `pattern`, `requiredRoom`, `section`, `staffId`, `term1`, `term2`, `term3`, `term4`, `term5`, `term6`, `yearId`, `secondaryStaffId` FROM `ClassVmInV2` WHERE 1;

--
-- INSERT template for table `ClassVmInV2`
--
INSERT INTO `ClassVmInV2`(`aideId`, `closed`, `color`, `colorText`, `courseID`, `googleCourseId`, `legacyClassId`, `linkedClassId`, `maleFemale`, `modifiedBy`, `modifiedDate`, `name`, `pattern`, `requiredRoom`, `section`, `staffId`, `term1`, `term2`, `term3`, `term4`, `term5`, `term6`, `yearId`, `secondaryStaffId`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `ClassVmInV2`
--
UPDATE `ClassVmInV2` SET `aideId` = ?, `closed` = ?, `color` = ?, `colorText` = ?, `courseID` = ?, `googleCourseId` = ?, `legacyClassId` = ?, `linkedClassId` = ?, `maleFemale` = ?, `modifiedBy` = ?, `modifiedDate` = ?, `name` = ?, `pattern` = ?, `requiredRoom` = ?, `section` = ?, `staffId` = ?, `term1` = ?, `term2` = ?, `term3` = ?, `term4` = ?, `term5` = ?, `term6` = ?, `yearId` = ?, `secondaryStaffId` = ? WHERE 1;

--
-- DELETE template for table `ClassVmInV2`
--
DELETE FROM `ClassVmInV2` WHERE 0;

