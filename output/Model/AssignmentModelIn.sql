--
-- FACTSAPI.
-- Prepared SQL queries for 'AssignmentModelIn' definition.
--


--
-- SELECT template for table `AssignmentModelIn`
--
SELECT `classCategoryId`, `classId`, `classAssignmentId`, `title`, `description`, `dateAssigned`, `dateDue`, `assignmentNumber`, `maxPoints`, `weight`, `extraCreditType`, `modifiedBy`, `modifiedDate`, `publish`, `calculate`, `markedAsTest`, `isLmsAssignment`, `lmsItemId`, `lmsItemTypeId`, `descriptionHtml`, `dateAssignedUtc`, `dateDueUtc`, `systemOfRecord`, `googleAssignmentId` FROM `AssignmentModelIn` WHERE 1;

--
-- INSERT template for table `AssignmentModelIn`
--
INSERT INTO `AssignmentModelIn`(`classCategoryId`, `classId`, `classAssignmentId`, `title`, `description`, `dateAssigned`, `dateDue`, `assignmentNumber`, `maxPoints`, `weight`, `extraCreditType`, `modifiedBy`, `modifiedDate`, `publish`, `calculate`, `markedAsTest`, `isLmsAssignment`, `lmsItemId`, `lmsItemTypeId`, `descriptionHtml`, `dateAssignedUtc`, `dateDueUtc`, `systemOfRecord`, `googleAssignmentId`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `AssignmentModelIn`
--
UPDATE `AssignmentModelIn` SET `classCategoryId` = ?, `classId` = ?, `classAssignmentId` = ?, `title` = ?, `description` = ?, `dateAssigned` = ?, `dateDue` = ?, `assignmentNumber` = ?, `maxPoints` = ?, `weight` = ?, `extraCreditType` = ?, `modifiedBy` = ?, `modifiedDate` = ?, `publish` = ?, `calculate` = ?, `markedAsTest` = ?, `isLmsAssignment` = ?, `lmsItemId` = ?, `lmsItemTypeId` = ?, `descriptionHtml` = ?, `dateAssignedUtc` = ?, `dateDueUtc` = ?, `systemOfRecord` = ?, `googleAssignmentId` = ? WHERE 1;

--
-- DELETE template for table `AssignmentModelIn`
--
DELETE FROM `AssignmentModelIn` WHERE 0;

