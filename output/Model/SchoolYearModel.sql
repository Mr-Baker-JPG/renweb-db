--
-- FACTSAPI.
-- Prepared SQL queries for 'SchoolYearModel' definition.
--


--
-- SELECT template for table `SchoolYearModel`
--
SELECT `yearName`, `allowInquiry`, `blockAcademicYear`, `yearId`, `firstDay`, `lastDay`, `schoolCode` FROM `SchoolYearModel` WHERE 1;

--
-- INSERT template for table `SchoolYearModel`
--
INSERT INTO `SchoolYearModel`(`yearName`, `allowInquiry`, `blockAcademicYear`, `yearId`, `firstDay`, `lastDay`, `schoolCode`) VALUES (?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `SchoolYearModel`
--
UPDATE `SchoolYearModel` SET `yearName` = ?, `allowInquiry` = ?, `blockAcademicYear` = ?, `yearId` = ?, `firstDay` = ?, `lastDay` = ?, `schoolCode` = ? WHERE 1;

--
-- DELETE template for table `SchoolYearModel`
--
DELETE FROM `SchoolYearModel` WHERE 0;

