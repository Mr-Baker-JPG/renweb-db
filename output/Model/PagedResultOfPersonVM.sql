--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfPersonVM' definition.
--


--
-- SELECT template for table `PagedResultOfPersonVM`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfPersonVM` WHERE 1;

--
-- INSERT template for table `PagedResultOfPersonVM`
--
INSERT INTO `PagedResultOfPersonVM`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfPersonVM`
--
UPDATE `PagedResultOfPersonVM` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfPersonVM`
--
DELETE FROM `PagedResultOfPersonVM` WHERE 0;

