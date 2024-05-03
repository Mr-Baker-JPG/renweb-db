--
-- FACTSAPI.
-- Prepared SQL queries for 'PagedResultOfClassAssignmentGradeCodeTranslationModel' definition.
--


--
-- SELECT template for table `PagedResultOfClassAssignmentGradeCodeTranslationModel`
--
SELECT `results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage` FROM `PagedResultOfClassAssignmentGradeCodeTranslationModel` WHERE 1;

--
-- INSERT template for table `PagedResultOfClassAssignmentGradeCodeTranslationModel`
--
INSERT INTO `PagedResultOfClassAssignmentGradeCodeTranslationModel`(`results`, `currentPage`, `pageCount`, `pageSize`, `rowCount`, `nextPage`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PagedResultOfClassAssignmentGradeCodeTranslationModel`
--
UPDATE `PagedResultOfClassAssignmentGradeCodeTranslationModel` SET `results` = ?, `currentPage` = ?, `pageCount` = ?, `pageSize` = ?, `rowCount` = ?, `nextPage` = ? WHERE 1;

--
-- DELETE template for table `PagedResultOfClassAssignmentGradeCodeTranslationModel`
--
DELETE FROM `PagedResultOfClassAssignmentGradeCodeTranslationModel` WHERE 0;

