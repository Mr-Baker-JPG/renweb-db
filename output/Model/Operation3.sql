--
-- FACTSAPI.
-- Prepared SQL queries for 'Operation3' definition.
--


--
-- SELECT template for table `Operation3`
--
SELECT `path`, `op`, `from`, `value` FROM `Operation3` WHERE 1;

--
-- INSERT template for table `Operation3`
--
INSERT INTO `Operation3`(`path`, `op`, `from`, `value`) VALUES (?, ?, ?, ?);

--
-- UPDATE template for table `Operation3`
--
UPDATE `Operation3` SET `path` = ?, `op` = ?, `from` = ?, `value` = ? WHERE 1;

--
-- DELETE template for table `Operation3`
--
DELETE FROM `Operation3` WHERE 0;

