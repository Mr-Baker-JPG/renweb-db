--
-- FACTSAPI.
-- Prepared SQL queries for 'UserDefinedGroupModel' definition.
--


--
-- SELECT template for table `UserDefinedGroupModel`
--
SELECT `groupType`, `groupName`, `groupOrder`, `districtWide`, `groupId`, `schoolCode`, `fieldList`, `securityLevel` FROM `UserDefinedGroupModel` WHERE 1;

--
-- INSERT template for table `UserDefinedGroupModel`
--
INSERT INTO `UserDefinedGroupModel`(`groupType`, `groupName`, `groupOrder`, `districtWide`, `groupId`, `schoolCode`, `fieldList`, `securityLevel`) VALUES (?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `UserDefinedGroupModel`
--
UPDATE `UserDefinedGroupModel` SET `groupType` = ?, `groupName` = ?, `groupOrder` = ?, `districtWide` = ?, `groupId` = ?, `schoolCode` = ?, `fieldList` = ?, `securityLevel` = ? WHERE 1;

--
-- DELETE template for table `UserDefinedGroupModel`
--
DELETE FROM `UserDefinedGroupModel` WHERE 0;

