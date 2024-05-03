/*
  Warnings:

  - Made the column `id` on table `StandardQuestionModel` required. This step will fail if there are existing NULL values in that column.
  - Added the required column `id` to the `PublicSchool` table without a default value. This is not possible if the table is not empty.
  - Made the column `personId` on table `StudentSchoolModel` required. This step will fail if there are existing NULL values in that column.
  - Made the column `id` on table `StandardAnswerModel` required. This step will fail if there are existing NULL values in that column.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_CreateInquiryFormCommand" (
    "requestId" INTEGER PRIMARY KEY AUTOINCREMENT,
    "studentId" INTEGER NOT NULL,
    CONSTRAINT "CreateInquiryFormCommand_studentId_fkey" FOREIGN KEY ("studentId") REFERENCES "StudentModel" ("studentId") ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO "new_CreateInquiryFormCommand" ("requestId", "studentId") SELECT "requestId", "studentId" FROM "CreateInquiryFormCommand";
DROP TABLE "CreateInquiryFormCommand";
ALTER TABLE "new_CreateInquiryFormCommand" RENAME TO "CreateInquiryFormCommand";
CREATE TABLE "new_DefinedListsModel" (
    "type" TEXT,
    "name" TEXT,
    "definedListId" INTEGER PRIMARY KEY AUTOINCREMENT,
    "schoolCode" TEXT
);
INSERT INTO "new_DefinedListsModel" ("definedListId", "name", "schoolCode", "type") SELECT "definedListId", "name", "schoolCode", "type" FROM "DefinedListsModel";
DROP TABLE "DefinedListsModel";
ALTER TABLE "new_DefinedListsModel" RENAME TO "DefinedListsModel";
CREATE TABLE "new_ConditionalRequirementModel" (
    "triggerQuestionId" INTEGER PRIMARY KEY AUTOINCREMENT,
    "options" json
);
INSERT INTO "new_ConditionalRequirementModel" ("options", "triggerQuestionId") SELECT "options", "triggerQuestionId" FROM "ConditionalRequirementModel";
DROP TABLE "ConditionalRequirementModel";
ALTER TABLE "new_ConditionalRequirementModel" RENAME TO "ConditionalRequirementModel";
CREATE TABLE "new_BehaviorEvents" (
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
INSERT INTO "new_BehaviorEvents" ("dateOfIncident", "demerits", "descriptionOfIncident", "disciplineID", "history", "level", "modifiedBy", "modifiedDate", "notified", "reportedBy", "reviewedBy", "sanction1", "sanction2", "sanctionDate1", "sanctionDate2", "staffID", "status", "studentID", "type", "violation") SELECT "dateOfIncident", "demerits", "descriptionOfIncident", "disciplineID", "history", "level", "modifiedBy", "modifiedDate", "notified", "reportedBy", "reviewedBy", "sanction1", "sanction2", "sanctionDate1", "sanctionDate2", "staffID", "status", "studentID", "type", "violation" FROM "BehaviorEvents";
DROP TABLE "BehaviorEvents";
ALTER TABLE "new_BehaviorEvents" RENAME TO "BehaviorEvents";
CREATE TABLE "new_AssignmentGradesModel" (
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
INSERT INTO "new_AssignmentGradesModel" ("bonusPoints", "curvePoints", "displayGrade", "emailSent", "maxPoints", "notes", "penaltyPoints", "receivedPoints", "sisAssignmentId", "sisGradeId", "status", "studentId", "weight") SELECT "bonusPoints", "curvePoints", "displayGrade", "emailSent", "maxPoints", "notes", "penaltyPoints", "receivedPoints", "sisAssignmentId", "sisGradeId", "status", "studentId", "weight" FROM "AssignmentGradesModel";
DROP TABLE "AssignmentGradesModel";
ALTER TABLE "new_AssignmentGradesModel" RENAME TO "AssignmentGradesModel";
CREATE TABLE "new_InterestCategoryModel" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "description" TEXT,
    "sortOrder" INTEGER NOT NULL,
    "interestIds" json
);
INSERT INTO "new_InterestCategoryModel" ("description", "id", "interestIds", "sortOrder") SELECT "description", "id", "interestIds", "sortOrder" FROM "InterestCategoryModel";
DROP TABLE "InterestCategoryModel";
ALTER TABLE "new_InterestCategoryModel" RENAME TO "InterestCategoryModel";
CREATE TABLE "new_Note" (
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
INSERT INTO "new_Note" ("enteredById", "modifiedById", "note", "noteDate", "noteId", "noteType", "personId", "yearId") SELECT "enteredById", "modifiedById", "note", "noteDate", "noteId", "noteType", "personId", "yearId" FROM "Note";
DROP TABLE "Note";
ALTER TABLE "new_Note" RENAME TO "Note";
CREATE TABLE "new_Courses" (
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
INSERT INTO "new_Courses" ("abbreviation", "active", "activity", "attendance", "courseID", "courseType", "defaultStaffID", "department", "departmentID", "description", "elective", "elementary", "homeRoom", "hs", "legacyCourseID", "levelID", "maxSize", "middleSchool", "modifiedBy", "modifiedDate", "preSchool", "schoolCode", "stateID", "title") SELECT "abbreviation", "active", "activity", "attendance", "courseID", "courseType", "defaultStaffID", "department", "departmentID", "description", "elective", "elementary", "homeRoom", "hs", "legacyCourseID", "levelID", "maxSize", "middleSchool", "modifiedBy", "modifiedDate", "preSchool", "schoolCode", "stateID", "title" FROM "Courses";
DROP TABLE "Courses";
ALTER TABLE "new_Courses" RENAME TO "Courses";
CREATE TABLE "new_Address" (
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
INSERT INTO "new_Address" ("address1", "address2", "addressID", "city", "country", "greeting1", "greeting2", "greeting3", "greeting4", "greeting5", "modifiedBy", "modifiedDate", "newStudentInquiryID", "state", "zip") SELECT "address1", "address2", "addressID", "city", "country", "greeting1", "greeting2", "greeting3", "greeting4", "greeting5", "modifiedBy", "modifiedDate", "newStudentInquiryID", "state", "zip" FROM "Address";
DROP TABLE "Address";
ALTER TABLE "new_Address" RENAME TO "Address";
CREATE TABLE "new_FamilyConfig" (
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
INSERT INTO "new_FamilyConfig" ("enableWeb", "familyID", "familyName", "familyNameBP", "modifiedBy", "modifiedDate", "note", "parentsWebFinancialBlock", "unlisted") SELECT "enableWeb", "familyID", "familyName", "familyNameBP", "modifiedBy", "modifiedDate", "note", "parentsWebFinancialBlock", "unlisted" FROM "FamilyConfig";
DROP TABLE "FamilyConfig";
ALTER TABLE "new_FamilyConfig" RENAME TO "FamilyConfig";
CREATE TABLE "new_AssignmentModel" (
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
INSERT INTO "new_AssignmentModel" ("assignmentNumber", "calculate", "classAssignmentId", "classCategoryId", "classId", "dateAssigned", "dateAssignedUtc", "dateDue", "dateDueUtc", "description", "descriptionHtml", "extraCreditType", "googleAssignmentId", "isLmsAssignment", "lmsItemId", "lmsItemTypeId", "markedAsTest", "maxPoints", "modifiedBy", "modifiedDate", "publish", "sisAssignmentId", "systemOfRecord", "title", "weight") SELECT "assignmentNumber", "calculate", "classAssignmentId", "classCategoryId", "classId", "dateAssigned", "dateAssignedUtc", "dateDue", "dateDueUtc", "description", "descriptionHtml", "extraCreditType", "googleAssignmentId", "isLmsAssignment", "lmsItemId", "lmsItemTypeId", "markedAsTest", "maxPoints", "modifiedBy", "modifiedDate", "publish", "sisAssignmentId", "systemOfRecord", "title", "weight" FROM "AssignmentModel";
DROP TABLE "AssignmentModel";
ALTER TABLE "new_AssignmentModel" RENAME TO "AssignmentModel";
CREATE TABLE "new_Honors" (
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
INSERT INTO "new_Honors" ("calcMethod", "gradeLevel", "honorId", "honorName", "honorRollId", "maxClass", "minAvg", "minClass", "minCredits", "modifiedBy", "modifiedDate", "schoolCode", "sequence", "timeFrame") SELECT "calcMethod", "gradeLevel", "honorId", "honorName", "honorRollId", "maxClass", "minAvg", "minClass", "minCredits", "modifiedBy", "modifiedDate", "schoolCode", "sequence", "timeFrame" FROM "Honors";
DROP TABLE "Honors";
ALTER TABLE "new_Honors" RENAME TO "Honors";
CREATE TABLE "new_Conference" (
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
INSERT INTO "new_Conference" ("conferenceId", "date", "location", "modifiedBy", "modifiedDate", "parent", "problem", "problem1", "problem10", "problem2", "problem3", "problem4", "problem5", "problem6", "problem7", "problem8", "problem9", "reason", "reason1", "reason2", "reason3", "recommendation", "staffID", "studentId", "subject") SELECT "conferenceId", "date", "location", "modifiedBy", "modifiedDate", "parent", "problem", "problem1", "problem10", "problem2", "problem3", "problem4", "problem5", "problem6", "problem7", "problem8", "problem9", "reason", "reason1", "reason2", "reason3", "recommendation", "staffID", "studentId", "subject" FROM "Conference";
DROP TABLE "Conference";
ALTER TABLE "new_Conference" RENAME TO "Conference";
CREATE TABLE "new_InterestItems" (
    "interest" TEXT,
    "interestCategoryID" INTEGER,
    "sortOrder" INTEGER,
    "active" INTEGER,
    "interestID" INTEGER PRIMARY KEY AUTOINCREMENT,
    CONSTRAINT "InterestItems_interestCategoryID_fkey" FOREIGN KEY ("interestCategoryID") REFERENCES "InterestCategory" ("interestCategoryID") ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO "new_InterestItems" ("active", "interest", "interestCategoryID", "interestID", "sortOrder") SELECT "active", "interest", "interestCategoryID", "interestID", "sortOrder" FROM "InterestItems";
DROP TABLE "InterestItems";
ALTER TABLE "new_InterestItems" RENAME TO "InterestItems";
CREATE TABLE "new_StandardQuestionModel" (
    "label" TEXT,
    "columns" INTEGER,
    "questionAnswerType" TEXT NOT NULL,
    "requirementType" TEXT NOT NULL,
    "options" json,
    "id" TEXT NOT NULL PRIMARY KEY
);
INSERT INTO "new_StandardQuestionModel" ("columns", "id", "label", "options", "questionAnswerType", "requirementType") SELECT "columns", "id", "label", "options", "questionAnswerType", "requirementType" FROM "StandardQuestionModel";
DROP TABLE "StandardQuestionModel";
ALTER TABLE "new_StandardQuestionModel" RENAME TO "StandardQuestionModel";
CREATE TABLE "new_Class" (
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
INSERT INTO "new_Class" ("aideId", "classId", "closed", "color", "colorText", "courseID", "googleCourseId", "legacyClassId", "linkedClassId", "maleFemale", "modifiedBy", "modifiedDate", "name", "pattern", "requiredRoom", "secondaryStaffId", "section", "staffId", "term1", "term2", "term3", "term4", "term5", "term6", "yearId") SELECT "aideId", "classId", "closed", "color", "colorText", "courseID", "googleCourseId", "legacyClassId", "linkedClassId", "maleFemale", "modifiedBy", "modifiedDate", "name", "pattern", "requiredRoom", "secondaryStaffId", "section", "staffId", "term1", "term2", "term3", "term4", "term5", "term6", "yearId" FROM "Class";
DROP TABLE "Class";
ALTER TABLE "new_Class" RENAME TO "Class";
CREATE TABLE "new_EmergencyContact" (
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
INSERT INTO "new_EmergencyContact" ("cellPhone", "countryCode", "email", "emergencyContactID", "firstName", "homePhone", "lastName", "middleName", "note", "portalSortOrder", "refID", "relationship", "salutation", "sortOrder", "studentID", "suffix", "workPhone") SELECT "cellPhone", "countryCode", "email", "emergencyContactID", "firstName", "homePhone", "lastName", "middleName", "note", "portalSortOrder", "refID", "relationship", "salutation", "sortOrder", "studentID", "suffix", "workPhone" FROM "EmergencyContact";
DROP TABLE "EmergencyContact";
ALTER TABLE "new_EmergencyContact" RENAME TO "EmergencyContact";
CREATE TABLE "new_PublicSchool" (
    "personId" INTEGER NOT NULL,
    "publicSchoolDistrict" TEXT,
    "publicSchoolCounty" TEXT,
    "publicSchoolState" TEXT,
    "publicSchoolLocalSchool" TEXT,
    "publicSchoolCode" TEXT,
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    CONSTRAINT "PublicSchool_personId_fkey" FOREIGN KEY ("personId") REFERENCES "Person" ("personId") ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO "new_PublicSchool" ("personId", "publicSchoolCode", "publicSchoolCounty", "publicSchoolDistrict", "publicSchoolLocalSchool", "publicSchoolState") SELECT "personId", "publicSchoolCode", "publicSchoolCounty", "publicSchoolDistrict", "publicSchoolLocalSchool", "publicSchoolState" FROM "PublicSchool";
DROP TABLE "PublicSchool";
ALTER TABLE "new_PublicSchool" RENAME TO "PublicSchool";
CREATE TABLE "new_AssignmentCategoryModel" (
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
INSERT INTO "new_AssignmentCategoryModel" ("classCategoryId", "classId", "description", "drop", "meetsInTerm1", "meetsInTerm2", "meetsInTerm3", "meetsInTerm4", "meetsInTerm5", "meetsInTerm6", "sisCategoryId", "title", "weight") SELECT "classCategoryId", "classId", "description", "drop", "meetsInTerm1", "meetsInTerm2", "meetsInTerm3", "meetsInTerm4", "meetsInTerm5", "meetsInTerm6", "sisCategoryId", "title", "weight" FROM "AssignmentCategoryModel";
DROP TABLE "AssignmentCategoryModel";
ALTER TABLE "new_AssignmentCategoryModel" RENAME TO "AssignmentCategoryModel";
CREATE TABLE "new_StudentServiceHoursModel" (
    "serviceHoursId" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
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
INSERT INTO "new_StudentServiceHoursModel" ("createdBy", "date", "description", "hours", "note", "personId", "serviceHoursId", "verifiedBy") SELECT "createdBy", "date", "description", "hours", "note", "personId", "serviceHoursId", "verifiedBy" FROM "StudentServiceHoursModel";
DROP TABLE "StudentServiceHoursModel";
ALTER TABLE "new_StudentServiceHoursModel" RENAME TO "StudentServiceHoursModel";
CREATE TABLE "new_Congregation" (
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
INSERT INTO "new_Congregation" ("congregationCity", "congregationId", "congregationName", "congregationPhone", "congregationState", "congregationStreet", "congregationZip", "seniorPastor", "youthPastor") SELECT "congregationCity", "congregationId", "congregationName", "congregationPhone", "congregationState", "congregationStreet", "congregationZip", "seniorPastor", "youthPastor" FROM "Congregation";
DROP TABLE "Congregation";
ALTER TABLE "new_Congregation" RENAME TO "Congregation";
CREATE TABLE "new_Education" (
    "personId" INTEGER NOT NULL,
    "degreeSchool" TEXT,
    "degreeName" TEXT,
    "degreeYear" TEXT,
    "educationLevel" INTEGER,
    "degreeType" TEXT,
    "educationId" INTEGER PRIMARY KEY AUTOINCREMENT,
    CONSTRAINT "Education_personId_fkey" FOREIGN KEY ("personId") REFERENCES "Person" ("personId") ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO "new_Education" ("degreeName", "degreeSchool", "degreeType", "degreeYear", "educationId", "educationLevel", "personId") SELECT "degreeName", "degreeSchool", "degreeType", "degreeYear", "educationId", "educationLevel", "personId" FROM "Education";
DROP TABLE "Education";
ALTER TABLE "new_Education" RENAME TO "Education";
CREATE TABLE "new_AdvisingNote" (
    "note" TEXT,
    "date" DATETIME,
    "studentId" INTEGER,
    "modifiedBy" INTEGER,
    "modifiedDate" DATETIME,
    "noteId" INTEGER PRIMARY KEY AUTOINCREMENT,
    CONSTRAINT "AdvisingNote_studentId_fkey" FOREIGN KEY ("studentId") REFERENCES "StudentModel" ("studentId") ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO "new_AdvisingNote" ("date", "modifiedBy", "modifiedDate", "note", "noteId", "studentId") SELECT "date", "modifiedBy", "modifiedDate", "note", "noteId", "studentId" FROM "AdvisingNote";
DROP TABLE "AdvisingNote";
ALTER TABLE "new_AdvisingNote" RENAME TO "AdvisingNote";
CREATE TABLE "new_InterestCategory" (
    "category" TEXT,
    "districtWide" INTEGER,
    "type" INTEGER,
    "sortOrder" INTEGER,
    "onlineApplication" INTEGER,
    "schoolCode" TEXT,
    "active" INTEGER,
    "interestCategoryID" INTEGER PRIMARY KEY AUTOINCREMENT
);
INSERT INTO "new_InterestCategory" ("active", "category", "districtWide", "interestCategoryID", "onlineApplication", "schoolCode", "sortOrder", "type") SELECT "active", "category", "districtWide", "interestCategoryID", "onlineApplication", "schoolCode", "sortOrder", "type" FROM "InterestCategory";
DROP TABLE "InterestCategory";
ALTER TABLE "new_InterestCategory" RENAME TO "InterestCategory";
CREATE TABLE "new_AlertApplication" (
    "alertID" INTEGER NOT NULL,
    "applicationID" INTEGER PRIMARY KEY AUTOINCREMENT,
    "visual" INTEGER,
    "beep" INTEGER,
    "popUp" INTEGER,
    "popUpAlways" INTEGER,
    CONSTRAINT "AlertApplication_alertID_fkey" FOREIGN KEY ("alertID") REFERENCES "Alert" ("alertID") ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO "new_AlertApplication" ("alertID", "applicationID", "beep", "popUp", "popUpAlways", "visual") SELECT "alertID", "applicationID", "beep", "popUp", "popUpAlways", "visual" FROM "AlertApplication";
DROP TABLE "AlertApplication";
ALTER TABLE "new_AlertApplication" RENAME TO "AlertApplication";
CREATE TABLE "new_EnrollmentHistory" (
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
INSERT INTO "new_EnrollmentHistory" ("beginDate", "endDate", "enrollmentHistoryId", "gradeLevel", "note", "schoolCode", "status", "studentId", "yearId") SELECT "beginDate", "endDate", "enrollmentHistoryId", "gradeLevel", "note", "schoolCode", "status", "studentId", "yearId" FROM "EnrollmentHistory";
DROP TABLE "EnrollmentHistory";
ALTER TABLE "new_EnrollmentHistory" RENAME TO "EnrollmentHistory";
CREATE TABLE "new_StudentSchoolModel" (
    "personId" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
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
INSERT INTO "new_StudentSchoolModel" ("enrollDate", "gradeLevel", "graduationDate", "nextGradeLevel", "nextSchoolCode", "nextStatus", "personId", "status", "substatus", "withdrawDate", "withdrawReason") SELECT "enrollDate", "gradeLevel", "graduationDate", "nextGradeLevel", "nextSchoolCode", "nextStatus", "personId", "status", "substatus", "withdrawDate", "withdrawReason" FROM "StudentSchoolModel";
DROP TABLE "StudentSchoolModel";
ALTER TABLE "new_StudentSchoolModel" RENAME TO "StudentSchoolModel";
CREATE TABLE "new_CustomQuestionModel" (
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
INSERT INTO "new_CustomQuestionModel" ("columns", "conditionalRequirement", "eventId", "fullText", "id", "isConditional", "label", "options", "questionAnswerType", "requestLevel", "requirementType", "sortOrder") SELECT "columns", "conditionalRequirement", "eventId", "fullText", "id", "isConditional", "label", "options", "questionAnswerType", "requestLevel", "requirementType", "sortOrder" FROM "CustomQuestionModel";
DROP TABLE "CustomQuestionModel";
ALTER TABLE "new_CustomQuestionModel" RENAME TO "CustomQuestionModel";
CREATE TABLE "new_LockerModel" (
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
INSERT INTO "new_LockerModel" ("combination1", "combination2", "combination3", "combination4", "combination5", "configSchoolId", "currentCombination", "locker", "lockerGroupId", "lockerId", "note", "outOfService", "schoolCode") SELECT "combination1", "combination2", "combination3", "combination4", "combination5", "configSchoolId", "currentCombination", "locker", "lockerGroupId", "lockerId", "note", "outOfService", "schoolCode" FROM "LockerModel";
DROP TABLE "LockerModel";
ALTER TABLE "new_LockerModel" RENAME TO "LockerModel";
CREATE TABLE "new_ClassAssignmentGradeCodeTranslationModel" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "classId" INTEGER NOT NULL,
    "letterCode" TEXT NOT NULL,
    "percent" DECIMAL NOT NULL,
    "statusCode" TEXT NOT NULL,
    CONSTRAINT "ClassAssignmentGradeCodeTranslationModel_classId_fkey" FOREIGN KEY ("classId") REFERENCES "Class" ("classId") ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO "new_ClassAssignmentGradeCodeTranslationModel" ("classId", "id", "letterCode", "percent", "statusCode") SELECT "classId", "id", "letterCode", "percent", "statusCode" FROM "ClassAssignmentGradeCodeTranslationModel";
DROP TABLE "ClassAssignmentGradeCodeTranslationModel";
ALTER TABLE "new_ClassAssignmentGradeCodeTranslationModel" RENAME TO "ClassAssignmentGradeCodeTranslationModel";
CREATE TABLE "new_StandardAnswerModel" (
    "boolValue" INTEGER,
    "textValue" TEXT,
    "dateValue" DATETIME,
    "intValue" INTEGER,
    "listValues" json,
    "id" TEXT NOT NULL PRIMARY KEY
);
INSERT INTO "new_StandardAnswerModel" ("boolValue", "dateValue", "id", "intValue", "listValues", "textValue") SELECT "boolValue", "dateValue", "id", "intValue", "listValues", "textValue" FROM "StandardAnswerModel";
DROP TABLE "StandardAnswerModel";
ALTER TABLE "new_StandardAnswerModel" RENAME TO "StandardAnswerModel";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
