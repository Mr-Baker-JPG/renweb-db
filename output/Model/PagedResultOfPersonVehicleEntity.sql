--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfPersonVehicleEntity' definition.
--


--
-- SELECT template for table `PagedResultOfPersonVehicleEntity`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfPersonVehicleEntity` WHERE 1;

--
-- INSERT template for table `PagedResultOfPersonVehicleEntity`
--
INSERT INTO `PagedResultOfPersonVehicleEntity`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfPersonVehicleEntity`
--
UPDATE `PagedResultOfPersonVehicleEntity` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfPersonVehicleEntity`
--
DELETE FROM `PagedResultOfPersonVehicleEntity` WHERE 0;

