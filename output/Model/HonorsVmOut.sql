--
-- FACTSAPI.
-- Prepared SQL queries for 'HonorsVmOut' definition.
--


--
-- SELECT template for table `HonorsVmOut`
--
SELECT `calcMethod`, `gradeLevel`, `honorName`, `honorRollId`, `maxClass`, `minAvg`, `minClass`, `minCredits`, `modifiedBy`, `modifiedDate`, `schoolCode`, `sequence`, `timeFrame`, `honorId` FROM `HonorsVmOut` WHERE 1;

--
-- INSERT template for table `HonorsVmOut`
--
INSERT INTO `HonorsVmOut`(`calcMethod`, `gradeLevel`, `honorName`, `honorRollId`, `maxClass`, `minAvg`, `minClass`, `minCredits`, `modifiedBy`, `modifiedDate`, `schoolCode`, `sequence`, `timeFrame`, `honorId`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `HonorsVmOut`
--
UPDATE `HonorsVmOut` SET `calcMethod` = ?, `gradeLevel` = ?, `honorName` = ?, `honorRollId` = ?, `maxClass` = ?, `minAvg` = ?, `minClass` = ?, `minCredits` = ?, `modifiedBy` = ?, `modifiedDate` = ?, `schoolCode` = ?, `sequence` = ?, `timeFrame` = ?, `honorId` = ? WHERE 1;

--
-- DELETE template for table `HonorsVmOut`
--
DELETE FROM `HonorsVmOut` WHERE 0;

