--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfClassEnrollmentVm' definition.
--


--
-- SELECT template for table `PagedResultOfClassEnrollmentVm`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfClassEnrollmentVm` WHERE 1;

--
-- INSERT template for table `PagedResultOfClassEnrollmentVm`
--
INSERT INTO `PagedResultOfClassEnrollmentVm`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfClassEnrollmentVm`
--
UPDATE `PagedResultOfClassEnrollmentVm` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfClassEnrollmentVm`
--
DELETE FROM `PagedResultOfClassEnrollmentVm` WHERE 0;

