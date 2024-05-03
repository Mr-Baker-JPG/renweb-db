--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfSchoolTermsVmOutV2' definition.
--


--
-- SELECT template for table `PagedResultOfSchoolTermsVmOutV2`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfSchoolTermsVmOutV2` WHERE 1;

--
-- INSERT template for table `PagedResultOfSchoolTermsVmOutV2`
--
INSERT INTO `PagedResultOfSchoolTermsVmOutV2`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfSchoolTermsVmOutV2`
--
UPDATE `PagedResultOfSchoolTermsVmOutV2` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfSchoolTermsVmOutV2`
--
DELETE FROM `PagedResultOfSchoolTermsVmOutV2` WHERE 0;

