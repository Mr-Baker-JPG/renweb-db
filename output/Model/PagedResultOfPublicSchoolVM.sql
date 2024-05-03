--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfPublicSchoolVM' definition.
--


--
-- SELECT template for table `PagedResultOfPublicSchoolVM`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfPublicSchoolVM` WHERE 1;

--
-- INSERT template for table `PagedResultOfPublicSchoolVM`
--
INSERT INTO `PagedResultOfPublicSchoolVM`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfPublicSchoolVM`
--
UPDATE `PagedResultOfPublicSchoolVM` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfPublicSchoolVM`
--
DELETE FROM `PagedResultOfPublicSchoolVM` WHERE 0;

