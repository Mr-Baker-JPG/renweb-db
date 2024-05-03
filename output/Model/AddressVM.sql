--
-- FACTSAPI.
-- Prepared SQL queries for 'AddressVM' definition.
--


--
-- SELECT template for table `AddressVM`
--
SELECT `addressID`, `address1`, `address2`, `city`, `state`, `zip`, `country`, `modifiedBy`, `modifiedDate`, `greeting1`, `greeting2`, `greeting3`, `greeting4`, `greeting5`, `newStudentInquiryID` FROM `AddressVM` WHERE 1;

--
-- INSERT template for table `AddressVM`
--
INSERT INTO `AddressVM`(`addressID`, `address1`, `address2`, `city`, `state`, `zip`, `country`, `modifiedBy`, `modifiedDate`, `greeting1`, `greeting2`, `greeting3`, `greeting4`, `greeting5`, `newStudentInquiryID`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `AddressVM`
--
UPDATE `AddressVM` SET `addressID` = ?, `address1` = ?, `address2` = ?, `city` = ?, `state` = ?, `zip` = ?, `country` = ?, `modifiedBy` = ?, `modifiedDate` = ?, `greeting1` = ?, `greeting2` = ?, `greeting3` = ?, `greeting4` = ?, `greeting5` = ?, `newStudentInquiryID` = ? WHERE 1;

--
-- DELETE template for table `AddressVM`
--
DELETE FROM `AddressVM` WHERE 0;

