--
-- FACTSAPI.
-- Prepared SQL queries for 'StudentRecognitionModel' definition.
--


--
-- SELECT template for table `StudentRecognitionModel`
--
SELECT `studentId`, `yearId`, `recognition`, `note`, `category`, `gradeLevel`, `recognitionId`, `schoolCode` FROM `StudentRecognitionModel` WHERE 1;

--
-- INSERT template for table `StudentRecognitionModel`
--
INSERT INTO `StudentRecognitionModel`(`studentId`, `yearId`, `recognition`, `note`, `category`, `gradeLevel`, `recognitionId`, `schoolCode`) VALUES (?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `StudentRecognitionModel`
--
UPDATE `StudentRecognitionModel` SET `studentId` = ?, `yearId` = ?, `recognition` = ?, `note` = ?, `category` = ?, `gradeLevel` = ?, `recognitionId` = ?, `schoolCode` = ? WHERE 1;

--
-- DELETE template for table `StudentRecognitionModel`
--
DELETE FROM `StudentRecognitionModel` WHERE 0;

