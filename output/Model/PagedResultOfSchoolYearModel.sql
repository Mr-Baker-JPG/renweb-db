--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfSchoolYearModel' definition.
--


--
-- SELECT template for table `PagedResultOfSchoolYearModel`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfSchoolYearModel` WHERE 1;

--
-- INSERT template for table `PagedResultOfSchoolYearModel`
--
INSERT INTO `PagedResultOfSchoolYearModel`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfSchoolYearModel`
--
UPDATE `PagedResultOfSchoolYearModel` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfSchoolYearModel`
--
DELETE FROM `PagedResultOfSchoolYearModel` WHERE 0;

