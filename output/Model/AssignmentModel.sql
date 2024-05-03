--
-- FACTSAPI.
-- Prepared SQL queries for 'AssignmentModel' definition.
--


--
-- SELECT template for table `AssignmentModel`
--
SELECT `sisAssignmentId`, `classCategoryId`, `classId`, `classAssignmentId`, `title`, `description`, `dateAssigned`, `dateDue`, `assignmentNumber`, `maxPoints`, `weight`, `extraCreditType`, `modifiedBy`, `modifiedDate`, `publish`, `calculate`, `markedAsTest`, `isLmsAssignment`, `lmsItemId`, `lmsItemTypeId`, `descriptionHtml`, `dateAssignedUtc`, `dateDueUtc`, `systemOfRecord`, `googleAssignmentId` FROM `AssignmentModel` WHERE 1;

--
-- INSERT template for table `AssignmentModel`
--
INSERT INTO `AssignmentModel`(`sisAssignmentId`, `classCategoryId`, `classId`, `classAssignmentId`, `title`, `description`, `dateAssigned`, `dateDue`, `assignmentNumber`, `maxPoints`, `weight`, `extraCreditType`, `modifiedBy`, `modifiedDate`, `publish`, `calculate`, `markedAsTest`, `isLmsAssignment`, `lmsItemId`, `lmsItemTypeId`, `descriptionHtml`, `dateAssignedUtc`, `dateDueUtc`, `systemOfRecord`, `googleAssignmentId`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `AssignmentModel`
--
UPDATE `AssignmentModel` SET `sisAssignmentId` = ?, `classCategoryId` = ?, `classId` = ?, `classAssignmentId` = ?, `title` = ?, `description` = ?, `dateAssigned` = ?, `dateDue` = ?, `assignmentNumber` = ?, `maxPoints` = ?, `weight` = ?, `extraCreditType` = ?, `modifiedBy` = ?, `modifiedDate` = ?, `publish` = ?, `calculate` = ?, `markedAsTest` = ?, `isLmsAssignment` = ?, `lmsItemId` = ?, `lmsItemTypeId` = ?, `descriptionHtml` = ?, `dateAssignedUtc` = ?, `dateDueUtc` = ?, `systemOfRecord` = ?, `googleAssignmentId` = ? WHERE 1;

--
-- DELETE template for table `AssignmentModel`
--
DELETE FROM `AssignmentModel` WHERE 0;

