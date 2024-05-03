--
-- FACTSAPI.
-- Prepared SQL queries for 'StatusModel' definition.
--


--
-- SELECT template for table `StatusModel`
--
SELECT `status`, `displayName`, `subStatus` FROM `StatusModel` WHERE 1;

--
-- INSERT template for table `StatusModel`
--
INSERT INTO `StatusModel`(`status`, `displayName`, `subStatus`) VALUES (?, ?, ?);

--
-- UPDATE template for table `StatusModel`
--
UPDATE `StatusModel` SET `status` = ?, `displayName` = ?, `subStatus` = ? WHERE 1;

--
-- DELETE template for table `StatusModel`
--
DELETE FROM `StatusModel` WHERE 0;

