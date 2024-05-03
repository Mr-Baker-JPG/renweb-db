--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfPersonWorkEntity' definition.
--


--
-- SELECT template for table `PagedResultOfPersonWorkEntity`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfPersonWorkEntity` WHERE 1;

--
-- INSERT template for table `PagedResultOfPersonWorkEntity`
--
INSERT INTO `PagedResultOfPersonWorkEntity`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfPersonWorkEntity`
--
UPDATE `PagedResultOfPersonWorkEntity` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfPersonWorkEntity`
--
DELETE FROM `PagedResultOfPersonWorkEntity` WHERE 0;

