--
-- FACTSAPI.
-- Prepared SQL queries for 'CustomQuestionModel' definition.
--


--
-- SELECT template for table `CustomQuestionModel`
--
SELECT `label`, `columns`, `questionAnswerType`, `requirementType`, `options`, `id`, `fullText`, `requestLevel`, `sortOrder`, `eventId`, `isConditional`, `conditionalRequirement` FROM `CustomQuestionModel` WHERE 1;

--
-- INSERT template for table `CustomQuestionModel`
--
INSERT INTO `CustomQuestionModel`(`label`, `columns`, `questionAnswerType`, `requirementType`, `options`, `id`, `fullText`, `requestLevel`, `sortOrder`, `eventId`, `isConditional`, `conditionalRequirement`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `CustomQuestionModel`
--
UPDATE `CustomQuestionModel` SET `label` = ?, `columns` = ?, `questionAnswerType` = ?, `requirementType` = ?, `options` = ?, `id` = ?, `fullText` = ?, `requestLevel` = ?, `sortOrder` = ?, `eventId` = ?, `isConditional` = ?, `conditionalRequirement` = ? WHERE 1;

--
-- DELETE template for table `CustomQuestionModel`
--
DELETE FROM `CustomQuestionModel` WHERE 0;

