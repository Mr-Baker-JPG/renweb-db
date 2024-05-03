--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfStudentServiceHoursModel' definition.
--


--
-- SELECT template for table `PagedResultOfStudentServiceHoursModel`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfStudentServiceHoursModel` WHERE 1;

--
-- INSERT template for table `PagedResultOfStudentServiceHoursModel`
--
INSERT INTO `PagedResultOfStudentServiceHoursModel`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfStudentServiceHoursModel`
--
UPDATE `PagedResultOfStudentServiceHoursModel` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfStudentServiceHoursModel`
--
DELETE FROM `PagedResultOfStudentServiceHoursModel` WHERE 0;

