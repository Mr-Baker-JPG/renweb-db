--
-- FACTSAPI.
-- Prepared SQL queries for 'EmergencyContactVM' definition.
--


--
-- SELECT template for table `EmergencyContactVM`
--
SELECT `emergencyContactID`, `firstName`, `lastName`, `middleName`, `salutation`, `suffix`, `homePhone`, `cellPhone`, `email`, `relationship`, `workPhone`, `studentID`, `sortOrder`, `refID`, `note`, `countryCode`, `portalSortOrder` FROM `EmergencyContactVM` WHERE 1;

--
-- INSERT template for table `EmergencyContactVM`
--
INSERT INTO `EmergencyContactVM`(`emergencyContactID`, `firstName`, `lastName`, `middleName`, `salutation`, `suffix`, `homePhone`, `cellPhone`, `email`, `relationship`, `workPhone`, `studentID`, `sortOrder`, `refID`, `note`, `countryCode`, `portalSortOrder`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `EmergencyContactVM`
--
UPDATE `EmergencyContactVM` SET `emergencyContactID` = ?, `firstName` = ?, `lastName` = ?, `middleName` = ?, `salutation` = ?, `suffix` = ?, `homePhone` = ?, `cellPhone` = ?, `email` = ?, `relationship` = ?, `workPhone` = ?, `studentID` = ?, `sortOrder` = ?, `refID` = ?, `note` = ?, `countryCode` = ?, `portalSortOrder` = ? WHERE 1;

--
-- DELETE template for table `EmergencyContactVM`
--
DELETE FROM `EmergencyContactVM` WHERE 0;

