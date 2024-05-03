--
-- FACTSAPI.
-- Prepared SQL queries for 'ClassVmInV1' definition.
--


--
-- SELECT template for table `ClassVmInV1`
--
SELECT `aideId`, `closed`, `color`, `colorText`, `courseID`, `googleCourseId`, `legacyClassId`, `linkedClassId`, `maleFemale`, `modifiedBy`, `modifiedDate`, `name`, `pattern`, `requiredRoom`, `section`, `staffId`, `term1`, `term2`, `term3`, `term4`, `term5`, `term6`, `yearId`, `instructor2Id` FROM `ClassVmInV1` WHERE 1;

--
-- INSERT template for table `ClassVmInV1`
--
INSERT INTO `ClassVmInV1`(`aideId`, `closed`, `color`, `colorText`, `courseID`, `googleCourseId`, `legacyClassId`, `linkedClassId`, `maleFemale`, `modifiedBy`, `modifiedDate`, `name`, `pattern`, `requiredRoom`, `section`, `staffId`, `term1`, `term2`, `term3`, `term4`, `term5`, `term6`, `yearId`, `instructor2Id`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `ClassVmInV1`
--
UPDATE `ClassVmInV1` SET `aideId` = ?, `closed` = ?, `color` = ?, `colorText` = ?, `courseID` = ?, `googleCourseId` = ?, `legacyClassId` = ?, `linkedClassId` = ?, `maleFemale` = ?, `modifiedBy` = ?, `modifiedDate` = ?, `name` = ?, `pattern` = ?, `requiredRoom` = ?, `section` = ?, `staffId` = ?, `term1` = ?, `term2` = ?, `term3` = ?, `term4` = ?, `term5` = ?, `term6` = ?, `yearId` = ?, `instructor2Id` = ? WHERE 1;

--
-- DELETE template for table `ClassVmInV1`
--
DELETE FROM `ClassVmInV1` WHERE 0;

