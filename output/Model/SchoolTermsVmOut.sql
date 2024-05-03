--
-- FACTSAPI.
-- Prepared SQL queries for 'SchoolTermsVmOut' definition.
--


--
-- SELECT template for table `SchoolTermsVmOut`
--
SELECT `termID`, `yearID`, `name`, `firstDay`, `lastDay`, `schoolCode`, `semesterID`, `modifiedBy`, `modifiedDate`, `schoolTermID` FROM `SchoolTermsVmOut` WHERE 1;

--
-- INSERT template for table `SchoolTermsVmOut`
--
INSERT INTO `SchoolTermsVmOut`(`termID`, `yearID`, `name`, `firstDay`, `lastDay`, `schoolCode`, `semesterID`, `modifiedBy`, `modifiedDate`, `schoolTermID`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `SchoolTermsVmOut`
--
UPDATE `SchoolTermsVmOut` SET `termID` = ?, `yearID` = ?, `name` = ?, `firstDay` = ?, `lastDay` = ?, `schoolCode` = ?, `semesterID` = ?, `modifiedBy` = ?, `modifiedDate` = ?, `schoolTermID` = ? WHERE 1;

--
-- DELETE template for table `SchoolTermsVmOut`
--
DELETE FROM `SchoolTermsVmOut` WHERE 0;

