--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfEducationVmOut' definition.
--


--
-- SELECT template for table `PagedResultOfEducationVmOut`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfEducationVmOut` WHERE 1;

--
-- INSERT template for table `PagedResultOfEducationVmOut`
--
INSERT INTO `PagedResultOfEducationVmOut`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfEducationVmOut`
--
UPDATE `PagedResultOfEducationVmOut` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfEducationVmOut`
--
DELETE FROM `PagedResultOfEducationVmOut` WHERE 0;

