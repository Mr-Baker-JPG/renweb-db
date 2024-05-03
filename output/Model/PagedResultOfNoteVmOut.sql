--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfNoteVmOut' definition.
--


--
-- SELECT template for table `PagedResultOfNoteVmOut`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfNoteVmOut` WHERE 1;

--
-- INSERT template for table `PagedResultOfNoteVmOut`
--
INSERT INTO `PagedResultOfNoteVmOut`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfNoteVmOut`
--
UPDATE `PagedResultOfNoteVmOut` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfNoteVmOut`
--
DELETE FROM `PagedResultOfNoteVmOut` WHERE 0;

