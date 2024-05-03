--
-- FACTSAPI.
-- Prepared SQL queries for 'ParentAlertEntity' definition.
--


--
-- SELECT template for table `ParentAlertEntity`
--
SELECT `id`, `personId`, `parentAlertPreference`, `parentAlertHomePhone`, `parentAlertCellPhone`, `parentAlertWorkPhone`, `parentAlertNoText` FROM `ParentAlertEntity` WHERE 1;

--
-- INSERT template for table `ParentAlertEntity`
--
INSERT INTO `ParentAlertEntity`(`id`, `personId`, `parentAlertPreference`, `parentAlertHomePhone`, `parentAlertCellPhone`, `parentAlertWorkPhone`, `parentAlertNoText`) VALUES (?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `ParentAlertEntity`
--
UPDATE `ParentAlertEntity` SET `id` = ?, `personId` = ?, `parentAlertPreference` = ?, `parentAlertHomePhone` = ?, `parentAlertCellPhone` = ?, `parentAlertWorkPhone` = ?, `parentAlertNoText` = ? WHERE 1;

--
-- DELETE template for table `ParentAlertEntity`
--
DELETE FROM `ParentAlertEntity` WHERE 0;

