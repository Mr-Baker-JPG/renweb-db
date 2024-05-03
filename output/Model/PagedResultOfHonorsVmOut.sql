--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfHonorsVmOut' definition.
--


--
-- SELECT template for table `PagedResultOfHonorsVmOut`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfHonorsVmOut` WHERE 1;

--
-- INSERT template for table `PagedResultOfHonorsVmOut`
--
INSERT INTO `PagedResultOfHonorsVmOut`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfHonorsVmOut`
--
UPDATE `PagedResultOfHonorsVmOut` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfHonorsVmOut`
--
DELETE FROM `PagedResultOfHonorsVmOut` WHERE 0;

