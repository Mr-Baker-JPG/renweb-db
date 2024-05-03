--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfInquiryFormModel' definition.
--


--
-- SELECT template for table `PagedResultOfInquiryFormModel`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfInquiryFormModel` WHERE 1;

--
-- INSERT template for table `PagedResultOfInquiryFormModel`
--
INSERT INTO `PagedResultOfInquiryFormModel`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfInquiryFormModel`
--
UPDATE `PagedResultOfInquiryFormModel` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfInquiryFormModel`
--
DELETE FROM `PagedResultOfInquiryFormModel` WHERE 0;

