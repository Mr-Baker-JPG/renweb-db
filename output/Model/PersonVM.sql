--
-- FACTSAPI.
-- Prepared SQL queries for 'PersonVM' definition.
--


--
-- SELECT template for table `PersonVM`
--
SELECT `personId`, `firstName`, `lastName`, `middleName`, `nickName`, `salutation`, `suffix`, `email`, `email2`, `username`, `homePhone`, `cellPhone`, `addressID`, `deceased`, `modifiedDate` FROM `PersonVM` WHERE 1;

--
-- INSERT template for table `PersonVM`
--
INSERT INTO `PersonVM`(`personId`, `firstName`, `lastName`, `middleName`, `nickName`, `salutation`, `suffix`, `email`, `email2`, `username`, `homePhone`, `cellPhone`, `addressID`, `deceased`, `modifiedDate`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PersonVM`
--
UPDATE `PersonVM` SET `personId` = ?, `firstName` = ?, `lastName` = ?, `middleName` = ?, `nickName` = ?, `salutation` = ?, `suffix` = ?, `email` = ?, `email2` = ?, `username` = ?, `homePhone` = ?, `cellPhone` = ?, `addressID` = ?, `deceased` = ?, `modifiedDate` = ? WHERE 1;

--
-- DELETE template for table `PersonVM`
--
DELETE FROM `PersonVM` WHERE 0;

