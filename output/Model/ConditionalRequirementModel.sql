--
-- FACTSAPI.
-- Prepared SQL queries for 'ConditionalRequirementModel' definition.
--


--
-- SELECT template for table `ConditionalRequirementModel`
--
SELECT `triggerQuestionId`, `options` FROM `ConditionalRequirementModel` WHERE 1;

--
-- INSERT template for table `ConditionalRequirementModel`
--
INSERT INTO `ConditionalRequirementModel`(`triggerQuestionId`, `options`) VALUES (?, ?);

--
-- UPDATE template for table `ConditionalRequirementModel`
--
UPDATE `ConditionalRequirementModel` SET `triggerQuestionId` = ?, `options` = ? WHERE 1;

--
-- DELETE template for table `ConditionalRequirementModel`
--
DELETE FROM `ConditionalRequirementModel` WHERE 0;

