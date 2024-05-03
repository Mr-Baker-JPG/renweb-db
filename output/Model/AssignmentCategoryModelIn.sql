--
-- FACTSAPI.
-- Prepared SQL queries for 'AssignmentCategoryModelIn' definition.
--


--
-- SELECT template for table `AssignmentCategoryModelIn`
--
SELECT `classCategoryId`, `weight`, `classId`, `title`, `description`, `meetsInTerm1`, `meetsInTerm2`, `meetsInTerm3`, `meetsInTerm4`, `meetsInTerm5`, `meetsInTerm6`, `drop` FROM `AssignmentCategoryModelIn` WHERE 1;

--
-- INSERT template for table `AssignmentCategoryModelIn`
--
INSERT INTO `AssignmentCategoryModelIn`(`classCategoryId`, `weight`, `classId`, `title`, `description`, `meetsInTerm1`, `meetsInTerm2`, `meetsInTerm3`, `meetsInTerm4`, `meetsInTerm5`, `meetsInTerm6`, `drop`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `AssignmentCategoryModelIn`
--
UPDATE `AssignmentCategoryModelIn` SET `classCategoryId` = ?, `weight` = ?, `classId` = ?, `title` = ?, `description` = ?, `meetsInTerm1` = ?, `meetsInTerm2` = ?, `meetsInTerm3` = ?, `meetsInTerm4` = ?, `meetsInTerm5` = ?, `meetsInTerm6` = ?, `drop` = ? WHERE 1;

--
-- DELETE template for table `AssignmentCategoryModelIn`
--
DELETE FROM `AssignmentCategoryModelIn` WHERE 0;

