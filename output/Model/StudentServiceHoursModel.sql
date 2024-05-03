--
-- FACTSAPI.
-- Prepared SQL queries for 'StudentServiceHoursModel' definition.
--


--
-- SELECT template for table `StudentServiceHoursModel`
--
SELECT `serviceHoursId`, `personId`, `description`, `hours`, `date`, `note`, `verifiedBy`, `createdBy` FROM `StudentServiceHoursModel` WHERE 1;

--
-- INSERT template for table `StudentServiceHoursModel`
--
INSERT INTO `StudentServiceHoursModel`(`serviceHoursId`, `personId`, `description`, `hours`, `date`, `note`, `verifiedBy`, `createdBy`) VALUES (?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `StudentServiceHoursModel`
--
UPDATE `StudentServiceHoursModel` SET `serviceHoursId` = ?, `personId` = ?, `description` = ?, `hours` = ?, `date` = ?, `note` = ?, `verifiedBy` = ?, `createdBy` = ? WHERE 1;

--
-- DELETE template for table `StudentServiceHoursModel`
--
DELETE FROM `StudentServiceHoursModel` WHERE 0;

