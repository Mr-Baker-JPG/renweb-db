--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfSchoolConfigVmOut' definition.
--


--
-- SELECT template for table `PagedResultOfSchoolConfigVmOut`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfSchoolConfigVmOut` WHERE 1;

--
-- INSERT template for table `PagedResultOfSchoolConfigVmOut`
--
INSERT INTO `PagedResultOfSchoolConfigVmOut`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfSchoolConfigVmOut`
--
UPDATE `PagedResultOfSchoolConfigVmOut` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfSchoolConfigVmOut`
--
DELETE FROM `PagedResultOfSchoolConfigVmOut` WHERE 0;

