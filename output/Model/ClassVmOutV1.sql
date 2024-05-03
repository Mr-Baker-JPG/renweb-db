--
-- FACTSAPI.
-- Prepared SQL queries for 'ClassVmOutV1' definition.
--


--
-- SELECT template for table `ClassVmOutV1`
--
SELECT `aideId`, `closed`, `color`, `colorText`, `courseID`, `googleCourseId`, `legacyClassId`, `linkedClassId`, `maleFemale`, `modifiedBy`, `modifiedDate`, `name`, `pattern`, `requiredRoom`, `section`, `staffId`, `term1`, `term2`, `term3`, `term4`, `term5`, `term6`, `yearId`, `instructor2Id`, `classId` FROM `ClassVmOutV1` WHERE 1;

--
-- INSERT template for table `ClassVmOutV1`
--
INSERT INTO `ClassVmOutV1`(`aideId`, `closed`, `color`, `colorText`, `courseID`, `googleCourseId`, `legacyClassId`, `linkedClassId`, `maleFemale`, `modifiedBy`, `modifiedDate`, `name`, `pattern`, `requiredRoom`, `section`, `staffId`, `term1`, `term2`, `term3`, `term4`, `term5`, `term6`, `yearId`, `instructor2Id`, `classId`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `ClassVmOutV1`
--
UPDATE `ClassVmOutV1` SET `aideId` = ?, `closed` = ?, `color` = ?, `colorText` = ?, `courseID` = ?, `googleCourseId` = ?, `legacyClassId` = ?, `linkedClassId` = ?, `maleFemale` = ?, `modifiedBy` = ?, `modifiedDate` = ?, `name` = ?, `pattern` = ?, `requiredRoom` = ?, `section` = ?, `staffId` = ?, `term1` = ?, `term2` = ?, `term3` = ?, `term4` = ?, `term5` = ?, `term6` = ?, `yearId` = ?, `instructor2Id` = ?, `classId` = ? WHERE 1;

--
-- DELETE template for table `ClassVmOutV1`
--
DELETE FROM `ClassVmOutV1` WHERE 0;

