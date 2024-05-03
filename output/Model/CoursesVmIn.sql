--
-- FACTSAPI.
-- Prepared SQL queries for 'CoursesVmIn' definition.
--


--
-- SELECT template for table `CoursesVmIn`
--
SELECT `levelID`, `legacyCourseID`, `title`, `abbreviation`, `activity`, `attendance`, `homeRoom`, `schoolCode`, `department`, `active`, `elective`, `hs`, `preSchool`, `elementary`, `middleSchool`, `modifiedBy`, `modifiedDate`, `courseType`, `defaultStaffID`, `departmentID`, `description`, `stateID`, `maxSize` FROM `CoursesVmIn` WHERE 1;

--
-- INSERT template for table `CoursesVmIn`
--
INSERT INTO `CoursesVmIn`(`levelID`, `legacyCourseID`, `title`, `abbreviation`, `activity`, `attendance`, `homeRoom`, `schoolCode`, `department`, `active`, `elective`, `hs`, `preSchool`, `elementary`, `middleSchool`, `modifiedBy`, `modifiedDate`, `courseType`, `defaultStaffID`, `departmentID`, `description`, `stateID`, `maxSize`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `CoursesVmIn`
--
UPDATE `CoursesVmIn` SET `levelID` = ?, `legacyCourseID` = ?, `title` = ?, `abbreviation` = ?, `activity` = ?, `attendance` = ?, `homeRoom` = ?, `schoolCode` = ?, `department` = ?, `active` = ?, `elective` = ?, `hs` = ?, `preSchool` = ?, `elementary` = ?, `middleSchool` = ?, `modifiedBy` = ?, `modifiedDate` = ?, `courseType` = ?, `defaultStaffID` = ?, `departmentID` = ?, `description` = ?, `stateID` = ?, `maxSize` = ? WHERE 1;

--
-- DELETE template for table `CoursesVmIn`
--
DELETE FROM `CoursesVmIn` WHERE 0;

