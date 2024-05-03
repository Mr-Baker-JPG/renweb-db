--
-- FACTSAPI.
-- Prepared SQL queries for 'StandardQuestionAnswerModel' definition.
--


--
-- SELECT template for table `StandardQuestionAnswerModel`
--
SELECT `question`, `answer` FROM `StandardQuestionAnswerModel` WHERE 1;

--
-- INSERT template for table `StandardQuestionAnswerModel`
--
INSERT INTO `StandardQuestionAnswerModel`(`question`, `answer`) VALUES (?, ?);

--
-- UPDATE template for table `StandardQuestionAnswerModel`
--
UPDATE `StandardQuestionAnswerModel` SET `question` = ?, `answer` = ? WHERE 1;

--
-- DELETE template for table `StandardQuestionAnswerModel`
--
DELETE FROM `StandardQuestionAnswerModel` WHERE 0;

