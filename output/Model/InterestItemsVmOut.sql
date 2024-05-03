--
-- FACTSAPI.
-- Prepared SQL queries for 'InterestItemsVmOut' definition.
--


--
-- SELECT template for table `InterestItemsVmOut`
--
SELECT `interest`, `interestCategoryID`, `sortOrder`, `active`, `interestID` FROM `InterestItemsVmOut` WHERE 1;

--
-- INSERT template for table `InterestItemsVmOut`
--
INSERT INTO `InterestItemsVmOut`(`interest`, `interestCategoryID`, `sortOrder`, `active`, `interestID`) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table `InterestItemsVmOut`
--
UPDATE `InterestItemsVmOut` SET `interest` = ?, `interestCategoryID` = ?, `sortOrder` = ?, `active` = ?, `interestID` = ? WHERE 1;

--
-- DELETE template for table `InterestItemsVmOut`
--
DELETE FROM `InterestItemsVmOut` WHERE 0;

