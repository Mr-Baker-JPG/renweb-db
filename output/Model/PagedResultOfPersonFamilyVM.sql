--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfPersonFamilyVM' definition.
--


--
-- SELECT template for table `PagedResultOfPersonFamilyVM`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfPersonFamilyVM` WHERE 1;

--
-- INSERT template for table `PagedResultOfPersonFamilyVM`
--
INSERT INTO `PagedResultOfPersonFamilyVM`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfPersonFamilyVM`
--
UPDATE `PagedResultOfPersonFamilyVM` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfPersonFamilyVM`
--
DELETE FROM `PagedResultOfPersonFamilyVM` WHERE 0;

