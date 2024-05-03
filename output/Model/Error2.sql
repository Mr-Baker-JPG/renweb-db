--
-- FACTSAPI.
-- Prepared SQL queries for 'Error2' definition.
--


--
-- SELECT template for table `Error2`
--
SELECT `code`, `message`, `target`, `details`, `innererror` FROM `Error2` WHERE 1;

--
-- INSERT template for table `Error2`
--
INSERT INTO `Error2`(`code`, `message`, `target`, `details`, `innererror`) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table `Error2`
--
UPDATE `Error2` SET `code` = ?, `message` = ?, `target` = ?, `details` = ?, `innererror` = ? WHERE 1;

--
-- DELETE template for table `Error2`
--
DELETE FROM `Error2` WHERE 0;

