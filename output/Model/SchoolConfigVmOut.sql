--
-- FACTSAPI.
-- Prepared SQL queries for 'SchoolConfigVmOut' definition.
--


--
-- SELECT template for table `SchoolConfigVmOut`
--
SELECT `fax`, `phone`, `active`, `address`, `city`, `configSchoolID`, `defaultTermId`, `defaultYearId`, `districtName`, `email`, `modifiedBy`, `modifiedDate`, `nextYearId`, `parentAlert`, `pwTermID`, `pwTermID2`, `pwYearID`, `schoolCode`, `schoolLMS`, `schoolName`, `state`, `zip` FROM `SchoolConfigVmOut` WHERE 1;

--
-- INSERT template for table `SchoolConfigVmOut`
--
INSERT INTO `SchoolConfigVmOut`(`fax`, `phone`, `active`, `address`, `city`, `configSchoolID`, `defaultTermId`, `defaultYearId`, `districtName`, `email`, `modifiedBy`, `modifiedDate`, `nextYearId`, `parentAlert`, `pwTermID`, `pwTermID2`, `pwYearID`, `schoolCode`, `schoolLMS`, `schoolName`, `state`, `zip`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `SchoolConfigVmOut`
--
UPDATE `SchoolConfigVmOut` SET `fax` = ?, `phone` = ?, `active` = ?, `address` = ?, `city` = ?, `configSchoolID` = ?, `defaultTermId` = ?, `defaultYearId` = ?, `districtName` = ?, `email` = ?, `modifiedBy` = ?, `modifiedDate` = ?, `nextYearId` = ?, `parentAlert` = ?, `pwTermID` = ?, `pwTermID2` = ?, `pwYearID` = ?, `schoolCode` = ?, `schoolLMS` = ?, `schoolName` = ?, `state` = ?, `zip` = ? WHERE 1;

--
-- DELETE template for table `SchoolConfigVmOut`
--
DELETE FROM `SchoolConfigVmOut` WHERE 0;

