--
-- FACTSAPI.
-- Prepared SQL queries for 'SchoolConfigVmIn' definition.
--


--
-- SELECT template for table `SchoolConfigVmIn`
--
SELECT `fax`, `phone` FROM `SchoolConfigVmIn` WHERE 1;

--
-- INSERT template for table `SchoolConfigVmIn`
--
INSERT INTO `SchoolConfigVmIn`(`fax`, `phone`) VALUES (?, ?);

--
-- UPDATE template for table `SchoolConfigVmIn`
--
UPDATE `SchoolConfigVmIn` SET `fax` = ?, `phone` = ? WHERE 1;

--
-- DELETE template for table `SchoolConfigVmIn`
--
DELETE FROM `SchoolConfigVmIn` WHERE 0;

