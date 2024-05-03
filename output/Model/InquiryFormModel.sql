--
-- FACTSAPI.
-- Prepared SQL queries for 'InquiryFormModel' definition.
--


--
-- SELECT template for table `InquiryFormModel`
--
SELECT `requestId`, `studentId`, `schoolCode`, `schoolOptions`, `standard`, `custom`, `interestCategories` FROM `InquiryFormModel` WHERE 1;

--
-- INSERT template for table `InquiryFormModel`
--
INSERT INTO `InquiryFormModel`(`requestId`, `studentId`, `schoolCode`, `schoolOptions`, `standard`, `custom`, `interestCategories`) VALUES (?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `InquiryFormModel`
--
UPDATE `InquiryFormModel` SET `requestId` = ?, `studentId` = ?, `schoolCode` = ?, `schoolOptions` = ?, `standard` = ?, `custom` = ?, `interestCategories` = ? WHERE 1;

--
-- DELETE template for table `InquiryFormModel`
--
DELETE FROM `InquiryFormModel` WHERE 0;

