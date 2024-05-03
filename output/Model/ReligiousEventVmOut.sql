--
-- FACTSAPI.
-- Prepared SQL queries for 'ReligiousEventVmOut' definition.
--


--
-- SELECT template for table `ReligiousEventVmOut`
--
SELECT `personId`, `religiousEventDate`, `religiousEventType`, `location`, `city`, `state`, `note`, `religiousEventId` FROM `ReligiousEventVmOut` WHERE 1;

--
-- INSERT template for table `ReligiousEventVmOut`
--
INSERT INTO `ReligiousEventVmOut`(`personId`, `religiousEventDate`, `religiousEventType`, `location`, `city`, `state`, `note`, `religiousEventId`) VALUES (?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `ReligiousEventVmOut`
--
UPDATE `ReligiousEventVmOut` SET `personId` = ?, `religiousEventDate` = ?, `religiousEventType` = ?, `location` = ?, `city` = ?, `state` = ?, `note` = ?, `religiousEventId` = ? WHERE 1;

--
-- DELETE template for table `ReligiousEventVmOut`
--
DELETE FROM `ReligiousEventVmOut` WHERE 0;

