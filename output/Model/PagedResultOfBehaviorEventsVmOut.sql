--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfBehaviorEventsVmOut' definition.
--


--
-- SELECT template for table `PagedResultOfBehaviorEventsVmOut`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfBehaviorEventsVmOut` WHERE 1;

--
-- INSERT template for table `PagedResultOfBehaviorEventsVmOut`
--
INSERT INTO `PagedResultOfBehaviorEventsVmOut`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfBehaviorEventsVmOut`
--
UPDATE `PagedResultOfBehaviorEventsVmOut` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfBehaviorEventsVmOut`
--
DELETE FROM `PagedResultOfBehaviorEventsVmOut` WHERE 0;

