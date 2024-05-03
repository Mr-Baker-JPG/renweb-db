--
-- FACTSAPI.
-- Prepared SQL queries for 'Operation2' definition.
--


--
-- SELECT template for table `Operation2`
--
SELECT `path`, `op`, `from`, `value` FROM `Operation2` WHERE 1;

--
-- INSERT template for table `Operation2`
--
INSERT INTO `Operation2`(`path`, `op`, `from`, `value`) VALUES (?, ?, ?, ?);

--
-- UPDATE template for table `Operation2`
--
UPDATE `Operation2` SET `path` = ?, `op` = ?, `from` = ?, `value` = ? WHERE 1;

--
-- DELETE template for table `Operation2`
--
DELETE FROM `Operation2` WHERE 0;

