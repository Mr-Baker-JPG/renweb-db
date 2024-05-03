--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfDefinedListsModel' definition.
--


--
-- SELECT template for table `PagedResultOfDefinedListsModel`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfDefinedListsModel` WHERE 1;

--
-- INSERT template for table `PagedResultOfDefinedListsModel`
--
INSERT INTO `PagedResultOfDefinedListsModel`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfDefinedListsModel`
--
UPDATE `PagedResultOfDefinedListsModel` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfDefinedListsModel`
--
DELETE FROM `PagedResultOfDefinedListsModel` WHERE 0;

