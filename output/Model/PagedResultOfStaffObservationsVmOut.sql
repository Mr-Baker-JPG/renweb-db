--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfStaffObservationsVmOut' definition.
--


--
-- SELECT template for table `PagedResultOfStaffObservationsVmOut`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfStaffObservationsVmOut` WHERE 1;

--
-- INSERT template for table `PagedResultOfStaffObservationsVmOut`
--
INSERT INTO `PagedResultOfStaffObservationsVmOut`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfStaffObservationsVmOut`
--
UPDATE `PagedResultOfStaffObservationsVmOut` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfStaffObservationsVmOut`
--
DELETE FROM `PagedResultOfStaffObservationsVmOut` WHERE 0;

