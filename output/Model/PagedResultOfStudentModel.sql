--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfStudentModel' definition.
--


--
-- SELECT template for table `PagedResultOfStudentModel`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfStudentModel` WHERE 1;

--
-- INSERT template for table `PagedResultOfStudentModel`
--
INSERT INTO `PagedResultOfStudentModel`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfStudentModel`
--
UPDATE `PagedResultOfStudentModel` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfStudentModel`
--
DELETE FROM `PagedResultOfStudentModel` WHERE 0;

