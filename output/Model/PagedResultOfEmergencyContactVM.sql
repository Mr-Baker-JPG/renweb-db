--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfEmergencyContactVM' definition.
--


--
-- SELECT template for table `PagedResultOfEmergencyContactVM`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfEmergencyContactVM` WHERE 1;

--
-- INSERT template for table `PagedResultOfEmergencyContactVM`
--
INSERT INTO `PagedResultOfEmergencyContactVM`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfEmergencyContactVM`
--
UPDATE `PagedResultOfEmergencyContactVM` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfEmergencyContactVM`
--
DELETE FROM `PagedResultOfEmergencyContactVM` WHERE 0;

