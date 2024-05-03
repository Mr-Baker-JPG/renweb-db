--
-- FACTSAPI.
-- Prepared SQL queries for 'BehaviorEventsVmIn' definition.
--


--
-- SELECT template for table `BehaviorEventsVmIn`
--
SELECT `dateOfIncident`, `descriptionOfIncident`, `history`, `sanction1`, `sanction2`, `sanctionDate1`, `sanctionDate2`, `violation`, `reportedBy`, `reviewedBy`, `status`, `studentID`, `demerits`, `modifiedBy`, `modifiedDate`, `staffID`, `level`, `type`, `notified` FROM `BehaviorEventsVmIn` WHERE 1;

--
-- INSERT template for table `BehaviorEventsVmIn`
--
INSERT INTO `BehaviorEventsVmIn`(`dateOfIncident`, `descriptionOfIncident`, `history`, `sanction1`, `sanction2`, `sanctionDate1`, `sanctionDate2`, `violation`, `reportedBy`, `reviewedBy`, `status`, `studentID`, `demerits`, `modifiedBy`, `modifiedDate`, `staffID`, `level`, `type`, `notified`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `BehaviorEventsVmIn`
--
UPDATE `BehaviorEventsVmIn` SET `dateOfIncident` = ?, `descriptionOfIncident` = ?, `history` = ?, `sanction1` = ?, `sanction2` = ?, `sanctionDate1` = ?, `sanctionDate2` = ?, `violation` = ?, `reportedBy` = ?, `reviewedBy` = ?, `status` = ?, `studentID` = ?, `demerits` = ?, `modifiedBy` = ?, `modifiedDate` = ?, `staffID` = ?, `level` = ?, `type` = ?, `notified` = ? WHERE 1;

--
-- DELETE template for table `BehaviorEventsVmIn`
--
DELETE FROM `BehaviorEventsVmIn` WHERE 0;

