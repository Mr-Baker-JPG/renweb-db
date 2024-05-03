--
-- FACTSAPI.
-- Prepared SQL queries for 'UserDefinedGroupSecurityModel' definition.
--


--
-- SELECT template for table `UserDefinedGroupSecurityModel`
--
SELECT `canEveryoneUse`, `group`, `person` FROM `UserDefinedGroupSecurityModel` WHERE 1;

--
-- INSERT template for table `UserDefinedGroupSecurityModel`
--
INSERT INTO `UserDefinedGroupSecurityModel`(`canEveryoneUse`, `group`, `person`) VALUES (?, ?, ?);

--
-- UPDATE template for table `UserDefinedGroupSecurityModel`
--
UPDATE `UserDefinedGroupSecurityModel` SET `canEveryoneUse` = ?, `group` = ?, `person` = ? WHERE 1;

--
-- DELETE template for table `UserDefinedGroupSecurityModel`
--
DELETE FROM `UserDefinedGroupSecurityModel` WHERE 0;

