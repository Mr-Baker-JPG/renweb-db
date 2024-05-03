--
-- FACTSAPI.
-- Prepared SQL queries for 'DefinedListsModel' definition.
--


--
-- SELECT template for table `DefinedListsModel`
--
SELECT `type`, `name`, `definedListId`, `schoolCode` FROM `DefinedListsModel` WHERE 1;

--
-- INSERT template for table `DefinedListsModel`
--
INSERT INTO `DefinedListsModel`(`type`, `name`, `definedListId`, `schoolCode`) VALUES (?, ?, ?, ?);

--
-- UPDATE template for table `DefinedListsModel`
--
UPDATE `DefinedListsModel` SET `type` = ?, `name` = ?, `definedListId` = ?, `schoolCode` = ? WHERE 1;

--
-- DELETE template for table `DefinedListsModel`
--
DELETE FROM `DefinedListsModel` WHERE 0;

