--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfParentStudentVM' definition.
--


--
-- SELECT template for table `PagedResultOfParentStudentVM`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfParentStudentVM` WHERE 1;

--
-- INSERT template for table `PagedResultOfParentStudentVM`
--
INSERT INTO `PagedResultOfParentStudentVM`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfParentStudentVM`
--
UPDATE `PagedResultOfParentStudentVM` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfParentStudentVM`
--
DELETE FROM `PagedResultOfParentStudentVM` WHERE 0;

