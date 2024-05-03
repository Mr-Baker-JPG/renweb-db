/* SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO"; */
/* SET AUTOCOMMIT = 0; */
/* START TRANSACTION; */
/* SET time_zone = "+00:00"; */

-- --------------------------------------------------------

--
-- Table structure for table `AddressVM` generated from model 'AddressVM'
-- Address information
--

CREATE TABLE IF NOT EXISTS `AddressVM` (
  `addressID` INT NOT NULL COMMENT 'Gets or sets the address identifier',
  `address1` VARCHAR(255) DEFAULT NULL COMMENT 'Gets or sets the address1',
  `address2` VARCHAR(255) DEFAULT NULL COMMENT 'Gets or sets the address2',
  `city` VARCHAR(255) DEFAULT NULL COMMENT 'Gets or sets the city',
  `state` VARCHAR(255) DEFAULT NULL COMMENT 'Gets or sets the state',
  `zip` VARCHAR(255) DEFAULT NULL COMMENT 'Gets or sets the zipcode',
  `country` VARCHAR(255) DEFAULT NULL COMMENT 'Gets or sets the country',
  `modifiedBy` INT DEFAULT NULL COMMENT 'Gets or sets modified by',
  `modifiedDate` DATETIME DEFAULT NULL COMMENT 'Gets or sets the modified date',
  `greeting1` VARCHAR(128) DEFAULT NULL COMMENT 'Gets or sets greeting1',
  `greeting2` VARCHAR(128) DEFAULT NULL COMMENT 'Gets or sets greeting2',
  `greeting3` VARCHAR(128) DEFAULT NULL COMMENT 'Gets or sets greeting3',
  `greeting4` VARCHAR(128) DEFAULT NULL COMMENT 'Gets or sets greeting4',
  `greeting5` VARCHAR(128) DEFAULT NULL COMMENT 'Gets or sets greeting5',
  `newStudentInquiryID` INT DEFAULT NULL COMMENT 'Gets or sets the new student inquiry identifier'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Address information';

--
-- Table structure for table `AdvisingNoteVmIn` generated from model 'AdvisingNoteVmIn'
--

CREATE TABLE IF NOT EXISTS `AdvisingNoteVmIn` (
  `note` TEXT DEFAULT NULL,
  `date` DATETIME DEFAULT NULL COMMENT 'Gets or sets the date.',
  `studentId` INT DEFAULT NULL COMMENT 'Gets or sets the student identifier.',
  `modifiedBy` INT DEFAULT NULL COMMENT 'Gets or sets the modified by.',
  `modifiedDate` DATETIME DEFAULT NULL COMMENT 'Gets or sets the modified date.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `AdvisingNoteVmOut` generated from model 'AdvisingNoteVmOut'
--

CREATE TABLE IF NOT EXISTS `AdvisingNoteVmOut` (
  `note` TEXT DEFAULT NULL,
  `date` DATETIME DEFAULT NULL COMMENT 'Gets or sets the date.',
  `studentId` INT DEFAULT NULL COMMENT 'Gets or sets the student identifier.',
  `modifiedBy` INT DEFAULT NULL COMMENT 'Gets or sets the modified by.',
  `modifiedDate` DATETIME DEFAULT NULL COMMENT 'Gets or sets the modified date.',
  `noteId` INT NOT NULL COMMENT 'Gets or sets the note identifier.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `AlertApplicationVm` generated from model 'AlertApplicationVm'
--

CREATE TABLE IF NOT EXISTS `AlertApplicationVm` (
  `alertID` INT NOT NULL COMMENT 'Gets or sets alert identifier',
  `applicationID` INT NOT NULL COMMENT 'Gets or sets the which application the alert should show in. Unless noted, it will show upon selecting the person on the main screen in that area 1&#x3D; Student General 2&#x3D; Cash Register 3&#x3D; Lunch Verification 4&#x3D; Student Clock 5&#x3D; Medical 6&#x3D; Teacher (Shows on staff login, for any instructors of classes the student is in)',
  `visual` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets visual flag',
  `beep` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets beep flag',
  `popUp` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets popup flag',
  `popUpAlways` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets popup always flag'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `AlertVm` generated from model 'AlertVm'
--

CREATE TABLE IF NOT EXISTS `AlertVm` (
  `alertID` INT NOT NULL COMMENT 'Gets or sets the alert identifier',
  `studentID` INT DEFAULT NULL COMMENT 'Gets or sets student identifier',
  `title` TEXT DEFAULT NULL COMMENT 'Gets or sets alert title',
  `description` TEXT DEFAULT NULL COMMENT 'Gets or sets alert description',
  `active` TINYINT(1) NOT NULL COMMENT 'Gets or sets active flag'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `AnswerBaseModel` generated from model 'AnswerBaseModel'
--

CREATE TABLE IF NOT EXISTS `AnswerBaseModel` (
  `boolValue` TINYINT(1) DEFAULT NULL,
  `textValue` TEXT DEFAULT NULL,
  `dateValue` DATETIME DEFAULT NULL,
  `intValue` INT DEFAULT NULL,
  `listValues` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `AssignmentCategoryModel` generated from model 'AssignmentCategoryModel'
--

CREATE TABLE IF NOT EXISTS `AssignmentCategoryModel` (
  `sisCategoryId` INT NOT NULL,
  `classCategoryId` INT NOT NULL,
  `weight` DECIMAL(20, 9) DEFAULT NULL,
  `classId` INT NOT NULL,
  `title` TEXT DEFAULT NULL,
  `description` TEXT DEFAULT NULL,
  `meetsInTerm1` TINYINT(1) DEFAULT NULL,
  `meetsInTerm2` TINYINT(1) DEFAULT NULL,
  `meetsInTerm3` TINYINT(1) DEFAULT NULL,
  `meetsInTerm4` TINYINT(1) DEFAULT NULL,
  `meetsInTerm5` TINYINT(1) DEFAULT NULL,
  `meetsInTerm6` TINYINT(1) DEFAULT NULL,
  `drop` INT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `AssignmentCategoryModelIn` generated from model 'AssignmentCategoryModelIn'
--

CREATE TABLE IF NOT EXISTS `AssignmentCategoryModelIn` (
  `classCategoryId` INT NOT NULL,
  `weight` DECIMAL(20, 9) DEFAULT NULL,
  `classId` INT NOT NULL,
  `title` TEXT DEFAULT NULL,
  `description` TEXT DEFAULT NULL,
  `meetsInTerm1` TINYINT(1) DEFAULT NULL,
  `meetsInTerm2` TINYINT(1) DEFAULT NULL,
  `meetsInTerm3` TINYINT(1) DEFAULT NULL,
  `meetsInTerm4` TINYINT(1) DEFAULT NULL,
  `meetsInTerm5` TINYINT(1) DEFAULT NULL,
  `meetsInTerm6` TINYINT(1) DEFAULT NULL,
  `drop` INT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `AssignmentGradesModel` generated from model 'AssignmentGradesModel'
--

CREATE TABLE IF NOT EXISTS `AssignmentGradesModel` (
  `sisGradeId` INT NOT NULL,
  `sisAssignmentId` INT NOT NULL,
  `studentId` INT NOT NULL,
  `maxPoints` DECIMAL(20, 9) NOT NULL,
  `receivedPoints` DECIMAL(20, 9) NOT NULL,
  `curvePoints` DECIMAL(20, 9) NOT NULL,
  `penaltyPoints` DECIMAL(20, 9) NOT NULL,
  `bonusPoints` DECIMAL(20, 9) NOT NULL,
  `notes` TEXT NOT NULL,
  `weight` DECIMAL(20, 9) NOT NULL,
  `status` VARCHAR(50) NOT NULL,
  `emailSent` TINYINT(1) NOT NULL,
  `displayGrade` VARCHAR(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `AssignmentGradesModelIn` generated from model 'AssignmentGradesModelIn'
--

CREATE TABLE IF NOT EXISTS `AssignmentGradesModelIn` (
  `sisAssignmentId` INT NOT NULL,
  `studentId` INT NOT NULL,
  `maxPoints` DECIMAL(20, 9) NOT NULL,
  `receivedPoints` DECIMAL(20, 9) NOT NULL,
  `curvePoints` DECIMAL(20, 9) NOT NULL,
  `penaltyPoints` DECIMAL(20, 9) NOT NULL,
  `bonusPoints` DECIMAL(20, 9) NOT NULL,
  `notes` TEXT NOT NULL,
  `weight` DECIMAL(20, 9) NOT NULL,
  `status` VARCHAR(50) NOT NULL,
  `emailSent` TINYINT(1) NOT NULL,
  `displayGrade` VARCHAR(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `AssignmentModel` generated from model 'AssignmentModel'
--

CREATE TABLE IF NOT EXISTS `AssignmentModel` (
  `sisAssignmentId` INT NOT NULL,
  `classCategoryId` INT NOT NULL,
  `classId` INT NOT NULL,
  `classAssignmentId` INT NOT NULL,
  `title` VARCHAR(50) NOT NULL,
  `description` TEXT NOT NULL,
  `dateAssigned` DATETIME NOT NULL,
  `dateDue` DATETIME NOT NULL,
  `assignmentNumber` INT NOT NULL,
  `maxPoints` DECIMAL(20, 9) NOT NULL,
  `weight` DECIMAL(20, 9) NOT NULL,
  `extraCreditType` INT NOT NULL,
  `modifiedBy` INT NOT NULL,
  `modifiedDate` DATETIME NOT NULL,
  `publish` TINYINT(1) NOT NULL,
  `calculate` TINYINT(1) NOT NULL,
  `markedAsTest` TINYINT(1) NOT NULL,
  `isLmsAssignment` TINYINT(1) NOT NULL,
  `lmsItemId` INT NOT NULL,
  `lmsItemTypeId` INT NOT NULL,
  `descriptionHtml` TEXT NOT NULL,
  `dateAssignedUtc` DATETIME NOT NULL,
  `dateDueUtc` DATETIME NOT NULL,
  `systemOfRecord` TEXT NOT NULL,
  `googleAssignmentId` TEXT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `AssignmentModelIn` generated from model 'AssignmentModelIn'
--

CREATE TABLE IF NOT EXISTS `AssignmentModelIn` (
  `classCategoryId` INT NOT NULL,
  `classId` INT NOT NULL,
  `classAssignmentId` INT NOT NULL,
  `title` VARCHAR(50) NOT NULL,
  `description` TEXT NOT NULL,
  `dateAssigned` DATETIME NOT NULL,
  `dateDue` DATETIME NOT NULL,
  `assignmentNumber` INT NOT NULL,
  `maxPoints` DECIMAL(20, 9) NOT NULL,
  `weight` DECIMAL(20, 9) NOT NULL,
  `extraCreditType` INT NOT NULL,
  `modifiedBy` INT NOT NULL,
  `modifiedDate` DATETIME NOT NULL,
  `publish` TINYINT(1) NOT NULL,
  `calculate` TINYINT(1) NOT NULL,
  `markedAsTest` TINYINT(1) NOT NULL,
  `isLmsAssignment` TINYINT(1) NOT NULL,
  `lmsItemId` INT NOT NULL,
  `lmsItemTypeId` INT NOT NULL,
  `descriptionHtml` TEXT NOT NULL,
  `dateAssignedUtc` DATETIME NOT NULL,
  `dateDueUtc` DATETIME NOT NULL,
  `systemOfRecord` TEXT NOT NULL,
  `googleAssignmentId` TEXT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `BehaviorEventsVmIn` generated from model 'BehaviorEventsVmIn'
--

CREATE TABLE IF NOT EXISTS `BehaviorEventsVmIn` (
  `dateOfIncident` DATETIME DEFAULT NULL COMMENT 'Gets or sets date of incident',
  `descriptionOfIncident` TEXT DEFAULT NULL COMMENT 'Gets or sets description of incident',
  `history` TEXT DEFAULT NULL COMMENT 'Gets or sets history',
  `sanction1` TEXT DEFAULT NULL COMMENT 'Gets or sets the sanction1',
  `sanction2` TEXT DEFAULT NULL COMMENT 'Gets or sets the sanction2',
  `sanctionDate1` DATETIME DEFAULT NULL COMMENT 'Gets or sets sanction date1',
  `sanctionDate2` DATETIME DEFAULT NULL COMMENT 'Gets or sets sanction date2',
  `violation` TEXT DEFAULT NULL COMMENT 'Gets or sets the violation',
  `reportedBy` TEXT DEFAULT NULL COMMENT 'Gets or sets the reported by',
  `reviewedBy` TEXT DEFAULT NULL COMMENT 'Gets or sets the reviewed by',
  `status` TEXT DEFAULT NULL COMMENT 'Gets or sets the status',
  `studentID` INT DEFAULT NULL COMMENT 'Gets or sets student identifier',
  `demerits` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Gets or sets demerits',
  `modifiedBy` INT DEFAULT NULL COMMENT 'Gets or sets modified by',
  `modifiedDate` DATETIME DEFAULT NULL COMMENT 'Gets or sets modified date',
  `staffID` INT DEFAULT NULL COMMENT 'Gets or sets staff identifier',
  `level` INT DEFAULT NULL COMMENT 'Gets or sets level',
  `type` INT DEFAULT NULL COMMENT 'Gets or sets type',
  `notified` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets the notified flag'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `BehaviorEventsVmOut` generated from model 'BehaviorEventsVmOut'
--

CREATE TABLE IF NOT EXISTS `BehaviorEventsVmOut` (
  `dateOfIncident` DATETIME DEFAULT NULL COMMENT 'Gets or sets date of incident',
  `descriptionOfIncident` TEXT DEFAULT NULL COMMENT 'Gets or sets description of incident',
  `history` TEXT DEFAULT NULL COMMENT 'Gets or sets history',
  `sanction1` TEXT DEFAULT NULL COMMENT 'Gets or sets the sanction1',
  `sanction2` TEXT DEFAULT NULL COMMENT 'Gets or sets the sanction2',
  `sanctionDate1` DATETIME DEFAULT NULL COMMENT 'Gets or sets sanction date1',
  `sanctionDate2` DATETIME DEFAULT NULL COMMENT 'Gets or sets sanction date2',
  `violation` TEXT DEFAULT NULL COMMENT 'Gets or sets the violation',
  `reportedBy` TEXT DEFAULT NULL COMMENT 'Gets or sets the reported by',
  `reviewedBy` TEXT DEFAULT NULL COMMENT 'Gets or sets the reviewed by',
  `status` TEXT DEFAULT NULL COMMENT 'Gets or sets the status',
  `studentID` INT DEFAULT NULL COMMENT 'Gets or sets student identifier',
  `demerits` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Gets or sets demerits',
  `modifiedBy` INT DEFAULT NULL COMMENT 'Gets or sets modified by',
  `modifiedDate` DATETIME DEFAULT NULL COMMENT 'Gets or sets modified date',
  `staffID` INT DEFAULT NULL COMMENT 'Gets or sets staff identifier',
  `level` INT DEFAULT NULL COMMENT 'Gets or sets level',
  `type` INT DEFAULT NULL COMMENT 'Gets or sets type',
  `notified` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets the notified flag',
  `disciplineID` INT NOT NULL COMMENT 'Gets or sets the behavior events identifier'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ClassAssignmentGradeCodeTranslationModel` generated from model 'ClassAssignmentGradeCodeTranslationModel'
--

CREATE TABLE IF NOT EXISTS `ClassAssignmentGradeCodeTranslationModel` (
  `id` INT NOT NULL,
  `classId` INT NOT NULL,
  `letterCode` TEXT NOT NULL,
  `percent` DECIMAL(20, 9) NOT NULL,
  `statusCode` TEXT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ClassAssignmentGradeCodeTranslationModelIn` generated from model 'ClassAssignmentGradeCodeTranslationModelIn'
--

CREATE TABLE IF NOT EXISTS `ClassAssignmentGradeCodeTranslationModelIn` (
  `classId` INT NOT NULL,
  `letterCode` TEXT NOT NULL,
  `percent` DECIMAL(20, 9) NOT NULL,
  `statusCode` TEXT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ClassEnrollmentVm` generated from model 'ClassEnrollmentVm'
-- Class EnrollmentVm.
--

CREATE TABLE IF NOT EXISTS `ClassEnrollmentVm` (
  `altYearId` INT DEFAULT NULL COMMENT 'Gets or sets the alt year identifier.',
  `classId` INT NOT NULL COMMENT 'Gets or sets the class identifier.             ',
  `enrolled` TINYINT(1) NOT NULL COMMENT 'Gets or sets a value indicating whether this EnrollmentDto is enrolled.             ',
  `enrolled1` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets the enrolled1.             ',
  `enrolled2` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets the enrolled2.             ',
  `enrolled3` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets the enrolled3.             ',
  `enrolled4` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets the enrolled4.             ',
  `enrolled5` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets the enrolled5.             ',
  `enrolled6` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets the enrolled6.             ',
  `gradeLevel` TEXT DEFAULT NULL COMMENT 'Gets or sets the grade level.',
  `modifiedBy` INT DEFAULT NULL COMMENT 'Gets or sets the modified by field, set to PersonId.',
  `modifiedDate` DATETIME DEFAULT NULL COMMENT 'Gets or sets the modified date.',
  `studentId` INT NOT NULL COMMENT 'Gets or sets the student identifier.             '
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Class EnrollmentVm.';

--
-- Table structure for table `ClassVmIn` generated from model 'ClassVmIn'
-- Class ClassVmIn.
--

CREATE TABLE IF NOT EXISTS `ClassVmIn` (
  `aideId` INT DEFAULT NULL COMMENT 'Gets or sets the aid identifier.             ',
  `closed` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether this ClassVmIn is closed.',
  `color` TEXT DEFAULT NULL COMMENT 'Gets or sets the color.',
  `colorText` TEXT DEFAULT NULL COMMENT 'Gets or sets the color text.',
  `courseID` INT NOT NULL COMMENT 'Gets or sets the course identifier.             ',
  `googleCourseId` TEXT DEFAULT NULL COMMENT 'Gets or sets the google course identifier.',
  `legacyClassId` TEXT DEFAULT NULL COMMENT 'Gets or sets the legacy class identifier.',
  `linkedClassId` INT DEFAULT NULL COMMENT 'Gets or sets the linked class identifier.',
  `maleFemale` TEXT DEFAULT NULL COMMENT 'Gets or sets the male female.',
  `modifiedBy` INT DEFAULT NULL COMMENT 'Id of user who modified class',
  `modifiedDate` DATETIME DEFAULT NULL COMMENT 'Date modified.',
  `name` TEXT DEFAULT NULL COMMENT 'Gets or sets the name.             ',
  `pattern` INT DEFAULT NULL COMMENT 'Gets or sets the pattern.',
  `requiredRoom` INT DEFAULT NULL COMMENT 'Gets or sets the required room.',
  `section` TEXT DEFAULT NULL COMMENT 'Gets or sets the section.             ',
  `staffId` INT DEFAULT NULL COMMENT 'Gets or sets the staff identifier.             ',
  `term1` TINYINT(1) NOT NULL COMMENT 'Gets or sets a value indicating whether this Classes is term1.             ',
  `term2` TINYINT(1) NOT NULL COMMENT 'Gets or sets a value indicating whether this Classes is term2.             ',
  `term3` TINYINT(1) NOT NULL COMMENT 'Gets or sets a value indicating whether this Classes is term3.             ',
  `term4` TINYINT(1) NOT NULL COMMENT 'Gets or sets a value indicating whether this Classes is term4.             ',
  `term5` TINYINT(1) NOT NULL COMMENT 'Gets or sets a value indicating whether this Classes is term5.             ',
  `term6` TINYINT(1) NOT NULL COMMENT 'Gets or sets a value indicating whether this Classes is term6.             ',
  `yearId` INT DEFAULT NULL COMMENT 'Gets or sets the year identifier.             '
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Class ClassVmIn.';

--
-- Table structure for table `ClassVmInV1` generated from model 'ClassVmInV1'
--

CREATE TABLE IF NOT EXISTS `ClassVmInV1` (
  `aideId` INT DEFAULT NULL COMMENT 'Gets or sets the aid identifier.             ',
  `closed` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether this ClassVmIn is closed.',
  `color` TEXT DEFAULT NULL COMMENT 'Gets or sets the color.',
  `colorText` TEXT DEFAULT NULL COMMENT 'Gets or sets the color text.',
  `courseID` INT NOT NULL COMMENT 'Gets or sets the course identifier.             ',
  `googleCourseId` TEXT DEFAULT NULL COMMENT 'Gets or sets the google course identifier.',
  `legacyClassId` TEXT DEFAULT NULL COMMENT 'Gets or sets the legacy class identifier.',
  `linkedClassId` INT DEFAULT NULL COMMENT 'Gets or sets the linked class identifier.',
  `maleFemale` TEXT DEFAULT NULL COMMENT 'Gets or sets the male female.',
  `modifiedBy` INT DEFAULT NULL COMMENT 'Id of user who modified class',
  `modifiedDate` DATETIME DEFAULT NULL COMMENT 'Date modified.',
  `name` TEXT DEFAULT NULL COMMENT 'Gets or sets the name.             ',
  `pattern` INT DEFAULT NULL COMMENT 'Gets or sets the pattern.',
  `requiredRoom` INT DEFAULT NULL COMMENT 'Gets or sets the required room.',
  `section` TEXT DEFAULT NULL COMMENT 'Gets or sets the section.             ',
  `staffId` INT DEFAULT NULL COMMENT 'Gets or sets the staff identifier.             ',
  `term1` TINYINT(1) NOT NULL COMMENT 'Gets or sets a value indicating whether this Classes is term1.             ',
  `term2` TINYINT(1) NOT NULL COMMENT 'Gets or sets a value indicating whether this Classes is term2.             ',
  `term3` TINYINT(1) NOT NULL COMMENT 'Gets or sets a value indicating whether this Classes is term3.             ',
  `term4` TINYINT(1) NOT NULL COMMENT 'Gets or sets a value indicating whether this Classes is term4.             ',
  `term5` TINYINT(1) NOT NULL COMMENT 'Gets or sets a value indicating whether this Classes is term5.             ',
  `term6` TINYINT(1) NOT NULL COMMENT 'Gets or sets a value indicating whether this Classes is term6.             ',
  `yearId` INT DEFAULT NULL COMMENT 'Gets or sets the year identifier.             ',
  `instructor2Id` INT DEFAULT NULL COMMENT 'Gets or sets the alt staff identifier.             '
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ClassVmInV2` generated from model 'ClassVmInV2'
--

CREATE TABLE IF NOT EXISTS `ClassVmInV2` (
  `aideId` INT DEFAULT NULL COMMENT 'Gets or sets the aid identifier.             ',
  `closed` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether this ClassVmIn is closed.',
  `color` TEXT DEFAULT NULL COMMENT 'Gets or sets the color.',
  `colorText` TEXT DEFAULT NULL COMMENT 'Gets or sets the color text.',
  `courseID` INT NOT NULL COMMENT 'Gets or sets the course identifier.             ',
  `googleCourseId` TEXT DEFAULT NULL COMMENT 'Gets or sets the google course identifier.',
  `legacyClassId` TEXT DEFAULT NULL COMMENT 'Gets or sets the legacy class identifier.',
  `linkedClassId` INT DEFAULT NULL COMMENT 'Gets or sets the linked class identifier.',
  `maleFemale` TEXT DEFAULT NULL COMMENT 'Gets or sets the male female.',
  `modifiedBy` INT DEFAULT NULL COMMENT 'Id of user who modified class',
  `modifiedDate` DATETIME DEFAULT NULL COMMENT 'Date modified.',
  `name` TEXT DEFAULT NULL COMMENT 'Gets or sets the name.             ',
  `pattern` INT DEFAULT NULL COMMENT 'Gets or sets the pattern.',
  `requiredRoom` INT DEFAULT NULL COMMENT 'Gets or sets the required room.',
  `section` TEXT DEFAULT NULL COMMENT 'Gets or sets the section.             ',
  `staffId` INT DEFAULT NULL COMMENT 'Gets or sets the staff identifier.             ',
  `term1` TINYINT(1) NOT NULL COMMENT 'Gets or sets a value indicating whether this Classes is term1.             ',
  `term2` TINYINT(1) NOT NULL COMMENT 'Gets or sets a value indicating whether this Classes is term2.             ',
  `term3` TINYINT(1) NOT NULL COMMENT 'Gets or sets a value indicating whether this Classes is term3.             ',
  `term4` TINYINT(1) NOT NULL COMMENT 'Gets or sets a value indicating whether this Classes is term4.             ',
  `term5` TINYINT(1) NOT NULL COMMENT 'Gets or sets a value indicating whether this Classes is term5.             ',
  `term6` TINYINT(1) NOT NULL COMMENT 'Gets or sets a value indicating whether this Classes is term6.             ',
  `yearId` INT DEFAULT NULL COMMENT 'Gets or sets the year identifier.             ',
  `secondaryStaffId` INT DEFAULT NULL COMMENT 'Gets or sets the secondary staff identifier.             '
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ClassVmOutV1` generated from model 'ClassVmOutV1'
--

CREATE TABLE IF NOT EXISTS `ClassVmOutV1` (
  `aideId` INT DEFAULT NULL COMMENT 'Gets or sets the aid identifier.             ',
  `closed` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether this ClassVmIn is closed.',
  `color` TEXT DEFAULT NULL COMMENT 'Gets or sets the color.',
  `colorText` TEXT DEFAULT NULL COMMENT 'Gets or sets the color text.',
  `courseID` INT NOT NULL COMMENT 'Gets or sets the course identifier.             ',
  `googleCourseId` TEXT DEFAULT NULL COMMENT 'Gets or sets the google course identifier.',
  `legacyClassId` TEXT DEFAULT NULL COMMENT 'Gets or sets the legacy class identifier.',
  `linkedClassId` INT DEFAULT NULL COMMENT 'Gets or sets the linked class identifier.',
  `maleFemale` TEXT DEFAULT NULL COMMENT 'Gets or sets the male female.',
  `modifiedBy` INT DEFAULT NULL COMMENT 'Id of user who modified class',
  `modifiedDate` DATETIME DEFAULT NULL COMMENT 'Date modified.',
  `name` TEXT DEFAULT NULL COMMENT 'Gets or sets the name.             ',
  `pattern` INT DEFAULT NULL COMMENT 'Gets or sets the pattern.',
  `requiredRoom` INT DEFAULT NULL COMMENT 'Gets or sets the required room.',
  `section` TEXT DEFAULT NULL COMMENT 'Gets or sets the section.             ',
  `staffId` INT DEFAULT NULL COMMENT 'Gets or sets the staff identifier.             ',
  `term1` TINYINT(1) NOT NULL COMMENT 'Gets or sets a value indicating whether this Classes is term1.             ',
  `term2` TINYINT(1) NOT NULL COMMENT 'Gets or sets a value indicating whether this Classes is term2.             ',
  `term3` TINYINT(1) NOT NULL COMMENT 'Gets or sets a value indicating whether this Classes is term3.             ',
  `term4` TINYINT(1) NOT NULL COMMENT 'Gets or sets a value indicating whether this Classes is term4.             ',
  `term5` TINYINT(1) NOT NULL COMMENT 'Gets or sets a value indicating whether this Classes is term5.             ',
  `term6` TINYINT(1) NOT NULL COMMENT 'Gets or sets a value indicating whether this Classes is term6.             ',
  `yearId` INT DEFAULT NULL COMMENT 'Gets or sets the year identifier.             ',
  `instructor2Id` INT DEFAULT NULL COMMENT 'Gets or sets the alt staff identifier.             ',
  `classId` INT NOT NULL COMMENT 'Gets or sets the class identifier.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ClassVmOutV2` generated from model 'ClassVmOutV2'
--

CREATE TABLE IF NOT EXISTS `ClassVmOutV2` (
  `aideId` INT DEFAULT NULL COMMENT 'Gets or sets the aid identifier.             ',
  `closed` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether this ClassVmIn is closed.',
  `color` TEXT DEFAULT NULL COMMENT 'Gets or sets the color.',
  `colorText` TEXT DEFAULT NULL COMMENT 'Gets or sets the color text.',
  `courseID` INT NOT NULL COMMENT 'Gets or sets the course identifier.             ',
  `googleCourseId` TEXT DEFAULT NULL COMMENT 'Gets or sets the google course identifier.',
  `legacyClassId` TEXT DEFAULT NULL COMMENT 'Gets or sets the legacy class identifier.',
  `linkedClassId` INT DEFAULT NULL COMMENT 'Gets or sets the linked class identifier.',
  `maleFemale` TEXT DEFAULT NULL COMMENT 'Gets or sets the male female.',
  `modifiedBy` INT DEFAULT NULL COMMENT 'Id of user who modified class',
  `modifiedDate` DATETIME DEFAULT NULL COMMENT 'Date modified.',
  `name` TEXT DEFAULT NULL COMMENT 'Gets or sets the name.             ',
  `pattern` INT DEFAULT NULL COMMENT 'Gets or sets the pattern.',
  `requiredRoom` INT DEFAULT NULL COMMENT 'Gets or sets the required room.',
  `section` TEXT DEFAULT NULL COMMENT 'Gets or sets the section.             ',
  `staffId` INT DEFAULT NULL COMMENT 'Gets or sets the staff identifier.             ',
  `term1` TINYINT(1) NOT NULL COMMENT 'Gets or sets a value indicating whether this Classes is term1.             ',
  `term2` TINYINT(1) NOT NULL COMMENT 'Gets or sets a value indicating whether this Classes is term2.             ',
  `term3` TINYINT(1) NOT NULL COMMENT 'Gets or sets a value indicating whether this Classes is term3.             ',
  `term4` TINYINT(1) NOT NULL COMMENT 'Gets or sets a value indicating whether this Classes is term4.             ',
  `term5` TINYINT(1) NOT NULL COMMENT 'Gets or sets a value indicating whether this Classes is term5.             ',
  `term6` TINYINT(1) NOT NULL COMMENT 'Gets or sets a value indicating whether this Classes is term6.             ',
  `yearId` INT DEFAULT NULL COMMENT 'Gets or sets the year identifier.             ',
  `secondaryStaffId` INT DEFAULT NULL COMMENT 'Gets or sets the secondary staff identifier.             ',
  `classId` INT NOT NULL COMMENT 'Gets or sets the class identifier.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ConditionalRequirementModel` generated from model 'ConditionalRequirementModel'
--

CREATE TABLE IF NOT EXISTS `ConditionalRequirementModel` (
  `triggerQuestionId` INT DEFAULT NULL,
  `options` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ConferenceVmIn` generated from model 'ConferenceVmIn'
--

CREATE TABLE IF NOT EXISTS `ConferenceVmIn` (
  `date` DATETIME DEFAULT NULL COMMENT 'Gets or sets the date.',
  `studentId` INT DEFAULT NULL COMMENT 'Gets or sets the student identifier.',
  `reason` TEXT DEFAULT NULL COMMENT 'Gets or sets the reason note.',
  `problem` TEXT DEFAULT NULL COMMENT 'Gets or sets the observation details note.',
  `staffID` INT DEFAULT NULL COMMENT 'Gets or sets the staff that reported the conference.',
  `subject` TEXT DEFAULT NULL COMMENT 'Gets or sets the subject.',
  `recommendation` TEXT DEFAULT NULL COMMENT 'Gets or sets the recommendation.',
  `parent` TEXT DEFAULT NULL COMMENT 'Gets or sets the parent&#39;s reaction/comment.',
  `location` TEXT DEFAULT NULL COMMENT 'Gets or sets the location. Null none -1 None  0 Phone Conversation  1 In-Person Conference  2 Email/Mail ',
  `modifiedBy` INT DEFAULT NULL COMMENT 'Gets or sets the modified by.',
  `modifiedDate` DATETIME DEFAULT NULL COMMENT 'Gets or sets the modified date.',
  `reason1` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether reason1 (Academic) is true for the student.',
  `reason2` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether reason2 (Conduct) is true for the student.',
  `reason3` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether reason3 (Other - ReasonNote) is true for the student.',
  `problem1` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether problem1 is true for the student. The reasons come from the defined list P/T Conference - Problems',
  `problem2` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether problem2 is true for the student. The reasons come from the defined list P/T Conference - Problems',
  `problem3` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether problem3 is true for the student. The reasons come from the defined list P/T Conference - Problems',
  `problem4` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether problem4 is true for the student. The reasons come from the defined list P/T Conference - Problems',
  `problem5` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether problem5 is true for the student. The reasons come from the defined list P/T Conference - Problems',
  `problem6` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether problem6 is true for the student. The reasons come from the defined list P/T Conference - Problems',
  `problem7` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether problem7 is true for the student. The reasons come from the defined list P/T Conference - Problems',
  `problem8` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether problem8 is true for the student. The reasons come from the defined list P/T Conference - Problems',
  `problem9` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether problem9 is true for the student. The reasons come from the defined list P/T Conference - Problems',
  `problem10` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether problem10 is true for the student. The reasons come from the defined list P/T Conference - Problems'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ConferenceVmOut` generated from model 'ConferenceVmOut'
--

CREATE TABLE IF NOT EXISTS `ConferenceVmOut` (
  `date` DATETIME DEFAULT NULL COMMENT 'Gets or sets the date.',
  `studentId` INT DEFAULT NULL COMMENT 'Gets or sets the student identifier.',
  `reason` TEXT DEFAULT NULL COMMENT 'Gets or sets the reason note.',
  `problem` TEXT DEFAULT NULL COMMENT 'Gets or sets the observation details note.',
  `staffID` INT DEFAULT NULL COMMENT 'Gets or sets the staff that reported the conference.',
  `subject` TEXT DEFAULT NULL COMMENT 'Gets or sets the subject.',
  `recommendation` TEXT DEFAULT NULL COMMENT 'Gets or sets the recommendation.',
  `parent` TEXT DEFAULT NULL COMMENT 'Gets or sets the parent&#39;s reaction/comment.',
  `location` TEXT DEFAULT NULL COMMENT 'Gets or sets the location. Null none -1 None  0 Phone Conversation  1 In-Person Conference  2 Email/Mail ',
  `modifiedBy` INT DEFAULT NULL COMMENT 'Gets or sets the modified by.',
  `modifiedDate` DATETIME DEFAULT NULL COMMENT 'Gets or sets the modified date.',
  `reason1` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether reason1 (Academic) is true for the student.',
  `reason2` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether reason2 (Conduct) is true for the student.',
  `reason3` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether reason3 (Other - ReasonNote) is true for the student.',
  `problem1` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether problem1 is true for the student. The reasons come from the defined list P/T Conference - Problems',
  `problem2` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether problem2 is true for the student. The reasons come from the defined list P/T Conference - Problems',
  `problem3` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether problem3 is true for the student. The reasons come from the defined list P/T Conference - Problems',
  `problem4` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether problem4 is true for the student. The reasons come from the defined list P/T Conference - Problems',
  `problem5` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether problem5 is true for the student. The reasons come from the defined list P/T Conference - Problems',
  `problem6` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether problem6 is true for the student. The reasons come from the defined list P/T Conference - Problems',
  `problem7` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether problem7 is true for the student. The reasons come from the defined list P/T Conference - Problems',
  `problem8` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether problem8 is true for the student. The reasons come from the defined list P/T Conference - Problems',
  `problem9` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether problem9 is true for the student. The reasons come from the defined list P/T Conference - Problems',
  `problem10` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether problem10 is true for the student. The reasons come from the defined list P/T Conference - Problems',
  `conferenceId` INT NOT NULL COMMENT 'Gets or sets the conference identifier.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `CongregationVM` generated from model 'CongregationVM'
-- Class CongregationVM. Building/people group of a religious affiliation.
--

CREATE TABLE IF NOT EXISTS `CongregationVM` (
  `congregationId` INT NOT NULL COMMENT 'The congregation identifier.',
  `congregationName` TEXT DEFAULT NULL COMMENT 'Gets or sets the name of the congregation.',
  `congregationCity` TEXT DEFAULT NULL COMMENT 'Gets or sets the congregation city.',
  `congregationPhone` TEXT DEFAULT NULL COMMENT 'Gets or sets the congregation phone number.',
  `congregationState` TEXT DEFAULT NULL COMMENT 'Gets or sets the state (address) of the congregation .',
  `congregationStreet` TEXT DEFAULT NULL COMMENT 'Gets or sets the congregation street address.',
  `congregationZip` TEXT DEFAULT NULL COMMENT 'Gets or sets the congregation zip code. (address)',
  `seniorPastor` TEXT DEFAULT NULL COMMENT 'Gets or sets the senior pastor.',
  `youthPastor` TEXT DEFAULT NULL COMMENT 'Gets or sets the youth pastor.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Class CongregationVM. Building/people group of a religious affiliation.';

--
-- Table structure for table `CoursesVmIn` generated from model 'CoursesVmIn'
-- Class CoursesVmIn.
--

CREATE TABLE IF NOT EXISTS `CoursesVmIn` (
  `levelID` INT DEFAULT NULL COMMENT 'Gets or sets the course level identifier.             ',
  `legacyCourseID` TEXT DEFAULT NULL COMMENT 'Gets or sets the legacy course identifier. (from school&#39;s previous SIS)             ',
  `title` TEXT DEFAULT NULL COMMENT 'Gets or sets the title.             ',
  `abbreviation` TEXT DEFAULT NULL COMMENT 'Gets or sets the abbreviation.             ',
  `activity` TINYINT(1) NOT NULL COMMENT 'Gets or sets a value indicating whether this Courses is activity.             ',
  `attendance` TINYINT(1) NOT NULL COMMENT 'Gets or sets a value indicating whether this Courses is intended             to take attendance.             ',
  `homeRoom` TINYINT(1) NOT NULL COMMENT 'Gets or sets a value indicating whether [home room].             ',
  `schoolCode` TEXT DEFAULT NULL COMMENT 'Gets or sets the school code.             ',
  `department` TEXT DEFAULT NULL COMMENT 'Gets or sets the department.             ',
  `active` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets whether the course is active.             ',
  `elective` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets whether the course counts as an elective.             ',
  `hs` TINYINT(1) DEFAULT NULL,
  `preSchool` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets whether this course is associated with \&quot;Pre School\&quot; for scheduling/filtering             ',
  `elementary` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets whether this course is associated with \&quot;Elementary School\&quot; for scheduling/filtering             ',
  `middleSchool` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets whether this course is associated with \&quot;Middle School\&quot; for scheduling/filtering             ',
  `modifiedBy` INT DEFAULT NULL COMMENT 'Gets or sets modified by.             ',
  `modifiedDate` DATETIME DEFAULT NULL COMMENT 'Gets or sets modified date.             ',
  `courseType` TEXT DEFAULT NULL COMMENT 'Gets or sets the course type.             ',
  `defaultStaffID` INT DEFAULT NULL COMMENT 'Gets or sets the default staff identifier.             ',
  `departmentID` INT DEFAULT NULL COMMENT 'Gets or sets the department identifier.             ',
  `description` TEXT DEFAULT NULL COMMENT 'Gets or sets the description.             ',
  `stateID` TEXT DEFAULT NULL COMMENT 'Gets or sets the state identifier. (used with State Reporting exports)             ',
  `maxSize` INT DEFAULT NULL COMMENT 'Gets or sets the MaxSize of the course.  0 will allow this course to be uncapped.             '
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Class CoursesVmIn.';

--
-- Table structure for table `CoursesVmOut` generated from model 'CoursesVmOut'
--

CREATE TABLE IF NOT EXISTS `CoursesVmOut` (
  `levelID` INT DEFAULT NULL COMMENT 'Gets or sets the course level identifier.             ',
  `legacyCourseID` TEXT DEFAULT NULL COMMENT 'Gets or sets the legacy course identifier. (from school&#39;s previous SIS)             ',
  `title` TEXT DEFAULT NULL COMMENT 'Gets or sets the title.             ',
  `abbreviation` TEXT DEFAULT NULL COMMENT 'Gets or sets the abbreviation.             ',
  `activity` TINYINT(1) NOT NULL COMMENT 'Gets or sets a value indicating whether this Courses is activity.             ',
  `attendance` TINYINT(1) NOT NULL COMMENT 'Gets or sets a value indicating whether this Courses is intended             to take attendance.             ',
  `homeRoom` TINYINT(1) NOT NULL COMMENT 'Gets or sets a value indicating whether [home room].             ',
  `schoolCode` TEXT DEFAULT NULL COMMENT 'Gets or sets the school code.             ',
  `department` TEXT DEFAULT NULL COMMENT 'Gets or sets the department.             ',
  `active` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets whether the course is active.             ',
  `elective` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets whether the course counts as an elective.             ',
  `hs` TINYINT(1) DEFAULT NULL,
  `preSchool` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets whether this course is associated with \&quot;Pre School\&quot; for scheduling/filtering             ',
  `elementary` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets whether this course is associated with \&quot;Elementary School\&quot; for scheduling/filtering             ',
  `middleSchool` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets whether this course is associated with \&quot;Middle School\&quot; for scheduling/filtering             ',
  `modifiedBy` INT DEFAULT NULL COMMENT 'Gets or sets modified by.             ',
  `modifiedDate` DATETIME DEFAULT NULL COMMENT 'Gets or sets modified date.             ',
  `courseType` TEXT DEFAULT NULL COMMENT 'Gets or sets the course type.             ',
  `defaultStaffID` INT DEFAULT NULL COMMENT 'Gets or sets the default staff identifier.             ',
  `departmentID` INT DEFAULT NULL COMMENT 'Gets or sets the department identifier.             ',
  `description` TEXT DEFAULT NULL COMMENT 'Gets or sets the description.             ',
  `stateID` TEXT DEFAULT NULL COMMENT 'Gets or sets the state identifier. (used with State Reporting exports)             ',
  `maxSize` INT DEFAULT NULL COMMENT 'Gets or sets the MaxSize of the course.  0 will allow this course to be uncapped.             ',
  `courseID` INT NOT NULL COMMENT 'Gets or sets the course identifier.             '
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `CreateInquiryFormCommandOut` generated from model 'CreateInquiryFormCommandOut'
--

CREATE TABLE IF NOT EXISTS `CreateInquiryFormCommandOut` (
  `requestId` INT NOT NULL COMMENT 'The request identifier.',
  `studentId` INT NOT NULL COMMENT 'The student identifier.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `CustomAnswerModel` generated from model 'CustomAnswerModel'
--

CREATE TABLE IF NOT EXISTS `CustomAnswerModel` (
  `boolValue` TINYINT(1) DEFAULT NULL,
  `textValue` TEXT DEFAULT NULL,
  `dateValue` DATETIME DEFAULT NULL,
  `intValue` INT DEFAULT NULL,
  `listValues` JSON DEFAULT NULL,
  `questionId` INT NOT NULL,
  `originalAnswerLabel` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `CustomQuestionAnswerModel` generated from model 'CustomQuestionAnswerModel'
--

CREATE TABLE IF NOT EXISTS `CustomQuestionAnswerModel` (
  `question` TEXT DEFAULT NULL,
  `answer` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `CustomQuestionModel` generated from model 'CustomQuestionModel'
--

CREATE TABLE IF NOT EXISTS `CustomQuestionModel` (
  `label` TEXT DEFAULT NULL,
  `columns` INT DEFAULT NULL,
  `questionAnswerType` TEXT NOT NULL,
  `requirementType` TEXT NOT NULL,
  `options` JSON DEFAULT NULL,
  `id` INT NOT NULL,
  `fullText` TEXT DEFAULT NULL,
  `requestLevel` TEXT NOT NULL,
  `sortOrder` INT NOT NULL,
  `eventId` INT DEFAULT NULL,
  `isConditional` TINYINT(1) NOT NULL,
  `conditionalRequirement` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `DefinedListsModel` generated from model 'DefinedListsModel'
--

CREATE TABLE IF NOT EXISTS `DefinedListsModel` (
  `type` TEXT DEFAULT NULL COMMENT 'Gets or sets the type of the definedList.',
  `name` TEXT DEFAULT NULL COMMENT 'Gets or sets the name of the definedList.',
  `definedListId` INT NOT NULL COMMENT 'Gets or sets the definedList identifier.',
  `schoolCode` TEXT DEFAULT NULL COMMENT 'Gets or sets the school code.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `DefinedListsRequest` generated from model 'DefinedListsRequest'
-- DefinedLists Request.
--

CREATE TABLE IF NOT EXISTS `DefinedListsRequest` (
  `type` TEXT DEFAULT NULL COMMENT 'Gets or sets the type of the definedList.',
  `name` TEXT DEFAULT NULL COMMENT 'Gets or sets the name of the definedList.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='DefinedLists Request.';

--
-- Table structure for table `DirectoryPreferencesVmIn` generated from model 'DirectoryPreferencesVmIn'
--

CREATE TABLE IF NOT EXISTS `DirectoryPreferencesVmIn` (
  `blockName` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether we should block the name in the directory.',
  `blockCellPhone` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether we should block the cellphone in the directory.',
  `blockHomePhone` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether the home phone in the directory.',
  `blockAddress` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether the Home address in the directory.',
  `blockEmail` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether the email in the directory.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `DirectoryPreferencesVmOut` generated from model 'DirectoryPreferencesVmOut'
--

CREATE TABLE IF NOT EXISTS `DirectoryPreferencesVmOut` (
  `blockName` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether we should block the name in the directory.',
  `blockCellPhone` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether we should block the cellphone in the directory.',
  `blockHomePhone` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether the home phone in the directory.',
  `blockAddress` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether the Home address in the directory.',
  `blockEmail` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether the email in the directory.',
  `personId` INT NOT NULL COMMENT 'Gets or sets the person identifier.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `EducationVmIn` generated from model 'EducationVmIn'
-- A person&#39;s education information
--

CREATE TABLE IF NOT EXISTS `EducationVmIn` (
  `personId` INT NOT NULL COMMENT 'The person&#39;s Id',
  `degreeSchool` TEXT DEFAULT NULL COMMENT 'The school where the degree came from',
  `degreeName` TEXT DEFAULT NULL COMMENT 'The degree name',
  `degreeYear` TEXT DEFAULT NULL COMMENT 'The year when the degree was aquired',
  `educationLevel` INT DEFAULT NULL COMMENT 'The education level',
  `degreeType` TEXT DEFAULT NULL COMMENT 'The degree type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='A person&#39;s education information';

--
-- Table structure for table `EducationVmOut` generated from model 'EducationVmOut'
--

CREATE TABLE IF NOT EXISTS `EducationVmOut` (
  `personId` INT NOT NULL COMMENT 'The person&#39;s Id',
  `degreeSchool` TEXT DEFAULT NULL COMMENT 'The school where the degree came from',
  `degreeName` TEXT DEFAULT NULL COMMENT 'The degree name',
  `degreeYear` TEXT DEFAULT NULL COMMENT 'The year when the degree was aquired',
  `educationLevel` INT DEFAULT NULL COMMENT 'The education level',
  `degreeType` TEXT DEFAULT NULL COMMENT 'The degree type',
  `educationId` INT NOT NULL COMMENT 'The education Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `EmergencyContactVM` generated from model 'EmergencyContactVM'
-- EmergencyContact information
--

CREATE TABLE IF NOT EXISTS `EmergencyContactVM` (
  `emergencyContactID` INT NOT NULL COMMENT 'Gets or sets the emergency contact identifier',
  `firstName` VARCHAR(64) DEFAULT NULL COMMENT 'Gets or sets first name',
  `lastName` VARCHAR(128) DEFAULT NULL COMMENT 'Gets or sets last name',
  `middleName` VARCHAR(50) DEFAULT NULL COMMENT 'Gets or sets middle name',
  `salutation` VARCHAR(50) DEFAULT NULL COMMENT 'Gets or sets salutation',
  `suffix` VARCHAR(50) DEFAULT NULL COMMENT 'Gets or sets suffix',
  `homePhone` VARCHAR(50) DEFAULT NULL COMMENT 'Gets or sets home phone',
  `cellPhone` VARCHAR(50) DEFAULT NULL COMMENT 'Gets or sets cell phone',
  `email` TEXT DEFAULT NULL COMMENT 'Gets or sets email',
  `relationship` VARCHAR(50) DEFAULT NULL COMMENT 'Gets or sets relationship',
  `workPhone` VARCHAR(128) DEFAULT NULL COMMENT 'Gets or sets work phone',
  `studentID` INT DEFAULT NULL COMMENT 'Gets or sets student identifier',
  `sortOrder` INT DEFAULT NULL COMMENT 'Gets or sets sort order',
  `refID` INT DEFAULT NULL COMMENT 'Gets or sets ref identifier',
  `note` TEXT DEFAULT NULL COMMENT 'Gets or sets note',
  `countryCode` VARCHAR(50) DEFAULT NULL COMMENT 'Gets or sets country code',
  `portalSortOrder` INT NOT NULL COMMENT 'Gets or sets portal sort order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='EmergencyContact information';

--
-- Table structure for table `EnrollmentHistoryVmIn` generated from model 'EnrollmentHistoryVmIn'
--

CREATE TABLE IF NOT EXISTS `EnrollmentHistoryVmIn` (
  `beginDate` DATETIME DEFAULT NULL COMMENT 'Gets or sets the begin enrollment date.',
  `endDate` DATETIME DEFAULT NULL COMMENT 'Gets or sets the end enrollment date.',
  `gradeLevel` TEXT DEFAULT NULL COMMENT 'Gets or sets the grade level.',
  `note` TEXT DEFAULT NULL COMMENT 'Gets or sets the note.',
  `schoolCode` TEXT DEFAULT NULL COMMENT 'Gets or sets the school code.',
  `status` TEXT DEFAULT NULL COMMENT 'Gets or sets the status.',
  `studentId` INT NOT NULL COMMENT 'Gets or sets the student identifier.',
  `yearId` INT DEFAULT NULL COMMENT 'Gets or sets the year identifier.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `EnrollmentHistoryVmOut` generated from model 'EnrollmentHistoryVmOut'
--

CREATE TABLE IF NOT EXISTS `EnrollmentHistoryVmOut` (
  `beginDate` DATETIME DEFAULT NULL COMMENT 'Gets or sets the begin enrollment date.',
  `endDate` DATETIME DEFAULT NULL COMMENT 'Gets or sets the end enrollment date.',
  `gradeLevel` TEXT DEFAULT NULL COMMENT 'Gets or sets the grade level.',
  `note` TEXT DEFAULT NULL COMMENT 'Gets or sets the note.',
  `schoolCode` TEXT DEFAULT NULL COMMENT 'Gets or sets the school code.',
  `status` TEXT DEFAULT NULL COMMENT 'Gets or sets the status.',
  `studentId` INT NOT NULL COMMENT 'Gets or sets the student identifier.',
  `yearId` INT DEFAULT NULL COMMENT 'Gets or sets the year identifier.',
  `enrollmentHistoryId` INT NOT NULL COMMENT 'Gets or sets the enrollment history identifier.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `Error` generated from model 'Error'
--

CREATE TABLE IF NOT EXISTS `Error` (
  `code` TEXT NOT NULL,
  `message` TEXT NOT NULL,
  `target` TEXT DEFAULT NULL,
  `details` JSON DEFAULT NULL,
  `innererror` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `Error2` generated from model 'Error2'
--

CREATE TABLE IF NOT EXISTS `Error2` (
  `code` TEXT NOT NULL,
  `message` TEXT NOT NULL,
  `target` TEXT DEFAULT NULL,
  `details` JSON DEFAULT NULL,
  `innererror` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ErrorResponse` generated from model 'ErrorResponse'
--

CREATE TABLE IF NOT EXISTS `ErrorResponse` (
  `error` TEXT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ErrorResponse2` generated from model 'ErrorResponse2'
--

CREATE TABLE IF NOT EXISTS `ErrorResponse2` (
  `error` TEXT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ExternalApiApimDocumentDto` generated from model 'ExternalApiApimDocumentDto'
--

CREATE TABLE IF NOT EXISTS `ExternalApiApimDocumentDto` (
  `id` TEXT DEFAULT NULL,
  `name` TEXT DEFAULT NULL,
  `apiHash` TEXT DEFAULT NULL,
  `subscriptionId` TEXT DEFAULT NULL,
  `districtId` INT NOT NULL,
  `schoolId` INT NOT NULL,
  `scopes` TEXT DEFAULT NULL,
  `schoolName` TEXT DEFAULT NULL,
  `districtName` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `FamilyConfigVmIn` generated from model 'FamilyConfigVmIn'
--

CREATE TABLE IF NOT EXISTS `FamilyConfigVmIn` (
  `familyName` TEXT DEFAULT NULL COMMENT 'Name of the Family',
  `enableWeb` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether they are enabled for web (Family Portal).',
  `unlisted` INT DEFAULT NULL COMMENT 'Gets or sets the unlisted property, which would hide/show them in the directory.',
  `note` TEXT DEFAULT NULL COMMENT 'Gets or sets the note.',
  `modifiedBy` INT DEFAULT NULL COMMENT 'Gets or sets modified by',
  `modifiedDate` DATETIME DEFAULT NULL COMMENT 'Gets or sets the modified date',
  `familyNameBP` TEXT DEFAULT NULL COMMENT 'Gets or sets the family name bp.',
  `parentsWebFinancialBlock` TINYINT(1) NOT NULL COMMENT 'Gets or sets a value indicating whether family is financially blocked.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `FamilyConfigVmOut` generated from model 'FamilyConfigVmOut'
--

CREATE TABLE IF NOT EXISTS `FamilyConfigVmOut` (
  `familyName` TEXT DEFAULT NULL COMMENT 'Name of the Family',
  `enableWeb` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether they are enabled for web (Family Portal).',
  `unlisted` INT DEFAULT NULL COMMENT 'Gets or sets the unlisted property, which would hide/show them in the directory.',
  `note` TEXT DEFAULT NULL COMMENT 'Gets or sets the note.',
  `modifiedBy` INT DEFAULT NULL COMMENT 'Gets or sets modified by',
  `modifiedDate` DATETIME DEFAULT NULL COMMENT 'Gets or sets the modified date',
  `familyNameBP` TEXT DEFAULT NULL COMMENT 'Gets or sets the family name bp.',
  `parentsWebFinancialBlock` TINYINT(1) NOT NULL COMMENT 'Gets or sets a value indicating whether family is financially blocked.',
  `familyID` INT NOT NULL COMMENT 'Gets or sets the family identifier'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `HonorsVmIn` generated from model 'HonorsVmIn'
-- ViewModel for Honors
--

CREATE TABLE IF NOT EXISTS `HonorsVmIn` (
  `calcMethod` TEXT DEFAULT NULL COMMENT 'Gets or sets the calculate method. Known Values:  \&quot;SUMMARYAVG\&quot; - Use the Credit Weighted overall average of the student for this Honor. \&quot;SUMMARYGPA\&quot; - Use the Credit Weighted overall GPA of the student for this Honor. \&quot;INDAVG\&quot; - Look at each individual class average. (no grades under specific value) \&quot;INDGPA\&quot; - Look at each individual class GPA. (no grades under a specific value) Note: the GPA options are also used for UPGA honors.',
  `gradeLevel` TEXT DEFAULT NULL COMMENT 'Gets or sets the grade level; restricted by Gradelevel in Configschool',
  `honorName` TEXT DEFAULT NULL COMMENT 'Gets or sets the name of the honor.',
  `honorRollId` INT DEFAULT NULL COMMENT 'Gets or sets the honor roll identifier. Restricted to HonorRollConfigId',
  `maxClass` DECIMAL(20, 9) NOT NULL COMMENT 'Used with the Individual Class Average/Gpa: To earn this honor, the student needs at least one class that meets this grade threshold.',
  `minAvg` DECIMAL(20, 9) NOT NULL COMMENT 'To earn this honor, the student is not allowed to have a combined summary grade below this minimum value.',
  `minClass` DECIMAL(20, 9) NOT NULL COMMENT 'To earn this honor, the student is not allowed to have an individual grade below this minimum value.',
  `minCredits` DECIMAL(20, 9) NOT NULL COMMENT 'Gets or sets the minimum credits needed for Honor.',
  `modifiedBy` INT DEFAULT NULL COMMENT 'Gets or sets the modified by.',
  `modifiedDate` DATETIME DEFAULT NULL COMMENT 'Gets or sets the modified date.',
  `schoolCode` TEXT DEFAULT NULL COMMENT 'Gets or sets the school code.',
  `sequence` INT NOT NULL COMMENT 'Represents the order in which the Honor checks are processed when running the associated Honor Roll. Students meeting the conditions for multiple honors within the same run configuration will keep the later entry. Given this, the more strict Honors should be given a higher sequence number.  (eg AB honor is sequence 0, while A Honor is sequence 1) Unique to 1 per grade per honor',
  `timeFrame` INT NOT NULL COMMENT 'Gets or sets the time frame. 0 if calculated at &#39;term&#39;, 1 if calculated cumulatively from transcript records. May be redundant, (set at the Honor Roll Config level) but recommended to keep  maintained for historical compatibility with the &#39;run honor roll&#39; processes.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ViewModel for Honors';

--
-- Table structure for table `HonorsVmOut` generated from model 'HonorsVmOut'
--

CREATE TABLE IF NOT EXISTS `HonorsVmOut` (
  `calcMethod` TEXT DEFAULT NULL COMMENT 'Gets or sets the calculate method. Known Values:  \&quot;SUMMARYAVG\&quot; - Use the Credit Weighted overall average of the student for this Honor. \&quot;SUMMARYGPA\&quot; - Use the Credit Weighted overall GPA of the student for this Honor. \&quot;INDAVG\&quot; - Look at each individual class average. (no grades under specific value) \&quot;INDGPA\&quot; - Look at each individual class GPA. (no grades under a specific value) Note: the GPA options are also used for UPGA honors.',
  `gradeLevel` TEXT DEFAULT NULL COMMENT 'Gets or sets the grade level; restricted by Gradelevel in Configschool',
  `honorName` TEXT DEFAULT NULL COMMENT 'Gets or sets the name of the honor.',
  `honorRollId` INT DEFAULT NULL COMMENT 'Gets or sets the honor roll identifier. Restricted to HonorRollConfigId',
  `maxClass` DECIMAL(20, 9) NOT NULL COMMENT 'Used with the Individual Class Average/Gpa: To earn this honor, the student needs at least one class that meets this grade threshold.',
  `minAvg` DECIMAL(20, 9) NOT NULL COMMENT 'To earn this honor, the student is not allowed to have a combined summary grade below this minimum value.',
  `minClass` DECIMAL(20, 9) NOT NULL COMMENT 'To earn this honor, the student is not allowed to have an individual grade below this minimum value.',
  `minCredits` DECIMAL(20, 9) NOT NULL COMMENT 'Gets or sets the minimum credits needed for Honor.',
  `modifiedBy` INT DEFAULT NULL COMMENT 'Gets or sets the modified by.',
  `modifiedDate` DATETIME DEFAULT NULL COMMENT 'Gets or sets the modified date.',
  `schoolCode` TEXT DEFAULT NULL COMMENT 'Gets or sets the school code.',
  `sequence` INT NOT NULL COMMENT 'Represents the order in which the Honor checks are processed when running the associated Honor Roll. Students meeting the conditions for multiple honors within the same run configuration will keep the later entry. Given this, the more strict Honors should be given a higher sequence number.  (eg AB honor is sequence 0, while A Honor is sequence 1) Unique to 1 per grade per honor',
  `timeFrame` INT NOT NULL COMMENT 'Gets or sets the time frame. 0 if calculated at &#39;term&#39;, 1 if calculated cumulatively from transcript records. May be redundant, (set at the Honor Roll Config level) but recommended to keep  maintained for historical compatibility with the &#39;run honor roll&#39; processes.',
  `honorId` INT NOT NULL COMMENT 'Gets or sets the automatic honor identifier.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `InquiryFormEditModel` generated from model 'InquiryFormEditModel'
--

CREATE TABLE IF NOT EXISTS `InquiryFormEditModel` (
  `standardAnswers` JSON DEFAULT NULL,
  `customAnswers` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `InquiryFormModel` generated from model 'InquiryFormModel'
--

CREATE TABLE IF NOT EXISTS `InquiryFormModel` (
  `requestId` INT DEFAULT NULL,
  `studentId` INT DEFAULT NULL,
  `schoolCode` TEXT DEFAULT NULL,
  `schoolOptions` JSON DEFAULT NULL,
  `standard` JSON DEFAULT NULL,
  `custom` JSON DEFAULT NULL,
  `interestCategories` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `InterestCategoryModel` generated from model 'InterestCategoryModel'
--

CREATE TABLE IF NOT EXISTS `InterestCategoryModel` (
  `id` INT NOT NULL,
  `description` TEXT DEFAULT NULL,
  `sortOrder` INT NOT NULL,
  `interestIds` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `InterestCategoryVmIn` generated from model 'InterestCategoryVmIn'
--

CREATE TABLE IF NOT EXISTS `InterestCategoryVmIn` (
  `category` TEXT DEFAULT NULL COMMENT 'Gets or sets category',
  `districtWide` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets district wide flag',
  `type` INT DEFAULT NULL COMMENT 'Gets or sets type',
  `sortOrder` INT DEFAULT NULL COMMENT 'Gets or sets sort order',
  `onlineApplication` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets online application flag',
  `schoolCode` TEXT DEFAULT NULL COMMENT 'Gets or sets school code',
  `active` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets active flag'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `InterestCategoryVmOut` generated from model 'InterestCategoryVmOut'
--

CREATE TABLE IF NOT EXISTS `InterestCategoryVmOut` (
  `category` TEXT DEFAULT NULL COMMENT 'Gets or sets category',
  `districtWide` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets district wide flag',
  `type` INT DEFAULT NULL COMMENT 'Gets or sets type',
  `sortOrder` INT DEFAULT NULL COMMENT 'Gets or sets sort order',
  `onlineApplication` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets online application flag',
  `schoolCode` TEXT DEFAULT NULL COMMENT 'Gets or sets school code',
  `active` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets active flag',
  `interestCategoryID` INT NOT NULL COMMENT 'Gets or sets the interest category identifier'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `InterestItemsVmIn` generated from model 'InterestItemsVmIn'
--

CREATE TABLE IF NOT EXISTS `InterestItemsVmIn` (
  `interest` TEXT DEFAULT NULL COMMENT 'Gets or sets interest',
  `interestCategoryID` INT DEFAULT NULL COMMENT 'Gets or sets interest category id',
  `sortOrder` INT DEFAULT NULL COMMENT 'Gets or sets sort order',
  `active` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets active flag'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `InterestItemsVmOut` generated from model 'InterestItemsVmOut'
--

CREATE TABLE IF NOT EXISTS `InterestItemsVmOut` (
  `interest` TEXT DEFAULT NULL COMMENT 'Gets or sets interest',
  `interestCategoryID` INT DEFAULT NULL COMMENT 'Gets or sets interest category id',
  `sortOrder` INT DEFAULT NULL COMMENT 'Gets or sets sort order',
  `active` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets active flag',
  `interestID` INT NOT NULL COMMENT 'Gets or sets the interest identifier'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ListOptionModel` generated from model 'ListOptionModel'
--

CREATE TABLE IF NOT EXISTS `ListOptionModel` (
  `display` TEXT DEFAULT NULL,
  `keyValue` INT DEFAULT NULL,
  `textValue` TEXT DEFAULT NULL,
  `sortOrder` INT DEFAULT NULL,
  `filter` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ListValueModel` generated from model 'ListValueModel'
--

CREATE TABLE IF NOT EXISTS `ListValueModel` (
  `keyValue` INT DEFAULT NULL,
  `textValue` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `LockerModel` generated from model 'LockerModel'
--

CREATE TABLE IF NOT EXISTS `LockerModel` (
  `locker` TEXT DEFAULT NULL COMMENT 'Gets or sets the locker.',
  `lockerGroupId` INT DEFAULT NULL COMMENT 'Gets or sets the locker group identifier.',
  `schoolCode` TEXT DEFAULT NULL COMMENT 'Gets or sets the school code.',
  `combination1` TEXT DEFAULT NULL COMMENT 'Gets or sets the combination1.',
  `combination2` TEXT DEFAULT NULL COMMENT 'Gets or sets the combination2.',
  `combination3` TEXT DEFAULT NULL COMMENT 'Gets or sets the combination3.',
  `combination4` TEXT DEFAULT NULL COMMENT 'Gets or sets the combination4.',
  `combination5` TEXT DEFAULT NULL COMMENT 'Gets or sets the combination5.',
  `note` TEXT DEFAULT NULL COMMENT 'Gets or sets the note.',
  `outOfService` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether [out of service].',
  `currentCombination` INT DEFAULT NULL COMMENT 'Gets or sets which of the combinations is currently the active combination. 1-5 indicate the corresponding Combination entry. 0 or null indicates no combination currently set.             ',
  `lockerId` INT NOT NULL COMMENT 'Gets or sets the locker identifier.',
  `configSchoolId` INT NOT NULL COMMENT 'Gets or sets the configuration school identifier.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `LockerRequest` generated from model 'LockerRequest'
-- Locker Request.
--

CREATE TABLE IF NOT EXISTS `LockerRequest` (
  `locker` TEXT DEFAULT NULL COMMENT 'Gets or sets the locker.',
  `lockerGroupId` INT DEFAULT NULL COMMENT 'Gets or sets the locker group identifier.',
  `schoolCode` TEXT DEFAULT NULL COMMENT 'Gets or sets the school code.',
  `combination1` TEXT DEFAULT NULL COMMENT 'Gets or sets the combination1.',
  `combination2` TEXT DEFAULT NULL COMMENT 'Gets or sets the combination2.',
  `combination3` TEXT DEFAULT NULL COMMENT 'Gets or sets the combination3.',
  `combination4` TEXT DEFAULT NULL COMMENT 'Gets or sets the combination4.',
  `combination5` TEXT DEFAULT NULL COMMENT 'Gets or sets the combination5.',
  `note` TEXT DEFAULT NULL COMMENT 'Gets or sets the note.',
  `outOfService` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether [out of service].',
  `currentCombination` INT DEFAULT NULL COMMENT 'Gets or sets which of the combinations is currently the active combination. 1-5 indicate the corresponding Combination entry. 0 or null indicates no combination currently set.             '
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Locker Request.';

--
-- Table structure for table `NoteVmIn` generated from model 'NoteVmIn'
--

CREATE TABLE IF NOT EXISTS `NoteVmIn` (
  `enteredById` INT NOT NULL COMMENT 'Gets or sets the entered by identifier.',
  `noteDate` DATETIME DEFAULT NULL COMMENT 'Gets or sets the note date.',
  `noteType` TEXT NOT NULL COMMENT 'Gets or sets the type of the note.',
  `personId` INT NOT NULL COMMENT 'Gets or sets the person identifier that the note is about.',
  `note` TEXT DEFAULT NULL COMMENT 'Gets or sets the note.',
  `yearId` INT DEFAULT NULL COMMENT 'Gets or sets the year identifier.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `NoteVmOut` generated from model 'NoteVmOut'
--

CREATE TABLE IF NOT EXISTS `NoteVmOut` (
  `enteredById` INT NOT NULL COMMENT 'Gets or sets the entered by identifier.',
  `noteDate` DATETIME DEFAULT NULL COMMENT 'Gets or sets the note date.',
  `noteType` TEXT NOT NULL COMMENT 'Gets or sets the type of the note.',
  `personId` INT NOT NULL COMMENT 'Gets or sets the person identifier that the note is about.',
  `note` TEXT DEFAULT NULL COMMENT 'Gets or sets the note.',
  `yearId` INT DEFAULT NULL COMMENT 'Gets or sets the year identifier.',
  `noteId` INT NOT NULL COMMENT 'Gets or sets the note identifier.',
  `modifiedById` INT NOT NULL COMMENT 'Gets or sets the modified by identifier. We are unable to set this in the External Api'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `Operation` generated from model 'Operation'
--

CREATE TABLE IF NOT EXISTS `Operation` (
  `path` TEXT DEFAULT NULL,
  `op` TEXT DEFAULT NULL,
  `from` TEXT DEFAULT NULL,
  `value` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `Operation2` generated from model 'Operation2'
--

CREATE TABLE IF NOT EXISTS `Operation2` (
  `path` TEXT DEFAULT NULL,
  `op` TEXT DEFAULT NULL,
  `from` TEXT DEFAULT NULL,
  `value` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `Operation3` generated from model 'Operation3'
--

CREATE TABLE IF NOT EXISTS `Operation3` (
  `path` TEXT DEFAULT NULL,
  `op` TEXT DEFAULT NULL,
  `from` TEXT DEFAULT NULL,
  `value` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `OperationBase` generated from model 'OperationBase'
--

CREATE TABLE IF NOT EXISTS `OperationBase` (
  `path` TEXT DEFAULT NULL,
  `op` TEXT DEFAULT NULL,
  `from` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `OperationBase2` generated from model 'OperationBase2'
--

CREATE TABLE IF NOT EXISTS `OperationBase2` (
  `path` TEXT DEFAULT NULL,
  `op` TEXT DEFAULT NULL,
  `from` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfAddressVM` generated from model 'PagedResultOfAddressVM'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfAddressVM` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfAdvisingNoteVmOut` generated from model 'PagedResultOfAdvisingNoteVmOut'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfAdvisingNoteVmOut` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfAlertApplicationVm` generated from model 'PagedResultOfAlertApplicationVm'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfAlertApplicationVm` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfAlertVm` generated from model 'PagedResultOfAlertVm'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfAlertVm` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfAssignmentCategoryModel` generated from model 'PagedResultOfAssignmentCategoryModel'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfAssignmentCategoryModel` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfAssignmentGradesModel` generated from model 'PagedResultOfAssignmentGradesModel'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfAssignmentGradesModel` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfAssignmentModel` generated from model 'PagedResultOfAssignmentModel'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfAssignmentModel` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfBehaviorEventsVmOut` generated from model 'PagedResultOfBehaviorEventsVmOut'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfBehaviorEventsVmOut` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfClassAssignmentGradeCodeTranslationModel` generated from model 'PagedResultOfClassAssignmentGradeCodeTranslationModel'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfClassAssignmentGradeCodeTranslationModel` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfClassEnrollmentVm` generated from model 'PagedResultOfClassEnrollmentVm'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfClassEnrollmentVm` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfClassVmOutV1` generated from model 'PagedResultOfClassVmOutV1'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfClassVmOutV1` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfClassVmOutV2` generated from model 'PagedResultOfClassVmOutV2'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfClassVmOutV2` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfConferenceVmOut` generated from model 'PagedResultOfConferenceVmOut'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfConferenceVmOut` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfCongregationVM` generated from model 'PagedResultOfCongregationVM'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfCongregationVM` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfCoursesVmOut` generated from model 'PagedResultOfCoursesVmOut'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfCoursesVmOut` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfDefinedListsModel` generated from model 'PagedResultOfDefinedListsModel'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfDefinedListsModel` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfDirectoryPreferencesVmOut` generated from model 'PagedResultOfDirectoryPreferencesVmOut'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfDirectoryPreferencesVmOut` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfEducationVmOut` generated from model 'PagedResultOfEducationVmOut'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfEducationVmOut` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfEmergencyContactVM` generated from model 'PagedResultOfEmergencyContactVM'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfEmergencyContactVM` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfEnrollmentHistoryVmOut` generated from model 'PagedResultOfEnrollmentHistoryVmOut'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfEnrollmentHistoryVmOut` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfFamilyConfigVmOut` generated from model 'PagedResultOfFamilyConfigVmOut'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfFamilyConfigVmOut` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfHonorsVmOut` generated from model 'PagedResultOfHonorsVmOut'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfHonorsVmOut` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfInquiryFormModel` generated from model 'PagedResultOfInquiryFormModel'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfInquiryFormModel` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfInterestCategoryVmOut` generated from model 'PagedResultOfInterestCategoryVmOut'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfInterestCategoryVmOut` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfInterestItemsVmOut` generated from model 'PagedResultOfInterestItemsVmOut'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfInterestItemsVmOut` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfLockerModel` generated from model 'PagedResultOfLockerModel'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfLockerModel` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfNoteVmOut` generated from model 'PagedResultOfNoteVmOut'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfNoteVmOut` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfParentAlertEntity` generated from model 'PagedResultOfParentAlertEntity'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfParentAlertEntity` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfParentStudentVM` generated from model 'PagedResultOfParentStudentVM'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfParentStudentVM` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfPersonDemographicVM` generated from model 'PagedResultOfPersonDemographicVM'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfPersonDemographicVM` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfPersonFamilyVM` generated from model 'PagedResultOfPersonFamilyVM'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfPersonFamilyVM` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfPersonInterestVM` generated from model 'PagedResultOfPersonInterestVM'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfPersonInterestVM` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfPersonReligionEntity` generated from model 'PagedResultOfPersonReligionEntity'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfPersonReligionEntity` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfPersonVM` generated from model 'PagedResultOfPersonVM'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfPersonVM` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfPersonVehicleEntity` generated from model 'PagedResultOfPersonVehicleEntity'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfPersonVehicleEntity` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfPersonWorkEntity` generated from model 'PagedResultOfPersonWorkEntity'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfPersonWorkEntity` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfPickupContactVmOut` generated from model 'PagedResultOfPickupContactVmOut'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfPickupContactVmOut` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfPublicSchoolVM` generated from model 'PagedResultOfPublicSchoolVM'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfPublicSchoolVM` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfReligiousEventVmOut` generated from model 'PagedResultOfReligiousEventVmOut'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfReligiousEventVmOut` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfSchoolConfigVmOut` generated from model 'PagedResultOfSchoolConfigVmOut'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfSchoolConfigVmOut` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfSchoolTermsVmOut` generated from model 'PagedResultOfSchoolTermsVmOut'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfSchoolTermsVmOut` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfSchoolTermsVmOutV2` generated from model 'PagedResultOfSchoolTermsVmOutV2'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfSchoolTermsVmOutV2` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfSchoolYearModel` generated from model 'PagedResultOfSchoolYearModel'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfSchoolYearModel` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfStaffObservationsVmOut` generated from model 'PagedResultOfStaffObservationsVmOut'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfStaffObservationsVmOut` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfStaffVmOut` generated from model 'PagedResultOfStaffVmOut'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfStaffVmOut` (
  `results` JSON DEFAULT NULL COMMENT 'Gets or sets the results.',
  `currentPage` INT NOT NULL COMMENT 'Gets or sets the current page.',
  `pageCount` INT NOT NULL COMMENT 'Gets or sets the page count.',
  `pageSize` INT NOT NULL COMMENT 'Gets or sets the size of the page.',
  `rowCount` BIGINT NOT NULL COMMENT 'Gets or sets the row count.',
  `nextPage` TEXT DEFAULT NULL COMMENT 'Gets or sets the next page.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfStudentModel` generated from model 'PagedResultOfStudentModel'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfStudentModel` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfStudentPreProgressionModel` generated from model 'PagedResultOfStudentPreProgressionModel'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfStudentPreProgressionModel` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfStudentRecognitionModel` generated from model 'PagedResultOfStudentRecognitionModel'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfStudentRecognitionModel` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfStudentServiceHoursModel` generated from model 'PagedResultOfStudentServiceHoursModel'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfStudentServiceHoursModel` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfUserDefinedDataModel` generated from model 'PagedResultOfUserDefinedDataModel'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfUserDefinedDataModel` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfUserDefinedFieldModel` generated from model 'PagedResultOfUserDefinedFieldModel'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfUserDefinedFieldModel` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PagedResultOfUserDefinedGroupModel` generated from model 'PagedResultOfUserDefinedGroupModel'
--

CREATE TABLE IF NOT EXISTS `PagedResultOfUserDefinedGroupModel` (
  `results` JSON DEFAULT NULL,
  `currentPage` INT NOT NULL,
  `pageCount` INT NOT NULL,
  `pageSize` INT NOT NULL,
  `rowCount` BIGINT NOT NULL,
  `nextPage` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ParentAlertEntity` generated from model 'ParentAlertEntity'
--

CREATE TABLE IF NOT EXISTS `ParentAlertEntity` (
  `id` TEXT DEFAULT NULL,
  `personId` INT NOT NULL,
  `parentAlertPreference` VARCHAR(50) DEFAULT NULL,
  `parentAlertHomePhone` TINYINT(1) DEFAULT NULL,
  `parentAlertCellPhone` TINYINT(1) DEFAULT NULL,
  `parentAlertWorkPhone` TINYINT(1) DEFAULT NULL,
  `parentAlertNoText` TINYINT(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ParentStudentVM` generated from model 'ParentStudentVM'
-- A person&#39;s family information
--

CREATE TABLE IF NOT EXISTS `ParentStudentVM` (
  `parentID` INT NOT NULL COMMENT 'Gets or sets the parent identifier',
  `studentID` INT NOT NULL COMMENT 'Gets or sets the student identifier',
  `custody` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets the custody flag',
  `correspondence` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets the correspondence flag',
  `relationship` VARCHAR(50) DEFAULT NULL COMMENT 'Gets or sets the relationship',
  `grandparent` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets the grandparent flag',
  `emergencyContact` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets the emergency contact flag',
  `reportCard` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets the report card flag',
  `pwBlock` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets the pw block flag',
  `pickUp` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets the pickup flag',
  `parentsWeb` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets the parents web flag',
  `reEnroll` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets the reenrollment flag'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='A person&#39;s family information';

--
-- Table structure for table `PersonDemographicVM` generated from model 'PersonDemographicVM'
-- A person&#39;s demographic information
--

CREATE TABLE IF NOT EXISTS `PersonDemographicVM` (
  `personId` INT NOT NULL COMMENT 'The person&#39;s id',
  `gender` VARCHAR(50) DEFAULT NULL COMMENT 'The person&#39;s gender',
  `birthdate` DATETIME DEFAULT NULL COMMENT 'The person&#39;s birthdate',
  `ethnicity` VARCHAR(50) DEFAULT NULL COMMENT 'The person&#39;s ethnicity',
  `citizenship` VARCHAR(50) DEFAULT NULL COMMENT 'The person&#39;s country of citizenship',
  `maritalStatus` VARCHAR(50) DEFAULT NULL COMMENT 'The person&#39;s marital status',
  `primaryLanguage` VARCHAR(50) DEFAULT NULL COMMENT 'The person&#39;s Primary Language',
  `birthplace` VARCHAR(50) DEFAULT NULL COMMENT 'The person&#39;s birthplace',
  `birthCity` VARCHAR(64) DEFAULT NULL COMMENT 'The name of the city where the person was born',
  `birthState` VARCHAR(64) DEFAULT NULL COMMENT 'The name of the state or province where the person was born',
  `birthCountry` VARCHAR(64) DEFAULT NULL COMMENT 'The name of the country where the person was born'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='A person&#39;s demographic information';

--
-- Table structure for table `PersonFamilyVM` generated from model 'PersonFamilyVM'
-- A person&#39;s family information
--

CREATE TABLE IF NOT EXISTS `PersonFamilyVM` (
  `personId` INT NOT NULL COMMENT 'Gets or sets the person identifier',
  `familyId` INT NOT NULL COMMENT 'Gets or sets the family identifier',
  `parent` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets the parent flag',
  `student` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets the student flag',
  `financialResponsibility` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets the financial responsibility',
  `financialResponsibilityPercent` VARCHAR(50) DEFAULT NULL COMMENT 'Gets or sets the financial responsibility percentage',
  `familyOrder` INT DEFAULT NULL COMMENT 'Gets or sets the family order',
  `factsCustomer` TINYINT(1) NOT NULL COMMENT 'Gets or sets the facts customer flag'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='A person&#39;s family information';

--
-- Table structure for table `PersonInterestVM` generated from model 'PersonInterestVM'
-- A person&#39;s interest information
--

CREATE TABLE IF NOT EXISTS `PersonInterestVM` (
  `personID` INT NOT NULL COMMENT 'Gets or sets the person identifier',
  `interest` TEXT DEFAULT NULL COMMENT 'Gets or sets the interest'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='A person&#39;s interest information';

--
-- Table structure for table `PersonReligionEntity` generated from model 'PersonReligionEntity'
--

CREATE TABLE IF NOT EXISTS `PersonReligionEntity` (
  `id` TEXT DEFAULT NULL,
  `personId` INT NOT NULL,
  `denomination` VARCHAR(50) DEFAULT NULL,
  `congregationId` INT DEFAULT NULL,
  `baptismCongregation` VARCHAR(50) DEFAULT NULL,
  `baptismCity` VARCHAR(50) DEFAULT NULL,
  `baptismState` VARCHAR(50) DEFAULT NULL,
  `baptismDate` VARCHAR(50) DEFAULT NULL,
  `communionCongregation` VARCHAR(50) DEFAULT NULL,
  `communionCity` VARCHAR(50) DEFAULT NULL,
  `communionState` VARCHAR(50) DEFAULT NULL,
  `communionDate` VARCHAR(50) DEFAULT NULL,
  `confirmationCongregation` VARCHAR(50) DEFAULT NULL,
  `confirmationCity` VARCHAR(50) DEFAULT NULL,
  `confirmationState` VARCHAR(50) DEFAULT NULL,
  `confirmationDate` VARCHAR(50) DEFAULT NULL,
  `reconciliationCongregation` VARCHAR(50) DEFAULT NULL,
  `reconciliationCity` VARCHAR(50) DEFAULT NULL,
  `reconciliationState` VARCHAR(50) DEFAULT NULL,
  `reconciliationDate` VARCHAR(50) DEFAULT NULL,
  `barMitzvahCongregation` VARCHAR(50) DEFAULT NULL,
  `barMitzvahCity` VARCHAR(50) DEFAULT NULL,
  `barMitzvahState` VARCHAR(50) DEFAULT NULL,
  `barMitzvahDate` VARCHAR(50) DEFAULT NULL,
  `localChurchMember` TINYINT(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PersonVM` generated from model 'PersonVM'
-- Basic Person Information
--

CREATE TABLE IF NOT EXISTS `PersonVM` (
  `personId` INT NOT NULL COMMENT 'The person&#39;s id',
  `firstName` TEXT DEFAULT NULL COMMENT 'The person&#39;s first name',
  `lastName` TEXT DEFAULT NULL COMMENT 'The person&#39;s last name',
  `middleName` TEXT DEFAULT NULL COMMENT 'The person&#39;s middle name',
  `nickName` TEXT DEFAULT NULL COMMENT 'The person&#39;s nick name',
  `salutation` TEXT DEFAULT NULL COMMENT 'The person&#39;s salutation',
  `suffix` TEXT DEFAULT NULL COMMENT 'The person&#39;s suffix',
  `email` TEXT DEFAULT NULL COMMENT 'The person&#39;s email address',
  `email2` TEXT DEFAULT NULL COMMENT 'The person&#39;s alternate email address ',
  `username` TEXT DEFAULT NULL COMMENT 'The person&#39;s username',
  `homePhone` TEXT DEFAULT NULL COMMENT 'The person&#39;s home phone number',
  `cellPhone` TEXT DEFAULT NULL COMMENT 'The person&#39;s cell phone number',
  `addressID` INT DEFAULT NULL COMMENT 'The person&#39;s address by id',
  `deceased` TINYINT(1) NOT NULL COMMENT 'The person&#39;s living status',
  `modifiedDate` DATETIME DEFAULT NULL COMMENT 'Last time Person was modified'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Basic Person Information';

--
-- Table structure for table `PersonVehicleEntity` generated from model 'PersonVehicleEntity'
--

CREATE TABLE IF NOT EXISTS `PersonVehicleEntity` (
  `id` TEXT DEFAULT NULL,
  `personId` INT NOT NULL,
  `autoMake` VARCHAR(50) DEFAULT NULL,
  `autoModel` VARCHAR(50) DEFAULT NULL,
  `autoLicense` VARCHAR(50) DEFAULT NULL,
  `driversLicense` VARCHAR(50) DEFAULT NULL,
  `permitNumber` VARCHAR(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PersonWorkEntity` generated from model 'PersonWorkEntity'
--

CREATE TABLE IF NOT EXISTS `PersonWorkEntity` (
  `id` TEXT DEFAULT NULL,
  `personId` INT NOT NULL,
  `occupation` VARCHAR(128) DEFAULT NULL,
  `company` VARCHAR(254) DEFAULT NULL,
  `jobCategory` VARCHAR(64) DEFAULT NULL,
  `workStreet` VARCHAR(255) DEFAULT NULL,
  `workFax` VARCHAR(50) DEFAULT NULL,
  `workPhone` VARCHAR(50) DEFAULT NULL,
  `workPhoneExtension` VARCHAR(50) DEFAULT NULL,
  `workCity` VARCHAR(50) DEFAULT NULL,
  `workState` VARCHAR(50) DEFAULT NULL,
  `workZip` VARCHAR(50) DEFAULT NULL,
  `matchingGiftEmployer` TINYINT(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PickupContactVmIn` generated from model 'PickupContactVmIn'
--

CREATE TABLE IF NOT EXISTS `PickupContactVmIn` (
  `cellPhone` TEXT DEFAULT NULL COMMENT 'Gets or sets the cell phone number',
  `countryCode` TEXT DEFAULT NULL COMMENT 'Gets or sets the country code.',
  `email` TEXT DEFAULT NULL COMMENT 'Gets or sets the email address',
  `firstName` TEXT DEFAULT NULL COMMENT 'Gets or sets the first name.',
  `homePhone` TEXT DEFAULT NULL COMMENT 'Gets or sets the home phone number.',
  `lastName` TEXT DEFAULT NULL COMMENT 'Gets or sets the last name.',
  `middleName` TEXT DEFAULT NULL COMMENT 'Gets or sets the middle name.',
  `note` TEXT DEFAULT NULL COMMENT 'Gets or sets the note.',
  `portalSortOrder` INT NOT NULL COMMENT 'Gets or sets the portal sort order.',
  `refId` INT DEFAULT NULL COMMENT 'Gets or sets the reference identifier. If present, ties this to the person with the corresponding personID.',
  `relationship` TEXT DEFAULT NULL COMMENT 'Gets or sets the relationship.',
  `salutation` TEXT DEFAULT NULL COMMENT 'Gets or sets the salutation.',
  `studentId` INT NOT NULL COMMENT 'Gets or sets the student identifier.',
  `suffix` TEXT DEFAULT NULL COMMENT 'Gets or sets the suffix.',
  `workPhone` TEXT DEFAULT NULL COMMENT 'Gets or sets the work phone number.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PickupContactVmOut` generated from model 'PickupContactVmOut'
--

CREATE TABLE IF NOT EXISTS `PickupContactVmOut` (
  `cellPhone` TEXT DEFAULT NULL COMMENT 'Gets or sets the cell phone number',
  `countryCode` TEXT DEFAULT NULL COMMENT 'Gets or sets the country code.',
  `email` TEXT DEFAULT NULL COMMENT 'Gets or sets the email address',
  `firstName` TEXT DEFAULT NULL COMMENT 'Gets or sets the first name.',
  `homePhone` TEXT DEFAULT NULL COMMENT 'Gets or sets the home phone number.',
  `lastName` TEXT DEFAULT NULL COMMENT 'Gets or sets the last name.',
  `middleName` TEXT DEFAULT NULL COMMENT 'Gets or sets the middle name.',
  `note` TEXT DEFAULT NULL COMMENT 'Gets or sets the note.',
  `portalSortOrder` INT NOT NULL COMMENT 'Gets or sets the portal sort order.',
  `refId` INT DEFAULT NULL COMMENT 'Gets or sets the reference identifier. If present, ties this to the person with the corresponding personID.',
  `relationship` TEXT DEFAULT NULL COMMENT 'Gets or sets the relationship.',
  `salutation` TEXT DEFAULT NULL COMMENT 'Gets or sets the salutation.',
  `studentId` INT NOT NULL COMMENT 'Gets or sets the student identifier.',
  `suffix` TEXT DEFAULT NULL COMMENT 'Gets or sets the suffix.',
  `workPhone` TEXT DEFAULT NULL COMMENT 'Gets or sets the work phone number.',
  `pickupId` INT NOT NULL COMMENT 'Gets or sets the pickup identifier'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ProblemDetails` generated from model 'ProblemDetails'
--

CREATE TABLE IF NOT EXISTS `ProblemDetails` (
  `type` TEXT DEFAULT NULL,
  `title` TEXT DEFAULT NULL,
  `status` INT DEFAULT NULL,
  `detail` TEXT DEFAULT NULL,
  `instance` TEXT DEFAULT NULL,
  `extensions` JSON NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ProfileImage` generated from model 'ProfileImage'
--

CREATE TABLE IF NOT EXISTS `ProfileImage` (
  `value` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PublicSchoolVM` generated from model 'PublicSchoolVM'
-- ViewModel for PersonPublicSchoolEntity
--

CREATE TABLE IF NOT EXISTS `PublicSchoolVM` (
  `personId` INT NOT NULL COMMENT 'Get or Set the PersonId',
  `publicSchoolDistrict` TEXT DEFAULT NULL COMMENT 'Gets or Sets the PublicSchoolDistrict',
  `publicSchoolCounty` TEXT DEFAULT NULL COMMENT 'Gets or Sets the Public School County',
  `publicSchoolState` TEXT DEFAULT NULL COMMENT 'Gets or Sets the Public School State',
  `publicSchoolLocalSchool` TEXT DEFAULT NULL COMMENT 'Gets or Sets the public school Local school',
  `publicSchoolCode` TEXT DEFAULT NULL COMMENT 'Gets or Sets the public school Code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ViewModel for PersonPublicSchoolEntity';

--
-- Table structure for table `QuestionBaseModel` generated from model 'QuestionBaseModel'
--

CREATE TABLE IF NOT EXISTS `QuestionBaseModel` (
  `label` TEXT DEFAULT NULL,
  `columns` INT DEFAULT NULL,
  `questionAnswerType` TEXT NOT NULL,
  `requirementType` TEXT NOT NULL,
  `options` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ReligiousEventVmIn` generated from model 'ReligiousEventVmIn'
--

CREATE TABLE IF NOT EXISTS `ReligiousEventVmIn` (
  `personId` INT DEFAULT NULL COMMENT 'Gets or sets the person identifier.',
  `religiousEventDate` DATETIME DEFAULT NULL COMMENT 'Gets or sets the religious event date.',
  `religiousEventType` TEXT DEFAULT NULL COMMENT 'Gets or sets the type of the religious event. This must be unique per PersonId',
  `location` TEXT DEFAULT NULL COMMENT 'Gets or sets the location.',
  `city` TEXT DEFAULT NULL COMMENT 'Gets or sets the city.',
  `state` TEXT DEFAULT NULL COMMENT 'Gets or sets the state.',
  `note` TEXT DEFAULT NULL COMMENT 'Gets or sets the note.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ReligiousEventVmOut` generated from model 'ReligiousEventVmOut'
--

CREATE TABLE IF NOT EXISTS `ReligiousEventVmOut` (
  `personId` INT DEFAULT NULL COMMENT 'Gets or sets the person identifier.',
  `religiousEventDate` DATETIME DEFAULT NULL COMMENT 'Gets or sets the religious event date.',
  `religiousEventType` TEXT DEFAULT NULL COMMENT 'Gets or sets the type of the religious event. This must be unique per PersonId',
  `location` TEXT DEFAULT NULL COMMENT 'Gets or sets the location.',
  `city` TEXT DEFAULT NULL COMMENT 'Gets or sets the city.',
  `state` TEXT DEFAULT NULL COMMENT 'Gets or sets the state.',
  `note` TEXT DEFAULT NULL COMMENT 'Gets or sets the note.',
  `religiousEventId` INT NOT NULL COMMENT 'Gets or sets the religious event identifier.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `SchoolConfigVmIn` generated from model 'SchoolConfigVmIn'
-- Class SchoolConfigVmIn.
--

CREATE TABLE IF NOT EXISTS `SchoolConfigVmIn` (
  `fax` TEXT DEFAULT NULL COMMENT 'Gets or sets the fax number.',
  `phone` TEXT DEFAULT NULL COMMENT 'Gets or sets the phone number.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Class SchoolConfigVmIn.';

--
-- Table structure for table `SchoolConfigVmOut` generated from model 'SchoolConfigVmOut'
--

CREATE TABLE IF NOT EXISTS `SchoolConfigVmOut` (
  `fax` TEXT DEFAULT NULL COMMENT 'Gets or sets the fax number.',
  `phone` TEXT DEFAULT NULL COMMENT 'Gets or sets the phone number.',
  `active` TINYINT(1) NOT NULL COMMENT 'Gets or sets a value indicating whether this SchoolConfigVmOut is active.',
  `address` TEXT DEFAULT NULL COMMENT 'Gets or sets the address.',
  `city` TEXT DEFAULT NULL COMMENT 'Gets or sets the city.',
  `configSchoolID` INT NOT NULL COMMENT 'Gets or sets the configuration school identifier.',
  `defaultTermId` INT DEFAULT NULL COMMENT 'Gets or sets the default term identifier.',
  `defaultYearId` INT DEFAULT NULL COMMENT 'Gets or sets the default year identifier.',
  `districtName` TEXT DEFAULT NULL COMMENT 'Gets or sets the name of the district.',
  `email` TEXT DEFAULT NULL COMMENT 'Gets or sets the email address associated with the school.',
  `modifiedBy` INT DEFAULT NULL COMMENT 'Gets or sets who last modified this config school.',
  `modifiedDate` DATETIME DEFAULT NULL COMMENT 'Gets or sets the modified date.',
  `nextYearId` INT DEFAULT NULL COMMENT 'Gets or sets the next year identifier.',
  `parentAlert` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets the parent alert.',
  `pwTermID` INT DEFAULT NULL COMMENT 'Gets or sets the pw term identifier.',
  `pwTermID2` INT DEFAULT NULL COMMENT 'Gets or sets the pw term i d2.',
  `pwYearID` INT DEFAULT NULL COMMENT 'Gets or sets the pw year identifier.',
  `schoolCode` TEXT DEFAULT NULL COMMENT 'Gets or sets the school code.',
  `schoolLMS` TINYINT(1) NOT NULL COMMENT 'Gets or sets a value indicating whether [school LMS].',
  `schoolName` TEXT DEFAULT NULL COMMENT 'Gets or sets the name of the school.',
  `state` TEXT DEFAULT NULL COMMENT 'Gets or sets the state or province the school is located.',
  `zip` TEXT DEFAULT NULL COMMENT 'Gets or sets the zip code.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `SchoolTermsVmIn` generated from model 'SchoolTermsVmIn'
-- Class SchoolTermsVmIn.
--

CREATE TABLE IF NOT EXISTS `SchoolTermsVmIn` (
  `termID` INT NOT NULL COMMENT 'Gets or sets the term identifier.             ',
  `yearID` INT NOT NULL COMMENT 'Gets or sets the year identifier.             ',
  `name` TEXT DEFAULT NULL COMMENT 'Gets or sets the name.             ',
  `firstDay` DATETIME DEFAULT NULL COMMENT 'Gets or sets the first day.             ',
  `lastDay` DATETIME DEFAULT NULL COMMENT 'Gets or sets the last day.             ',
  `schoolCode` TEXT DEFAULT NULL COMMENT 'Gets or sets the school code.             ',
  `semesterID` TEXT DEFAULT NULL COMMENT 'Gets or sets the semester identifier.             ',
  `modifiedBy` INT DEFAULT NULL COMMENT 'Gets or sets the modified by.',
  `modifiedDate` DATETIME DEFAULT NULL COMMENT 'Gets or sets the modified date.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Class SchoolTermsVmIn.';

--
-- Table structure for table `SchoolTermsVmOut` generated from model 'SchoolTermsVmOut'
--

CREATE TABLE IF NOT EXISTS `SchoolTermsVmOut` (
  `termID` INT NOT NULL COMMENT 'Gets or sets the term identifier.             ',
  `yearID` INT NOT NULL COMMENT 'Gets or sets the year identifier.             ',
  `name` TEXT DEFAULT NULL COMMENT 'Gets or sets the name.             ',
  `firstDay` DATETIME DEFAULT NULL COMMENT 'Gets or sets the first day.             ',
  `lastDay` DATETIME DEFAULT NULL COMMENT 'Gets or sets the last day.             ',
  `schoolCode` TEXT DEFAULT NULL COMMENT 'Gets or sets the school code.             ',
  `semesterID` TEXT DEFAULT NULL COMMENT 'Gets or sets the semester identifier.             ',
  `modifiedBy` INT DEFAULT NULL COMMENT 'Gets or sets the modified by.',
  `modifiedDate` DATETIME DEFAULT NULL COMMENT 'Gets or sets the modified date.',
  `schoolTermID` INT NOT NULL COMMENT 'Gets or sets the school term identifier.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `SchoolTermsVmOutV2` generated from model 'SchoolTermsVmOutV2'
--

CREATE TABLE IF NOT EXISTS `SchoolTermsVmOutV2` (
  `termID` INT NOT NULL COMMENT 'Gets or sets the term identifier.             ',
  `yearID` INT NOT NULL COMMENT 'Gets or sets the year identifier.             ',
  `name` TEXT DEFAULT NULL COMMENT 'Gets or sets the name.             ',
  `firstDay` DATETIME DEFAULT NULL COMMENT 'Gets or sets the first day.             ',
  `lastDay` DATETIME DEFAULT NULL COMMENT 'Gets or sets the last day.             ',
  `schoolCode` TEXT DEFAULT NULL COMMENT 'Gets or sets the school code.             ',
  `semesterID` TEXT DEFAULT NULL COMMENT 'Gets or sets the semester identifier.             ',
  `modifiedBy` INT DEFAULT NULL COMMENT 'Gets or sets the modified by.',
  `modifiedDate` DATETIME DEFAULT NULL COMMENT 'Gets or sets the modified date.',
  `uniqueTermID` INT NOT NULL COMMENT 'Gets or sets the school term identifier.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `SchoolYearModel` generated from model 'SchoolYearModel'
--

CREATE TABLE IF NOT EXISTS `SchoolYearModel` (
  `yearName` TEXT DEFAULT NULL COMMENT 'Gets or sets the name of the year.',
  `allowInquiry` TINYINT(1) DEFAULT NULL COMMENT 'Flag indicating whether inquiry requests are allowed',
  `blockAcademicYear` TINYINT(1) NOT NULL COMMENT 'Flag indicating whether to block Academic Year',
  `yearId` INT NOT NULL COMMENT 'Gets or sets the year identifier.',
  `firstDay` DATETIME DEFAULT NULL COMMENT 'Gets or sets the first day.',
  `lastDay` DATETIME DEFAULT NULL COMMENT 'Gets or sets the last day.',
  `schoolCode` TEXT DEFAULT NULL COMMENT 'Gets or sets the school code.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `SchoolYearRequest` generated from model 'SchoolYearRequest'
-- SchoolYear Request.
--

CREATE TABLE IF NOT EXISTS `SchoolYearRequest` (
  `yearName` TEXT DEFAULT NULL COMMENT 'Gets or sets the name of the year.',
  `allowInquiry` TINYINT(1) DEFAULT NULL COMMENT 'Flag indicating whether inquiry requests are allowed',
  `blockAcademicYear` TINYINT(1) NOT NULL COMMENT 'Flag indicating whether to block Academic Year'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SchoolYear Request.';

--
-- Table structure for table `ServiceHoursModel` generated from model 'ServiceHoursModel'
--

CREATE TABLE IF NOT EXISTS `ServiceHoursModel` (
  `serviceHoursId` INT NOT NULL COMMENT 'Gets or sets the service hours identifier.',
  `personId` INT DEFAULT NULL COMMENT 'Gets or sets the person identifier.',
  `description` TEXT DEFAULT NULL COMMENT 'Gets or sets the description.',
  `hours` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Gets or sets the hours.',
  `date` DATETIME DEFAULT NULL COMMENT 'Gets or sets the date.',
  `note` TEXT DEFAULT NULL COMMENT 'Gets or sets the note.',
  `verifiedBy` TEXT DEFAULT NULL COMMENT 'Gets or sets the verified by.',
  `createdBy` INT DEFAULT NULL COMMENT 'Gets or sets the created by.',
  `yearId` INT DEFAULT NULL COMMENT 'Gets or sets the year identifier.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `StaffObservationsVmIn` generated from model 'StaffObservationsVmIn'
-- Class StaffObservationsVmIn.
--

CREATE TABLE IF NOT EXISTS `StaffObservationsVmIn` (
  `endDate` DATETIME DEFAULT NULL COMMENT 'Gets or sets the end date.',
  `eval` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether this StaffObservationsVmIn is an evaluation.',
  `evaluatorId` INT NOT NULL COMMENT 'Gets or sets the evaluator identifier.',
  `observationConfigId` INT NOT NULL COMMENT 'Gets or sets the observation configuration identifier.',
  `personId` INT NOT NULL COMMENT 'Gets or sets the person identifier.',
  `startDate` DATETIME DEFAULT NULL COMMENT 'Gets or sets the start date.',
  `title` TEXT DEFAULT NULL COMMENT 'Gets or sets the title.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Class StaffObservationsVmIn.';

--
-- Table structure for table `StaffObservationsVmOut` generated from model 'StaffObservationsVmOut'
--

CREATE TABLE IF NOT EXISTS `StaffObservationsVmOut` (
  `endDate` DATETIME DEFAULT NULL COMMENT 'Gets or sets the end date.',
  `eval` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether this StaffObservationsVmIn is an evaluation.',
  `evaluatorId` INT NOT NULL COMMENT 'Gets or sets the evaluator identifier.',
  `observationConfigId` INT NOT NULL COMMENT 'Gets or sets the observation configuration identifier.',
  `personId` INT NOT NULL COMMENT 'Gets or sets the person identifier.',
  `startDate` DATETIME DEFAULT NULL COMMENT 'Gets or sets the start date.',
  `title` TEXT DEFAULT NULL COMMENT 'Gets or sets the title.',
  `observationId` INT NOT NULL COMMENT 'Gets or sets the observation identifier.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `StaffVmIn` generated from model 'StaffVmIn'
-- Class StaffVmIn.
--

CREATE TABLE IF NOT EXISTS `StaffVmIn` (
  `active` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether this StaffVmIn is active.',
  `administrator` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether this StaffVmIn is administrator.',
  `blockSurvey` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether [block survey].',
  `districtUser` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether [district user].',
  `districtWideUser` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether [district wide user].',
  `dualEnrolledUser` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether [dual enrolled user].',
  `elementary` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether this StaffVmIn is elementary.',
  `faculty` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether this StaffVmIn is faculty.',
  `fullTime` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether [full time].',
  `highSchool` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether [high school].',
  `middleSchool` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether [middle school].',
  `preschool` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether this StaffVmIn is preschool.',
  `staffDirectoryBlock` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether [staff directory block].',
  `substitute` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether this StaffVmIn is substitute.',
  `unsubscribeRenWebEmail` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether [unsubscribe ren web email].',
  `endDate` DATETIME DEFAULT NULL COMMENT 'Gets or sets the end date.',
  `startDate` DATETIME DEFAULT NULL COMMENT 'Gets or sets the start date.',
  `fte` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Gets or sets the fte.',
  `financialFamilyId` INT DEFAULT NULL COMMENT 'Gets or sets the financial family identifier.',
  `pda` INT DEFAULT NULL COMMENT 'Gets or sets the pda.',
  `roomId` INT DEFAULT NULL COMMENT 'Gets or sets the room identifier.',
  `schools` JSON DEFAULT NULL COMMENT 'Gets or sets the schools.',
  `department` TEXT DEFAULT NULL COMMENT 'Gets or sets the department.',
  `firstName` TEXT DEFAULT NULL COMMENT 'Gets or sets the first name.',
  `lastName` TEXT DEFAULT NULL COMMENT 'Gets or sets the last name.',
  `legacyStaffId` TEXT DEFAULT NULL COMMENT 'Gets or sets the legacy staff identifier.',
  `middleName` TEXT DEFAULT NULL COMMENT 'Gets or sets the name of the middle.',
  `parentAlertPin` TEXT DEFAULT NULL COMMENT 'Gets or sets the parent alert pin.',
  `spouse` TEXT DEFAULT NULL COMMENT 'Gets or sets the spouse.',
  `teacherSite` TEXT DEFAULT NULL COMMENT 'Gets or sets the teacher site.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Class StaffVmIn.';

--
-- Table structure for table `StaffVmOut` generated from model 'StaffVmOut'
--

CREATE TABLE IF NOT EXISTS `StaffVmOut` (
  `active` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether this StaffVmIn is active.',
  `administrator` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether this StaffVmIn is administrator.',
  `blockSurvey` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether [block survey].',
  `districtUser` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether [district user].',
  `districtWideUser` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether [district wide user].',
  `dualEnrolledUser` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether [dual enrolled user].',
  `elementary` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether this StaffVmIn is elementary.',
  `faculty` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether this StaffVmIn is faculty.',
  `fullTime` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether [full time].',
  `highSchool` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether [high school].',
  `middleSchool` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether [middle school].',
  `preschool` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether this StaffVmIn is preschool.',
  `staffDirectoryBlock` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether [staff directory block].',
  `substitute` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether this StaffVmIn is substitute.',
  `unsubscribeRenWebEmail` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether [unsubscribe ren web email].',
  `endDate` DATETIME DEFAULT NULL COMMENT 'Gets or sets the end date.',
  `startDate` DATETIME DEFAULT NULL COMMENT 'Gets or sets the start date.',
  `fte` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Gets or sets the fte.',
  `financialFamilyId` INT DEFAULT NULL COMMENT 'Gets or sets the financial family identifier.',
  `pda` INT DEFAULT NULL COMMENT 'Gets or sets the pda.',
  `roomId` INT DEFAULT NULL COMMENT 'Gets or sets the room identifier.',
  `schools` JSON DEFAULT NULL COMMENT 'Gets or sets the schools.',
  `department` TEXT DEFAULT NULL COMMENT 'Gets or sets the department.',
  `firstName` TEXT DEFAULT NULL COMMENT 'Gets or sets the first name.',
  `lastName` TEXT DEFAULT NULL COMMENT 'Gets or sets the last name.',
  `legacyStaffId` TEXT DEFAULT NULL COMMENT 'Gets or sets the legacy staff identifier.',
  `middleName` TEXT DEFAULT NULL COMMENT 'Gets or sets the name of the middle.',
  `parentAlertPin` TEXT DEFAULT NULL COMMENT 'Gets or sets the parent alert pin.',
  `spouse` TEXT DEFAULT NULL COMMENT 'Gets or sets the spouse.',
  `teacherSite` TEXT DEFAULT NULL COMMENT 'Gets or sets the teacher site.',
  `staffId` INT NOT NULL COMMENT 'Gets or sets the staff identifier.',
  `name` TEXT DEFAULT NULL COMMENT 'Gets or sets the name.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `StandardAnswerModel` generated from model 'StandardAnswerModel'
--

CREATE TABLE IF NOT EXISTS `StandardAnswerModel` (
  `boolValue` TINYINT(1) DEFAULT NULL,
  `textValue` TEXT DEFAULT NULL,
  `dateValue` DATETIME DEFAULT NULL,
  `intValue` INT DEFAULT NULL,
  `listValues` JSON DEFAULT NULL,
  `id` TEXT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `StandardQuestionAnswerModel` generated from model 'StandardQuestionAnswerModel'
--

CREATE TABLE IF NOT EXISTS `StandardQuestionAnswerModel` (
  `question` TEXT DEFAULT NULL,
  `answer` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `StandardQuestionModel` generated from model 'StandardQuestionModel'
--

CREATE TABLE IF NOT EXISTS `StandardQuestionModel` (
  `label` TEXT DEFAULT NULL,
  `columns` INT DEFAULT NULL,
  `questionAnswerType` TEXT NOT NULL,
  `requirementType` TEXT NOT NULL,
  `options` JSON DEFAULT NULL,
  `id` TEXT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `StatusModel` generated from model 'StatusModel'
-- Status Information.
--

CREATE TABLE IF NOT EXISTS `StatusModel` (
  `status` TEXT DEFAULT NULL COMMENT 'Gets or sets the status.',
  `displayName` TEXT DEFAULT NULL COMMENT 'Gets or sets the display name.',
  `subStatus` JSON DEFAULT NULL COMMENT 'Gets or sets the sub status.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Status Information.';

--
-- Table structure for table `StudentLockerModel` generated from model 'StudentLockerModel'
-- Student locker Information.
--

CREATE TABLE IF NOT EXISTS `StudentLockerModel` (
  `id` INT NOT NULL COMMENT 'Gets or sets the identifier. Valid value is 1 or 2, match to locker1 or locker2.',
  `name` TEXT DEFAULT NULL COMMENT 'Gets or sets the name.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Student locker Information.';

--
-- Table structure for table `StudentModel` generated from model 'StudentModel'
--

CREATE TABLE IF NOT EXISTS `StudentModel` (
  `school` TEXT DEFAULT NULL COMMENT 'Gets or sets the school.',
  `locker` JSON DEFAULT NULL COMMENT 'Gets or sets the locker.',
  `configSchoolId` INT NOT NULL COMMENT 'Gets or sets the configuration school identifier.',
  `personStudentId` INT NOT NULL COMMENT 'Gets or sets the person student identifier.',
  `studentId` INT NOT NULL COMMENT 'Gets or sets the student identifier.',
  `schoolCode` TEXT DEFAULT NULL COMMENT 'Gets or sets the school code.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `StudentPreProgressionModel` generated from model 'StudentPreProgressionModel'
-- Student Progression Information. The current/next School/Status/Grade information for a student should be stored here as  part of the progression logic, allowing for a progression undo. (We have several schools request a roll back each year, even with our checklist prior to progression)             
--

CREATE TABLE IF NOT EXISTS `StudentPreProgressionModel` (
  `preProgressionStatus` TEXT DEFAULT NULL COMMENT 'Gets or sets the pre progression status.',
  `preProgressionNextStatus` TEXT DEFAULT NULL COMMENT 'Gets or sets the pre progression next status.',
  `preProgressionGradeLevel` TEXT DEFAULT NULL COMMENT 'Gets or sets the pre progression grade level.',
  `preProgressionNextGradeLevel` TEXT DEFAULT NULL COMMENT 'Gets or sets the pre progression next grade level.',
  `preProgressionSchoolCode` TEXT DEFAULT NULL COMMENT 'Gets or sets the pre progression school code.',
  `preProgressionNextSchoolCode` TEXT DEFAULT NULL COMMENT 'Gets or sets the pre progression next school code.',
  `preProgressionProgressionDate` DATETIME DEFAULT NULL COMMENT 'Gets or sets the pre progression progression date.',
  `progressionDate` DATETIME DEFAULT NULL COMMENT 'Gets or sets the progression date.',
  `personStudentId` INT NOT NULL COMMENT 'Gets or sets the person student identifier.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Student Progression Information. The current/next School/Status/Grade information for a student should be stored here as  part of the progression logic, allowing for a progression undo. (We have several schools request a roll back each year, even with our checklist prior to progression)             ';

--
-- Table structure for table `StudentRecognitionModel` generated from model 'StudentRecognitionModel'
--

CREATE TABLE IF NOT EXISTS `StudentRecognitionModel` (
  `studentId` INT DEFAULT NULL COMMENT 'Gets or sets the student identifier.',
  `yearId` INT DEFAULT NULL COMMENT 'Gets or sets the year identifier.',
  `recognition` TEXT DEFAULT NULL COMMENT 'Gets or sets the recognition.',
  `note` TEXT DEFAULT NULL COMMENT 'Gets or sets the note.',
  `category` TEXT DEFAULT NULL COMMENT 'Gets or sets the category.                From list defined by school: DefinedLists.Type &#x3D; &#39;Student Recognition Category&#39;             ',
  `gradeLevel` TEXT DEFAULT NULL COMMENT 'Gets or sets the grade level.',
  `recognitionId` INT NOT NULL COMMENT 'Gets or sets the studentRecognition identifier.',
  `schoolCode` TEXT DEFAULT NULL COMMENT 'Gets or sets the school code.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `StudentRecognitionRequest` generated from model 'StudentRecognitionRequest'
-- StudentRecognition Request.
--

CREATE TABLE IF NOT EXISTS `StudentRecognitionRequest` (
  `studentId` INT DEFAULT NULL COMMENT 'Gets or sets the student identifier.',
  `yearId` INT DEFAULT NULL COMMENT 'Gets or sets the year identifier.',
  `recognition` TEXT DEFAULT NULL COMMENT 'Gets or sets the recognition.',
  `note` TEXT DEFAULT NULL COMMENT 'Gets or sets the note.',
  `category` TEXT DEFAULT NULL COMMENT 'Gets or sets the category.                From list defined by school: DefinedLists.Type &#x3D; &#39;Student Recognition Category&#39;             ',
  `gradeLevel` TEXT DEFAULT NULL COMMENT 'Gets or sets the grade level.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='StudentRecognition Request.';

--
-- Table structure for table `StudentRequest` generated from model 'StudentRequest'
-- Request for new Student.
--

CREATE TABLE IF NOT EXISTS `StudentRequest` (
  `school` TEXT DEFAULT NULL COMMENT 'Gets or sets the school.',
  `locker` JSON DEFAULT NULL COMMENT 'Gets or sets the locker.',
  `configSchoolId` INT NOT NULL COMMENT 'Gets or sets the configuration school identifier. If x-configSchoolId header is set to anything other than default the MS will default to that value.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Request for new Student.';

--
-- Table structure for table `StudentSchoolModel` generated from model 'StudentSchoolModel'
-- Student School Information.
--

CREATE TABLE IF NOT EXISTS `StudentSchoolModel` (
  `status` TEXT DEFAULT NULL COMMENT 'Gets or sets the status.',
  `substatus` TEXT DEFAULT NULL COMMENT 'Gets or sets the substatus.',
  `enrollDate` DATETIME DEFAULT NULL COMMENT 'Gets or sets the enroll date.',
  `withdrawDate` DATETIME DEFAULT NULL COMMENT 'Gets or sets the withdraw date.',
  `withdrawReason` TEXT DEFAULT NULL COMMENT 'Gets or sets the withdraw reason.',
  `graduationDate` DATETIME DEFAULT NULL COMMENT 'Gets or sets the graduation date.',
  `gradeLevel` TEXT DEFAULT NULL COMMENT 'Gets or sets the grade level.',
  `nextStatus` TEXT DEFAULT NULL COMMENT 'Gets or sets the next status.',
  `nextSchoolCode` TEXT DEFAULT NULL COMMENT 'Gets or sets the next school code.',
  `nextGradeLevel` TEXT DEFAULT NULL COMMENT 'Gets or sets the next grade level.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Student School Information.';

--
-- Table structure for table `StudentServiceHoursModel` generated from model 'StudentServiceHoursModel'
-- Class StudentServiceHoursModel.
--

CREATE TABLE IF NOT EXISTS `StudentServiceHoursModel` (
  `serviceHoursId` INT NOT NULL COMMENT 'Gets or sets the service hours identifier.',
  `personId` INT DEFAULT NULL COMMENT 'Gets or sets the person identifier.',
  `description` TEXT DEFAULT NULL COMMENT 'Gets or sets the description.',
  `hours` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Gets or sets the hours.',
  `date` DATETIME DEFAULT NULL COMMENT 'Gets or sets the date.',
  `note` TEXT DEFAULT NULL COMMENT 'Gets or sets the note.',
  `verifiedBy` TEXT DEFAULT NULL COMMENT 'Gets or sets the verified by.',
  `createdBy` INT DEFAULT NULL COMMENT 'Gets or sets the created by.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Class StudentServiceHoursModel.';

--
-- Table structure for table `SubStatusModel` generated from model 'SubStatusModel'
--

CREATE TABLE IF NOT EXISTS `SubStatusModel` (
  `status` TEXT DEFAULT NULL COMMENT 'Gets or sets the status.',
  `schoolCode` TEXT DEFAULT NULL COMMENT 'Gets or sets the school code.',
  `id` INT NOT NULL COMMENT 'Gets or sets the identifier.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `SubStatusRequest` generated from model 'SubStatusRequest'
-- SubStatus Request.
--

CREATE TABLE IF NOT EXISTS `SubStatusRequest` (
  `status` TEXT DEFAULT NULL COMMENT 'Gets or sets the status.',
  `schoolCode` TEXT DEFAULT NULL COMMENT 'Gets or sets the school code.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SubStatus Request.';

--
-- Table structure for table `UserDefinedDataModel` generated from model 'UserDefinedDataModel'
--

CREATE TABLE IF NOT EXISTS `UserDefinedDataModel` (
  `fieldId` INT NOT NULL COMMENT 'Gets or sets the field identifier.',
  `linkedId` INT NOT NULL COMMENT 'Gets or sets the linked entity identifier.                eg: personId / familyId / classId / courseId / configSchoolId / InquiryId                Exact usage will depend on the group type.             ',
  `data` TEXT DEFAULT NULL COMMENT 'Gets or sets the data.',
  `dataId` INT NOT NULL COMMENT 'Gets or sets the data identifier.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `UserDefinedDataRequest` generated from model 'UserDefinedDataRequest'
-- UserDefined Data Request.
--

CREATE TABLE IF NOT EXISTS `UserDefinedDataRequest` (
  `fieldId` INT NOT NULL COMMENT 'Gets or sets the field identifier.',
  `linkedId` INT NOT NULL COMMENT 'Gets or sets the linked entity identifier.                eg: personId / familyId / classId / courseId / configSchoolId / InquiryId                Exact usage will depend on the group type.             ',
  `data` TEXT DEFAULT NULL COMMENT 'Gets or sets the data.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='UserDefined Data Request.';

--
-- Table structure for table `UserDefinedFieldModel` generated from model 'UserDefinedFieldModel'
--

CREATE TABLE IF NOT EXISTS `UserDefinedFieldModel` (
  `groupId` INT DEFAULT NULL COMMENT 'Gets or sets the group identifier.',
  `fieldName` TEXT DEFAULT NULL COMMENT 'Gets or sets the name of the field.',
  `fieldType` INT DEFAULT NULL COMMENT 'Gets or sets the type of the field.',
  `fieldOrder` INT DEFAULT NULL COMMENT 'Gets or sets the field order.',
  `listItems` JSON DEFAULT NULL COMMENT 'Gets or sets the list items, used with the Defined List data type.',
  `fieldId` INT NOT NULL COMMENT 'Gets or sets the field identifier.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `UserDefinedFieldRequest` generated from model 'UserDefinedFieldRequest'
-- UserDefined Field Request.
--

CREATE TABLE IF NOT EXISTS `UserDefinedFieldRequest` (
  `groupId` INT DEFAULT NULL COMMENT 'Gets or sets the group identifier.',
  `fieldName` TEXT DEFAULT NULL COMMENT 'Gets or sets the name of the field.',
  `fieldType` INT DEFAULT NULL COMMENT 'Gets or sets the type of the field.',
  `fieldOrder` INT DEFAULT NULL COMMENT 'Gets or sets the field order.',
  `listItems` JSON DEFAULT NULL COMMENT 'Gets or sets the list items, used with the Defined List data type.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='UserDefined Field Request.';

--
-- Table structure for table `UserDefinedGroupModel` generated from model 'UserDefinedGroupModel'
--

CREATE TABLE IF NOT EXISTS `UserDefinedGroupModel` (
  `groupType` TEXT DEFAULT NULL COMMENT 'Gets or sets the type of the group.             Examples: &#39;CLASS&#39;, &#39;COURSE&#39;, &#39;FAMILY&#39;, &#39;MEDICAL&#39;, &#39;NSI&#39; (New Student Inquiry),              &#39;PARENT&#39;, &#39;SCHOOL&#39;, &#39;STAFF&#39;, &#39;STUDENT&#39;             ',
  `groupName` TEXT DEFAULT NULL COMMENT 'Gets or sets the name of the group.',
  `groupOrder` INT DEFAULT NULL COMMENT 'Gets or sets the group order.',
  `districtWide` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether the UD group can be used from all schools in the district. [district wide].',
  `groupId` INT NOT NULL COMMENT 'Gets or sets the group identifier.',
  `schoolCode` TEXT DEFAULT NULL COMMENT 'Gets or sets the school code.',
  `fieldList` JSON DEFAULT NULL COMMENT 'Gets or sets the field list.',
  `securityLevel` INT DEFAULT NULL COMMENT 'Gets or sets the security level. 2&#x3D; modify, 1&#x3D;view, 0/no record &#x3D; none'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `UserDefinedGroupRequest` generated from model 'UserDefinedGroupRequest'
-- UserDefined Group Request.
--

CREATE TABLE IF NOT EXISTS `UserDefinedGroupRequest` (
  `groupType` TEXT DEFAULT NULL COMMENT 'Gets or sets the type of the group.             Examples: &#39;CLASS&#39;, &#39;COURSE&#39;, &#39;FAMILY&#39;, &#39;MEDICAL&#39;, &#39;NSI&#39; (New Student Inquiry),              &#39;PARENT&#39;, &#39;SCHOOL&#39;, &#39;STAFF&#39;, &#39;STUDENT&#39;             ',
  `groupName` TEXT DEFAULT NULL COMMENT 'Gets or sets the name of the group.',
  `groupOrder` INT DEFAULT NULL COMMENT 'Gets or sets the group order.',
  `districtWide` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether the UD group can be used from all schools in the district. [district wide].'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='UserDefined Group Request.';

--
-- Table structure for table `UserDefinedGroupSecurityItemModel` generated from model 'UserDefinedGroupSecurityItemModel'
-- UserDefined Group Security Item.
--

CREATE TABLE IF NOT EXISTS `UserDefinedGroupSecurityItemModel` (
  `id` INT NOT NULL COMMENT 'Gets or sets the identifier, personId or securityGroupId',
  `securityLevel` INT NOT NULL COMMENT 'Gets or sets the security level. 2&#x3D; modify, 1&#x3D;view, 0/no record &#x3D; none'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='UserDefined Group Security Item.';

--
-- Table structure for table `UserDefinedGroupSecurityModel` generated from model 'UserDefinedGroupSecurityModel'
-- UserDefined Group Security.
--

CREATE TABLE IF NOT EXISTS `UserDefinedGroupSecurityModel` (
  `canEveryoneUse` TINYINT(1) NOT NULL COMMENT 'Gets or sets a value indicating whether this instance can everyone use.               If true, ignore the values from the Group and Person lists. (they don&#39;t matter in that case)             ',
  `group` JSON DEFAULT NULL COMMENT 'Gets or sets the group.',
  `person` JSON DEFAULT NULL COMMENT 'Gets or sets the person.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='UserDefined Group Security.';


