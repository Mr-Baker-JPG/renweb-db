--
-- FACTSAPI.
-- Prepared SQL queries for 'QuestionBaseModel' definition.
--


--
-- SELECT template for table `QuestionBaseModel`
--
SELECT `label`, `columns`, `questionAnswerType`, `requirementType`, `options` FROM `QuestionBaseModel` WHERE 1;

--
-- INSERT template for table `QuestionBaseModel`
--
INSERT INTO `QuestionBaseModel`(`label`, `columns`, `questionAnswerType`, `requirementType`, `options`) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table `QuestionBaseModel`
--
UPDATE `QuestionBaseModel` SET `label` = ?, `columns` = ?, `questionAnswerType` = ?, `requirementType` = ?, `options` = ? WHERE 1;

--
-- DELETE template for table `QuestionBaseModel`
--
DELETE FROM `QuestionBaseModel` WHERE 0;

