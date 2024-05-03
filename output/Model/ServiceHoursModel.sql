--
-- FACTSAPI.
-- Prepared SQL queries for 'ServiceHoursModel' definition.
--


--
-- SELECT template for table `ServiceHoursModel`
--
SELECT `serviceHoursId`, `personId`, `description`, `hours`, `date`, `note`, `verifiedBy`, `createdBy`, `yearId` FROM `ServiceHoursModel` WHERE 1;

--
-- INSERT template for table `ServiceHoursModel`
--
INSERT INTO `ServiceHoursModel`(`serviceHoursId`, `personId`, `description`, `hours`, `date`, `note`, `verifiedBy`, `createdBy`, `yearId`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `ServiceHoursModel`
--
UPDATE `ServiceHoursModel` SET `serviceHoursId` = ?, `personId` = ?, `description` = ?, `hours` = ?, `date` = ?, `note` = ?, `verifiedBy` = ?, `createdBy` = ?, `yearId` = ? WHERE 1;

--
-- DELETE template for table `ServiceHoursModel`
--
DELETE FROM `ServiceHoursModel` WHERE 0;

