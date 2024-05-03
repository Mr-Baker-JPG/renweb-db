--
-- FACTSAPI.
-- Prepared SQL queries for 'PersonVehicleEntity' definition.
--


--
-- SELECT template for table `PersonVehicleEntity`
--
SELECT `id`, `personId`, `autoMake`, `autoModel`, `autoLicense`, `driversLicense`, `permitNumber` FROM `PersonVehicleEntity` WHERE 1;

--
-- INSERT template for table `PersonVehicleEntity`
--
INSERT INTO `PersonVehicleEntity`(`id`, `personId`, `autoMake`, `autoModel`, `autoLicense`, `driversLicense`, `permitNumber`) VALUES (?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PersonVehicleEntity`
--
UPDATE `PersonVehicleEntity` SET `id` = ?, `personId` = ?, `autoMake` = ?, `autoModel` = ?, `autoLicense` = ?, `driversLicense` = ?, `permitNumber` = ? WHERE 1;

--
-- DELETE template for table `PersonVehicleEntity`
--
DELETE FROM `PersonVehicleEntity` WHERE 0;

