--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfUserDefinedDataModel' definition.
--


--
-- SELECT template for table `PagedResultOfUserDefinedDataModel`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfUserDefinedDataModel` WHERE 1;

--
-- INSERT template for table `PagedResultOfUserDefinedDataModel`
--
INSERT INTO `PagedResultOfUserDefinedDataModel`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfUserDefinedDataModel`
--
UPDATE `PagedResultOfUserDefinedDataModel` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfUserDefinedDataModel`
--
DELETE FROM `PagedResultOfUserDefinedDataModel` WHERE 0;

