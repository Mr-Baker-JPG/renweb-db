--
-- FACTSAPI.
-- Prepared SQL queries for 'InquiryFormEditModel' definition.
--


--
-- SELECT template for table `InquiryFormEditModel`
--
SELECT `standardAnswers`, `customAnswers` FROM `InquiryFormEditModel` WHERE 1;

--
-- INSERT template for table `InquiryFormEditModel`
--
INSERT INTO `InquiryFormEditModel`(`standardAnswers`, `customAnswers`) VALUES (?, ?);

--
-- UPDATE template for table `InquiryFormEditModel`
--
UPDATE `InquiryFormEditModel` SET `standardAnswers` = ?, `customAnswers` = ? WHERE 1;

--
-- DELETE template for table `InquiryFormEditModel`
--
DELETE FROM `InquiryFormEditModel` WHERE 0;

