--
-- FACTSAPI.
-- Prepared SQL queries for 'OperationBase' definition.
--


--
-- SELECT template for table `OperationBase`
--
SELECT `path`, `op`, `from` FROM `OperationBase` WHERE 1;

--
-- INSERT template for table `OperationBase`
--
INSERT INTO `OperationBase`(`path`, `op`, `from`) VALUES (?, ?, ?);

--
-- UPDATE template for table `OperationBase`
--
UPDATE `OperationBase` SET `path` = ?, `op` = ?, `from` = ? WHERE 1;

--
-- DELETE template for table `OperationBase`
--
DELETE FROM `OperationBase` WHERE 0;

