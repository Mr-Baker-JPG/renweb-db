--
-- FACTSAPI.
-- Prepared SQL queries for 'AnswerBaseModel' definition.
--


--
-- SELECT template for table `AnswerBaseModel`
--
SELECT `boolValue`, `textValue`, `dateValue`, `intValue`, `listValues` FROM `AnswerBaseModel` WHERE 1;

--
-- INSERT template for table `AnswerBaseModel`
--
INSERT INTO `AnswerBaseModel`(`boolValue`, `textValue`, `dateValue`, `intValue`, `listValues`) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table `AnswerBaseModel`
--
UPDATE `AnswerBaseModel` SET `boolValue` = ?, `textValue` = ?, `dateValue` = ?, `intValue` = ?, `listValues` = ? WHERE 1;

--
-- DELETE template for table `AnswerBaseModel`
--
DELETE FROM `AnswerBaseModel` WHERE 0;

