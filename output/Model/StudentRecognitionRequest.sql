--
-- FACTSAPI.
-- Prepared SQL queries for 'StudentRecognitionRequest' definition.
--


--
-- SELECT template for table `StudentRecognitionRequest`
--
SELECT `studentId`, `yearId`, `recognition`, `note`, `category`, `gradeLevel` FROM `StudentRecognitionRequest` WHERE 1;

--
-- INSERT template for table `StudentRecognitionRequest`
--
INSERT INTO `StudentRecognitionRequest`(`studentId`, `yearId`, `recognition`, `note`, `category`, `gradeLevel`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `StudentRecognitionRequest`
--
UPDATE `StudentRecognitionRequest` SET `studentId` = ?, `yearId` = ?, `recognition` = ?, `note` = ?, `category` = ?, `gradeLevel` = ? WHERE 1;

--
-- DELETE template for table `StudentRecognitionRequest`
--
DELETE FROM `StudentRecognitionRequest` WHERE 0;

