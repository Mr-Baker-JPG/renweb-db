--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfPersonReligionEntity' definition.
--


--
-- SELECT template for table `PagedResultOfPersonReligionEntity`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfPersonReligionEntity` WHERE 1;

--
-- INSERT template for table `PagedResultOfPersonReligionEntity`
--
INSERT INTO `PagedResultOfPersonReligionEntity`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfPersonReligionEntity`
--
UPDATE `PagedResultOfPersonReligionEntity` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfPersonReligionEntity`
--
DELETE FROM `PagedResultOfPersonReligionEntity` WHERE 0;

