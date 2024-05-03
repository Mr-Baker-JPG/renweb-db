--
-- FACTSAPI.
-- Prepared SQL queries for 'DirectoryPreferencesVmOut' definition.
--


--
-- SELECT template for table `DirectoryPreferencesVmOut`
--
SELECT `blockName`, `blockCellPhone`, `blockHomePhone`, `blockAddress`, `blockEmail`, `personId` FROM `DirectoryPreferencesVmOut` WHERE 1;

--
-- INSERT template for table `DirectoryPreferencesVmOut`
--
INSERT INTO `DirectoryPreferencesVmOut`(`blockName`, `blockCellPhone`, `blockHomePhone`, `blockAddress`, `blockEmail`, `personId`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `DirectoryPreferencesVmOut`
--
UPDATE `DirectoryPreferencesVmOut` SET `blockName` = ?, `blockCellPhone` = ?, `blockHomePhone` = ?, `blockAddress` = ?, `blockEmail` = ?, `personId` = ? WHERE 1;

--
-- DELETE template for table `DirectoryPreferencesVmOut`
--
DELETE FROM `DirectoryPreferencesVmOut` WHERE 0;

