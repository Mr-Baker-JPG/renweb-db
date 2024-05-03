--
-- FACTSAPI.
-- Prepared SQL queries for 'ListOptionModel' definition.
--


--
-- SELECT template for table `ListOptionModel`
--
SELECT `display`, `keyValue`, `textValue`, `sortOrder`, `filter` FROM `ListOptionModel` WHERE 1;

--
-- INSERT template for table `ListOptionModel`
--
INSERT INTO `ListOptionModel`(`display`, `keyValue`, `textValue`, `sortOrder`, `filter`) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table `ListOptionModel`
--
UPDATE `ListOptionModel` SET `display` = ?, `keyValue` = ?, `textValue` = ?, `sortOrder` = ?, `filter` = ? WHERE 1;

--
-- DELETE template for table `ListOptionModel`
--
DELETE FROM `ListOptionModel` WHERE 0;

