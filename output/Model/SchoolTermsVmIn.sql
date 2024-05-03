--
-- FACTSAPI.
-- Prepared SQL queries for 'SchoolTermsVmIn' definition.
--


--
-- SELECT template for table `SchoolTermsVmIn`
--
SELECT `termID`, `yearID`, `name`, `firstDay`, `lastDay`, `schoolCode`, `semesterID`, `modifiedBy`, `modifiedDate` FROM `SchoolTermsVmIn` WHERE 1;

--
-- INSERT template for table `SchoolTermsVmIn`
--
INSERT INTO `SchoolTermsVmIn`(`termID`, `yearID`, `name`, `firstDay`, `lastDay`, `schoolCode`, `semesterID`, `modifiedBy`, `modifiedDate`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `SchoolTermsVmIn`
--
UPDATE `SchoolTermsVmIn` SET `termID` = ?, `yearID` = ?, `name` = ?, `firstDay` = ?, `lastDay` = ?, `schoolCode` = ?, `semesterID` = ?, `modifiedBy` = ?, `modifiedDate` = ? WHERE 1;

--
-- DELETE template for table `SchoolTermsVmIn`
--
DELETE FROM `SchoolTermsVmIn` WHERE 0;

