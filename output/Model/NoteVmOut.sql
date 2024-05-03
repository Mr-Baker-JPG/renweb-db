--
-- FACTSAPI.
-- Prepared SQL queries for 'NoteVmOut' definition.
--


--
-- SELECT template for table `NoteVmOut`
--
SELECT `enteredById`, `noteDate`, `noteType`, `personId`, `note`, `yearId`, `noteId`, `modifiedById` FROM `NoteVmOut` WHERE 1;

--
-- INSERT template for table `NoteVmOut`
--
INSERT INTO `NoteVmOut`(`enteredById`, `noteDate`, `noteType`, `personId`, `note`, `yearId`, `noteId`, `modifiedById`) VALUES (?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `NoteVmOut`
--
UPDATE `NoteVmOut` SET `enteredById` = ?, `noteDate` = ?, `noteType` = ?, `personId` = ?, `note` = ?, `yearId` = ?, `noteId` = ?, `modifiedById` = ? WHERE 1;

--
-- DELETE template for table `NoteVmOut`
--
DELETE FROM `NoteVmOut` WHERE 0;

