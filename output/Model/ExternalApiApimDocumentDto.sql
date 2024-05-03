--
-- FACTSAPI.
-- Prepared SQL queries for 'ExternalApiApimDocumentDto' definition.
--


--
-- SELECT template for table `ExternalApiApimDocumentDto`
--
SELECT `id`, `name`, `apiHash`, `subscriptionId`, `districtId`, `schoolId`, `scopes`, `schoolName`, `districtName` FROM `ExternalApiApimDocumentDto` WHERE 1;

--
-- INSERT template for table `ExternalApiApimDocumentDto`
--
INSERT INTO `ExternalApiApimDocumentDto`(`id`, `name`, `apiHash`, `subscriptionId`, `districtId`, `schoolId`, `scopes`, `schoolName`, `districtName`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `ExternalApiApimDocumentDto`
--
UPDATE `ExternalApiApimDocumentDto` SET `id` = ?, `name` = ?, `apiHash` = ?, `subscriptionId` = ?, `districtId` = ?, `schoolId` = ?, `scopes` = ?, `schoolName` = ?, `districtName` = ? WHERE 1;

--
-- DELETE template for table `ExternalApiApimDocumentDto`
--
DELETE FROM `ExternalApiApimDocumentDto` WHERE 0;

