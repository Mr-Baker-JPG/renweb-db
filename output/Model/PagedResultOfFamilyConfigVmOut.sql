--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfFamilyConfigVmOut' definition.
--


--
-- SELECT template for table `PagedResultOfFamilyConfigVmOut`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfFamilyConfigVmOut` WHERE 1;

--
-- INSERT template for table `PagedResultOfFamilyConfigVmOut`
--
INSERT INTO `PagedResultOfFamilyConfigVmOut`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfFamilyConfigVmOut`
--
UPDATE `PagedResultOfFamilyConfigVmOut` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfFamilyConfigVmOut`
--
DELETE FROM `PagedResultOfFamilyConfigVmOut` WHERE 0;

