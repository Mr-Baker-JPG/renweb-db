--
-- FACTSAPI.
-- Prepared SQL queries for 'PickupContactVmOut' definition.
--


--
-- SELECT template for table `PickupContactVmOut`
--
SELECT `cellPhone`, `countryCode`, `email`, `firstName`, `homePhone`, `lastName`, `middleName`, `note`, `portalSortOrder`, `refId`, `relationship`, `salutation`, `studentId`, `suffix`, `workPhone`, `pickupId` FROM `PickupContactVmOut` WHERE 1;

--
-- INSERT template for table `PickupContactVmOut`
--
INSERT INTO `PickupContactVmOut`(`cellPhone`, `countryCode`, `email`, `firstName`, `homePhone`, `lastName`, `middleName`, `note`, `portalSortOrder`, `refId`, `relationship`, `salutation`, `studentId`, `suffix`, `workPhone`, `pickupId`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PickupContactVmOut`
--
UPDATE `PickupContactVmOut` SET `cellPhone` = ?, `countryCode` = ?, `email` = ?, `firstName` = ?, `homePhone` = ?, `lastName` = ?, `middleName` = ?, `note` = ?, `portalSortOrder` = ?, `refId` = ?, `relationship` = ?, `salutation` = ?, `studentId` = ?, `suffix` = ?, `workPhone` = ?, `pickupId` = ? WHERE 1;

--
-- DELETE template for table `PickupContactVmOut`
--
DELETE FROM `PickupContactVmOut` WHERE 0;

