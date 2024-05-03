--
-- FACTSAPI.
-- Prepared SQL queries for 'SchoolTermsVmOutV2' definition.
--


--
-- SELECT template for table `SchoolTermsVmOutV2`
--
SELECT `termID`, `yearID`, `name`, `firstDay`, `lastDay`, `schoolCode`, `semesterID`, `modifiedBy`, `modifiedDate`, `uniqueTermID` FROM `SchoolTermsVmOutV2` WHERE 1;

--
-- INSERT template for table `SchoolTermsVmOutV2`
--
INSERT INTO `SchoolTermsVmOutV2`(`termID`, `yearID`, `name`, `firstDay`, `lastDay`, `schoolCode`, `semesterID`, `modifiedBy`, `modifiedDate`, `uniqueTermID`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `SchoolTermsVmOutV2`
--
UPDATE `SchoolTermsVmOutV2` SET `termID` = ?, `yearID` = ?, `name` = ?, `firstDay` = ?, `lastDay` = ?, `schoolCode` = ?, `semesterID` = ?, `modifiedBy` = ?, `modifiedDate` = ?, `uniqueTermID` = ? WHERE 1;

--
-- DELETE template for table `SchoolTermsVmOutV2`
--
DELETE FROM `SchoolTermsVmOutV2` WHERE 0;

