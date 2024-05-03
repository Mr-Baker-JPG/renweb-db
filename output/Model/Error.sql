--
-- FACTSAPI.
-- Prepared SQL queries for 'Error' definition.
--


--
-- SELECT template for table `Error`
--
SELECT `code`, `message`, `target`, `details`, `innererror` FROM `Error` WHERE 1;

--
-- INSERT template for table `Error`
--
INSERT INTO `Error`(`code`, `message`, `target`, `details`, `innererror`) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table `Error`
--
UPDATE `Error` SET `code` = ?, `message` = ?, `target` = ?, `details` = ?, `innererror` = ? WHERE 1;

--
-- DELETE template for table `Error`
--
DELETE FROM `Error` WHERE 0;

