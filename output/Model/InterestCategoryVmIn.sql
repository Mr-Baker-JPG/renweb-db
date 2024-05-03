--
-- FACTSAPI.
-- Prepared SQL queries for 'InterestCategoryVmIn' definition.
--


--
-- SELECT template for table `InterestCategoryVmIn`
--
SELECT `category`, `districtWide`, `type`, `sortOrder`, `onlineApplication`, `schoolCode`, `active` FROM `InterestCategoryVmIn` WHERE 1;

--
-- INSERT template for table `InterestCategoryVmIn`
--
INSERT INTO `InterestCategoryVmIn`(`category`, `districtWide`, `type`, `sortOrder`, `onlineApplication`, `schoolCode`, `active`) VALUES (?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `InterestCategoryVmIn`
--
UPDATE `InterestCategoryVmIn` SET `category` = ?, `districtWide` = ?, `type` = ?, `sortOrder` = ?, `onlineApplication` = ?, `schoolCode` = ?, `active` = ? WHERE 1;

--
-- DELETE template for table `InterestCategoryVmIn`
--
DELETE FROM `InterestCategoryVmIn` WHERE 0;

