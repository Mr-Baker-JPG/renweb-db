--
-- FACTSAPI.
-- Prepared SQL queries for 'UserDefinedGroupSecurityItemModel' definition.
--


--
-- SELECT template for table `UserDefinedGroupSecurityItemModel`
--
SELECT `id`, `securityLevel` FROM `UserDefinedGroupSecurityItemModel` WHERE 1;

--
-- INSERT template for table `UserDefinedGroupSecurityItemModel`
--
INSERT INTO `UserDefinedGroupSecurityItemModel`(`id`, `securityLevel`) VALUES (?, ?);

--
-- UPDATE template for table `UserDefinedGroupSecurityItemModel`
--
UPDATE `UserDefinedGroupSecurityItemModel` SET `id` = ?, `securityLevel` = ? WHERE 1;

--
-- DELETE template for table `UserDefinedGroupSecurityItemModel`
--
DELETE FROM `UserDefinedGroupSecurityItemModel` WHERE 0;

