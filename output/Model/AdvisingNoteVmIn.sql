--
-- FACTSAPI.
-- Prepared SQL queries for 'AdvisingNoteVmIn' definition.
--


--
-- SELECT template for table `AdvisingNoteVmIn`
--
SELECT `note`, `date`, `studentId`, `modifiedBy`, `modifiedDate` FROM `AdvisingNoteVmIn` WHERE 1;

--
-- INSERT template for table `AdvisingNoteVmIn`
--
INSERT INTO `AdvisingNoteVmIn`(`note`, `date`, `studentId`, `modifiedBy`, `modifiedDate`) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table `AdvisingNoteVmIn`
--
UPDATE `AdvisingNoteVmIn` SET `note` = ?, `date` = ?, `studentId` = ?, `modifiedBy` = ?, `modifiedDate` = ? WHERE 1;

--
-- DELETE template for table `AdvisingNoteVmIn`
--
DELETE FROM `AdvisingNoteVmIn` WHERE 0;

