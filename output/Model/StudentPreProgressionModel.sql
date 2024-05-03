--
-- FACTSAPI.
-- Prepared SQL queries for 'StudentPreProgressionModel' definition.
--


--
-- SELECT template for table `StudentPreProgressionModel`
--
SELECT `preProgressionStatus`, `preProgressionNextStatus`, `preProgressionGradeLevel`, `preProgressionNextGradeLevel`, `preProgressionSchoolCode`, `preProgressionNextSchoolCode`, `preProgressionProgressionDate`, `progressionDate`, `personStudentId` FROM `StudentPreProgressionModel` WHERE 1;

--
-- INSERT template for table `StudentPreProgressionModel`
--
INSERT INTO `StudentPreProgressionModel`(`preProgressionStatus`, `preProgressionNextStatus`, `preProgressionGradeLevel`, `preProgressionNextGradeLevel`, `preProgressionSchoolCode`, `preProgressionNextSchoolCode`, `preProgressionProgressionDate`, `progressionDate`, `personStudentId`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `StudentPreProgressionModel`
--
UPDATE `StudentPreProgressionModel` SET `preProgressionStatus` = ?, `preProgressionNextStatus` = ?, `preProgressionGradeLevel` = ?, `preProgressionNextGradeLevel` = ?, `preProgressionSchoolCode` = ?, `preProgressionNextSchoolCode` = ?, `preProgressionProgressionDate` = ?, `progressionDate` = ?, `personStudentId` = ? WHERE 1;

--
-- DELETE template for table `StudentPreProgressionModel`
--
DELETE FROM `StudentPreProgressionModel` WHERE 0;

