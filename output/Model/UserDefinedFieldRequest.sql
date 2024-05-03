--
-- FACTSAPI.
-- Prepared SQL queries for 'UserDefinedFieldRequest' definition.
--


--
-- SELECT template for table `UserDefinedFieldRequest`
--
SELECT `groupId`, `fieldName`, `fieldType`, `fieldOrder`, `listItems` FROM `UserDefinedFieldRequest` WHERE 1;

--
-- INSERT template for table `UserDefinedFieldRequest`
--
INSERT INTO `UserDefinedFieldRequest`(`groupId`, `fieldName`, `fieldType`, `fieldOrder`, `listItems`) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table `UserDefinedFieldRequest`
--
UPDATE `UserDefinedFieldRequest` SET `groupId` = ?, `fieldName` = ?, `fieldType` = ?, `fieldOrder` = ?, `listItems` = ? WHERE 1;

--
-- DELETE template for table `UserDefinedFieldRequest`
--
DELETE FROM `UserDefinedFieldRequest` WHERE 0;

