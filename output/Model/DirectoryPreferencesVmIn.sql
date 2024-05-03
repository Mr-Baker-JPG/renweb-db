--
-- FACTSAPI.
-- Prepared SQL queries for 'DirectoryPreferencesVmIn' definition.
--


--
-- SELECT template for table `DirectoryPreferencesVmIn`
--
SELECT `blockName`, `blockCellPhone`, `blockHomePhone`, `blockAddress`, `blockEmail` FROM `DirectoryPreferencesVmIn` WHERE 1;

--
-- INSERT template for table `DirectoryPreferencesVmIn`
--
INSERT INTO `DirectoryPreferencesVmIn`(`blockName`, `blockCellPhone`, `blockHomePhone`, `blockAddress`, `blockEmail`) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table `DirectoryPreferencesVmIn`
--
UPDATE `DirectoryPreferencesVmIn` SET `blockName` = ?, `blockCellPhone` = ?, `blockHomePhone` = ?, `blockAddress` = ?, `blockEmail` = ? WHERE 1;

--
-- DELETE template for table `DirectoryPreferencesVmIn`
--
DELETE FROM `DirectoryPreferencesVmIn` WHERE 0;

