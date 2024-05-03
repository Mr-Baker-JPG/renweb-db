--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfLockerModel' definition.
--


--
-- SELECT template for table `PagedResultOfLockerModel`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfLockerModel` WHERE 1;

--
-- INSERT template for table `PagedResultOfLockerModel`
--
INSERT INTO `PagedResultOfLockerModel`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfLockerModel`
--
UPDATE `PagedResultOfLockerModel` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfLockerModel`
--
DELETE FROM `PagedResultOfLockerModel` WHERE 0;

