--
-- FACTSAPI.
-- Prepared SQL queries for 'UserDefinedGroupRequest' definition.
--


--
-- SELECT template for table `UserDefinedGroupRequest`
--
SELECT `groupType`, `groupName`, `groupOrder`, `districtWide` FROM `UserDefinedGroupRequest` WHERE 1;

--
-- INSERT template for table `UserDefinedGroupRequest`
--
INSERT INTO `UserDefinedGroupRequest`(`groupType`, `groupName`, `groupOrder`, `districtWide`) VALUES (?, ?, ?, ?);

--
-- UPDATE template for table `UserDefinedGroupRequest`
--
UPDATE `UserDefinedGroupRequest` SET `groupType` = ?, `groupName` = ?, `groupOrder` = ?, `districtWide` = ? WHERE 1;

--
-- DELETE template for table `UserDefinedGroupRequest`
--
DELETE FROM `UserDefinedGroupRequest` WHERE 0;

