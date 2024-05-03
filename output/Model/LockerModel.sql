--
-- FACTSAPI.
-- Prepared SQL queries for 'LockerModel' definition.
--


--
-- SELECT template for table `LockerModel`
--
SELECT `locker`, `lockerGroupId`, `schoolCode`, `combination1`, `combination2`, `combination3`, `combination4`, `combination5`, `note`, `outOfService`, `currentCombination`, `lockerId`, `configSchoolId` FROM `LockerModel` WHERE 1;

--
-- INSERT template for table `LockerModel`
--
INSERT INTO `LockerModel`(`locker`, `lockerGroupId`, `schoolCode`, `combination1`, `combination2`, `combination3`, `combination4`, `combination5`, `note`, `outOfService`, `currentCombination`, `lockerId`, `configSchoolId`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `LockerModel`
--
UPDATE `LockerModel` SET `locker` = ?, `lockerGroupId` = ?, `schoolCode` = ?, `combination1` = ?, `combination2` = ?, `combination3` = ?, `combination4` = ?, `combination5` = ?, `note` = ?, `outOfService` = ?, `currentCombination` = ?, `lockerId` = ?, `configSchoolId` = ? WHERE 1;

--
-- DELETE template for table `LockerModel`
--
DELETE FROM `LockerModel` WHERE 0;

