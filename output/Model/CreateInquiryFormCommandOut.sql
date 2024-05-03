--
-- FACTSAPI.
-- Prepared SQL queries for 'CreateInquiryFormCommandOut' definition.
--


--
-- SELECT template for table `CreateInquiryFormCommandOut`
--
SELECT `requestId`, `studentId` FROM `CreateInquiryFormCommandOut` WHERE 1;

--
-- INSERT template for table `CreateInquiryFormCommandOut`
--
INSERT INTO `CreateInquiryFormCommandOut`(`requestId`, `studentId`) VALUES (?, ?);

--
-- UPDATE template for table `CreateInquiryFormCommandOut`
--
UPDATE `CreateInquiryFormCommandOut` SET `requestId` = ?, `studentId` = ? WHERE 1;

--
-- DELETE template for table `CreateInquiryFormCommandOut`
--
DELETE FROM `CreateInquiryFormCommandOut` WHERE 0;

