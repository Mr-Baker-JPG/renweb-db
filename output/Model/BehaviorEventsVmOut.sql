--
-- FACTSAPI.
-- Prepared SQL queries for 'BehaviorEventsVmOut' definition.
--


--
-- SELECT template for table `BehaviorEventsVmOut`
--
SELECT `dateOfIncident`, `descriptionOfIncident`, `history`, `sanction1`, `sanction2`, `sanctionDate1`, `sanctionDate2`, `violation`, `reportedBy`, `reviewedBy`, `status`, `studentID`, `demerits`, `modifiedBy`, `modifiedDate`, `staffID`, `level`, `type`, `notified`, `disciplineID` FROM `BehaviorEventsVmOut` WHERE 1;

--
-- INSERT template for table `BehaviorEventsVmOut`
--
INSERT INTO `BehaviorEventsVmOut`(`dateOfIncident`, `descriptionOfIncident`, `history`, `sanction1`, `sanction2`, `sanctionDate1`, `sanctionDate2`, `violation`, `reportedBy`, `reviewedBy`, `status`, `studentID`, `demerits`, `modifiedBy`, `modifiedDate`, `staffID`, `level`, `type`, `notified`, `disciplineID`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `BehaviorEventsVmOut`
--
UPDATE `BehaviorEventsVmOut` SET `dateOfIncident` = ?, `descriptionOfIncident` = ?, `history` = ?, `sanction1` = ?, `sanction2` = ?, `sanctionDate1` = ?, `sanctionDate2` = ?, `violation` = ?, `reportedBy` = ?, `reviewedBy` = ?, `status` = ?, `studentID` = ?, `demerits` = ?, `modifiedBy` = ?, `modifiedDate` = ?, `staffID` = ?, `level` = ?, `type` = ?, `notified` = ?, `disciplineID` = ? WHERE 1;

--
-- DELETE template for table `BehaviorEventsVmOut`
--
DELETE FROM `BehaviorEventsVmOut` WHERE 0;

