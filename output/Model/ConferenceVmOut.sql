--
-- FACTSAPI.
-- Prepared SQL queries for 'ConferenceVmOut' definition.
--


--
-- SELECT template for table `ConferenceVmOut`
--
SELECT `date`, `studentId`, `reason`, `problem`, `staffID`, `subject`, `recommendation`, `parent`, `location`, `modifiedBy`, `modifiedDate`, `reason1`, `reason2`, `reason3`, `problem1`, `problem2`, `problem3`, `problem4`, `problem5`, `problem6`, `problem7`, `problem8`, `problem9`, `problem10`, `conferenceId` FROM `ConferenceVmOut` WHERE 1;

--
-- INSERT template for table `ConferenceVmOut`
--
INSERT INTO `ConferenceVmOut`(`date`, `studentId`, `reason`, `problem`, `staffID`, `subject`, `recommendation`, `parent`, `location`, `modifiedBy`, `modifiedDate`, `reason1`, `reason2`, `reason3`, `problem1`, `problem2`, `problem3`, `problem4`, `problem5`, `problem6`, `problem7`, `problem8`, `problem9`, `problem10`, `conferenceId`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `ConferenceVmOut`
--
UPDATE `ConferenceVmOut` SET `date` = ?, `studentId` = ?, `reason` = ?, `problem` = ?, `staffID` = ?, `subject` = ?, `recommendation` = ?, `parent` = ?, `location` = ?, `modifiedBy` = ?, `modifiedDate` = ?, `reason1` = ?, `reason2` = ?, `reason3` = ?, `problem1` = ?, `problem2` = ?, `problem3` = ?, `problem4` = ?, `problem5` = ?, `problem6` = ?, `problem7` = ?, `problem8` = ?, `problem9` = ?, `problem10` = ?, `conferenceId` = ? WHERE 1;

--
-- DELETE template for table `ConferenceVmOut`
--
DELETE FROM `ConferenceVmOut` WHERE 0;

