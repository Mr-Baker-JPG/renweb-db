--
-- FACTSAPI.
-- Prepared SQL queries for 'ClassAssignmentGradeCodeTranslationModel' definition.
--


--
-- SELECT template for table `ClassAssignmentGradeCodeTranslationModel`
--
SELECT `id`, `classId`, `letterCode`, `percent`, `statusCode` FROM `ClassAssignmentGradeCodeTranslationModel` WHERE 1;

--
-- INSERT template for table `ClassAssignmentGradeCodeTranslationModel`
--
INSERT INTO `ClassAssignmentGradeCodeTranslationModel`(`id`, `classId`, `letterCode`, `percent`, `statusCode`) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table `ClassAssignmentGradeCodeTranslationModel`
--
UPDATE `ClassAssignmentGradeCodeTranslationModel` SET `id` = ?, `classId` = ?, `letterCode` = ?, `percent` = ?, `statusCode` = ? WHERE 1;

--
-- DELETE template for table `ClassAssignmentGradeCodeTranslationModel`
--
DELETE FROM `ClassAssignmentGradeCodeTranslationModel` WHERE 0;

