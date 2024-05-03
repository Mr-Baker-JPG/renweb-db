--
-- FACTSAPI.
-- Prepared SQL queries for 'PersonWorkEntity' definition.
--


--
-- SELECT template for table `PersonWorkEntity`
--
SELECT `id`, `personId`, `occupation`, `company`, `jobCategory`, `workStreet`, `workFax`, `workPhone`, `workPhoneExtension`, `workCity`, `workState`, `workZip`, `matchingGiftEmployer` FROM `PersonWorkEntity` WHERE 1;

--
-- INSERT template for table `PersonWorkEntity`
--
INSERT INTO `PersonWorkEntity`(`id`, `personId`, `occupation`, `company`, `jobCategory`, `workStreet`, `workFax`, `workPhone`, `workPhoneExtension`, `workCity`, `workState`, `workZip`, `matchingGiftEmployer`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PersonWorkEntity`
--
UPDATE `PersonWorkEntity` SET `id` = ?, `personId` = ?, `occupation` = ?, `company` = ?, `jobCategory` = ?, `workStreet` = ?, `workFax` = ?, `workPhone` = ?, `workPhoneExtension` = ?, `workCity` = ?, `workState` = ?, `workZip` = ?, `matchingGiftEmployer` = ? WHERE 1;

--
-- DELETE template for table `PersonWorkEntity`
--
DELETE FROM `PersonWorkEntity` WHERE 0;

