--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfPickupContactVmOut' definition.
--


--
-- SELECT template for table `PagedResultOfPickupContactVmOut`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfPickupContactVmOut` WHERE 1;

--
-- INSERT template for table `PagedResultOfPickupContactVmOut`
--
INSERT INTO `PagedResultOfPickupContactVmOut`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfPickupContactVmOut`
--
UPDATE `PagedResultOfPickupContactVmOut` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfPickupContactVmOut`
--
DELETE FROM `PagedResultOfPickupContactVmOut` WHERE 0;

