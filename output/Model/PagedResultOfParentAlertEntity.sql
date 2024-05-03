--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfParentAlertEntity' definition.
--


--
-- SELECT template for table `PagedResultOfParentAlertEntity`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfParentAlertEntity` WHERE 1;

--
-- INSERT template for table `PagedResultOfParentAlertEntity`
--
INSERT INTO `PagedResultOfParentAlertEntity`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfParentAlertEntity`
--
UPDATE `PagedResultOfParentAlertEntity` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfParentAlertEntity`
--
DELETE FROM `PagedResultOfParentAlertEntity` WHERE 0;

