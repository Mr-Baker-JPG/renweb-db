--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfPersonDemographicVM' definition.
--


--
-- SELECT template for table `PagedResultOfPersonDemographicVM`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfPersonDemographicVM` WHERE 1;

--
-- INSERT template for table `PagedResultOfPersonDemographicVM`
--
INSERT INTO `PagedResultOfPersonDemographicVM`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfPersonDemographicVM`
--
UPDATE `PagedResultOfPersonDemographicVM` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfPersonDemographicVM`
--
DELETE FROM `PagedResultOfPersonDemographicVM` WHERE 0;

