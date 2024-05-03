--
-- FACTSAPI.
-- Prepared SQL queries for 'PersonDemographicVM' definition.
--


--
-- SELECT template for table `PersonDemographicVM`
--
SELECT `personId`, `gender`, `birthdate`, `ethnicity`, `citizenship`, `maritalStatus`, `primaryLanguage`, `birthplace`, `birthCity`, `birthState`, `birthCountry` FROM `PersonDemographicVM` WHERE 1;

--
-- INSERT template for table `PersonDemographicVM`
--
INSERT INTO `PersonDemographicVM`(`personId`, `gender`, `birthdate`, `ethnicity`, `citizenship`, `maritalStatus`, `primaryLanguage`, `birthplace`, `birthCity`, `birthState`, `birthCountry`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PersonDemographicVM`
--
UPDATE `PersonDemographicVM` SET `personId` = ?, `gender` = ?, `birthdate` = ?, `ethnicity` = ?, `citizenship` = ?, `maritalStatus` = ?, `primaryLanguage` = ?, `birthplace` = ?, `birthCity` = ?, `birthState` = ?, `birthCountry` = ? WHERE 1;

--
-- DELETE template for table `PersonDemographicVM`
--
DELETE FROM `PersonDemographicVM` WHERE 0;

