--
-- FACTSAPI.
-- Prepared SQL queries for 'AlertVm' definition.
--


--
-- SELECT template for table `AlertVm`
--
SELECT `alertID`, `studentID`, `title`, `description`, `active` FROM `AlertVm` WHERE 1;

--
-- INSERT template for table `AlertVm`
--
INSERT INTO `AlertVm`(`alertID`, `studentID`, `title`, `description`, `active`) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table `AlertVm`
--
UPDATE `AlertVm` SET `alertID` = ?, `studentID` = ?, `title` = ?, `description` = ?, `active` = ? WHERE 1;

--
-- DELETE template for table `AlertVm`
--
DELETE FROM `AlertVm` WHERE 0;

