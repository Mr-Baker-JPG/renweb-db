--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfEnrollmentHistoryVmOut' definition.
--


--
-- SELECT template for table `PagedResultOfEnrollmentHistoryVmOut`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfEnrollmentHistoryVmOut` WHERE 1;

--
-- INSERT template for table `PagedResultOfEnrollmentHistoryVmOut`
--
INSERT INTO `PagedResultOfEnrollmentHistoryVmOut`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfEnrollmentHistoryVmOut`
--
UPDATE `PagedResultOfEnrollmentHistoryVmOut` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfEnrollmentHistoryVmOut`
--
DELETE FROM `PagedResultOfEnrollmentHistoryVmOut` WHERE 0;

