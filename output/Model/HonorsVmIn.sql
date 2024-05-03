--
-- FACTSAPI.
-- Prepared SQL queries for 'HonorsVmIn' definition.
--


--
-- SELECT template for table `HonorsVmIn`
--
SELECT `calcMethod`, `gradeLevel`, `honorName`, `honorRollId`, `maxClass`, `minAvg`, `minClass`, `minCredits`, `modifiedBy`, `modifiedDate`, `schoolCode`, `sequence`, `timeFrame` FROM `HonorsVmIn` WHERE 1;

--
-- INSERT template for table `HonorsVmIn`
--
INSERT INTO `HonorsVmIn`(`calcMethod`, `gradeLevel`, `honorName`, `honorRollId`, `maxClass`, `minAvg`, `minClass`, `minCredits`, `modifiedBy`, `modifiedDate`, `schoolCode`, `sequence`, `timeFrame`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `HonorsVmIn`
--
UPDATE `HonorsVmIn` SET `calcMethod` = ?, `gradeLevel` = ?, `honorName` = ?, `honorRollId` = ?, `maxClass` = ?, `minAvg` = ?, `minClass` = ?, `minCredits` = ?, `modifiedBy` = ?, `modifiedDate` = ?, `schoolCode` = ?, `sequence` = ?, `timeFrame` = ? WHERE 1;

--
-- DELETE template for table `HonorsVmIn`
--
DELETE FROM `HonorsVmIn` WHERE 0;

