--
-- FACTSAPI.
-- Prepared SQL queries for 'CustomAnswerModel' definition.
--


--
-- SELECT template for table `CustomAnswerModel`
--
SELECT `boolValue`, `textValue`, `dateValue`, `intValue`, `listValues`, `questionId`, `originalAnswerLabel` FROM `CustomAnswerModel` WHERE 1;

--
-- INSERT template for table `CustomAnswerModel`
--
INSERT INTO `CustomAnswerModel`(`boolValue`, `textValue`, `dateValue`, `intValue`, `listValues`, `questionId`, `originalAnswerLabel`) VALUES (?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `CustomAnswerModel`
--
UPDATE `CustomAnswerModel` SET `boolValue` = ?, `textValue` = ?, `dateValue` = ?, `intValue` = ?, `listValues` = ?, `questionId` = ?, `originalAnswerLabel` = ? WHERE 1;

--
-- DELETE template for table `CustomAnswerModel`
--
DELETE FROM `CustomAnswerModel` WHERE 0;

