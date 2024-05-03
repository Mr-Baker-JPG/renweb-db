--
-- FACTSAPI.
-- Prepared SQL queries for 'AssignmentCategoryModel' definition.
--


--
-- SELECT template for table `AssignmentCategoryModel`
--
SELECT `sisCategoryId`, `classCategoryId`, `weight`, `classId`, `title`, `description`, `meetsInTerm1`, `meetsInTerm2`, `meetsInTerm3`, `meetsInTerm4`, `meetsInTerm5`, `meetsInTerm6`, `drop` FROM `AssignmentCategoryModel` WHERE 1;

--
-- INSERT template for table `AssignmentCategoryModel`
--
INSERT INTO `AssignmentCategoryModel`(`sisCategoryId`, `classCategoryId`, `weight`, `classId`, `title`, `description`, `meetsInTerm1`, `meetsInTerm2`, `meetsInTerm3`, `meetsInTerm4`, `meetsInTerm5`, `meetsInTerm6`, `drop`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `AssignmentCategoryModel`
--
UPDATE `AssignmentCategoryModel` SET `sisCategoryId` = ?, `classCategoryId` = ?, `weight` = ?, `classId` = ?, `title` = ?, `description` = ?, `meetsInTerm1` = ?, `meetsInTerm2` = ?, `meetsInTerm3` = ?, `meetsInTerm4` = ?, `meetsInTerm5` = ?, `meetsInTerm6` = ?, `drop` = ? WHERE 1;

--
-- DELETE template for table `AssignmentCategoryModel`
--
DELETE FROM `AssignmentCategoryModel` WHERE 0;

