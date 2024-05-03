--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfInterestCategoryVmOut' definition.
--


--
-- SELECT template for table `PagedResultOfInterestCategoryVmOut`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfInterestCategoryVmOut` WHERE 1;

--
-- INSERT template for table `PagedResultOfInterestCategoryVmOut`
--
INSERT INTO `PagedResultOfInterestCategoryVmOut`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfInterestCategoryVmOut`
--
UPDATE `PagedResultOfInterestCategoryVmOut` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfInterestCategoryVmOut`
--
DELETE FROM `PagedResultOfInterestCategoryVmOut` WHERE 0;

