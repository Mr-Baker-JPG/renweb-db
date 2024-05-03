--
-- FACTSAPI.
-- Prepared SQL queries for 'StandardAnswerModel' definition.
--


--
-- SELECT template for table `StandardAnswerModel`
--
SELECT `boolValue`, `textValue`, `dateValue`, `intValue`, `listValues`, `id` FROM `StandardAnswerModel` WHERE 1;

--
-- INSERT template for table `StandardAnswerModel`
--
INSERT INTO `StandardAnswerModel`(`boolValue`, `textValue`, `dateValue`, `intValue`, `listValues`, `id`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `StandardAnswerModel`
--
UPDATE `StandardAnswerModel` SET `boolValue` = ?, `textValue` = ?, `dateValue` = ?, `intValue` = ?, `listValues` = ?, `id` = ? WHERE 1;

--
-- DELETE template for table `StandardAnswerModel`
--
DELETE FROM `StandardAnswerModel` WHERE 0;

