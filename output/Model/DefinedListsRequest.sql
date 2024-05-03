--
-- FACTSAPI.
-- Prepared SQL queries for 'DefinedListsRequest' definition.
--


--
-- SELECT template for table `DefinedListsRequest`
--
SELECT `type`, `name` FROM `DefinedListsRequest` WHERE 1;

--
-- INSERT template for table `DefinedListsRequest`
--
INSERT INTO `DefinedListsRequest`(`type`, `name`) VALUES (?, ?);

--
-- UPDATE template for table `DefinedListsRequest`
--
UPDATE `DefinedListsRequest` SET `type` = ?, `name` = ? WHERE 1;

--
-- DELETE template for table `DefinedListsRequest`
--
DELETE FROM `DefinedListsRequest` WHERE 0;

