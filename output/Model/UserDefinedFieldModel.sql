--
-- FACTSAPI.
-- Prepared SQL queries for 'UserDefinedFieldModel' definition.
--


--
-- SELECT template for table `UserDefinedFieldModel`
--
SELECT `groupId`, `fieldName`, `fieldType`, `fieldOrder`, `listItems`, `fieldId` FROM `UserDefinedFieldModel` WHERE 1;

--
-- INSERT template for table `UserDefinedFieldModel`
--
INSERT INTO `UserDefinedFieldModel`(`groupId`, `fieldName`, `fieldType`, `fieldOrder`, `listItems`, `fieldId`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `UserDefinedFieldModel`
--
UPDATE `UserDefinedFieldModel` SET `groupId` = ?, `fieldName` = ?, `fieldType` = ?, `fieldOrder` = ?, `listItems` = ?, `fieldId` = ? WHERE 1;

--
-- DELETE template for table `UserDefinedFieldModel`
--
DELETE FROM `UserDefinedFieldModel` WHERE 0;

