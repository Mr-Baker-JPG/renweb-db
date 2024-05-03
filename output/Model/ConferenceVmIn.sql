--
-- FACTSAPI.
-- Prepared SQL queries for 'ConferenceVmIn' definition.
--


--
-- SELECT template for table `ConferenceVmIn`
--
SELECT `date`, `studentId`, `reason`, `problem`, `staffID`, `subject`, `recommendation`, `parent`, `location`, `modifiedBy`, `modifiedDate`, `reason1`, `reason2`, `reason3`, `problem1`, `problem2`, `problem3`, `problem4`, `problem5`, `problem6`, `problem7`, `problem8`, `problem9`, `problem10` FROM `ConferenceVmIn` WHERE 1;

--
-- INSERT template for table `ConferenceVmIn`
--
INSERT INTO `ConferenceVmIn`(`date`, `studentId`, `reason`, `problem`, `staffID`, `subject`, `recommendation`, `parent`, `location`, `modifiedBy`, `modifiedDate`, `reason1`, `reason2`, `reason3`, `problem1`, `problem2`, `problem3`, `problem4`, `problem5`, `problem6`, `problem7`, `problem8`, `problem9`, `problem10`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `ConferenceVmIn`
--
UPDATE `ConferenceVmIn` SET `date` = ?, `studentId` = ?, `reason` = ?, `problem` = ?, `staffID` = ?, `subject` = ?, `recommendation` = ?, `parent` = ?, `location` = ?, `modifiedBy` = ?, `modifiedDate` = ?, `reason1` = ?, `reason2` = ?, `reason3` = ?, `problem1` = ?, `problem2` = ?, `problem3` = ?, `problem4` = ?, `problem5` = ?, `problem6` = ?, `problem7` = ?, `problem8` = ?, `problem9` = ?, `problem10` = ? WHERE 1;

--
-- DELETE template for table `ConferenceVmIn`
--
DELETE FROM `ConferenceVmIn` WHERE 0;

