--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfCoursesVmOut' definition.
--


--
-- SELECT template for table `PagedResultOfCoursesVmOut`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfCoursesVmOut` WHERE 1;

--
-- INSERT template for table `PagedResultOfCoursesVmOut`
--
INSERT INTO `PagedResultOfCoursesVmOut`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfCoursesVmOut`
--
UPDATE `PagedResultOfCoursesVmOut` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfCoursesVmOut`
--
DELETE FROM `PagedResultOfCoursesVmOut` WHERE 0;

