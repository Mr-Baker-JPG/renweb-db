--
-- FACTSAPI.
-- Prepared SQL queries for 'StandardQuestionModel' definition.
--


--
-- SELECT template for table `StandardQuestionModel`
--
SELECT `label`, `columns`, `questionAnswerType`, `requirementType`, `options`, `id` FROM `StandardQuestionModel` WHERE 1;

--
-- INSERT template for table `StandardQuestionModel`
--
INSERT INTO `StandardQuestionModel`(`label`, `columns`, `questionAnswerType`, `requirementType`, `options`, `id`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `StandardQuestionModel`
--
UPDATE `StandardQuestionModel` SET `label` = ?, `columns` = ?, `questionAnswerType` = ?, `requirementType` = ?, `options` = ?, `id` = ? WHERE 1;

--
-- DELETE template for table `StandardQuestionModel`
--
DELETE FROM `StandardQuestionModel` WHERE 0;

