--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfClassVmOutV1' definition.
--


--
-- SELECT template for table `PagedResultOfClassVmOutV1`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfClassVmOutV1` WHERE 1;

--
-- INSERT template for table `PagedResultOfClassVmOutV1`
--
INSERT INTO `PagedResultOfClassVmOutV1`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfClassVmOutV1`
--
UPDATE `PagedResultOfClassVmOutV1` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfClassVmOutV1`
--
DELETE FROM `PagedResultOfClassVmOutV1` WHERE 0;

