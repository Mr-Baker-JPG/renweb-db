--
-- FACTSAPI.
-- Prepared SQL queries for 'StaffObservationsVmOut' definition.
--


--
-- SELECT template for table `StaffObservationsVmOut`
--
SELECT `endDate`, `eval`, `evaluatorId`, `observationConfigId`, `personId`, `startDate`, `title`, `observationId` FROM `StaffObservationsVmOut` WHERE 1;

--
-- INSERT template for table `StaffObservationsVmOut`
--
INSERT INTO `StaffObservationsVmOut`(`endDate`, `eval`, `evaluatorId`, `observationConfigId`, `personId`, `startDate`, `title`, `observationId`) VALUES (?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `StaffObservationsVmOut`
--
UPDATE `StaffObservationsVmOut` SET `endDate` = ?, `eval` = ?, `evaluatorId` = ?, `observationConfigId` = ?, `personId` = ?, `startDate` = ?, `title` = ?, `observationId` = ? WHERE 1;

--
-- DELETE template for table `StaffObservationsVmOut`
--
DELETE FROM `StaffObservationsVmOut` WHERE 0;

