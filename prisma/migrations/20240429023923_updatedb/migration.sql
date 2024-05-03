-- CreateTable
CREATE TABLE "Address" (
    "addressID" INTEGER PRIMARY KEY AUTOINCREMENT,
    "address1" TEXT,
    "address2" TEXT,
    "city" TEXT,
    "state" TEXT,
    "zip" TEXT,
    "country" TEXT,
    "modifiedBy" INTEGER,
    "modifiedDate" DATETIME,
    "greeting1" TEXT,
    "greeting2" TEXT,
    "greeting3" TEXT,
    "greeting4" TEXT,
    "greeting5" TEXT,
    "newStudentInquiryID" INTEGER
);

-- CreateTable
CREATE TABLE "AdvisingNote" (
    "note" TEXT,
    "date" DATETIME,
    "studentId" INTEGER,
    "modifiedBy" INTEGER,
    "modifiedDate" DATETIME,
    "noteId" INTEGER PRIMARY KEY AUTOINCREMENT,
    CONSTRAINT "AdvisingNote_studentId_fkey" FOREIGN KEY ("studentId") REFERENCES "StudentModel" ("studentId") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "Alert" (
    "alertID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "studentID" INTEGER,
    "title" TEXT,
    "description" TEXT,
    "active" INTEGER NOT NULL,
    CONSTRAINT "Alert_studentID_fkey" FOREIGN KEY ("studentID") REFERENCES "StudentModel" ("studentId") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "AlertApplication" (
    "alertID" INTEGER NOT NULL,
    "applicationID" INTEGER PRIMARY KEY AUTOINCREMENT,
    "visual" INTEGER,
    "beep" INTEGER,
    "popUp" INTEGER,
    "popUpAlways" INTEGER,
    CONSTRAINT "AlertApplication_alertID_fkey" FOREIGN KEY ("alertID") REFERENCES "Alert" ("alertID") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "AnswerBaseModel" (
    "boolValue" INTEGER,
    "textValue" TEXT,
    "dateValue" DATETIME,
    "intValue" INTEGER,
    "listValues" json
);

-- CreateTable
CREATE TABLE "AssignmentCategoryModel" (
    "sisCategoryId" INTEGER PRIMARY KEY AUTOINCREMENT,
    "classCategoryId" INTEGER NOT NULL,
    "weight" DECIMAL,
    "classId" INTEGER NOT NULL,
    "title" TEXT,
    "description" TEXT,
    "meetsInTerm1" INTEGER,
    "meetsInTerm2" INTEGER,
    "meetsInTerm3" INTEGER,
    "meetsInTerm4" INTEGER,
    "meetsInTerm5" INTEGER,
    "meetsInTerm6" INTEGER,
    "drop" INTEGER,
    CONSTRAINT "AssignmentCategoryModel_classCategoryId_fkey" FOREIGN KEY ("classCategoryId") REFERENCES "Class" ("classId") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "AssignmentGradesModel" (
    "sisGradeId" INTEGER PRIMARY KEY AUTOINCREMENT,
    "sisAssignmentId" INTEGER NOT NULL,
    "studentId" INTEGER NOT NULL,
    "maxPoints" DECIMAL NOT NULL,
    "receivedPoints" DECIMAL NOT NULL,
    "curvePoints" DECIMAL NOT NULL,
    "penaltyPoints" DECIMAL NOT NULL,
    "bonusPoints" DECIMAL NOT NULL,
    "notes" TEXT NOT NULL,
    "weight" DECIMAL NOT NULL,
    "status" TEXT NOT NULL,
    "emailSent" INTEGER NOT NULL,
    "displayGrade" TEXT NOT NULL,
    CONSTRAINT "AssignmentGradesModel_studentId_fkey" FOREIGN KEY ("studentId") REFERENCES "StudentModel" ("studentId") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "AssignmentGradesModel_sisAssignmentId_fkey" FOREIGN KEY ("sisAssignmentId") REFERENCES "AssignmentModel" ("sisAssignmentId") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "AssignmentModel" (
    "sisAssignmentId" INTEGER PRIMARY KEY AUTOINCREMENT,
    "classCategoryId" INTEGER NOT NULL,
    "classId" INTEGER NOT NULL,
    "classAssignmentId" INTEGER NOT NULL,
    "title" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "dateAssigned" DATETIME NOT NULL,
    "dateDue" DATETIME NOT NULL,
    "assignmentNumber" INTEGER NOT NULL,
    "maxPoints" DECIMAL NOT NULL,
    "weight" DECIMAL NOT NULL,
    "extraCreditType" INTEGER NOT NULL,
    "modifiedBy" INTEGER NOT NULL,
    "modifiedDate" DATETIME NOT NULL,
    "publish" INTEGER NOT NULL,
    "calculate" INTEGER NOT NULL,
    "markedAsTest" INTEGER NOT NULL,
    "isLmsAssignment" INTEGER NOT NULL,
    "lmsItemId" INTEGER NOT NULL,
    "lmsItemTypeId" INTEGER NOT NULL,
    "descriptionHtml" TEXT NOT NULL,
    "dateAssignedUtc" DATETIME NOT NULL,
    "dateDueUtc" DATETIME NOT NULL,
    "systemOfRecord" TEXT NOT NULL,
    "googleAssignmentId" TEXT NOT NULL,
    CONSTRAINT "AssignmentModel_classId_fkey" FOREIGN KEY ("classId") REFERENCES "Class" ("classId") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "AssignmentModel_classCategoryId_fkey" FOREIGN KEY ("classCategoryId") REFERENCES "AssignmentCategoryModel" ("sisCategoryId") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "BehaviorEvents" (
    "dateOfIncident" DATETIME,
    "descriptionOfIncident" TEXT,
    "history" TEXT,
    "sanction1" TEXT,
    "sanction2" TEXT,
    "sanctionDate1" DATETIME,
    "sanctionDate2" DATETIME,
    "violation" TEXT,
    "reportedBy" TEXT,
    "reviewedBy" TEXT,
    "status" TEXT,
    "studentID" INTEGER,
    "demerits" DECIMAL,
    "modifiedBy" INTEGER,
    "modifiedDate" DATETIME,
    "staffID" INTEGER,
    "level" INTEGER,
    "type" INTEGER,
    "notified" INTEGER,
    "disciplineID" INTEGER PRIMARY KEY AUTOINCREMENT,
    CONSTRAINT "BehaviorEvents_staffID_fkey" FOREIGN KEY ("staffID") REFERENCES "Staff" ("staffId") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "BehaviorEvents_studentID_fkey" FOREIGN KEY ("studentID") REFERENCES "StudentModel" ("studentId") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "Class" (
    "aideId" INTEGER,
    "closed" INTEGER,
    "color" TEXT,
    "colorText" TEXT,
    "courseID" INTEGER NOT NULL,
    "googleCourseId" TEXT,
    "legacyClassId" TEXT,
    "linkedClassId" INTEGER,
    "maleFemale" TEXT,
    "modifiedBy" INTEGER,
    "modifiedDate" DATETIME,
    "name" TEXT,
    "pattern" INTEGER,
    "requiredRoom" INTEGER,
    "section" TEXT,
    "staffId" INTEGER,
    "term1" INTEGER NOT NULL,
    "term2" INTEGER NOT NULL,
    "term3" INTEGER NOT NULL,
    "term4" INTEGER NOT NULL,
    "term5" INTEGER NOT NULL,
    "term6" INTEGER NOT NULL,
    "yearId" INTEGER,
    "secondaryStaffId" INTEGER,
    "classId" INTEGER PRIMARY KEY AUTOINCREMENT,
    CONSTRAINT "Class_classId_fkey" FOREIGN KEY ("classId") REFERENCES "Class" ("classId") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "Class_yearId_fkey" FOREIGN KEY ("yearId") REFERENCES "SchoolYearModel" ("yearId") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "Class_aideId_fkey" FOREIGN KEY ("aideId") REFERENCES "Staff" ("staffId") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "Class_secondaryStaffId_fkey" FOREIGN KEY ("secondaryStaffId") REFERENCES "Staff" ("staffId") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "Class_staffId_fkey" FOREIGN KEY ("staffId") REFERENCES "Staff" ("staffId") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "Class_courseID_fkey" FOREIGN KEY ("courseID") REFERENCES "Courses" ("courseID") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "ClassAssignmentGradeCodeTranslationModel" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "classId" INTEGER NOT NULL,
    "letterCode" TEXT NOT NULL,
    "percent" DECIMAL NOT NULL,
    "statusCode" TEXT NOT NULL,
    CONSTRAINT "ClassAssignmentGradeCodeTranslationModel_classId_fkey" FOREIGN KEY ("classId") REFERENCES "Class" ("classId") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "ClassEnrollment" (
    "altYearId" INTEGER,
    "classId" INTEGER NOT NULL,
    "enrolled" INTEGER NOT NULL,
    "enrolled1" INTEGER,
    "enrolled2" INTEGER,
    "enrolled3" INTEGER,
    "enrolled4" INTEGER,
    "enrolled5" INTEGER,
    "enrolled6" INTEGER,
    "gradeLevel" TEXT,
    "modifiedBy" INTEGER,
    "modifiedDate" DATETIME,
    "studentId" INTEGER NOT NULL,

    PRIMARY KEY ("classId", "studentId"),
    CONSTRAINT "ClassEnrollment_altYearId_fkey" FOREIGN KEY ("altYearId") REFERENCES "SchoolYearModel" ("yearId") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "ClassEnrollment_studentId_fkey" FOREIGN KEY ("studentId") REFERENCES "StudentModel" ("studentId") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "ClassEnrollment_classId_fkey" FOREIGN KEY ("classId") REFERENCES "Class" ("classId") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "ConditionalRequirementModel" (
    "triggerQuestionId" INTEGER PRIMARY KEY AUTOINCREMENT,
    "options" json
);

-- CreateTable
CREATE TABLE "Conference" (
    "date" DATETIME,
    "studentId" INTEGER,
    "reason" TEXT,
    "problem" TEXT,
    "staffID" INTEGER,
    "subject" TEXT,
    "recommendation" TEXT,
    "parent" TEXT,
    "location" TEXT,
    "modifiedBy" INTEGER,
    "modifiedDate" DATETIME,
    "reason1" INTEGER,
    "reason2" INTEGER,
    "reason3" INTEGER,
    "problem1" INTEGER,
    "problem2" INTEGER,
    "problem3" INTEGER,
    "problem4" INTEGER,
    "problem5" INTEGER,
    "problem6" INTEGER,
    "problem7" INTEGER,
    "problem8" INTEGER,
    "problem9" INTEGER,
    "problem10" INTEGER,
    "conferenceId" INTEGER PRIMARY KEY AUTOINCREMENT,
    CONSTRAINT "Conference_staffID_fkey" FOREIGN KEY ("staffID") REFERENCES "Staff" ("staffId") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "Conference_studentId_fkey" FOREIGN KEY ("studentId") REFERENCES "StudentModel" ("studentId") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "Congregation" (
    "congregationId" INTEGER PRIMARY KEY AUTOINCREMENT,
    "congregationName" TEXT,
    "congregationCity" TEXT,
    "congregationPhone" TEXT,
    "congregationState" TEXT,
    "congregationStreet" TEXT,
    "congregationZip" TEXT,
    "seniorPastor" TEXT,
    "youthPastor" TEXT
);

-- CreateTable
CREATE TABLE "Courses" (
    "levelID" INTEGER,
    "legacyCourseID" TEXT,
    "title" TEXT,
    "abbreviation" TEXT,
    "activity" INTEGER NOT NULL,
    "attendance" INTEGER NOT NULL,
    "homeRoom" INTEGER NOT NULL,
    "schoolCode" TEXT,
    "department" TEXT,
    "active" INTEGER,
    "elective" INTEGER,
    "hs" INTEGER,
    "preSchool" INTEGER,
    "elementary" INTEGER,
    "middleSchool" INTEGER,
    "modifiedBy" INTEGER,
    "modifiedDate" DATETIME,
    "courseType" TEXT,
    "defaultStaffID" INTEGER,
    "departmentID" INTEGER,
    "description" TEXT,
    "stateID" TEXT,
    "maxSize" INTEGER,
    "courseID" INTEGER PRIMARY KEY AUTOINCREMENT,
    CONSTRAINT "Courses_defaultStaffID_fkey" FOREIGN KEY ("defaultStaffID") REFERENCES "Staff" ("staffId") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "CreateInquiryFormCommand" (
    "requestId" INTEGER PRIMARY KEY AUTOINCREMENT,
    "studentId" INTEGER NOT NULL,
    CONSTRAINT "CreateInquiryFormCommand_studentId_fkey" FOREIGN KEY ("studentId") REFERENCES "StudentModel" ("studentId") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "CustomAnswerModel" (
    "boolValue" INTEGER,
    "textValue" TEXT,
    "dateValue" DATETIME,
    "intValue" INTEGER,
    "listValues" json,
    "questionId" INTEGER NOT NULL,
    "originalAnswerLabel" TEXT
);

-- CreateTable
CREATE TABLE "CustomQuestionAnswerModel" (
    "question" TEXT,
    "answer" TEXT
);

-- CreateTable
CREATE TABLE "CustomQuestionModel" (
    "label" TEXT,
    "columns" INTEGER,
    "questionAnswerType" TEXT NOT NULL,
    "requirementType" TEXT NOT NULL,
    "options" json,
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "fullText" TEXT,
    "requestLevel" TEXT NOT NULL,
    "sortOrder" INTEGER NOT NULL,
    "eventId" INTEGER,
    "isConditional" INTEGER NOT NULL,
    "conditionalRequirement" TEXT
);

-- CreateTable
CREATE TABLE "DefinedListsModel" (
    "type" TEXT,
    "name" TEXT,
    "definedListId" INTEGER PRIMARY KEY AUTOINCREMENT,
    "schoolCode" TEXT
);

-- CreateTable
CREATE TABLE "DirectoryPreferences" (
    "blockName" INTEGER,
    "blockCellPhone" INTEGER,
    "blockHomePhone" INTEGER,
    "blockAddress" INTEGER,
    "blockEmail" INTEGER,
    "personId" INTEGER NOT NULL,
    CONSTRAINT "DirectoryPreferences_personId_fkey" FOREIGN KEY ("personId") REFERENCES "Person" ("personId") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "Education" (
    "personId" INTEGER NOT NULL,
    "degreeSchool" TEXT,
    "degreeName" TEXT,
    "degreeYear" TEXT,
    "educationLevel" INTEGER,
    "degreeType" TEXT,
    "educationId" INTEGER PRIMARY KEY AUTOINCREMENT,
    CONSTRAINT "Education_personId_fkey" FOREIGN KEY ("personId") REFERENCES "Person" ("personId") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "EmergencyContact" (
    "emergencyContactID" INTEGER PRIMARY KEY AUTOINCREMENT,
    "firstName" TEXT,
    "lastName" TEXT,
    "middleName" TEXT,
    "salutation" TEXT,
    "suffix" TEXT,
    "homePhone" TEXT,
    "cellPhone" TEXT,
    "email" TEXT,
    "relationship" TEXT,
    "workPhone" TEXT,
    "studentID" INTEGER,
    "sortOrder" INTEGER,
    "refID" INTEGER,
    "note" TEXT,
    "countryCode" TEXT,
    "portalSortOrder" INTEGER NOT NULL,
    CONSTRAINT "EmergencyContact_refID_fkey" FOREIGN KEY ("refID") REFERENCES "Person" ("personId") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "EmergencyContact_studentID_fkey" FOREIGN KEY ("studentID") REFERENCES "StudentModel" ("studentId") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "EnrollmentHistory" (
    "beginDate" DATETIME,
    "endDate" DATETIME,
    "gradeLevel" TEXT,
    "note" TEXT,
    "schoolCode" TEXT,
    "status" TEXT,
    "studentId" INTEGER NOT NULL,
    "yearId" INTEGER,
    "enrollmentHistoryId" INTEGER PRIMARY KEY AUTOINCREMENT,
    CONSTRAINT "EnrollmentHistory_yearId_fkey" FOREIGN KEY ("yearId") REFERENCES "SchoolYearModel" ("yearId") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "EnrollmentHistory_studentId_fkey" FOREIGN KEY ("studentId") REFERENCES "StudentModel" ("studentId") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "Error" (
    "code" TEXT NOT NULL,
    "message" TEXT NOT NULL,
    "target" TEXT,
    "details" json,
    "innererror" TEXT
);

-- CreateTable
CREATE TABLE "ErrorResponse" (
    "error" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "FamilyConfig" (
    "familyName" TEXT,
    "enableWeb" INTEGER,
    "unlisted" INTEGER,
    "note" TEXT,
    "modifiedBy" INTEGER,
    "modifiedDate" DATETIME,
    "familyNameBP" TEXT,
    "parentsWebFinancialBlock" INTEGER NOT NULL,
    "familyID" INTEGER PRIMARY KEY AUTOINCREMENT
);

-- CreateTable
CREATE TABLE "Honors" (
    "calcMethod" TEXT,
    "gradeLevel" TEXT,
    "honorName" TEXT,
    "honorRollId" INTEGER,
    "maxClass" DECIMAL NOT NULL,
    "minAvg" DECIMAL NOT NULL,
    "minClass" DECIMAL NOT NULL,
    "minCredits" DECIMAL NOT NULL,
    "modifiedBy" INTEGER,
    "modifiedDate" DATETIME,
    "schoolCode" TEXT,
    "sequence" INTEGER NOT NULL,
    "timeFrame" INTEGER NOT NULL,
    "honorId" INTEGER PRIMARY KEY AUTOINCREMENT
);

-- CreateTable
CREATE TABLE "InquiryFormEditModel" (
    "standardAnswers" json,
    "customAnswers" json
);

-- CreateTable
CREATE TABLE "InquiryFormModel" (
    "requestId" INTEGER,
    "studentId" INTEGER,
    "schoolCode" TEXT,
    "schoolOptions" json,
    "standard" json,
    "custom" json,
    "interestCategories" json,
    CONSTRAINT "InquiryFormModel_studentId_fkey" FOREIGN KEY ("studentId") REFERENCES "StudentModel" ("studentId") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "InterestCategory" (
    "category" TEXT,
    "districtWide" INTEGER,
    "type" INTEGER,
    "sortOrder" INTEGER,
    "onlineApplication" INTEGER,
    "schoolCode" TEXT,
    "active" INTEGER,
    "interestCategoryID" INTEGER PRIMARY KEY AUTOINCREMENT
);

-- CreateTable
CREATE TABLE "InterestCategoryModel" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "description" TEXT,
    "sortOrder" INTEGER NOT NULL,
    "interestIds" json
);

-- CreateTable
CREATE TABLE "InterestItems" (
    "interest" TEXT,
    "interestCategoryID" INTEGER,
    "sortOrder" INTEGER,
    "active" INTEGER,
    "interestID" INTEGER PRIMARY KEY AUTOINCREMENT,
    CONSTRAINT "InterestItems_interestCategoryID_fkey" FOREIGN KEY ("interestCategoryID") REFERENCES "InterestCategory" ("interestCategoryID") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "ListOptionModel" (
    "display" TEXT,
    "keyValue" INTEGER,
    "textValue" TEXT,
    "sortOrder" INTEGER,
    "filter" TEXT
);

-- CreateTable
CREATE TABLE "ListValueModel" (
    "keyValue" INTEGER,
    "textValue" TEXT
);

-- CreateTable
CREATE TABLE "LockerModel" (
    "locker" TEXT,
    "lockerGroupId" INTEGER,
    "schoolCode" TEXT,
    "combination1" TEXT,
    "combination2" TEXT,
    "combination3" TEXT,
    "combination4" TEXT,
    "combination5" TEXT,
    "note" TEXT,
    "outOfService" INTEGER,
    "currentCombination" INTEGER,
    "lockerId" INTEGER PRIMARY KEY AUTOINCREMENT,
    "configSchoolId" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "LockerRequest" (
    "locker" TEXT,
    "lockerGroupId" INTEGER,
    "schoolCode" TEXT,
    "combination1" TEXT,
    "combination2" TEXT,
    "combination3" TEXT,
    "combination4" TEXT,
    "combination5" TEXT,
    "note" TEXT,
    "outOfService" INTEGER,
    "currentCombination" INTEGER
);

-- CreateTable
CREATE TABLE "Note" (
    "enteredById" INTEGER NOT NULL,
    "noteDate" DATETIME,
    "noteType" TEXT NOT NULL,
    "personId" INTEGER NOT NULL,
    "note" TEXT,
    "yearId" INTEGER,
    "noteId" INTEGER PRIMARY KEY AUTOINCREMENT,
    "modifiedById" INTEGER NOT NULL,
    CONSTRAINT "Note_yearId_fkey" FOREIGN KEY ("yearId") REFERENCES "SchoolYearModel" ("yearId") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "Note_modifiedById_fkey" FOREIGN KEY ("modifiedById") REFERENCES "Staff" ("staffId") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "Note_personId_fkey" FOREIGN KEY ("personId") REFERENCES "Person" ("personId") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "Note_enteredById_fkey" FOREIGN KEY ("enteredById") REFERENCES "Staff" ("staffId") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "ParentAlertEntity" (
    "id" TEXT PRIMARY KEY,
    "personId" INTEGER NOT NULL,
    "parentAlertPreference" TEXT,
    "parentAlertHomePhone" INTEGER,
    "parentAlertCellPhone" INTEGER,
    "parentAlertWorkPhone" INTEGER,
    "parentAlertNoText" INTEGER,
    CONSTRAINT "ParentAlertEntity_personId_fkey" FOREIGN KEY ("personId") REFERENCES "Person" ("personId") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "ParentStudent" (
    "parentID" INTEGER NOT NULL,
    "studentID" INTEGER NOT NULL,
    "custody" INTEGER,
    "correspondence" INTEGER,
    "relationship" TEXT,
    "grandparent" INTEGER,
    "emergencyContact" INTEGER,
    "reportCard" INTEGER,
    "pwBlock" INTEGER,
    "pickUp" INTEGER,
    "parentsWeb" INTEGER,
    "reEnroll" INTEGER,

    PRIMARY KEY ("parentID", "studentID"),
    CONSTRAINT "ParentStudent_studentID_fkey" FOREIGN KEY ("studentID") REFERENCES "StudentModel" ("studentId") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "ParentStudent_parentID_fkey" FOREIGN KEY ("parentID") REFERENCES "Person" ("personId") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "Person" (
    "personId" INTEGER PRIMARY KEY AUTOINCREMENT,
    "firstName" TEXT,
    "lastName" TEXT,
    "middleName" TEXT,
    "nickName" TEXT,
    "salutation" TEXT,
    "suffix" TEXT,
    "email" TEXT,
    "email2" TEXT,
    "username" TEXT,
    "homePhone" TEXT,
    "cellPhone" TEXT,
    "addressID" INTEGER,
    "deceased" INTEGER NOT NULL,
    "modifiedDate" DATETIME,
    CONSTRAINT "Person_addressID_fkey" FOREIGN KEY ("addressID") REFERENCES "Address" ("addressID") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "PersonDemographic" (
    "personId" INTEGER NOT NULL,
    "gender" TEXT,
    "birthdate" DATETIME,
    "ethnicity" TEXT,
    "citizenship" TEXT,
    "maritalStatus" TEXT,
    "primaryLanguage" TEXT,
    "birthplace" TEXT,
    "birthCity" TEXT,
    "birthState" TEXT,
    "birthCountry" TEXT,
    CONSTRAINT "PersonDemographic_personId_fkey" FOREIGN KEY ("personId") REFERENCES "Person" ("personId") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "PersonFamily" (
    "personId" INTEGER NOT NULL,
    "familyId" INTEGER NOT NULL,
    "parent" INTEGER,
    "student" INTEGER,
    "financialResponsibility" INTEGER,
    "financialResponsibilityPercent" TEXT,
    "familyOrder" INTEGER,
    "factsCustomer" INTEGER NOT NULL,

    PRIMARY KEY ("personId", "familyId"),
    CONSTRAINT "PersonFamily_familyId_fkey" FOREIGN KEY ("familyId") REFERENCES "FamilyConfig" ("familyID") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "PersonFamily_personId_fkey" FOREIGN KEY ("personId") REFERENCES "Person" ("personId") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "PersonInterest" (
    "personID" INTEGER NOT NULL,
    "interest" TEXT,
    CONSTRAINT "PersonInterest_personID_fkey" FOREIGN KEY ("personID") REFERENCES "Person" ("personId") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "PersonReligionEntity" (
    "id" TEXT PRIMARY KEY,
    "personId" INTEGER NOT NULL,
    "denomination" TEXT,
    "congregationId" INTEGER,
    "baptismCongregation" TEXT,
    "baptismCity" TEXT,
    "baptismState" TEXT,
    "baptismDate" TEXT,
    "communionCongregation" TEXT,
    "communionCity" TEXT,
    "communionState" TEXT,
    "communionDate" TEXT,
    "confirmationCongregation" TEXT,
    "confirmationCity" TEXT,
    "confirmationState" TEXT,
    "confirmationDate" TEXT,
    "reconciliationCongregation" TEXT,
    "reconciliationCity" TEXT,
    "reconciliationState" TEXT,
    "reconciliationDate" TEXT,
    "barMitzvahCongregation" TEXT,
    "barMitzvahCity" TEXT,
    "barMitzvahState" TEXT,
    "barMitzvahDate" TEXT,
    "localChurchMember" INTEGER,
    CONSTRAINT "PersonReligionEntity_personId_fkey" FOREIGN KEY ("personId") REFERENCES "Person" ("personId") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "PersonVehicleEntity" (
    "id" TEXT PRIMARY KEY,
    "personId" INTEGER NOT NULL,
    "autoMake" TEXT,
    "autoModel" TEXT,
    "autoLicense" TEXT,
    "driversLicense" TEXT,
    "permitNumber" TEXT,
    CONSTRAINT "PersonVehicleEntity_personId_fkey" FOREIGN KEY ("personId") REFERENCES "Person" ("personId") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "PersonWorkEntity" (
    "id" TEXT PRIMARY KEY,
    "personId" INTEGER NOT NULL,
    "occupation" TEXT,
    "company" TEXT,
    "jobCategory" TEXT,
    "workStreet" TEXT,
    "workFax" TEXT,
    "workPhone" TEXT,
    "workPhoneExtension" TEXT,
    "workCity" TEXT,
    "workState" TEXT,
    "workZip" TEXT,
    "matchingGiftEmployer" INTEGER,
    CONSTRAINT "PersonWorkEntity_personId_fkey" FOREIGN KEY ("personId") REFERENCES "Person" ("personId") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "PickupContact" (
    "cellPhone" TEXT,
    "countryCode" TEXT,
    "email" TEXT,
    "firstName" TEXT,
    "homePhone" TEXT,
    "lastName" TEXT,
    "middleName" TEXT,
    "note" TEXT,
    "portalSortOrder" INTEGER NOT NULL,
    "refId" INTEGER,
    "relationship" TEXT,
    "salutation" TEXT,
    "studentId" INTEGER NOT NULL,
    "suffix" TEXT,
    "workPhone" TEXT,
    "pickupId" INTEGER PRIMARY KEY AUTOINCREMENT,
    CONSTRAINT "PickupContact_refId_fkey" FOREIGN KEY ("refId") REFERENCES "Person" ("personId") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "PickupContact_studentId_fkey" FOREIGN KEY ("studentId") REFERENCES "StudentModel" ("studentId") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "ProblemDetails" (
    "type" TEXT,
    "title" TEXT,
    "status" INTEGER,
    "detail" TEXT,
    "instance" TEXT,
    "extensions" json NOT NULL
);

-- CreateTable
CREATE TABLE "ProfileImage" (
    "value" TEXT
);

-- CreateTable
CREATE TABLE "PublicSchool" (
    "personId" INTEGER NOT NULL,
    "publicSchoolDistrict" TEXT,
    "publicSchoolCounty" TEXT,
    "publicSchoolState" TEXT,
    "publicSchoolLocalSchool" TEXT,
    "publicSchoolCode" TEXT,
    CONSTRAINT "PublicSchool_personId_fkey" FOREIGN KEY ("personId") REFERENCES "Person" ("personId") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "QuestionBaseModel" (
    "label" TEXT,
    "columns" INTEGER,
    "questionAnswerType" TEXT NOT NULL,
    "requirementType" TEXT NOT NULL,
    "options" json
);

-- CreateTable
CREATE TABLE "ReligiousEvent" (
    "personId" INTEGER,
    "religiousEventDate" DATETIME,
    "religiousEventType" TEXT,
    "location" TEXT,
    "city" TEXT,
    "state" TEXT,
    "note" TEXT,
    "religiousEventId" INTEGER PRIMARY KEY AUTOINCREMENT,
    CONSTRAINT "ReligiousEvent_personId_fkey" FOREIGN KEY ("personId") REFERENCES "Person" ("personId") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "SchoolConfig" (
    "fax" TEXT,
    "phone" TEXT,
    "active" INTEGER NOT NULL,
    "address" TEXT,
    "city" TEXT,
    "configSchoolID" INTEGER PRIMARY KEY AUTOINCREMENT,
    "defaultTermId" INTEGER,
    "defaultYearId" INTEGER,
    "districtName" TEXT,
    "email" TEXT,
    "modifiedBy" INTEGER,
    "modifiedDate" DATETIME,
    "nextYearId" INTEGER,
    "parentAlert" INTEGER,
    "pwTermID" INTEGER,
    "pwTermID2" INTEGER,
    "pwYearID" INTEGER,
    "schoolCode" TEXT,
    "schoolLMS" INTEGER NOT NULL,
    "schoolName" TEXT,
    "state" TEXT,
    "zip" TEXT,
    CONSTRAINT "SchoolConfig_pwYearID_fkey" FOREIGN KEY ("pwYearID") REFERENCES "SchoolYearModel" ("yearId") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "SchoolConfig_pwTermID2_fkey" FOREIGN KEY ("pwTermID2") REFERENCES "SchoolTerms" ("uniqueTermID") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "SchoolConfig_pwTermID_fkey" FOREIGN KEY ("pwTermID") REFERENCES "SchoolTerms" ("uniqueTermID") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "SchoolConfig_nextYearId_fkey" FOREIGN KEY ("nextYearId") REFERENCES "SchoolYearModel" ("yearId") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "SchoolConfig_defaultYearId_fkey" FOREIGN KEY ("defaultYearId") REFERENCES "SchoolYearModel" ("yearId") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "SchoolConfig_defaultTermId_fkey" FOREIGN KEY ("defaultTermId") REFERENCES "SchoolTerms" ("uniqueTermID") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "SchoolTerms" (
    "termID" INTEGER NOT NULL,
    "yearID" INTEGER NOT NULL,
    "name" TEXT,
    "firstDay" DATETIME,
    "lastDay" DATETIME,
    "schoolCode" TEXT,
    "semesterID" TEXT,
    "modifiedBy" INTEGER,
    "modifiedDate" DATETIME,
    "uniqueTermID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    CONSTRAINT "SchoolTerms_schoolCode_fkey" FOREIGN KEY ("schoolCode") REFERENCES "SchoolConfig" ("schoolCode") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "SchoolTerms_yearID_fkey" FOREIGN KEY ("yearID") REFERENCES "SchoolYearModel" ("yearId") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "SchoolYearModel" (
    "yearName" TEXT,
    "allowInquiry" INTEGER,
    "blockAcademicYear" INTEGER NOT NULL,
    "yearId" INTEGER PRIMARY KEY AUTOINCREMENT,
    "firstDay" DATETIME,
    "lastDay" DATETIME,
    "schoolCode" TEXT,
    CONSTRAINT "SchoolYearModel_schoolCode_fkey" FOREIGN KEY ("schoolCode") REFERENCES "SchoolConfig" ("schoolCode") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "SchoolYearModel_yearId_fkey" FOREIGN KEY ("yearId") REFERENCES "SchoolYearModel" ("yearId") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "ServiceHoursModel" (
    "serviceHoursId" INTEGER PRIMARY KEY AUTOINCREMENT,
    "personId" INTEGER,
    "description" TEXT,
    "hours" DECIMAL,
    "date" DATETIME,
    "note" TEXT,
    "verifiedBy" TEXT,
    "createdBy" INTEGER,
    "yearId" INTEGER,
    CONSTRAINT "ServiceHoursModel_yearId_fkey" FOREIGN KEY ("yearId") REFERENCES "SchoolYearModel" ("yearId") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "ServiceHoursModel_personId_fkey" FOREIGN KEY ("personId") REFERENCES "Person" ("personId") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "Staff" (
    "active" INTEGER,
    "administrator" INTEGER,
    "blockSurvey" INTEGER,
    "districtUser" INTEGER,
    "districtWideUser" INTEGER,
    "dualEnrolledUser" INTEGER,
    "elementary" INTEGER,
    "faculty" INTEGER,
    "fullTime" INTEGER,
    "highSchool" INTEGER,
    "middleSchool" INTEGER,
    "preschool" INTEGER,
    "staffDirectoryBlock" INTEGER,
    "substitute" INTEGER,
    "unsubscribeRenWebEmail" INTEGER,
    "endDate" DATETIME,
    "startDate" DATETIME,
    "fte" DECIMAL,
    "financialFamilyId" INTEGER,
    "pda" INTEGER,
    "roomId" INTEGER,
    "schools" json,
    "department" TEXT,
    "firstName" TEXT,
    "lastName" TEXT,
    "legacyStaffId" TEXT,
    "middleName" TEXT,
    "parentAlertPin" TEXT,
    "spouse" TEXT,
    "teacherSite" TEXT,
    "staffId" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT
);

-- CreateTable
CREATE TABLE "StaffObservations" (
    "endDate" DATETIME,
    "eval" INTEGER,
    "evaluatorId" INTEGER NOT NULL,
    "observationConfigId" INTEGER NOT NULL,
    "personId" INTEGER NOT NULL,
    "startDate" DATETIME,
    "title" TEXT,
    "observationId" INTEGER PRIMARY KEY AUTOINCREMENT,
    CONSTRAINT "StaffObservations_personId_fkey" FOREIGN KEY ("personId") REFERENCES "Person" ("personId") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "StaffObservations_evaluatorId_fkey" FOREIGN KEY ("evaluatorId") REFERENCES "Staff" ("staffId") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "StandardAnswerModel" (
    "boolValue" INTEGER,
    "textValue" TEXT,
    "dateValue" DATETIME,
    "intValue" INTEGER,
    "listValues" json,
    "id" TEXT PRIMARY KEY
);

-- CreateTable
CREATE TABLE "StandardQuestionAnswerModel" (
    "question" TEXT,
    "answer" TEXT
);

-- CreateTable
CREATE TABLE "StandardQuestionModel" (
    "label" TEXT,
    "columns" INTEGER,
    "questionAnswerType" TEXT NOT NULL,
    "requirementType" TEXT NOT NULL,
    "options" json,
    "id" TEXT PRIMARY KEY
);

-- CreateTable
CREATE TABLE "StatusModel" (
    "status" TEXT,
    "displayName" TEXT,
    "subStatus" json
);

-- CreateTable
CREATE TABLE "StudentLockerModel" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "name" TEXT
);

-- CreateTable
CREATE TABLE "StudentModel" (
    "school" TEXT,
    "locker" json,
    "configSchoolId" INTEGER NOT NULL,
    "personStudentId" INTEGER NOT NULL,
    "studentId" INTEGER PRIMARY KEY AUTOINCREMENT,
    "schoolCode" TEXT,
    CONSTRAINT "StudentModel_schoolCode_fkey" FOREIGN KEY ("schoolCode") REFERENCES "SchoolConfig" ("schoolCode") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "StudentModel_configSchoolId_fkey" FOREIGN KEY ("configSchoolId") REFERENCES "SchoolConfig" ("configSchoolID") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "StudentModel_personStudentId_fkey" FOREIGN KEY ("personStudentId") REFERENCES "Person" ("personId") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "StudentPreProgressionModel" (
    "preProgressionStatus" TEXT,
    "preProgressionNextStatus" TEXT,
    "preProgressionGradeLevel" TEXT,
    "preProgressionNextGradeLevel" TEXT,
    "preProgressionSchoolCode" TEXT,
    "preProgressionNextSchoolCode" TEXT,
    "preProgressionProgressionDate" DATETIME,
    "progressionDate" DATETIME,
    "personStudentId" INTEGER NOT NULL,
    CONSTRAINT "StudentPreProgressionModel_personStudentId_fkey" FOREIGN KEY ("personStudentId") REFERENCES "Person" ("personId") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "StudentRecognitionModel" (
    "studentId" INTEGER,
    "yearId" INTEGER,
    "recognition" TEXT,
    "note" TEXT,
    "category" TEXT,
    "gradeLevel" TEXT,
    "recognitionId" INTEGER PRIMARY KEY AUTOINCREMENT,
    "schoolCode" TEXT,
    CONSTRAINT "StudentRecognitionModel_schoolCode_fkey" FOREIGN KEY ("schoolCode") REFERENCES "SchoolConfig" ("schoolCode") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "StudentRecognitionModel_yearId_fkey" FOREIGN KEY ("yearId") REFERENCES "SchoolYearModel" ("yearId") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "StudentRecognitionModel_studentId_fkey" FOREIGN KEY ("studentId") REFERENCES "StudentModel" ("studentId") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "StudentSchoolModel" (
    "personId" INTEGER,
    "status" TEXT,
    "substatus" TEXT,
    "enrollDate" DATETIME,
    "withdrawDate" DATETIME,
    "withdrawReason" TEXT,
    "graduationDate" DATETIME,
    "gradeLevel" TEXT,
    "nextStatus" TEXT,
    "nextSchoolCode" TEXT,
    "nextGradeLevel" TEXT,
    CONSTRAINT "StudentSchoolModel_nextSchoolCode_fkey" FOREIGN KEY ("nextSchoolCode") REFERENCES "SchoolConfig" ("schoolCode") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "StudentSchoolModel_personId_fkey" FOREIGN KEY ("personId") REFERENCES "Person" ("personId") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "StudentServiceHoursModel" (
    "serviceHoursId" INTEGER NOT NULL,
    "personId" INTEGER,
    "description" TEXT,
    "hours" DECIMAL,
    "date" DATETIME,
    "note" TEXT,
    "verifiedBy" TEXT,
    "createdBy" INTEGER,
    CONSTRAINT "StudentServiceHoursModel_createdBy_fkey" FOREIGN KEY ("createdBy") REFERENCES "Staff" ("staffId") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "StudentServiceHoursModel_serviceHoursId_fkey" FOREIGN KEY ("serviceHoursId") REFERENCES "ServiceHoursModel" ("serviceHoursId") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "StudentServiceHoursModel_personId_fkey" FOREIGN KEY ("personId") REFERENCES "Person" ("personId") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "SubStatusModel" (
    "status" TEXT,
    "schoolCode" TEXT,
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    CONSTRAINT "SubStatusModel_schoolCode_fkey" FOREIGN KEY ("schoolCode") REFERENCES "SchoolConfig" ("schoolCode") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "UserDefinedDataModel" (
    "fieldId" INTEGER NOT NULL,
    "linkedId" INTEGER NOT NULL,
    "data" TEXT,
    "dataId" INTEGER PRIMARY KEY AUTOINCREMENT
);

-- CreateTable
CREATE TABLE "UserDefinedFieldModel" (
    "groupId" INTEGER,
    "fieldName" TEXT,
    "fieldType" INTEGER,
    "fieldOrder" INTEGER,
    "listItems" json,
    "fieldId" INTEGER PRIMARY KEY AUTOINCREMENT
);

-- CreateTable
CREATE TABLE "UserDefinedGroupModel" (
    "groupType" TEXT,
    "groupName" TEXT,
    "groupOrder" INTEGER,
    "districtWide" INTEGER,
    "groupId" INTEGER PRIMARY KEY AUTOINCREMENT,
    "schoolCode" TEXT,
    "fieldList" json,
    "securityLevel" INTEGER,
    CONSTRAINT "UserDefinedGroupModel_schoolCode_fkey" FOREIGN KEY ("schoolCode") REFERENCES "SchoolConfig" ("schoolCode") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CreateTable
CREATE TABLE "UserDefinedGroupSecurityItemModel" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "securityLevel" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "UserDefinedGroupSecurityModel" (
    "canEveryoneUse" INTEGER NOT NULL,
    "group" json,
    "person" json
);

-- CreateIndex
Pragma writable_schema=1;
CREATE UNIQUE INDEX "sqlite_autoindex_SchoolConfig_2" ON "SchoolConfig"("schoolCode");
Pragma writable_schema=0;

-- CreateIndex
Pragma writable_schema=1;
CREATE UNIQUE INDEX "sqlite_autoindex_SchoolTerms_2" ON "SchoolTerms"("termID", "yearID");
Pragma writable_schema=0;
