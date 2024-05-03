--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfUserDefinedGroupModel' definition.
--


--
-- SELECT template for table `PagedResultOfUserDefinedGroupModel`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfUserDefinedGroupModel` WHERE 1;

--
-- INSERT template for table `PagedResultOfUserDefinedGroupModel`
--
INSERT INTO `PagedResultOfUserDefinedGroupModel`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfUserDefinedGroupModel`
--
UPDATE `PagedResultOfUserDefinedGroupModel` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfUserDefinedGroupModel`
--
DELETE FROM `PagedResultOfUserDefinedGroupModel` WHERE 0;

