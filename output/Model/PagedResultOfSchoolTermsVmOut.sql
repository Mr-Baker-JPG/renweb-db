--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfSchoolTermsVmOut' definition.
--


--
-- SELECT template for table `PagedResultOfSchoolTermsVmOut`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfSchoolTermsVmOut` WHERE 1;

--
-- INSERT template for table `PagedResultOfSchoolTermsVmOut`
--
INSERT INTO `PagedResultOfSchoolTermsVmOut`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfSchoolTermsVmOut`
--
UPDATE `PagedResultOfSchoolTermsVmOut` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfSchoolTermsVmOut`
--
DELETE FROM `PagedResultOfSchoolTermsVmOut` WHERE 0;

