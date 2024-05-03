--
-- FACTSAPI.
-- Prepared SQL queries for 'FamilyConfigVmOut' definition.
--


--
-- SELECT template for table `FamilyConfigVmOut`
--
SELECT `familyName`, `enableWeb`, `unlisted`, `note`, `modifiedBy`, `modifiedDate`, `familyNameBP`, `parentsWebFinancialBlock`, `familyID` FROM `FamilyConfigVmOut` WHERE 1;

--
-- INSERT template for table `FamilyConfigVmOut`
--
INSERT INTO `FamilyConfigVmOut`(`familyName`, `enableWeb`, `unlisted`, `note`, `modifiedBy`, `modifiedDate`, `familyNameBP`, `parentsWebFinancialBlock`, `familyID`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `FamilyConfigVmOut`
--
UPDATE `FamilyConfigVmOut` SET `familyName` = ?, `enableWeb` = ?, `unlisted` = ?, `note` = ?, `modifiedBy` = ?, `modifiedDate` = ?, `familyNameBP` = ?, `parentsWebFinancialBlock` = ?, `familyID` = ? WHERE 1;

--
-- DELETE template for table `FamilyConfigVmOut`
--
DELETE FROM `FamilyConfigVmOut` WHERE 0;

