--
-- FACTSAPI.
-- Prepared SQL queries for 'SchoolYearRequest' definition.
--


--
-- SELECT template for table `SchoolYearRequest`
--
SELECT `yearName`, `allowInquiry`, `blockAcademicYear` FROM `SchoolYearRequest` WHERE 1;

--
-- INSERT template for table `SchoolYearRequest`
--
INSERT INTO `SchoolYearRequest`(`yearName`, `allowInquiry`, `blockAcademicYear`) VALUES (?, ?, ?);

--
-- UPDATE template for table `SchoolYearRequest`
--
UPDATE `SchoolYearRequest` SET `yearName` = ?, `allowInquiry` = ?, `blockAcademicYear` = ? WHERE 1;

--
-- DELETE template for table `SchoolYearRequest`
--
DELETE FROM `SchoolYearRequest` WHERE 0;

