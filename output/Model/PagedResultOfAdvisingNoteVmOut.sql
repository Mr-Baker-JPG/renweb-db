--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfAdvisingNoteVmOut' definition.
--


--
-- SELECT template for table `PagedResultOfAdvisingNoteVmOut`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfAdvisingNoteVmOut` WHERE 1;

--
-- INSERT template for table `PagedResultOfAdvisingNoteVmOut`
--
INSERT INTO `PagedResultOfAdvisingNoteVmOut`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfAdvisingNoteVmOut`
--
UPDATE `PagedResultOfAdvisingNoteVmOut` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfAdvisingNoteVmOut`
--
DELETE FROM `PagedResultOfAdvisingNoteVmOut` WHERE 0;

