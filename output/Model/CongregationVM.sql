--
-- FACTSAPI.
-- Prepared SQL queries for 'CongregationVM' definition.
--


--
-- SELECT template for table `CongregationVM`
--
SELECT `congregationId`, `congregationName`, `congregationCity`, `congregationPhone`, `congregationState`, `congregationStreet`, `congregationZip`, `seniorPastor`, `youthPastor` FROM `CongregationVM` WHERE 1;

--
-- INSERT template for table `CongregationVM`
--
INSERT INTO `CongregationVM`(`congregationId`, `congregationName`, `congregationCity`, `congregationPhone`, `congregationState`, `congregationStreet`, `congregationZip`, `seniorPastor`, `youthPastor`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `CongregationVM`
--
UPDATE `CongregationVM` SET `congregationId` = ?, `congregationName` = ?, `congregationCity` = ?, `congregationPhone` = ?, `congregationState` = ?, `congregationStreet` = ?, `congregationZip` = ?, `seniorPastor` = ?, `youthPastor` = ? WHERE 1;

--
-- DELETE template for table `CongregationVM`
--
DELETE FROM `CongregationVM` WHERE 0;

