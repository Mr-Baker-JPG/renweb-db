--
-- FACTSAPI.
-- Prepared SQL queries for 'UserDefinedDataRequest' definition.
--


--
-- SELECT template for table `UserDefinedDataRequest`
--
SELECT `fieldId`, `linkedId`, `data` FROM `UserDefinedDataRequest` WHERE 1;

--
-- INSERT template for table `UserDefinedDataRequest`
--
INSERT INTO `UserDefinedDataRequest`(`fieldId`, `linkedId`, `data`) VALUES (?, ?, ?);

--
-- UPDATE template for table `UserDefinedDataRequest`
--
UPDATE `UserDefinedDataRequest` SET `fieldId` = ?, `linkedId` = ?, `data` = ? WHERE 1;

--
-- DELETE template for table `UserDefinedDataRequest`
--
DELETE FROM `UserDefinedDataRequest` WHERE 0;

