--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfClassVmOutV2' definition.
--


--
-- SELECT template for table `PagedResultOfClassVmOutV2`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfClassVmOutV2` WHERE 1;

--
-- INSERT template for table `PagedResultOfClassVmOutV2`
--
INSERT INTO `PagedResultOfClassVmOutV2`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfClassVmOutV2`
--
UPDATE `PagedResultOfClassVmOutV2` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfClassVmOutV2`
--
DELETE FROM `PagedResultOfClassVmOutV2` WHERE 0;

