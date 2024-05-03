--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfStudentRecognitionModel' definition.
--


--
-- SELECT template for table `PagedResultOfStudentRecognitionModel`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfStudentRecognitionModel` WHERE 1;

--
-- INSERT template for table `PagedResultOfStudentRecognitionModel`
--
INSERT INTO `PagedResultOfStudentRecognitionModel`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfStudentRecognitionModel`
--
UPDATE `PagedResultOfStudentRecognitionModel` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfStudentRecognitionModel`
--
DELETE FROM `PagedResultOfStudentRecognitionModel` WHERE 0;

