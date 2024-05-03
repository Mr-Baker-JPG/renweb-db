--
-- FACTSAPI.
-- Prepared SQL queries for 'PersonFamilyVM' definition.
--


--
-- SELECT template for table `PersonFamilyVM`
--
SELECT `personId`, `familyId`, `parent`, `student`, `financialResponsibility`, `financialResponsibilityPercent`, `familyOrder`, `factsCustomer` FROM `PersonFamilyVM` WHERE 1;

--
-- INSERT template for table `PersonFamilyVM`
--
INSERT INTO `PersonFamilyVM`(`personId`, `familyId`, `parent`, `student`, `financialResponsibility`, `financialResponsibilityPercent`, `familyOrder`, `factsCustomer`) VALUES (?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PersonFamilyVM`
--
UPDATE `PersonFamilyVM` SET `personId` = ?, `familyId` = ?, `parent` = ?, `student` = ?, `financialResponsibility` = ?, `financialResponsibilityPercent` = ?, `familyOrder` = ?, `factsCustomer` = ? WHERE 1;

--
-- DELETE template for table `PersonFamilyVM`
--
DELETE FROM `PersonFamilyVM` WHERE 0;

