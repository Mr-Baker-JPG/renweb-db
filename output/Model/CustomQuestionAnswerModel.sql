--
-- FACTSAPI.
-- Prepared SQL queries for 'CustomQuestionAnswerModel' definition.
--


--
-- SELECT template for table `CustomQuestionAnswerModel`
--
SELECT `question`, `answer` FROM `CustomQuestionAnswerModel` WHERE 1;

--
-- INSERT template for table `CustomQuestionAnswerModel`
--
INSERT INTO `CustomQuestionAnswerModel`(`question`, `answer`) VALUES (?, ?);

--
-- UPDATE template for table `CustomQuestionAnswerModel`
--
UPDATE `CustomQuestionAnswerModel` SET `question` = ?, `answer` = ? WHERE 1;

--
-- DELETE template for table `CustomQuestionAnswerModel`
--
DELETE FROM `CustomQuestionAnswerModel` WHERE 0;

