--
-- FACTSAPI.
-- Prepared SQL queries for 'StudentRequest' definition.
--


--
-- SELECT template for table `StudentRequest`
--
SELECT `school`, `locker`, `configSchoolId` FROM `StudentRequest` WHERE 1;

--
-- INSERT template for table `StudentRequest`
--
INSERT INTO `StudentRequest`(`school`, `locker`, `configSchoolId`) VALUES (?, ?, ?);

--
-- UPDATE template for table `StudentRequest`
--
UPDATE `StudentRequest` SET `school` = ?, `locker` = ?, `configSchoolId` = ? WHERE 1;

--
-- DELETE template for table `StudentRequest`
--
DELETE FROM `StudentRequest` WHERE 0;

