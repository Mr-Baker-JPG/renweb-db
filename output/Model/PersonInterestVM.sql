--
-- FACTSAPI.
-- Prepared SQL queries for 'PersonInterestVM' definition.
--


--
-- SELECT template for table `PersonInterestVM`
--
SELECT `personID`, `interest` FROM `PersonInterestVM` WHERE 1;

--
-- INSERT template for table `PersonInterestVM`
--
INSERT INTO `PersonInterestVM`(`personID`, `interest`) VALUES (?, ?);

--
-- UPDATE template for table `PersonInterestVM`
--
UPDATE `PersonInterestVM` SET `personID` = ?, `interest` = ? WHERE 1;

--
-- DELETE template for table `PersonInterestVM`
--
DELETE FROM `PersonInterestVM` WHERE 0;

