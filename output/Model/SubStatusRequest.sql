--
-- FACTSAPI.
-- Prepared SQL queries for 'SubStatusRequest' definition.
--


--
-- SELECT template for table `SubStatusRequest`
--
SELECT `status`, `schoolCode` FROM `SubStatusRequest` WHERE 1;

--
-- INSERT template for table `SubStatusRequest`
--
INSERT INTO `SubStatusRequest`(`status`, `schoolCode`) VALUES (?, ?);

--
-- UPDATE template for table `SubStatusRequest`
--
UPDATE `SubStatusRequest` SET `status` = ?, `schoolCode` = ? WHERE 1;

--
-- DELETE template for table `SubStatusRequest`
--
DELETE FROM `SubStatusRequest` WHERE 0;

