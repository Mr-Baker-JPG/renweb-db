--
-- FACTSAPI.
-- Prepared SQL queries for 'StudentSchoolModel' definition.
--


--
-- SELECT template for table `StudentSchoolModel`
--
SELECT `status`, `substatus`, `enrollDate`, `withdrawDate`, `withdrawReason`, `graduationDate`, `gradeLevel`, `nextStatus`, `nextSchoolCode`, `nextGradeLevel` FROM `StudentSchoolModel` WHERE 1;

--
-- INSERT template for table `StudentSchoolModel`
--
INSERT INTO `StudentSchoolModel`(`status`, `substatus`, `enrollDate`, `withdrawDate`, `withdrawReason`, `graduationDate`, `gradeLevel`, `nextStatus`, `nextSchoolCode`, `nextGradeLevel`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `StudentSchoolModel`
--
UPDATE `StudentSchoolModel` SET `status` = ?, `substatus` = ?, `enrollDate` = ?, `withdrawDate` = ?, `withdrawReason` = ?, `graduationDate` = ?, `gradeLevel` = ?, `nextStatus` = ?, `nextSchoolCode` = ?, `nextGradeLevel` = ? WHERE 1;

--
-- DELETE template for table `StudentSchoolModel`
--
DELETE FROM `StudentSchoolModel` WHERE 0;

