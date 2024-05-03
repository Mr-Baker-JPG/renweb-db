--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfReligiousEventVmOut' definition.
--


--
-- SELECT template for table `PagedResultOfReligiousEventVmOut`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfReligiousEventVmOut` WHERE 1;

--
-- INSERT template for table `PagedResultOfReligiousEventVmOut`
--
INSERT INTO `PagedResultOfReligiousEventVmOut`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfReligiousEventVmOut`
--
UPDATE `PagedResultOfReligiousEventVmOut` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfReligiousEventVmOut`
--
DELETE FROM `PagedResultOfReligiousEventVmOut` WHERE 0;

