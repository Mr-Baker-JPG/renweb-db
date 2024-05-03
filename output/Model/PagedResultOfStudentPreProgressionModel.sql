--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfStudentPreProgressionModel' definition.
--


--
-- SELECT template for table `PagedResultOfStudentPreProgressionModel`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfStudentPreProgressionModel` WHERE 1;

--
-- INSERT template for table `PagedResultOfStudentPreProgressionModel`
--
INSERT INTO `PagedResultOfStudentPreProgressionModel`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfStudentPreProgressionModel`
--
UPDATE `PagedResultOfStudentPreProgressionModel` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfStudentPreProgressionModel`
--
DELETE FROM `PagedResultOfStudentPreProgressionModel` WHERE 0;

