--
-- FACTSAPI.
-- Prepared SQL queries for 'UserDefinedDataModel' definition.
--


--
-- SELECT template for table `UserDefinedDataModel`
--
SELECT `fieldId`, `linkedId`, `data`, `dataId` FROM `UserDefinedDataModel` WHERE 1;

--
-- INSERT template for table `UserDefinedDataModel`
--
INSERT INTO `UserDefinedDataModel`(`fieldId`, `linkedId`, `data`, `dataId`) VALUES (?, ?, ?, ?);

--
-- UPDATE template for table `UserDefinedDataModel`
--
UPDATE `UserDefinedDataModel` SET `fieldId` = ?, `linkedId` = ?, `data` = ?, `dataId` = ? WHERE 1;

--
-- DELETE template for table `UserDefinedDataModel`
--
DELETE FROM `UserDefinedDataModel` WHERE 0;

