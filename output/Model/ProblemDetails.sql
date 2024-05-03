--
-- FACTSAPI.
-- Prepared SQL queries for 'ProblemDetails' definition.
--


--
-- SELECT template for table `ProblemDetails`
--
SELECT `type`, `title`, `status`, `detail`, `instance`, `extensions` FROM `ProblemDetails` WHERE 1;

--
-- INSERT template for table `ProblemDetails`
--
INSERT INTO `ProblemDetails`(`type`, `title`, `status`, `detail`, `instance`, `extensions`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `ProblemDetails`
--
UPDATE `ProblemDetails` SET `type` = ?, `title` = ?, `status` = ?, `detail` = ?, `instance` = ?, `extensions` = ? WHERE 1;

--
-- DELETE template for table `ProblemDetails`
--
DELETE FROM `ProblemDetails` WHERE 0;

