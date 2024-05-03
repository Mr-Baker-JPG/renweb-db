--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfInterestItemsVmOut' definition.
--


--
-- SELECT template for table `PagedResultOfInterestItemsVmOut`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfInterestItemsVmOut` WHERE 1;

--
-- INSERT template for table `PagedResultOfInterestItemsVmOut`
--
INSERT INTO `PagedResultOfInterestItemsVmOut`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfInterestItemsVmOut`
--
UPDATE `PagedResultOfInterestItemsVmOut` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfInterestItemsVmOut`
--
DELETE FROM `PagedResultOfInterestItemsVmOut` WHERE 0;

