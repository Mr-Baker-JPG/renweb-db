--
-- FACTSAPI.
-- Prepared SQL queries for 'PersonReligionEntity' definition.
--


--
-- SELECT template for table `PersonReligionEntity`
--
SELECT `id`, `personId`, `denomination`, `congregationId`, `baptismCongregation`, `baptismCity`, `baptismState`, `baptismDate`, `communionCongregation`, `communionCity`, `communionState`, `communionDate`, `confirmationCongregation`, `confirmationCity`, `confirmationState`, `confirmationDate`, `reconciliationCongregation`, `reconciliationCity`, `reconciliationState`, `reconciliationDate`, `barMitzvahCongregation`, `barMitzvahCity`, `barMitzvahState`, `barMitzvahDate`, `localChurchMember` FROM `PersonReligionEntity` WHERE 1;

--
-- INSERT template for table `PersonReligionEntity`
--
INSERT INTO `PersonReligionEntity`(`id`, `personId`, `denomination`, `congregationId`, `baptismCongregation`, `baptismCity`, `baptismState`, `baptismDate`, `communionCongregation`, `communionCity`, `communionState`, `communionDate`, `confirmationCongregation`, `confirmationCity`, `confirmationState`, `confirmationDate`, `reconciliationCongregation`, `reconciliationCity`, `reconciliationState`, `reconciliationDate`, `barMitzvahCongregation`, `barMitzvahCity`, `barMitzvahState`, `barMitzvahDate`, `localChurchMember`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PersonReligionEntity`
--
UPDATE `PersonReligionEntity` SET `id` = ?, `personId` = ?, `denomination` = ?, `congregationId` = ?, `baptismCongregation` = ?, `baptismCity` = ?, `baptismState` = ?, `baptismDate` = ?, `communionCongregation` = ?, `communionCity` = ?, `communionState` = ?, `communionDate` = ?, `confirmationCongregation` = ?, `confirmationCity` = ?, `confirmationState` = ?, `confirmationDate` = ?, `reconciliationCongregation` = ?, `reconciliationCity` = ?, `reconciliationState` = ?, `reconciliationDate` = ?, `barMitzvahCongregation` = ?, `barMitzvahCity` = ?, `barMitzvahState` = ?, `barMitzvahDate` = ?, `localChurchMember` = ? WHERE 1;

--
-- DELETE template for table `PersonReligionEntity`
--
DELETE FROM `PersonReligionEntity` WHERE 0;

