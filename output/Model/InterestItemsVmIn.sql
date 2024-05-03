--
-- FACTSAPI.
-- Prepared SQL queries for 'InterestItemsVmIn' definition.
--


--
-- SELECT template for table `InterestItemsVmIn`
--
SELECT `interest`, `interestCategoryID`, `sortOrder`, `active` FROM `InterestItemsVmIn` WHERE 1;

--
-- INSERT template for table `InterestItemsVmIn`
--
INSERT INTO `InterestItemsVmIn`(`interest`, `interestCategoryID`, `sortOrder`, `active`) VALUES (?, ?, ?, ?);

--
-- UPDATE template for table `InterestItemsVmIn`
--
UPDATE `InterestItemsVmIn` SET `interest` = ?, `interestCategoryID` = ?, `sortOrder` = ?, `active` = ? WHERE 1;

--
-- DELETE template for table `InterestItemsVmIn`
--
DELETE FROM `InterestItemsVmIn` WHERE 0;

