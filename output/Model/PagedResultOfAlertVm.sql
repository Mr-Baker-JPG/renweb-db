--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfAlertVm' definition.
--


--
-- SELECT template for table `PagedResultOfAlertVm`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfAlertVm` WHERE 1;

--
-- INSERT template for table `PagedResultOfAlertVm`
--
INSERT INTO `PagedResultOfAlertVm`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfAlertVm`
--
UPDATE `PagedResultOfAlertVm` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfAlertVm`
--
DELETE FROM `PagedResultOfAlertVm` WHERE 0;

