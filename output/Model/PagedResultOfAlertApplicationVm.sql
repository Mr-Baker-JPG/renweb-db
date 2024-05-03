--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfAlertApplicationVm' definition.
--


--
-- SELECT template for table `PagedResultOfAlertApplicationVm`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfAlertApplicationVm` WHERE 1;

--
-- INSERT template for table `PagedResultOfAlertApplicationVm`
--
INSERT INTO `PagedResultOfAlertApplicationVm`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfAlertApplicationVm`
--
UPDATE `PagedResultOfAlertApplicationVm` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfAlertApplicationVm`
--
DELETE FROM `PagedResultOfAlertApplicationVm` WHERE 0;

