--
-- FACTSAPI.
-- Prepared SQL queries for 'ClassVmIn' definition.
--


--
-- SELECT template for table `ClassVmIn`
--
SELECT `aideId`, `closed`, `color`, `colorText`, `courseID`, `googleCourseId`, `legacyClassId`, `linkedClassId`, `maleFemale`, `modifiedBy`, `modifiedDate`, `name`, `pattern`, `requiredRoom`, `section`, `staffId`, `term1`, `term2`, `term3`, `term4`, `term5`, `term6`, `yearId` FROM `ClassVmIn` WHERE 1;

--
-- INSERT template for table `ClassVmIn`
--
INSERT INTO `ClassVmIn`(`aideId`, `closed`, `color`, `colorText`, `courseID`, `googleCourseId`, `legacyClassId`, `linkedClassId`, `maleFemale`, `modifiedBy`, `modifiedDate`, `name`, `pattern`, `requiredRoom`, `section`, `staffId`, `term1`, `term2`, `term3`, `term4`, `term5`, `term6`, `yearId`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `ClassVmIn`
--
UPDATE `ClassVmIn` SET `aideId` = ?, `closed` = ?, `color` = ?, `colorText` = ?, `courseID` = ?, `googleCourseId` = ?, `legacyClassId` = ?, `linkedClassId` = ?, `maleFemale` = ?, `modifiedBy` = ?, `modifiedDate` = ?, `name` = ?, `pattern` = ?, `requiredRoom` = ?, `section` = ?, `staffId` = ?, `term1` = ?, `term2` = ?, `term3` = ?, `term4` = ?, `term5` = ?, `term6` = ?, `yearId` = ? WHERE 1;

--
-- DELETE template for table `ClassVmIn`
--
DELETE FROM `ClassVmIn` WHERE 0;

