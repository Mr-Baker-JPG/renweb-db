--
-- FACTSAPI.
-- Prepared SQL queries for 'AdvisingNoteVmOut' definition.
--


--
-- SELECT template for table `AdvisingNoteVmOut`
--
SELECT `note`, `date`, `studentId`, `modifiedBy`, `modifiedDate`, `noteId` FROM `AdvisingNoteVmOut` WHERE 1;

--
-- INSERT template for table `AdvisingNoteVmOut`
--
INSERT INTO `AdvisingNoteVmOut`(`note`, `date`, `studentId`, `modifiedBy`, `modifiedDate`, `noteId`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `AdvisingNoteVmOut`
--
UPDATE `AdvisingNoteVmOut` SET `note` = ?, `date` = ?, `studentId` = ?, `modifiedBy` = ?, `modifiedDate` = ?, `noteId` = ? WHERE 1;

--
-- DELETE template for table `AdvisingNoteVmOut`
--
DELETE FROM `AdvisingNoteVmOut` WHERE 0;

