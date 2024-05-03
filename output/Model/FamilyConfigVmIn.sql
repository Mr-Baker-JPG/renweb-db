--
-- FACTSAPI.
-- Prepared SQL queries for 'FamilyConfigVmIn' definition.
--


--
-- SELECT template for table `FamilyConfigVmIn`
--
SELECT `familyName`, `enableWeb`, `unlisted`, `note`, `modifiedBy`, `modifiedDate`, `familyNameBP`, `parentsWebFinancialBlock` FROM `FamilyConfigVmIn` WHERE 1;

--
-- INSERT template for table `FamilyConfigVmIn`
--
INSERT INTO `FamilyConfigVmIn`(`familyName`, `enableWeb`, `unlisted`, `note`, `modifiedBy`, `modifiedDate`, `familyNameBP`, `parentsWebFinancialBlock`) VALUES (?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `FamilyConfigVmIn`
--
UPDATE `FamilyConfigVmIn` SET `familyName` = ?, `enableWeb` = ?, `unlisted` = ?, `note` = ?, `modifiedBy` = ?, `modifiedDate` = ?, `familyNameBP` = ?, `parentsWebFinancialBlock` = ? WHERE 1;

--
-- DELETE template for table `FamilyConfigVmIn`
--
DELETE FROM `FamilyConfigVmIn` WHERE 0;

