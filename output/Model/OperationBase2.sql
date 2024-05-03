--
-- FACTSAPI.
-- Prepared SQL queries for 'OperationBase2' definition.
--


--
-- SELECT template for table `OperationBase2`
--
SELECT `path`, `op`, `from` FROM `OperationBase2` WHERE 1;

--
-- INSERT template for table `OperationBase2`
--
INSERT INTO `OperationBase2`(`path`, `op`, `from`) VALUES (?, ?, ?);

--
-- UPDATE template for table `OperationBase2`
--
UPDATE `OperationBase2` SET `path` = ?, `op` = ?, `from` = ? WHERE 1;

--
-- DELETE template for table `OperationBase2`
--
DELETE FROM `OperationBase2` WHERE 0;

