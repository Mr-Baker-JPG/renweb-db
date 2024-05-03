--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfUserDefinedFieldModel' definition.
--


--
-- SELECT template for table `PagedResultOfUserDefinedFieldModel`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfUserDefinedFieldModel` WHERE 1;

--
-- INSERT template for table `PagedResultOfUserDefinedFieldModel`
--
INSERT INTO `PagedResultOfUserDefinedFieldModel`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfUserDefinedFieldModel`
--
UPDATE `PagedResultOfUserDefinedFieldModel` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfUserDefinedFieldModel`
--
DELETE FROM `PagedResultOfUserDefinedFieldModel` WHERE 0;

