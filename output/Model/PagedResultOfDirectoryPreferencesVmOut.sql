--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfDirectoryPreferencesVmOut' definition.
--


--
-- SELECT template for table `PagedResultOfDirectoryPreferencesVmOut`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfDirectoryPreferencesVmOut` WHERE 1;

--
-- INSERT template for table `PagedResultOfDirectoryPreferencesVmOut`
--
INSERT INTO `PagedResultOfDirectoryPreferencesVmOut`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfDirectoryPreferencesVmOut`
--
UPDATE `PagedResultOfDirectoryPreferencesVmOut` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfDirectoryPreferencesVmOut`
--
DELETE FROM `PagedResultOfDirectoryPreferencesVmOut` WHERE 0;

