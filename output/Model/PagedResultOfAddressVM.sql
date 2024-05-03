--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfAddressVM' definition.
--


--
-- SELECT template for table `PagedResultOfAddressVM`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfAddressVM` WHERE 1;

--
-- INSERT template for table `PagedResultOfAddressVM`
--
INSERT INTO `PagedResultOfAddressVM`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfAddressVM`
--
UPDATE `PagedResultOfAddressVM` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfAddressVM`
--
DELETE FROM `PagedResultOfAddressVM` WHERE 0;

