--
-- FACTSAPI.
-- Prepared SQL queries for 'PublicSchoolVM' definition.
--


--
-- SELECT template for table `PublicSchoolVM`
--
SELECT `personId`, `publicSchoolDistrict`, `publicSchoolCounty`, `publicSchoolState`, `publicSchoolLocalSchool`, `publicSchoolCode` FROM `PublicSchoolVM` WHERE 1;

--
-- INSERT template for table `PublicSchoolVM`
--
INSERT INTO `PublicSchoolVM`(`personId`, `publicSchoolDistrict`, `publicSchoolCounty`, `publicSchoolState`, `publicSchoolLocalSchool`, `publicSchoolCode`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PublicSchoolVM`
--
UPDATE `PublicSchoolVM` SET `personId` = ?, `publicSchoolDistrict` = ?, `publicSchoolCounty` = ?, `publicSchoolState` = ?, `publicSchoolLocalSchool` = ?, `publicSchoolCode` = ? WHERE 1;

--
-- DELETE template for table `PublicSchoolVM`
--
DELETE FROM `PublicSchoolVM` WHERE 0;

