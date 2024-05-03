--
-- FACTSAPI.
-- Prepared SQL queries for 'StudentModel' definition.
--


--
-- SELECT template for table `StudentModel`
--
SELECT `school`, `locker`, `configSchoolId`, `personStudentId`, `studentId`, `schoolCode` FROM `StudentModel` WHERE 1;

--
-- INSERT template for table `StudentModel`
--
INSERT INTO `StudentModel`(`school`, `locker`, `configSchoolId`, `personStudentId`, `studentId`, `schoolCode`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `StudentModel`
--
UPDATE `StudentModel` SET `school` = ?, `locker` = ?, `configSchoolId` = ?, `personStudentId` = ?, `studentId` = ?, `schoolCode` = ? WHERE 1;

--
-- DELETE template for table `StudentModel`
--
DELETE FROM `StudentModel` WHERE 0;

