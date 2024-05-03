--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfConferenceVmOut' definition.
--


--
-- SELECT template for table `PagedResultOfConferenceVmOut`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfConferenceVmOut` WHERE 1;

--
-- INSERT template for table `PagedResultOfConferenceVmOut`
--
INSERT INTO `PagedResultOfConferenceVmOut`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfConferenceVmOut`
--
UPDATE `PagedResultOfConferenceVmOut` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfConferenceVmOut`
--
DELETE FROM `PagedResultOfConferenceVmOut` WHERE 0;

