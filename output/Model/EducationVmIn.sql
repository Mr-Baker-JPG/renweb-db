--
-- FACTSAPI.
-- Prepared SQL queries for 'EducationVmIn' definition.
--


--
-- SELECT template for table `EducationVmIn`
--
SELECT `personId`, `degreeSchool`, `degreeName`, `degreeYear`, `educationLevel`, `degreeType` FROM `EducationVmIn` WHERE 1;

--
-- INSERT template for table `EducationVmIn`
--
INSERT INTO `EducationVmIn`(`personId`, `degreeSchool`, `degreeName`, `degreeYear`, `educationLevel`, `degreeType`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `EducationVmIn`
--
UPDATE `EducationVmIn` SET `personId` = ?, `degreeSchool` = ?, `degreeName` = ?, `degreeYear` = ?, `educationLevel` = ?, `degreeType` = ? WHERE 1;

--
-- DELETE template for table `EducationVmIn`
--
DELETE FROM `EducationVmIn` WHERE 0;

