--
-- FACTSAPI.
-- Prepared SQL queries for 'Operation' definition.
--


--
-- SELECT template for table `Operation`
--
SELECT `path`, `op`, `from`, `value` FROM `Operation` WHERE 1;

--
-- INSERT template for table `Operation`
--
INSERT INTO `Operation`(`path`, `op`, `from`, `value`) VALUES (?, ?, ?, ?);

--
-- UPDATE template for table `Operation`
--
UPDATE `Operation` SET `path` = ?, `op` = ?, `from` = ?, `value` = ? WHERE 1;

--
-- DELETE template for table `Operation`
--
DELETE FROM `Operation` WHERE 0;

