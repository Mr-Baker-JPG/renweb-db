--
-- FACTSAPI.
-- Prepared SQL queries for 'NoteVmIn' definition.
--


--
-- SELECT template for table `NoteVmIn`
--
SELECT `enteredById`, `noteDate`, `noteType`, `personId`, `note`, `yearId` FROM `NoteVmIn` WHERE 1;

--
-- INSERT template for table `NoteVmIn`
--
INSERT INTO `NoteVmIn`(`enteredById`, `noteDate`, `noteType`, `personId`, `note`, `yearId`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `NoteVmIn`
--
UPDATE `NoteVmIn` SET `enteredById` = ?, `noteDate` = ?, `noteType` = ?, `personId` = ?, `note` = ?, `yearId` = ? WHERE 1;

--
-- DELETE template for table `NoteVmIn`
--
DELETE FROM `NoteVmIn` WHERE 0;

