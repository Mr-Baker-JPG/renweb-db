--
-- FACTSAPI.
-- Prepared SQL queries for 'StaffObservationsVmIn' definition.
--


--
-- SELECT template for table `StaffObservationsVmIn`
--
SELECT `endDate`, `eval`, `evaluatorId`, `observationConfigId`, `personId`, `startDate`, `title` FROM `StaffObservationsVmIn` WHERE 1;

--
-- INSERT template for table `StaffObservationsVmIn`
--
INSERT INTO `StaffObservationsVmIn`(`endDate`, `eval`, `evaluatorId`, `observationConfigId`, `personId`, `startDate`, `title`) VALUES (?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `StaffObservationsVmIn`
--
UPDATE `StaffObservationsVmIn` SET `endDate` = ?, `eval` = ?, `evaluatorId` = ?, `observationConfigId` = ?, `personId` = ?, `startDate` = ?, `title` = ? WHERE 1;

--
-- DELETE template for table `StaffObservationsVmIn`
--
DELETE FROM `StaffObservationsVmIn` WHERE 0;

