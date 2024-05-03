--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfPersonInterestVM' definition.
--


--
-- SELECT template for table `PagedResultOfPersonInterestVM`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfPersonInterestVM` WHERE 1;

--
-- INSERT template for table `PagedResultOfPersonInterestVM`
--
INSERT INTO `PagedResultOfPersonInterestVM`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfPersonInterestVM`
--
UPDATE `PagedResultOfPersonInterestVM` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfPersonInterestVM`
--
DELETE FROM `PagedResultOfPersonInterestVM` WHERE 0;

