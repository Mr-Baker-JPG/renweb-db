--
-- FACTSAPI.
-- Prepared SQL queries for 'AlertApplicationVm' definition.
--


--
-- SELECT template for table `AlertApplicationVm`
--
SELECT `alertID`, `applicationID`, `visual`, `beep`, `popUp`, `popUpAlways` FROM `AlertApplicationVm` WHERE 1;

--
-- INSERT template for table `AlertApplicationVm`
--
INSERT INTO `AlertApplicationVm`(`alertID`, `applicationID`, `visual`, `beep`, `popUp`, `popUpAlways`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `AlertApplicationVm`
--
UPDATE `AlertApplicationVm` SET `alertID` = ?, `applicationID` = ?, `visual` = ?, `beep` = ?, `popUp` = ?, `popUpAlways` = ? WHERE 1;

--
-- DELETE template for table `AlertApplicationVm`
--
DELETE FROM `AlertApplicationVm` WHERE 0;

