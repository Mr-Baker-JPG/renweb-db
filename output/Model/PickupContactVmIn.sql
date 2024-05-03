--
-- FACTSAPI.
-- Prepared SQL queries for 'PickupContactVmIn' definition.
--


--
-- SELECT template for table `PickupContactVmIn`
--
SELECT `cellPhone`, `countryCode`, `email`, `firstName`, `homePhone`, `lastName`, `middleName`, `note`, `portalSortOrder`, `refId`, `relationship`, `salutation`, `studentId`, `suffix`, `workPhone` FROM `PickupContactVmIn` WHERE 1;

--
-- INSERT template for table `PickupContactVmIn`
--
INSERT INTO `PickupContactVmIn`(`cellPhone`, `countryCode`, `email`, `firstName`, `homePhone`, `lastName`, `middleName`, `note`, `portalSortOrder`, `refId`, `relationship`, `salutation`, `studentId`, `suffix`, `workPhone`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PickupContactVmIn`
--
UPDATE `PickupContactVmIn` SET `cellPhone` = ?, `countryCode` = ?, `email` = ?, `firstName` = ?, `homePhone` = ?, `lastName` = ?, `middleName` = ?, `note` = ?, `portalSortOrder` = ?, `refId` = ?, `relationship` = ?, `salutation` = ?, `studentId` = ?, `suffix` = ?, `workPhone` = ? WHERE 1;

--
-- DELETE template for table `PickupContactVmIn`
--
DELETE FROM `PickupContactVmIn` WHERE 0;

