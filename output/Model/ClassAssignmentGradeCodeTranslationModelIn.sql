--
-- FACTSAPI.
-- Prepared SQL queries for 'ClassAssignmentGradeCodeTranslationModelIn' definition.
--


--
-- SELECT template for table `ClassAssignmentGradeCodeTranslationModelIn`
--
SELECT `classId`, `letterCode`, `percent`, `statusCode` FROM `ClassAssignmentGradeCodeTranslationModelIn` WHERE 1;

--
-- INSERT template for table `ClassAssignmentGradeCodeTranslationModelIn`
--
INSERT INTO `ClassAssignmentGradeCodeTranslationModelIn`(`classId`, `letterCode`, `percent`, `statusCode`) VALUES (?, ?, ?, ?);

--
-- UPDATE template for table `ClassAssignmentGradeCodeTranslationModelIn`
--
UPDATE `ClassAssignmentGradeCodeTranslationModelIn` SET `classId` = ?, `letterCode` = ?, `percent` = ?, `statusCode` = ? WHERE 1;

--
-- DELETE template for table `ClassAssignmentGradeCodeTranslationModelIn`
--
DELETE FROM `ClassAssignmentGradeCodeTranslationModelIn` WHERE 0;

