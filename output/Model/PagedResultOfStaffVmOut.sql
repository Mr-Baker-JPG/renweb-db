--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfStaffVmOut' definition.
--


--
-- SELECT template for table `PagedResultOfStaffVmOut`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfStaffVmOut` WHERE 1;

--
-- INSERT template for table `PagedResultOfStaffVmOut`
--
INSERT INTO `PagedResultOfStaffVmOut`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfStaffVmOut`
--
UPDATE `PagedResultOfStaffVmOut` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfStaffVmOut`
--
DELETE FROM `PagedResultOfStaffVmOut` WHERE 0;

