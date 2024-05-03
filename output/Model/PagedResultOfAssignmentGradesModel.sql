--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfAssignmentGradesModel' definition.
--


--
-- SELECT template for table `PagedResultOfAssignmentGradesModel`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfAssignmentGradesModel` WHERE 1;

--
-- INSERT template for table `PagedResultOfAssignmentGradesModel`
--
INSERT INTO `PagedResultOfAssignmentGradesModel`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfAssignmentGradesModel`
--
UPDATE `PagedResultOfAssignmentGradesModel` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfAssignmentGradesModel`
--
DELETE FROM `PagedResultOfAssignmentGradesModel` WHERE 0;

