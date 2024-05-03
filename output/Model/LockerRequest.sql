--
-- FACTSAPI.
-- Prepared SQL queries for 'LockerRequest' definition.
--


--
-- SELECT template for table `LockerRequest`
--
SELECT `locker`, `lockerGroupId`, `schoolCode`, `combination1`, `combination2`, `combination3`, `combination4`, `combination5`, `note`, `outOfService`, `currentCombination` FROM `LockerRequest` WHERE 1;

--
-- INSERT template for table `LockerRequest`
--
INSERT INTO `LockerRequest`(`locker`, `lockerGroupId`, `schoolCode`, `combination1`, `combination2`, `combination3`, `combination4`, `combination5`, `note`, `outOfService`, `currentCombination`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `LockerRequest`
--
UPDATE `LockerRequest` SET `locker` = ?, `lockerGroupId` = ?, `schoolCode` = ?, `combination1` = ?, `combination2` = ?, `combination3` = ?, `combination4` = ?, `combination5` = ?, `note` = ?, `outOfService` = ?, `currentCombination` = ? WHERE 1;

--
-- DELETE template for table `LockerRequest`
--
DELETE FROM `LockerRequest` WHERE 0;

