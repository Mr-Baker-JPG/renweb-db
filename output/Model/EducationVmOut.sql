--
-- FACTSAPI.
-- Prepared SQL queries for 'EducationVmOut' definition.
--


--
-- SELECT template for table `EducationVmOut`
--
SELECT `personId`, `degreeSchool`, `degreeName`, `degreeYear`, `educationLevel`, `degreeType`, `educationId` FROM `EducationVmOut` WHERE 1;

--
-- INSERT template for table `EducationVmOut`
--
INSERT INTO `EducationVmOut`(`personId`, `degreeSchool`, `degreeName`, `degreeYear`, `educationLevel`, `degreeType`, `educationId`) VALUES (?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `EducationVmOut`
--
UPDATE `EducationVmOut` SET `personId` = ?, `degreeSchool` = ?, `degreeName` = ?, `degreeYear` = ?, `educationLevel` = ?, `degreeType` = ?, `educationId` = ? WHERE 1;

--
-- DELETE template for table `EducationVmOut`
--
DELETE FROM `EducationVmOut` WHERE 0;

