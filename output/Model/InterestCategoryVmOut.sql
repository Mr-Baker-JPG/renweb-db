--
-- FACTSAPI.
-- Prepared SQL queries for 'InterestCategoryVmOut' definition.
--


--
-- SELECT template for table `InterestCategoryVmOut`
--
SELECT `category`, `districtWide`, `type`, `sortOrder`, `onlineApplication`, `schoolCode`, `active`, `interestCategoryID` FROM `InterestCategoryVmOut` WHERE 1;

--
-- INSERT template for table `InterestCategoryVmOut`
--
INSERT INTO `InterestCategoryVmOut`(`category`, `districtWide`, `type`, `sortOrder`, `onlineApplication`, `schoolCode`, `active`, `interestCategoryID`) VALUES (?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `InterestCategoryVmOut`
--
UPDATE `InterestCategoryVmOut` SET `category` = ?, `districtWide` = ?, `type` = ?, `sortOrder` = ?, `onlineApplication` = ?, `schoolCode` = ?, `active` = ?, `interestCategoryID` = ? WHERE 1;

--
-- DELETE template for table `InterestCategoryVmOut`
--
DELETE FROM `InterestCategoryVmOut` WHERE 0;

