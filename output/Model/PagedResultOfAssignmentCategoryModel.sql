--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfAssignmentCategoryModel' definition.
--


--
-- SELECT template for table `PagedResultOfAssignmentCategoryModel`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfAssignmentCategoryModel` WHERE 1;

--
-- INSERT template for table `PagedResultOfAssignmentCategoryModel`
--
INSERT INTO `PagedResultOfAssignmentCategoryModel`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfAssignmentCategoryModel`
--
UPDATE `PagedResultOfAssignmentCategoryModel` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfAssignmentCategoryModel`
--
DELETE FROM `PagedResultOfAssignmentCategoryModel` WHERE 0;

