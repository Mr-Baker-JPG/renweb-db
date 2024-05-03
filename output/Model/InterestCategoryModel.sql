--
-- FACTSAPI.
-- Prepared SQL queries for 'InterestCategoryModel' definition.
--


--
-- SELECT template for table `InterestCategoryModel`
--
SELECT `id`, `description`, `sortOrder`, `interestIds` FROM `InterestCategoryModel` WHERE 1;

--
-- INSERT template for table `InterestCategoryModel`
--
INSERT INTO `InterestCategoryModel`(`id`, `description`, `sortOrder`, `interestIds`) VALUES (?, ?, ?, ?);

--
-- UPDATE template for table `InterestCategoryModel`
--
UPDATE `InterestCategoryModel` SET `id` = ?, `description` = ?, `sortOrder` = ?, `interestIds` = ? WHERE 1;

--
-- DELETE template for table `InterestCategoryModel`
--
DELETE FROM `InterestCategoryModel` WHERE 0;

