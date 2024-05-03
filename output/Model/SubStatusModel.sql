--
-- FACTSAPI.
-- Prepared SQL queries for 'SubStatusModel' definition.
--


--
-- SELECT template for table `SubStatusModel`
--
SELECT `status`, `schoolCode`, `id` FROM `SubStatusModel` WHERE 1;

--
-- INSERT template for table `SubStatusModel`
--
INSERT INTO `SubStatusModel`(`status`, `schoolCode`, `id`) VALUES (?, ?, ?);

--
-- UPDATE template for table `SubStatusModel`
--
UPDATE `SubStatusModel` SET `status` = ?, `schoolCode` = ?, `id` = ? WHERE 1;

--
-- DELETE template for table `SubStatusModel`
--
DELETE FROM `SubStatusModel` WHERE 0;

