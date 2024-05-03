--
-- FACTSAPI.
-- Prepared SQL queries for 'ReligiousEventVmIn' definition.
--


--
-- SELECT template for table `ReligiousEventVmIn`
--
SELECT `personId`, `religiousEventDate`, `religiousEventType`, `location`, `city`, `state`, `note` FROM `ReligiousEventVmIn` WHERE 1;

--
-- INSERT template for table `ReligiousEventVmIn`
--
INSERT INTO `ReligiousEventVmIn`(`personId`, `religiousEventDate`, `religiousEventType`, `location`, `city`, `state`, `note`) VALUES (?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `ReligiousEventVmIn`
--
UPDATE `ReligiousEventVmIn` SET `personId` = ?, `religiousEventDate` = ?, `religiousEventType` = ?, `location` = ?, `city` = ?, `state` = ?, `note` = ? WHERE 1;

--
-- DELETE template for table `ReligiousEventVmIn`
--
DELETE FROM `ReligiousEventVmIn` WHERE 0;

