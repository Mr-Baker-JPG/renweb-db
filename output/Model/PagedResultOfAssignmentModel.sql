--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfAssignmentModel' definition.
--


--
-- SELECT template for table `PagedResultOfAssignmentModel`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfAssignmentModel` WHERE 1;

--
-- INSERT template for table `PagedResultOfAssignmentModel`
--
INSERT INTO `PagedResultOfAssignmentModel`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfAssignmentModel`
--
UPDATE `PagedResultOfAssignmentModel` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfAssignmentModel`
--
DELETE FROM `PagedResultOfAssignmentModel` WHERE 0;

