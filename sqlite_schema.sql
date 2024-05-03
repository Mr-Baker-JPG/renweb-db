-- import to SQLite by running: sqlite3.exe db.sqlite3 -init sqlite.sql

CREATE TABLE IF NOT EXISTS `Address` (
`addressID` INT NOT NULL CONSTRAINT address_pk PRIMARY KEY,
`address1` TEXT DEFAULT NULL ,
`address2` TEXT DEFAULT NULL ,
`city` TEXT DEFAULT NULL ,
`state` TEXT DEFAULT NULL ,
`zip` TEXT DEFAULT NULL ,
`country` TEXT DEFAULT NULL ,
`modifiedBy` INT DEFAULT NULL ,
`modifiedDate` DATETIME DEFAULT NULL ,
`greeting1` TEXT DEFAULT NULL ,
`greeting2` TEXT DEFAULT NULL ,
`greeting3` TEXT DEFAULT NULL ,
`greeting4` TEXT DEFAULT NULL ,
`greeting5` TEXT DEFAULT NULL ,
`newStudentInquiryID` INT DEFAULT NULL 
);

CREATE TABLE IF NOT EXISTS `AdvisingNote` (
`note` TEXT DEFAULT NULL,
`date` DATETIME DEFAULT NULL ,
`studentId` INT DEFAULT NULL ,
`modifiedBy` INT DEFAULT NULL ,
`modifiedDate` DATETIME DEFAULT NULL ,
`noteId` INT NOT NULL CONSTRAINT advising_note_pk PRIMARY KEY,
FOREIGN KEY (`studentId`) REFERENCES `StudentModel` (`studentId`) 
);

CREATE TABLE IF NOT EXISTS `AlertApplication` (
`alertID` INT NOT NULL ,
`applicationID` INT NOT NULL CONSTRAINT alert_application_pk PRIMARY KEY ,
`visual` INT DEFAULT NULL ,
`beep` INT DEFAULT NULL ,
`popUp` INT DEFAULT NULL ,
`popUpAlways` INT DEFAULT NULL ,
FOREIGN KEY (`alertID`) REFERENCES `Alert` (`alertID`) 
);

CREATE TABLE IF NOT EXISTS `Alert` (
`alertID` INT NOT NULL CONSTRAINT alert_pk PRIMARY KEY,
`studentID` INT DEFAULT NULL ,
`title` TEXT DEFAULT NULL ,
`description` TEXT DEFAULT NULL ,
`active` INT NOT NULL,
FOREIGN KEY (`studentId`) REFERENCES `StudentModel` (`studentId`) 
);

CREATE TABLE IF NOT EXISTS `AnswerBaseModel` (
`boolValue` INT DEFAULT NULL,
`textValue` TEXT DEFAULT NULL,
`dateValue` DATETIME DEFAULT NULL,
`intValue` INT DEFAULT NULL,
`listValues` JSON DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS `AssignmentCategoryModel` (
`sisCategoryId` INT NOT NULL CONSTRAINT assignment_category_pk PRIMARY KEY,
`classCategoryId` INT NOT NULL,
`weight` DECIMAL(20, 9) DEFAULT NULL,
`classId` INT NOT NULL,
`title` TEXT DEFAULT NULL,
`description` TEXT DEFAULT NULL,
`meetsInTerm1` INT DEFAULT NULL,
`meetsInTerm2` INT DEFAULT NULL,
`meetsInTerm3` INT DEFAULT NULL,
`meetsInTerm4` INT DEFAULT NULL,
`meetsInTerm5` INT DEFAULT NULL,
`meetsInTerm6` INT DEFAULT NULL,
`drop` INT DEFAULT NULL,
FOREIGN KEY (`classCategoryId`) REFERENCES `Class` (`classId`) 
);

CREATE TABLE IF NOT EXISTS `AssignmentGradesModel` (
`sisGradeId` INT NOT NULL CONSTRAINT assignment_grades_pk PRIMARY KEY,
`sisAssignmentId` INT NOT NULL,
`studentId` INT NOT NULL,
`maxPoints` DECIMAL(20, 9) NOT NULL,
`receivedPoints` DECIMAL(20, 9) NOT NULL,
`curvePoints` DECIMAL(20, 9) NOT NULL,
`penaltyPoints` DECIMAL(20, 9) NOT NULL,
`bonusPoints` DECIMAL(20, 9) NOT NULL,
`notes` TEXT NOT NULL,
`weight` DECIMAL(20, 9) NOT NULL,
`status` TEXT NOT NULL,
`emailSent` INT NOT NULL,
`displayGrade` TEXT NOT NULL,
FOREIGN KEY (`sisAssignmentId`) REFERENCES `AssignmentModel` (`sisAssignmentId`),
FOREIGN KEY (`studentId`) REFERENCES `StudentModel` (`studentId`)
);

CREATE TABLE IF NOT EXISTS `AssignmentModel` (
`sisAssignmentId` INT NOT NULL CONSTRAINT assigment_pk PRIMARY KEY,
`classCategoryId` INT NOT NULL,
`classId` INT NOT NULL,
`classAssignmentId` INT NOT NULL,
`title` TEXT NOT NULL,
`description` TEXT NOT NULL,
`dateAssigned` DATETIME NOT NULL,
`dateDue` DATETIME NOT NULL,
`assignmentNumber` INT NOT NULL,
`maxPoints` DECIMAL(20, 9) NOT NULL,
`weight` DECIMAL(20, 9) NOT NULL,
`extraCreditType` INT NOT NULL,
`modifiedBy` INT NOT NULL,
`modifiedDate` DATETIME NOT NULL,
`publish` INT NOT NULL,
`calculate` INT NOT NULL,
`markedAsTest` INT NOT NULL,
`isLmsAssignment` INT NOT NULL,
`lmsItemId` INT NOT NULL,
`lmsItemTypeId` INT NOT NULL,
`descriptionHtml` TEXT NOT NULL,
`dateAssignedUtc` DATETIME NOT NULL,
`dateDueUtc` DATETIME NOT NULL,
`systemOfRecord` TEXT NOT NULL,
`googleAssignmentId` TEXT NOT NULL,
FOREIGN KEY (`classCategoryId`) REFERENCES `AssignmentCategoryModel` (`sisCategoryId`),
FOREIGN KEY (`classId`) REFERENCES `Class` (`classId`)
-- FOREIGN KEY (`classAssignmentId`) REFERENCES `ClassAssignmentGradeCodeTranslationModel` (`id`)
);

CREATE TABLE IF NOT EXISTS `BehaviorEvents` (
`dateOfIncident` DATETIME DEFAULT NULL ,
`descriptionOfIncident` TEXT DEFAULT NULL ,
`history` TEXT DEFAULT NULL ,
`sanction1` TEXT DEFAULT NULL ,
`sanction2` TEXT DEFAULT NULL ,
`sanctionDate1` DATETIME DEFAULT NULL ,
`sanctionDate2` DATETIME DEFAULT NULL ,
`violation` TEXT DEFAULT NULL ,
`reportedBy` TEXT DEFAULT NULL ,
`reviewedBy` TEXT DEFAULT NULL ,
`status` TEXT DEFAULT NULL ,
`studentID` INT DEFAULT NULL ,
`demerits` DECIMAL(20, 9) DEFAULT NULL ,
`modifiedBy` INT DEFAULT NULL ,
`modifiedDate` DATETIME DEFAULT NULL ,
`staffID` INT DEFAULT NULL ,
`level` INT DEFAULT NULL ,
`type` INT DEFAULT NULL ,
`notified` INT DEFAULT NULL ,
`disciplineID` INT NOT NULL CONSTRAINT behavior_event_pk PRIMARY KEY,
FOREIGN KEY (`studentId`) REFERENCES `StudentModel` (`studentId`),
FOREIGN KEY (`staffId`) REFERENCES `Staff` (`staffId`)
);

CREATE TABLE IF NOT EXISTS `ClassAssignmentGradeCodeTranslationModel` (
`id` INT NOT NULL CONSTRAINT class_assignment_grade_code_pk PRIMARY KEY,
`classId` INT NOT NULL,
`letterCode` TEXT NOT NULL,
`percent` DECIMAL(20, 9) NOT NULL,
`statusCode` TEXT NOT NULL,
FOREIGN KEY (`classId`) REFERENCES `Class` (`classId`)
);

CREATE TABLE IF NOT EXISTS `ClassEnrollment` (
`altYearId` INT DEFAULT NULL ,
`classId` INT NOT NULL ,
`enrolled` INT NOT NULL ,
`enrolled1` INT DEFAULT NULL ,
`enrolled2` INT DEFAULT NULL ,
`enrolled3` INT DEFAULT NULL ,
`enrolled4` INT DEFAULT NULL ,
`enrolled5` INT DEFAULT NULL ,
`enrolled6` INT DEFAULT NULL ,
`gradeLevel` TEXT DEFAULT NULL ,
`modifiedBy` INT DEFAULT NULL ,
`modifiedDate` DATETIME DEFAULT NULL ,
`studentId` INT NOT NULL,
CONSTRAINT class_enrollment_pk PRIMARY KEY (classId, studentId),
FOREIGN KEY (`classId`) REFERENCES `Class` (`classId`),
FOREIGN KEY (`studentId`) REFERENCES `StudentModel` (`studentId`)
FOREIGN KEY (`altYearId`) REFERENCES `SchoolYearModel` (`yearId`)
);

CREATE TABLE IF NOT EXISTS `Class` (
`aideId` INT DEFAULT NULL ,
`closed` INT DEFAULT NULL ,
`color` TEXT DEFAULT NULL ,
`colorText` TEXT DEFAULT NULL ,
`courseID` INT NOT NULL ,
`googleCourseId` TEXT DEFAULT NULL ,
`legacyClassId` TEXT DEFAULT NULL ,
`linkedClassId` INT DEFAULT NULL ,
`maleFemale` TEXT DEFAULT NULL ,
`modifiedBy` INT DEFAULT NULL ,
`modifiedDate` DATETIME DEFAULT NULL ,
`name` TEXT DEFAULT NULL ,
`pattern` INT DEFAULT NULL ,
`requiredRoom` INT DEFAULT NULL ,
`section` TEXT DEFAULT NULL ,
`staffId` INT DEFAULT NULL ,
`term1` INT NOT NULL ,
`term2` INT NOT NULL ,
`term3` INT NOT NULL ,
`term4` INT NOT NULL ,
`term5` INT NOT NULL ,
`term6` INT NOT NULL ,
`yearId` INT DEFAULT NULL ,
`secondaryStaffId` INT DEFAULT NULL ,
`classId` INT NOT NULL CONSTRAINT class_pk PRIMARY KEY,
FOREIGN KEY (`courseID`) REFERENCES `Courses` (`courseID`),
FOREIGN KEY (`staffId`) REFERENCES `Staff` (`staffId`),
FOREIGN KEY (`secondaryStaffId`) REFERENCES `Staff` (`staffId`)
FOREIGN KEY ('aideId') REFERENCES `Staff` (`staffId`),
FOREIGN KEY (`yearId`) REFERENCES `SchoolYearModel` (`yearId`),
FOREIGN KEY (`classId`) REFERENCES `Class` (`classId`)
);

CREATE TABLE IF NOT EXISTS `ConditionalRequirementModel` (
`triggerQuestionId` INT NOT NULL CONSTRAINT conditional_requirement_pk PRIMARY KEY,
`options` JSON DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS `Conference` (
`date` DATETIME DEFAULT NULL ,
`studentId` INT DEFAULT NULL ,
`reason` TEXT DEFAULT NULL ,
`problem` TEXT DEFAULT NULL ,
`staffID` INT DEFAULT NULL ,
`subject` TEXT DEFAULT NULL ,
`recommendation` TEXT DEFAULT NULL ,
`parent` TEXT DEFAULT NULL ,
`location` TEXT DEFAULT NULL ,
`modifiedBy` INT DEFAULT NULL ,
`modifiedDate` DATETIME DEFAULT NULL ,
`reason1` INT DEFAULT NULL ,
`reason2` INT DEFAULT NULL ,
`reason3` INT DEFAULT NULL ,
`problem1` INT DEFAULT NULL ,
`problem2` INT DEFAULT NULL ,
`problem3` INT DEFAULT NULL ,
`problem4` INT DEFAULT NULL ,
`problem5` INT DEFAULT NULL ,
`problem6` INT DEFAULT NULL ,
`problem7` INT DEFAULT NULL ,
`problem8` INT DEFAULT NULL ,
`problem9` INT DEFAULT NULL ,
`problem10` INT DEFAULT NULL ,
`conferenceId` INT NOT NULL CONSTRAINT conference_pk PRIMARY KEY,
FOREIGN KEY (`studentId`) REFERENCES `StudentModel` (`studentId`),
FOREIGN KEY (`staffID`) REFERENCES `Staff` (`staffId`)
);

CREATE TABLE IF NOT EXISTS `Congregation` (
`congregationId` INT NOT NULL CONSTRAINT congregation_pk PRIMARY KEY,
`congregationName` TEXT DEFAULT NULL ,
`congregationCity` TEXT DEFAULT NULL ,
`congregationPhone` TEXT DEFAULT NULL ,
`congregationState` TEXT DEFAULT NULL ,
`congregationStreet` TEXT DEFAULT NULL ,
`congregationZip` TEXT DEFAULT NULL ,
`seniorPastor` TEXT DEFAULT NULL ,
`youthPastor` TEXT DEFAULT NULL 
);

CREATE TABLE IF NOT EXISTS `Courses` (
`levelID` INT DEFAULT NULL ,
`legacyCourseID` TEXT DEFAULT NULL ,
`title` TEXT DEFAULT NULL ,
`abbreviation` TEXT DEFAULT NULL ,
`activity` INT NOT NULL ,
`attendance` INT NOT NULL ,
`homeRoom` INT NOT NULL ,
`schoolCode` TEXT DEFAULT NULL ,
`department` TEXT DEFAULT NULL ,
`active` INT DEFAULT NULL ,
`elective` INT DEFAULT NULL ,
`hs` INT DEFAULT NULL,
`preSchool` INT DEFAULT NULL ,
`elementary` INT DEFAULT NULL ,
`middleSchool` INT DEFAULT NULL ,
`modifiedBy` INT DEFAULT NULL ,
`modifiedDate` DATETIME DEFAULT NULL ,
`courseType` TEXT DEFAULT NULL ,
`defaultStaffID` INT DEFAULT NULL ,
`departmentID` INT DEFAULT NULL ,
`description` TEXT DEFAULT NULL ,
`stateID` TEXT DEFAULT NULL ,
`maxSize` INT DEFAULT NULL ,
`courseID` INT NOT NULL CONSTRAINT course_pk PRIMARY KEY,
FOREIGN KEY (`defaultStaffId`) REFERENCES `Staff` (`staffId`)
);

CREATE TABLE IF NOT EXISTS `CreateInquiryFormCommand` (
`requestId` INT NOT NULL CONSTRAINT create_inquiry_form_pk PRIMARY KEY,
`studentId` INT NOT NULL ,
FOREIGN KEY (`studentId`) REFERENCES `StudentModel` (`studentId`)
);

CREATE TABLE IF NOT EXISTS `CustomAnswerModel` (
`boolValue` INT DEFAULT NULL,
`textValue` TEXT DEFAULT NULL,
`dateValue` DATETIME DEFAULT NULL,
`intValue` INT DEFAULT NULL,
`listValues` JSON DEFAULT NULL,
`questionId` INT NOT NULL,
`originalAnswerLabel` TEXT DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS `CustomQuestionAnswerModel` (
`question` TEXT DEFAULT NULL,
`answer` TEXT DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS `CustomQuestionModel` (
`label` TEXT DEFAULT NULL,
`columns` INT DEFAULT NULL,
`questionAnswerType` TEXT NOT NULL,
`requirementType` TEXT NOT NULL,
`options` JSON DEFAULT NULL,
`id` INT NOT NULL CONSTRAINT custom_question_pk PRIMARY KEY,
`fullText` TEXT DEFAULT NULL,
`requestLevel` TEXT NOT NULL,
`sortOrder` INT NOT NULL,
`eventId` INT DEFAULT NULL,
`isConditional` INT NOT NULL,
`conditionalRequirement` TEXT DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS `DefinedListsModel` (
`type` TEXT DEFAULT NULL ,
`name` TEXT DEFAULT NULL ,
`definedListId` INT NOT NULL CONSTRAINT defined_list_pk PRIMARY KEY ,
`schoolCode` TEXT DEFAULT NULL 
);

CREATE TABLE IF NOT EXISTS `DirectoryPreferences` (
`id` INTEGER PRIMARY KEY AUTOINCREMENT,
`blockName` INT DEFAULT NULL ,
`blockCellPhone` INT DEFAULT NULL ,
`blockHomePhone` INT DEFAULT NULL ,
`blockAddress` INT DEFAULT NULL ,
`blockEmail` INT DEFAULT NULL ,
`personId` INT NOT NULL ,
FOREIGN KEY (`personId`) REFERENCES `Person` (`personId`)
);

CREATE TABLE IF NOT EXISTS `Education` (
`personId` INT NOT NULL ,
`degreeSchool` TEXT DEFAULT NULL ,
`degreeName` TEXT DEFAULT NULL ,
`degreeYear` TEXT DEFAULT NULL ,
`educationLevel` INT DEFAULT NULL ,
`degreeType` TEXT DEFAULT NULL ,
`educationId` INT NOT NULL CONSTRAINT education_pk PRIMARY KEY,
FOREIGN KEY (`personId`) REFERENCES `Person` (`personId`)
);

CREATE TABLE IF NOT EXISTS `EmergencyContact` (
`emergencyContactID` INT NOT NULL CONSTRAINT emergency_contact_pk PRIMARY KEY,
`firstName` TEXT DEFAULT NULL ,
`lastName` TEXT DEFAULT NULL ,
`middleName` TEXT DEFAULT NULL ,
`salutation` TEXT DEFAULT NULL ,
`suffix` TEXT DEFAULT NULL ,
`homePhone` TEXT DEFAULT NULL ,
`cellPhone` TEXT DEFAULT NULL ,
`email` TEXT DEFAULT NULL ,
`relationship` TEXT DEFAULT NULL ,
`workPhone` TEXT DEFAULT NULL ,
`studentID` INT DEFAULT NULL ,
`sortOrder` INT DEFAULT NULL ,
`refID` INT DEFAULT NULL ,
`note` TEXT DEFAULT NULL ,
`countryCode` TEXT DEFAULT NULL ,
`portalSortOrder` INT NOT NULL,
FOREIGN KEY (`studentId`) REFERENCES `StudentModel` (`studentId`),
FOREIGN KEY (`refId`) REFERENCES `Person` (`personId`)
);

CREATE TABLE IF NOT EXISTS `EnrollmentHistory` (
`beginDate` DATETIME DEFAULT NULL ,
`endDate` DATETIME DEFAULT NULL ,
`gradeLevel` TEXT DEFAULT NULL ,
`note` TEXT DEFAULT NULL ,
`schoolCode` TEXT DEFAULT NULL ,
`status` TEXT DEFAULT NULL ,
`studentId` INT NOT NULL ,
`yearId` INT DEFAULT NULL ,
`enrollmentHistoryId` INT NOT NULL CONSTRAINT enrollment_history_pk PRIMARY KEY,
FOREIGN KEY (`studentId`) REFERENCES `StudentModel` (`studentId`),
FOREIGN KEY (`yearId`) REFERENCES `SchoolYearModel` (`yearId`)
);

CREATE TABLE IF NOT EXISTS `Error` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
`code` TEXT NOT NULL,
`message` TEXT NOT NULL,
`target` TEXT DEFAULT NULL,
`details` JSON DEFAULT NULL,
`innererror` TEXT DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS `ErrorResponse` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
`error` TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS `FamilyConfig` (
`familyName` TEXT DEFAULT NULL ,
`enableWeb` INT DEFAULT NULL ,
`unlisted` INT DEFAULT NULL ,
`note` TEXT DEFAULT NULL ,
`modifiedBy` INT DEFAULT NULL ,
`modifiedDate` DATETIME DEFAULT NULL ,
`familyNameBP` TEXT DEFAULT NULL ,
`parentsWebFinancialBlock` INT NOT NULL ,
`familyID` INT NOT NULL CONSTRAINT family_config_pk PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS `Honors` (
`calcMethod` TEXT DEFAULT NULL ,
`gradeLevel` TEXT DEFAULT NULL ,
`honorName` TEXT DEFAULT NULL ,
`honorRollId` INT DEFAULT NULL ,
`maxClass` DECIMAL(20, 9) NOT NULL ,
`minAvg` DECIMAL(20, 9) NOT NULL ,
`minClass` DECIMAL(20, 9) NOT NULL ,
`minCredits` DECIMAL(20, 9) NOT NULL ,
`modifiedBy` INT DEFAULT NULL ,
`modifiedDate` DATETIME DEFAULT NULL ,
`schoolCode` TEXT DEFAULT NULL ,
`sequence` INT NOT NULL ,
`timeFrame` INT NOT NULL ,
`honorId` INT NOT NULL CONSTRAINT honors_pk PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS `InquiryFormEditModel` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
`standardAnswers` JSON DEFAULT NULL,
`customAnswers` JSON DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS `InquiryFormModel` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
`requestId` INT DEFAULT NULL,
`studentId` INT DEFAULT NULL,
`schoolCode` TEXT DEFAULT NULL,
`schoolOptions` JSON DEFAULT NULL,
`standard` JSON DEFAULT NULL,
`custom` JSON DEFAULT NULL,
`interestCategories` JSON DEFAULT NULL,
FOREIGN KEY (`studentId`) REFERENCES `StudentModel` (`studentId`)
);

CREATE TABLE IF NOT EXISTS `InterestCategoryModel` (
`id` INT NOT NULL CONSTRAINT interest_category_model_pk PRIMARY KEY,
`description` TEXT DEFAULT NULL,
`sortOrder` INT NOT NULL,
`interestIds` JSON DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS `InterestCategory` (
`category` TEXT DEFAULT NULL ,
`districtWide` INT DEFAULT NULL ,
`type` INT DEFAULT NULL ,
`sortOrder` INT DEFAULT NULL ,
`onlineApplication` INT DEFAULT NULL ,
`schoolCode` TEXT DEFAULT NULL ,
`active` INT DEFAULT NULL ,
`interestCategoryID` INT NOT NULL CONSTRAINT interest_category_pk PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS `InterestItems` (
`interest` TEXT DEFAULT NULL ,
`interestCategoryID` INT DEFAULT NULL ,
`sortOrder` INT DEFAULT NULL ,
`active` INT DEFAULT NULL ,
`interestID` INT NOT NULL CONSTRAINT interest_items_pk PRIMARY KEY,
FOREIGN KEY (`interestCategoryID`) REFERENCES `InterestCategory` (`interestCategoryID`)
);

CREATE TABLE IF NOT EXISTS `ListOptionModel` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
`display` TEXT DEFAULT NULL,
`keyValue` INT DEFAULT NULL,
`textValue` TEXT DEFAULT NULL,
`sortOrder` INT DEFAULT NULL,
`filter` TEXT DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS `ListValueModel` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
`keyValue` INT DEFAULT NULL,
`textValue` TEXT DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS `LockerModel` (
`locker` TEXT DEFAULT NULL ,
`lockerGroupId` INT DEFAULT NULL ,
`schoolCode` TEXT DEFAULT NULL ,
`combination1` TEXT DEFAULT NULL ,
`combination2` TEXT DEFAULT NULL ,
`combination3` TEXT DEFAULT NULL ,
`combination4` TEXT DEFAULT NULL ,
`combination5` TEXT DEFAULT NULL ,
`note` TEXT DEFAULT NULL ,
`outOfService` INT DEFAULT NULL ,
`currentCombination` INT DEFAULT NULL ,
`lockerId` INT NOT NULL CONSTRAINT locker_pk PRIMARY KEY,
`configSchoolId` INT NOT NULL 
);

CREATE TABLE IF NOT EXISTS `LockerRequest` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
`locker` TEXT DEFAULT NULL ,
`lockerGroupId` INT DEFAULT NULL ,
`schoolCode` TEXT DEFAULT NULL ,
`combination1` TEXT DEFAULT NULL ,
`combination2` TEXT DEFAULT NULL ,
`combination3` TEXT DEFAULT NULL ,
`combination4` TEXT DEFAULT NULL ,
`combination5` TEXT DEFAULT NULL ,
`note` TEXT DEFAULT NULL ,
`outOfService` INT DEFAULT NULL ,
`currentCombination` INT DEFAULT NULL 
);

CREATE TABLE IF NOT EXISTS `Note` (
`enteredById` INT NOT NULL ,
`noteDate` DATETIME DEFAULT NULL ,
`noteType` TEXT NOT NULL ,
`personId` INT NOT NULL ,
`note` TEXT DEFAULT NULL ,
`yearId` INT DEFAULT NULL ,
`noteId` INT NOT NULL CONSTRAINT note_pk PRIMARY KEY,
`modifiedById` INT NOT NULL ,
FOREIGN KEY (`enteredById`) REFERENCES `Staff` (`staffId`),
FOREIGN KEY (`personId`) REFERENCES `Person` (`personId`),
FOREIGN KEY (`yearId`) REFERENCES `SchoolYearModel` (`yearId`),
FOREIGN KEY (`modifiedById`) REFERENCES `Staff` (`staffId`),
FOREIGN KEY (`yearId`) REFERENCES `SchoolYearModel` (`yearId`)
);

CREATE TABLE IF NOT EXISTS `ParentAlertEntity` (
`id` TEXT NOT NULL ,
`personId` INT NOT NULL CONSTRAINT parent_alert_pk PRIMARY KEY,
`parentAlertPreference` TEXT DEFAULT NULL,
`parentAlertHomePhone` INT DEFAULT NULL,
`parentAlertCellPhone` INT DEFAULT NULL,
`parentAlertWorkPhone` INT DEFAULT NULL,
`parentAlertNoText` INT DEFAULT NULL,
FOREIGN KEY (`personId`) REFERENCES `Person` (`personId`)
);

CREATE TABLE IF NOT EXISTS `ParentStudent` (
`parentID` INT NOT NULL ,
`studentID` INT NOT NULL ,
`custody` INT DEFAULT NULL ,
`correspondence` INT DEFAULT NULL ,
`relationship` TEXT DEFAULT NULL ,
`grandparent` INT DEFAULT NULL ,
`emergencyContact` INT DEFAULT NULL ,
`reportCard` INT DEFAULT NULL ,
`pwBlock` INT DEFAULT NULL ,
`pickUp` INT DEFAULT NULL ,
`parentsWeb` INT DEFAULT NULL ,
`reEnroll` INT DEFAULT NULL ,
CONSTRAINT parent_student_pk PRIMARY KEY (parentID, studentID),
FOREIGN KEY (`parentID`) REFERENCES `Person` (`personId`),
FOREIGN KEY (`studentID`) REFERENCES `StudentModel` (`studentId`)
);

CREATE TABLE IF NOT EXISTS `PersonDemographic` (
`personId` INT NOT NULL CONSTRAINT person_demographic_pk PRIMARY KEY,
`gender` TEXT DEFAULT NULL ,
`birthdate` DATETIME DEFAULT NULL ,
`ethnicity` TEXT DEFAULT NULL ,
`citizenship` TEXT DEFAULT NULL ,
`maritalStatus` TEXT DEFAULT NULL ,
`primaryLanguage` TEXT DEFAULT NULL ,
`birthplace` TEXT DEFAULT NULL ,
`birthCity` TEXT DEFAULT NULL ,
`birthState` TEXT DEFAULT NULL ,
`birthCountry` TEXT DEFAULT NULL,
FOREIGN KEY (`personId`) REFERENCES `Person` (`personId`)
);

CREATE TABLE IF NOT EXISTS `PersonFamily` (
`personId` INT NOT NULL ,
`familyId` INT NOT NULL ,
`parent` INT DEFAULT NULL ,
`student` INT DEFAULT NULL ,
`financialResponsibility` INT DEFAULT NULL ,
`financialResponsibilityPercent` TEXT DEFAULT NULL ,
`familyOrder` INT DEFAULT NULL ,
`factsCustomer` INT NOT NULL ,
CONSTRAINT person_family_pk PRIMARY KEY (personId, familyId),
FOREIGN KEY (`personId`) REFERENCES `Person` (`personId`),
FOREIGN KEY (`familyId`) REFERENCES `FamilyConfig` (`familyId`)
);

CREATE TABLE IF NOT EXISTS `PersonInterest` (
`personID` INT NOT NULL CONSTRAINT person_interest_pk PRIMARY KEY,
`interest` TEXT DEFAULT NULL ,
FOREIGN KEY (`personId`) REFERENCES `Person` (`personId`)
);

CREATE TABLE IF NOT EXISTS `PersonReligionEntity` (
`id` TEXT NOT NULL CONSTRAINT person_religion_pk PRIMARY KEY,
`personId` INT NOT NULL,
`denomination` TEXT DEFAULT NULL,
`congregationId` INT DEFAULT NULL,
`baptismCongregation` TEXT DEFAULT NULL,
`baptismCity` TEXT DEFAULT NULL,
`baptismState` TEXT DEFAULT NULL,
`baptismDate` TEXT DEFAULT NULL,
`communionCongregation` TEXT DEFAULT NULL,
`communionCity` TEXT DEFAULT NULL,
`communionState` TEXT DEFAULT NULL,
`communionDate` TEXT DEFAULT NULL,
`confirmationCongregation` TEXT DEFAULT NULL,
`confirmationCity` TEXT DEFAULT NULL,
`confirmationState` TEXT DEFAULT NULL,
`confirmationDate` TEXT DEFAULT NULL,
`reconciliationCongregation` TEXT DEFAULT NULL,
`reconciliationCity` TEXT DEFAULT NULL,
`reconciliationState` TEXT DEFAULT NULL,
`reconciliationDate` TEXT DEFAULT NULL,
`barMitzvahCongregation` TEXT DEFAULT NULL,
`barMitzvahCity` TEXT DEFAULT NULL,
`barMitzvahState` TEXT DEFAULT NULL,
`barMitzvahDate` TEXT DEFAULT NULL,
`localChurchMember` INT DEFAULT NULL,
FOREIGN KEY (`personId`) REFERENCES `Person` (`personId`)
);

CREATE TABLE IF NOT EXISTS `Person` (
`personId` INT NOT NULL CONSTRAINT person_pk PRIMARY KEY,
`firstName` TEXT DEFAULT NULL ,
`lastName` TEXT DEFAULT NULL ,
`middleName` TEXT DEFAULT NULL ,
`nickName` TEXT DEFAULT NULL ,
`salutation` TEXT DEFAULT NULL ,
`suffix` TEXT DEFAULT NULL ,
`email` TEXT DEFAULT NULL ,
`email2` TEXT DEFAULT NULL ,
`username` TEXT DEFAULT NULL ,
`homePhone` TEXT DEFAULT NULL ,
`cellPhone` TEXT DEFAULT NULL ,
`addressID` INT DEFAULT NULL ,
`deceased` INT NOT NULL ,
`modifiedDate` DATETIME DEFAULT NULL ,
FOREIGN KEY (`addressId`) REFERENCES `Address` (`addressId`)
);

CREATE TABLE IF NOT EXISTS `PersonVehicleEntity` (
`id` TEXT NOT NULL CONSTRAINT person_vehicle_pk PRIMARY KEY,
`personId` INT NOT NULL,
`autoMake` TEXT DEFAULT NULL,
`autoModel` TEXT DEFAULT NULL,
`autoLicense` TEXT DEFAULT NULL,
`driversLicense` TEXT DEFAULT NULL,
`permitNumber` TEXT DEFAULT NULL,
FOREIGN KEY (`personId`) REFERENCES `Person` (`personId`)
);

CREATE TABLE IF NOT EXISTS `PersonWorkEntity` (
`id` TEXT NOT NULL CONSTRAINT person_work_pk PRIMARY KEY,
`personId` INT NOT NULL,
`occupation` TEXT DEFAULT NULL,
`company` TEXT DEFAULT NULL,
`jobCategory` TEXT DEFAULT NULL,
`workStreet` TEXT DEFAULT NULL,
`workFax` TEXT DEFAULT NULL,
`workPhone` TEXT DEFAULT NULL,
`workPhoneExtension` TEXT DEFAULT NULL,
`workCity` TEXT DEFAULT NULL,
`workState` TEXT DEFAULT NULL,
`workZip` TEXT DEFAULT NULL,
`matchingGiftEmployer` INT DEFAULT NULL,
FOREIGN KEY (`personId`) REFERENCES `Person` (`personId`)
);

CREATE TABLE IF NOT EXISTS `PickupContact` (
`cellPhone` TEXT DEFAULT NULL ,
`countryCode` TEXT DEFAULT NULL ,
`email` TEXT DEFAULT NULL ,
`firstName` TEXT DEFAULT NULL ,
`homePhone` TEXT DEFAULT NULL ,
`lastName` TEXT DEFAULT NULL ,
`middleName` TEXT DEFAULT NULL ,
`note` TEXT DEFAULT NULL ,
`portalSortOrder` INT NOT NULL ,
`refId` INT DEFAULT NULL ,
`relationship` TEXT DEFAULT NULL ,
`salutation` TEXT DEFAULT NULL ,
`studentId` INT NOT NULL ,
`suffix` TEXT DEFAULT NULL ,
`workPhone` TEXT DEFAULT NULL ,
`pickupId` INT NOT NULL CONSTRAINT pickup_contact_pk PRIMARY KEY,
FOREIGN KEY (`studentId`) REFERENCES `StudentModel` (`studentId`),
FOREIGN KEY (`refId`) REFERENCES `Person` (`personId`)
);

CREATE TABLE IF NOT EXISTS `ProblemDetails` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
`type` TEXT DEFAULT NULL,
`title` TEXT DEFAULT NULL,
`status` INT DEFAULT NULL,
`detail` TEXT DEFAULT NULL,
`instance` TEXT DEFAULT NULL,
`extensions` JSON NOT NULL
);

CREATE TABLE IF NOT EXISTS `ProfileImage` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
`value` TEXT DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS `PublicSchool` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
`personId` INT NOT NULL ,
`publicSchoolDistrict` TEXT DEFAULT NULL ,
`publicSchoolCounty` TEXT DEFAULT NULL ,
`publicSchoolState` TEXT DEFAULT NULL ,
`publicSchoolLocalSchool` TEXT DEFAULT NULL ,
`publicSchoolCode` TEXT DEFAULT NULL ,
FOREIGN KEY (`personId`) REFERENCES `Person` (`personId`)
);

CREATE TABLE IF NOT EXISTS `QuestionBaseModel` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
`label` TEXT DEFAULT NULL,
`columns` INT DEFAULT NULL,
`questionAnswerType` TEXT NOT NULL,
`requirementType` TEXT NOT NULL,
`options` JSON DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS `ReligiousEvent` (
`personId` INT DEFAULT NULL ,
`religiousEventDate` DATETIME DEFAULT NULL ,
`religiousEventType` TEXT DEFAULT NULL ,
`location` TEXT DEFAULT NULL ,
`city` TEXT DEFAULT NULL ,
`state` TEXT DEFAULT NULL ,
`note` TEXT DEFAULT NULL ,
`religiousEventId` INT NOT NULL CONSTRAINT religious_event_pk PRIMARY KEY,
FOREIGN KEY (`personId`) REFERENCES `Person` (`personId`)
);

CREATE TABLE IF NOT EXISTS `SchoolConfig` (
`fax` TEXT DEFAULT NULL ,
`phone` TEXT DEFAULT NULL ,
`active` INT NOT NULL ,
`address` TEXT DEFAULT NULL ,
`city` TEXT DEFAULT NULL ,
`configSchoolID` INT NOT NULL CONSTRAINT school_config_pk PRIMARY KEY,
`defaultTermId` INT DEFAULT NULL ,
`defaultYearId` INT DEFAULT NULL ,
`districtName` TEXT DEFAULT NULL ,
`email` TEXT DEFAULT NULL ,
`modifiedBy` INT DEFAULT NULL ,
`modifiedDate` DATETIME DEFAULT NULL ,
`nextYearId` INT DEFAULT NULL ,
`parentAlert` INT DEFAULT NULL ,
`pwTermID` INT DEFAULT NULL ,
`pwTermID2` INT DEFAULT NULL ,
`pwYearID` INT DEFAULT NULL ,
`schoolCode` TEXT CONSTRAINT school_config_unique UNIQUE,
`schoolLMS` INT NOT NULL ,
`schoolName` TEXT DEFAULT NULL ,
`state` TEXT DEFAULT NULL ,
`zip` TEXT DEFAULT NULL,
FOREIGN KEY (`defaultTermId`) REFERENCES `SchoolTerms` (`uniqueTermID`),
FOREIGN KEY (`defaultYearId`) REFERENCES `SchoolYearModel` (`yearId`),
FOREIGN KEY (`nextYearId`) REFERENCES `SchoolYearModel` (`yearId`),
FOREIGN KEY (`pwTermId`) REFERENCES `SchoolTerms` (`uniqueTermID`),
FOREIGN KEY (`pwTermId2`) REFERENCES `SchoolTerms` (`uniqueTermID`),
FOREIGN KEY (`pwYearId`) REFERENCES `SchoolYearModel` (`yearId`)
);

CREATE TABLE IF NOT EXISTS `SchoolTerms` (
`termID` INT NOT NULL ,
`yearID` INT NOT NULL ,
`name` TEXT DEFAULT NULL ,
`firstDay` DATETIME DEFAULT NULL ,
`lastDay` DATETIME DEFAULT NULL ,
`schoolCode` TEXT DEFAULT NULL ,
`semesterID` TEXT DEFAULT NULL ,
`modifiedBy` INT DEFAULT NULL ,
`modifiedDate` DATETIME DEFAULT NULL ,
`uniqueTermID` INT NOT NULL CONSTRAINT school_terms_pk PRIMARY KEY,
CONSTRAINT school_terms_pk UNIQUE (termID, yearID),
FOREIGN KEY (`yearId`) REFERENCES `SchoolYearModel` (`yearId`),
FOREIGN KEY (`schoolCode`) REFERENCES `SchoolConfig` (`schoolCode`)
);

CREATE TABLE IF NOT EXISTS `SchoolYearModel` (
`yearName` TEXT DEFAULT NULL ,
`allowInquiry` INT DEFAULT NULL ,
`blockAcademicYear` INT NOT NULL ,
`yearId` INT NOT NULL CONSTRAINT school_year_pk PRIMARY KEY,
`firstDay` DATETIME DEFAULT NULL ,
`lastDay` DATETIME DEFAULT NULL ,
`schoolCode` TEXT DEFAULT NULL ,
FOREIGN KEY (`yearId`) REFERENCES `SchoolYearModel` (`yearId`),
FOREIGN KEY (`schoolCode`) REFERENCES `SchoolConfig` (`schoolCode`)
);

CREATE TABLE IF NOT EXISTS `ServiceHoursModel` (
`serviceHoursId` INT NOT NULL CONSTRAINT service_hours_pk PRIMARY KEY,
`personId` INT DEFAULT NULL ,
`description` TEXT DEFAULT NULL ,
`hours` DECIMAL(20, 9) DEFAULT NULL ,
`date` DATETIME DEFAULT NULL ,
`note` TEXT DEFAULT NULL ,
`verifiedBy` TEXT DEFAULT NULL ,
`createdBy` INT DEFAULT NULL ,
`yearId` INT DEFAULT NULL,
FOREIGN KEY (`personId`) REFERENCES `Person` (`personId`),
FOREIGN KEY (`yearId`) REFERENCES `SchoolYearModel` (`yearId`)
);

CREATE TABLE IF NOT EXISTS `StaffObservations` (
`endDate` DATETIME DEFAULT NULL ,
`eval` INT DEFAULT NULL ,
`evaluatorId` INT NOT NULL ,
`observationConfigId` INT NOT NULL ,
`personId` INT NOT NULL ,
`startDate` DATETIME DEFAULT NULL ,
`title` TEXT DEFAULT NULL ,
`observationId` INT NOT NULL CONSTRAINT staff_observation_pk PRIMARY KEY,
FOREIGN KEY (`evaluatorId`) REFERENCES `Staff` (`staffId`),
FOREIGN KEY (`personId`) REFERENCES `Person` (`personId`)
);

CREATE TABLE IF NOT EXISTS `Staff` (
`active` INT DEFAULT NULL ,
`administrator` INT DEFAULT NULL ,
`blockSurvey` INT DEFAULT NULL ,
`districtUser` INT DEFAULT NULL ,
`districtWideUser` INT DEFAULT NULL ,
`dualEnrolledUser` INT DEFAULT NULL ,
`elementary` INT DEFAULT NULL ,
`faculty` INT DEFAULT NULL ,
`fullTime` INT DEFAULT NULL ,
`highSchool` INT DEFAULT NULL ,
`middleSchool` INT DEFAULT NULL ,
`preschool` INT DEFAULT NULL ,
`staffDirectoryBlock` INT DEFAULT NULL ,
`substitute` INT DEFAULT NULL ,
`unsubscribeRenWebEmail` INT DEFAULT NULL ,
`endDate` DATETIME DEFAULT NULL ,
`startDate` DATETIME DEFAULT NULL ,
`fte` DECIMAL(20, 9) DEFAULT NULL ,
`financialFamilyId` INT DEFAULT NULL ,
`pda` INT DEFAULT NULL ,
`roomId` INT DEFAULT NULL ,
`schools` JSON DEFAULT NULL ,
`department` TEXT DEFAULT NULL ,
`firstName` TEXT DEFAULT NULL ,
`lastName` TEXT DEFAULT NULL ,
`legacyStaffId` TEXT DEFAULT NULL ,
`middleName` TEXT DEFAULT NULL ,
`parentAlertPin` TEXT DEFAULT NULL ,
`spouse` TEXT DEFAULT NULL ,
`teacherSite` TEXT DEFAULT NULL ,
`staffId` INT NOT NULL CONSTRAINT staff_pk PRIMARY KEY,
`name` TEXT DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS `StandardAnswerModel` (
`boolValue` INT DEFAULT NULL,
`textValue` TEXT DEFAULT NULL,
`dateValue` DATETIME DEFAULT NULL,
`intValue` INT DEFAULT NULL,
`listValues` JSON DEFAULT NULL,
`id` TEXT not null CONSTRAINT standard_answer_pk PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS `StandardQuestionAnswerModel` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
`question` TEXT DEFAULT NULL,
`answer` TEXT DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS `StandardQuestionModel` (
`label` TEXT DEFAULT NULL,
`columns` INT DEFAULT NULL,
`questionAnswerType` TEXT NOT NULL,
`requirementType` TEXT NOT NULL,
`options` JSON DEFAULT NULL,
`id` TEXT not null CONSTRAINT standard_question_pk PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS `StatusModel` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
`status` TEXT DEFAULT NULL ,
`displayName` TEXT DEFAULT NULL ,
`subStatus` JSON DEFAULT NULL 
);

CREATE TABLE IF NOT EXISTS `StudentLockerModel` (
`id` INT NOT NULL CONSTRAINT student_locker_pk PRIMARY KEY,
`name` TEXT DEFAULT NULL 
);

CREATE TABLE IF NOT EXISTS `StudentModel` (
`school` TEXT DEFAULT NULL ,
`locker` JSON DEFAULT NULL ,
`configSchoolId` INT NOT NULL ,
`personStudentId` INT NOT NULL ,
`studentId` INT NOT NULL CONSTRAINT student_pk PRIMARY KEY,
`schoolCode` TEXT DEFAULT NULL,
FOREIGN KEY (`personStudentId`) REFERENCES `Person` (`personId`),
FOREIGN KEY (`configSchoolId`) REFERENCES `SchoolConfig` (`configSchoolID`),
FOREIGN KEY (`schoolCode`) REFERENCES `SchoolConfig` (`schoolCode`)
);

CREATE TABLE IF NOT EXISTS `StudentPreProgressionModel` (
`preProgressionStatus` TEXT DEFAULT NULL ,
`preProgressionNextStatus` TEXT DEFAULT NULL ,
`preProgressionGradeLevel` TEXT DEFAULT NULL ,
`preProgressionNextGradeLevel` TEXT DEFAULT NULL ,
`preProgressionSchoolCode` TEXT DEFAULT NULL ,
`preProgressionNextSchoolCode` TEXT DEFAULT NULL ,
`preProgressionProgressionDate` DATETIME DEFAULT NULL ,
`progressionDate` DATETIME DEFAULT NULL ,
`personStudentId` INT NOT NULL CONSTRAINT student_pre_progression_pk PRIMARY KEY,
FOREIGN KEY (`personStudentId`) REFERENCES `Person` (`personId`)
);

CREATE TABLE IF NOT EXISTS `StudentRecognitionModel` (
`studentId` INT DEFAULT NULL ,
`yearId` INT DEFAULT NULL ,
`recognition` TEXT DEFAULT NULL ,
`note` TEXT DEFAULT NULL ,
`category` TEXT DEFAULT NULL ,
`gradeLevel` TEXT DEFAULT NULL ,
`recognitionId` INT NOT NULL CONSTRAINT student_recognition_pk PRIMARY KEY,
`schoolCode` TEXT DEFAULT NULL,
FOREIGN KEY (`studentId`) REFERENCES `StudentModel` (`studentId`),
FOREIGN KEY (`yearId`) REFERENCES `SchoolYearModel` (`yearId`),
FOREIGN KEY (`schoolCode`) REFERENCES `SchoolConfig` (`schoolCode`)
);

CREATE TABLE IF NOT EXISTS `StudentSchoolModel` (
`personId` INT DEFAULT NULL CONSTRAINT student_school_pk PRIMARY KEY,
`status` TEXT DEFAULT NULL ,
`substatus` TEXT DEFAULT NULL ,
`enrollDate` DATETIME DEFAULT NULL ,
`withdrawDate` DATETIME DEFAULT NULL ,
`withdrawReason` TEXT DEFAULT NULL ,
`graduationDate` DATETIME DEFAULT NULL ,
`gradeLevel` TEXT DEFAULT NULL ,
`nextStatus` TEXT DEFAULT NULL ,
`nextSchoolCode` TEXT DEFAULT NULL ,
`nextGradeLevel` TEXT DEFAULT NULL,
FOREIGN KEY (`personId`) REFERENCES `Person` (`personId`),
FOREIGN KEY (`nextSchoolCode`) REFERENCES `SchoolConfig` (`schoolCode`)
);

CREATE TABLE IF NOT EXISTS `StudentServiceHoursModel` (
`serviceHoursId` INT NOT NULL ,
`personId` INT NOT NULL ,
`description` TEXT DEFAULT NULL ,
`hours` DECIMAL(20, 9) DEFAULT NULL ,
`date` DATETIME DEFAULT NULL ,
`note` TEXT DEFAULT NULL ,
`verifiedBy` TEXT DEFAULT NULL ,
`createdBy` INT DEFAULT NULL,
CONSTRAINT student_service_hours_pk PRIMARY KEY (serviceHoursId, personId),
FOREIGN KEY (`personId`) REFERENCES `Person` (`personId`),
FOREIGN KEY (`serviceHoursId`) REFERENCES `ServiceHoursModel` (`serviceHoursId`),
FOREIGN KEY (`createdBy`) REFERENCES `Staff` (`staffId`)
);

CREATE TABLE IF NOT EXISTS `SubStatusModel` (
`status` TEXT DEFAULT NULL ,
`schoolCode` TEXT DEFAULT NULL ,
`id` INT NOT NULL CONSTRAINT sub_status_pk PRIMARY KEY,
FOREIGN KEY (`schoolCode`) REFERENCES `SchoolConfig` (`schoolCode`)
);

CREATE TABLE IF NOT EXISTS `UserDefinedDataModel` (
`fieldId` INT NOT NULL ,
`linkedId` INT NOT NULL ,
`data` TEXT DEFAULT NULL ,
`dataId` INT NOT NULL CONSTRAINT user_defined_pk PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS `UserDefinedFieldModel` (
`groupId` INT DEFAULT NULL ,
`fieldName` TEXT DEFAULT NULL ,
`fieldType` INT DEFAULT NULL ,
`fieldOrder` INT DEFAULT NULL ,
`listItems` JSON DEFAULT NULL ,
`fieldId` INT NOT NULL CONSTRAINT user_defined_field_pk PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS `UserDefinedGroupModel` (
`groupType` TEXT DEFAULT NULL ,
`groupName` TEXT DEFAULT NULL ,
`groupOrder` INT DEFAULT NULL ,
`districtWide` INT DEFAULT NULL ,
`groupId` INT NOT NULL CONSTRAINT user_defined_group_pk PRIMARY KEY,
`schoolCode` TEXT DEFAULT NULL ,
`fieldList` JSON DEFAULT NULL ,
`securityLevel` INT DEFAULT NULL,
FOREIGN KEY (`schoolCode`) REFERENCES `SchoolConfig` (`schoolCode`)
);

CREATE TABLE IF NOT EXISTS `UserDefinedGroupSecurityItemModel` (
`id` INT NOT NULL CONSTRAINT user_defined_group_security_pk PRIMARY KEY,
`securityLevel` INT NOT NULL 
);

CREATE TABLE IF NOT EXISTS `UserDefinedGroupSecurityModel` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
`canEveryoneUse` INT NOT NULL ,
`group` JSON DEFAULT NULL ,
`person` JSON DEFAULT NULL 
);


