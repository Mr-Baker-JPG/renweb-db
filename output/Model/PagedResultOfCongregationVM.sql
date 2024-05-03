--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfCongregationVM' definition.
--


--
-- SELECT template for table `PagedResultOfCongregationVM`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfCongregationVM` WHERE 1;

--
-- INSERT template for table `PagedResultOfCongregationVM`
--
INSERT INTO `PagedResultOfCongregationVM`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfCongregationVM`
--
UPDATE `PagedResultOfCongregationVM` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfCongregationVM`
--
DELETE FROM `PagedResultOfCongregationVM` WHERE 0;

