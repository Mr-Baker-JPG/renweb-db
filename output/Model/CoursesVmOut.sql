--
-- FACTSAPI.
-- Prepared SQL queries for 'CoursesVmOut' definition.
--


--
-- SELECT template for table `CoursesVmOut`
--
SELECT `levelID`, `legacyCourseID`, `title`, `abbreviation`, `activity`, `attendance`, `homeRoom`, `schoolCode`, `department`, `active`, `elective`, `hs`, `preSchool`, `elementary`, `middleSchool`, `modifiedBy`, `modifiedDate`, `courseType`, `defaultStaffID`, `departmentID`, `description`, `stateID`, `maxSize`, `courseID` FROM `CoursesVmOut` WHERE 1;

--
-- INSERT template for table `CoursesVmOut`
--
INSERT INTO `CoursesVmOut`(`levelID`, `legacyCourseID`, `title`, `abbreviation`, `activity`, `attendance`, `homeRoom`, `schoolCode`, `department`, `active`, `elective`, `hs`, `preSchool`, `elementary`, `middleSchool`, `modifiedBy`, `modifiedDate`, `courseType`, `defaultStaffID`, `departmentID`, `description`, `stateID`, `maxSize`, `courseID`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `CoursesVmOut`
--
UPDATE `CoursesVmOut` SET `levelID` = ?, `legacyCourseID` = ?, `title` = ?, `abbreviation` = ?, `activity` = ?, `attendance` = ?, `homeRoom` = ?, `schoolCode` = ?, `department` = ?, `active` = ?, `elective` = ?, `hs` = ?, `preSchool` = ?, `elementary` = ?, `middleSchool` = ?, `modifiedBy` = ?, `modifiedDate` = ?, `courseType` = ?, `defaultStaffID` = ?, `departmentID` = ?, `description` = ?, `stateID` = ?, `maxSize` = ?, `courseID` = ? WHERE 1;

--
-- DELETE template for table `CoursesVmOut`
--
DELETE FROM `CoursesVmOut` WHERE 0;

