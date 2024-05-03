/*
  Warnings:

  - The primary key for the `StudentServiceHoursModel` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `ParentAlertEntity` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - Added the required column `id` to the `ListOptionModel` table without a default value. This is not possible if the table is not empty.
  - Added the required column `id` to the `ProblemDetails` table without a default value. This is not possible if the table is not empty.
  - Made the column `personId` on table `StudentServiceHoursModel` required. This step will fail if there are existing NULL values in that column.
  - Added the required column `id` to the `Error` table without a default value. This is not possible if the table is not empty.
  - Added the required column `id` to the `LockerRequest` table without a default value. This is not possible if the table is not empty.
  - Added the required column `id` to the `StandardQuestionAnswerModel` table without a default value. This is not possible if the table is not empty.
  - Added the required column `id` to the `ListValueModel` table without a default value. This is not possible if the table is not empty.
  - Added the required column `id` to the `StatusModel` table without a default value. This is not possible if the table is not empty.
  - Added the required column `id` to the `ErrorResponse` table without a default value. This is not possible if the table is not empty.
  - Made the column `id` on table `ParentAlertEntity` required. This step will fail if there are existing NULL values in that column.
  - Made the column `id` on table `PersonReligionEntity` required. This step will fail if there are existing NULL values in that column.
  - Added the required column `id` to the `ProfileImage` table without a default value. This is not possible if the table is not empty.
  - Made the column `id` on table `PersonWorkEntity` required. This step will fail if there are existing NULL values in that column.
  - Added the required column `id` to the `InquiryFormModel` table without a default value. This is not possible if the table is not empty.
  - Added the required column `id` to the `QuestionBaseModel` table without a default value. This is not possible if the table is not empty.
  - Added the required column `id` to the `UserDefinedGroupSecurityModel` table without a default value. This is not possible if the table is not empty.
  - Added the required column `id` to the `InquiryFormEditModel` table without a default value. This is not possible if the table is not empty.
  - Made the column `id` on table `PersonVehicleEntity` required. This step will fail if there are existing NULL values in that column.
  - Added the required column `id` to the `DirectoryPreferences` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_ListOptionModel" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "display" TEXT,
    "keyValue" INTEGER,
    "textValue" TEXT,
    "sortOrder" INTEGER,
    "filter" TEXT
);
INSERT INTO "new_ListOptionModel" ("display", "filter", "keyValue", "sortOrder", "textValue") SELECT "display", "filter", "keyValue", "sortOrder", "textValue" FROM "ListOptionModel";
DROP TABLE "ListOptionModel";
ALTER TABLE "new_ListOptionModel" RENAME TO "ListOptionModel";
CREATE TABLE "new_ProblemDetails" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "type" TEXT,
    "title" TEXT,
    "status" INTEGER,
    "detail" TEXT,
    "instance" TEXT,
    "extensions" json NOT NULL
);
INSERT INTO "new_ProblemDetails" ("detail", "extensions", "instance", "status", "title", "type") SELECT "detail", "extensions", "instance", "status", "title", "type" FROM "ProblemDetails";
DROP TABLE "ProblemDetails";
ALTER TABLE "new_ProblemDetails" RENAME TO "ProblemDetails";
CREATE TABLE "new_StudentPreProgressionModel" (
    "preProgressionStatus" TEXT,
    "preProgressionNextStatus" TEXT,
    "preProgressionGradeLevel" TEXT,
    "preProgressionNextGradeLevel" TEXT,
    "preProgressionSchoolCode" TEXT,
    "preProgressionNextSchoolCode" TEXT,
    "preProgressionProgressionDate" DATETIME,
    "progressionDate" DATETIME,
    "personStudentId" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    CONSTRAINT "StudentPreProgressionModel_personStudentId_fkey" FOREIGN KEY ("personStudentId") REFERENCES "Person" ("personId") ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO "new_StudentPreProgressionModel" ("personStudentId", "preProgressionGradeLevel", "preProgressionNextGradeLevel", "preProgressionNextSchoolCode", "preProgressionNextStatus", "preProgressionProgressionDate", "preProgressionSchoolCode", "preProgressionStatus", "progressionDate") SELECT "personStudentId", "preProgressionGradeLevel", "preProgressionNextGradeLevel", "preProgressionNextSchoolCode", "preProgressionNextStatus", "preProgressionProgressionDate", "preProgressionSchoolCode", "preProgressionStatus", "progressionDate" FROM "StudentPreProgressionModel";
DROP TABLE "StudentPreProgressionModel";
ALTER TABLE "new_StudentPreProgressionModel" RENAME TO "StudentPreProgressionModel";
CREATE TABLE "new_StudentServiceHoursModel" (
    "serviceHoursId" INTEGER NOT NULL,
    "personId" INTEGER NOT NULL,
    "description" TEXT,
    "hours" DECIMAL,
    "date" DATETIME,
    "note" TEXT,
    "verifiedBy" TEXT,
    "createdBy" INTEGER,

    PRIMARY KEY ("serviceHoursId", "personId"),
    CONSTRAINT "StudentServiceHoursModel_createdBy_fkey" FOREIGN KEY ("createdBy") REFERENCES "Staff" ("staffId") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "StudentServiceHoursModel_serviceHoursId_fkey" FOREIGN KEY ("serviceHoursId") REFERENCES "ServiceHoursModel" ("serviceHoursId") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "StudentServiceHoursModel_personId_fkey" FOREIGN KEY ("personId") REFERENCES "Person" ("personId") ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO "new_StudentServiceHoursModel" ("createdBy", "date", "description", "hours", "note", "personId", "serviceHoursId", "verifiedBy") SELECT "createdBy", "date", "description", "hours", "note", "personId", "serviceHoursId", "verifiedBy" FROM "StudentServiceHoursModel";
DROP TABLE "StudentServiceHoursModel";
ALTER TABLE "new_StudentServiceHoursModel" RENAME TO "StudentServiceHoursModel";
CREATE TABLE "new_Error" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "code" TEXT NOT NULL,
    "message" TEXT NOT NULL,
    "target" TEXT,
    "details" json,
    "innererror" TEXT
);
INSERT INTO "new_Error" ("code", "details", "innererror", "message", "target") SELECT "code", "details", "innererror", "message", "target" FROM "Error";
DROP TABLE "Error";
ALTER TABLE "new_Error" RENAME TO "Error";
CREATE TABLE "new_LockerRequest" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
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
INSERT INTO "new_LockerRequest" ("combination1", "combination2", "combination3", "combination4", "combination5", "currentCombination", "locker", "lockerGroupId", "note", "outOfService", "schoolCode") SELECT "combination1", "combination2", "combination3", "combination4", "combination5", "currentCombination", "locker", "lockerGroupId", "note", "outOfService", "schoolCode" FROM "LockerRequest";
DROP TABLE "LockerRequest";
ALTER TABLE "new_LockerRequest" RENAME TO "LockerRequest";
CREATE TABLE "new_StandardQuestionAnswerModel" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "question" TEXT,
    "answer" TEXT
);
INSERT INTO "new_StandardQuestionAnswerModel" ("answer", "question") SELECT "answer", "question" FROM "StandardQuestionAnswerModel";
DROP TABLE "StandardQuestionAnswerModel";
ALTER TABLE "new_StandardQuestionAnswerModel" RENAME TO "StandardQuestionAnswerModel";
CREATE TABLE "new_ListValueModel" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "keyValue" INTEGER,
    "textValue" TEXT
);
INSERT INTO "new_ListValueModel" ("keyValue", "textValue") SELECT "keyValue", "textValue" FROM "ListValueModel";
DROP TABLE "ListValueModel";
ALTER TABLE "new_ListValueModel" RENAME TO "ListValueModel";
CREATE TABLE "new_StatusModel" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "status" TEXT,
    "displayName" TEXT,
    "subStatus" json
);
INSERT INTO "new_StatusModel" ("displayName", "status", "subStatus") SELECT "displayName", "status", "subStatus" FROM "StatusModel";
DROP TABLE "StatusModel";
ALTER TABLE "new_StatusModel" RENAME TO "StatusModel";
CREATE TABLE "new_ErrorResponse" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "error" TEXT NOT NULL
);
INSERT INTO "new_ErrorResponse" ("error") SELECT "error" FROM "ErrorResponse";
DROP TABLE "ErrorResponse";
ALTER TABLE "new_ErrorResponse" RENAME TO "ErrorResponse";
CREATE TABLE "new_ParentAlertEntity" (
    "id" TEXT NOT NULL,
    "personId" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "parentAlertPreference" TEXT,
    "parentAlertHomePhone" INTEGER,
    "parentAlertCellPhone" INTEGER,
    "parentAlertWorkPhone" INTEGER,
    "parentAlertNoText" INTEGER,
    CONSTRAINT "ParentAlertEntity_personId_fkey" FOREIGN KEY ("personId") REFERENCES "Person" ("personId") ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO "new_ParentAlertEntity" ("id", "parentAlertCellPhone", "parentAlertHomePhone", "parentAlertNoText", "parentAlertPreference", "parentAlertWorkPhone", "personId") SELECT "id", "parentAlertCellPhone", "parentAlertHomePhone", "parentAlertNoText", "parentAlertPreference", "parentAlertWorkPhone", "personId" FROM "ParentAlertEntity";
DROP TABLE "ParentAlertEntity";
ALTER TABLE "new_ParentAlertEntity" RENAME TO "ParentAlertEntity";
CREATE TABLE "new_PersonInterest" (
    "personID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "interest" TEXT,
    CONSTRAINT "PersonInterest_personID_fkey" FOREIGN KEY ("personID") REFERENCES "Person" ("personId") ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO "new_PersonInterest" ("interest", "personID") SELECT "interest", "personID" FROM "PersonInterest";
DROP TABLE "PersonInterest";
ALTER TABLE "new_PersonInterest" RENAME TO "PersonInterest";
CREATE TABLE "new_PersonReligionEntity" (
    "id" TEXT NOT NULL PRIMARY KEY,
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
INSERT INTO "new_PersonReligionEntity" ("baptismCity", "baptismCongregation", "baptismDate", "baptismState", "barMitzvahCity", "barMitzvahCongregation", "barMitzvahDate", "barMitzvahState", "communionCity", "communionCongregation", "communionDate", "communionState", "confirmationCity", "confirmationCongregation", "confirmationDate", "confirmationState", "congregationId", "denomination", "id", "localChurchMember", "personId", "reconciliationCity", "reconciliationCongregation", "reconciliationDate", "reconciliationState") SELECT "baptismCity", "baptismCongregation", "baptismDate", "baptismState", "barMitzvahCity", "barMitzvahCongregation", "barMitzvahDate", "barMitzvahState", "communionCity", "communionCongregation", "communionDate", "communionState", "confirmationCity", "confirmationCongregation", "confirmationDate", "confirmationState", "congregationId", "denomination", "id", "localChurchMember", "personId", "reconciliationCity", "reconciliationCongregation", "reconciliationDate", "reconciliationState" FROM "PersonReligionEntity";
DROP TABLE "PersonReligionEntity";
ALTER TABLE "new_PersonReligionEntity" RENAME TO "PersonReligionEntity";
CREATE TABLE "new_PersonDemographic" (
    "personId" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
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
INSERT INTO "new_PersonDemographic" ("birthCity", "birthCountry", "birthState", "birthdate", "birthplace", "citizenship", "ethnicity", "gender", "maritalStatus", "personId", "primaryLanguage") SELECT "birthCity", "birthCountry", "birthState", "birthdate", "birthplace", "citizenship", "ethnicity", "gender", "maritalStatus", "personId", "primaryLanguage" FROM "PersonDemographic";
DROP TABLE "PersonDemographic";
ALTER TABLE "new_PersonDemographic" RENAME TO "PersonDemographic";
CREATE TABLE "new_ProfileImage" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "value" TEXT
);
INSERT INTO "new_ProfileImage" ("value") SELECT "value" FROM "ProfileImage";
DROP TABLE "ProfileImage";
ALTER TABLE "new_ProfileImage" RENAME TO "ProfileImage";
CREATE TABLE "new_PersonWorkEntity" (
    "id" TEXT NOT NULL PRIMARY KEY,
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
INSERT INTO "new_PersonWorkEntity" ("company", "id", "jobCategory", "matchingGiftEmployer", "occupation", "personId", "workCity", "workFax", "workPhone", "workPhoneExtension", "workState", "workStreet", "workZip") SELECT "company", "id", "jobCategory", "matchingGiftEmployer", "occupation", "personId", "workCity", "workFax", "workPhone", "workPhoneExtension", "workState", "workStreet", "workZip" FROM "PersonWorkEntity";
DROP TABLE "PersonWorkEntity";
ALTER TABLE "new_PersonWorkEntity" RENAME TO "PersonWorkEntity";
CREATE TABLE "new_InquiryFormModel" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "requestId" INTEGER,
    "studentId" INTEGER,
    "schoolCode" TEXT,
    "schoolOptions" json,
    "standard" json,
    "custom" json,
    "interestCategories" json,
    CONSTRAINT "InquiryFormModel_studentId_fkey" FOREIGN KEY ("studentId") REFERENCES "StudentModel" ("studentId") ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO "new_InquiryFormModel" ("custom", "interestCategories", "requestId", "schoolCode", "schoolOptions", "standard", "studentId") SELECT "custom", "interestCategories", "requestId", "schoolCode", "schoolOptions", "standard", "studentId" FROM "InquiryFormModel";
DROP TABLE "InquiryFormModel";
ALTER TABLE "new_InquiryFormModel" RENAME TO "InquiryFormModel";
CREATE TABLE "new_QuestionBaseModel" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "label" TEXT,
    "columns" INTEGER,
    "questionAnswerType" TEXT NOT NULL,
    "requirementType" TEXT NOT NULL,
    "options" json
);
INSERT INTO "new_QuestionBaseModel" ("columns", "label", "options", "questionAnswerType", "requirementType") SELECT "columns", "label", "options", "questionAnswerType", "requirementType" FROM "QuestionBaseModel";
DROP TABLE "QuestionBaseModel";
ALTER TABLE "new_QuestionBaseModel" RENAME TO "QuestionBaseModel";
CREATE TABLE "new_UserDefinedGroupSecurityModel" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "canEveryoneUse" INTEGER NOT NULL,
    "group" json,
    "person" json
);
INSERT INTO "new_UserDefinedGroupSecurityModel" ("canEveryoneUse", "group", "person") SELECT "canEveryoneUse", "group", "person" FROM "UserDefinedGroupSecurityModel";
DROP TABLE "UserDefinedGroupSecurityModel";
ALTER TABLE "new_UserDefinedGroupSecurityModel" RENAME TO "UserDefinedGroupSecurityModel";
CREATE TABLE "new_InquiryFormEditModel" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "standardAnswers" json,
    "customAnswers" json
);
INSERT INTO "new_InquiryFormEditModel" ("customAnswers", "standardAnswers") SELECT "customAnswers", "standardAnswers" FROM "InquiryFormEditModel";
DROP TABLE "InquiryFormEditModel";
ALTER TABLE "new_InquiryFormEditModel" RENAME TO "InquiryFormEditModel";
CREATE TABLE "new_PersonVehicleEntity" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "personId" INTEGER NOT NULL,
    "autoMake" TEXT,
    "autoModel" TEXT,
    "autoLicense" TEXT,
    "driversLicense" TEXT,
    "permitNumber" TEXT,
    CONSTRAINT "PersonVehicleEntity_personId_fkey" FOREIGN KEY ("personId") REFERENCES "Person" ("personId") ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO "new_PersonVehicleEntity" ("autoLicense", "autoMake", "autoModel", "driversLicense", "id", "permitNumber", "personId") SELECT "autoLicense", "autoMake", "autoModel", "driversLicense", "id", "permitNumber", "personId" FROM "PersonVehicleEntity";
DROP TABLE "PersonVehicleEntity";
ALTER TABLE "new_PersonVehicleEntity" RENAME TO "PersonVehicleEntity";
CREATE TABLE "new_StudentSchoolModel" (
    "personId" INTEGER PRIMARY KEY AUTOINCREMENT,
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
CREATE TABLE "new_DirectoryPreferences" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "blockName" INTEGER,
    "blockCellPhone" INTEGER,
    "blockHomePhone" INTEGER,
    "blockAddress" INTEGER,
    "blockEmail" INTEGER,
    "personId" INTEGER NOT NULL,
    CONSTRAINT "DirectoryPreferences_personId_fkey" FOREIGN KEY ("personId") REFERENCES "Person" ("personId") ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO "new_DirectoryPreferences" ("blockAddress", "blockCellPhone", "blockEmail", "blockHomePhone", "blockName", "personId") SELECT "blockAddress", "blockCellPhone", "blockEmail", "blockHomePhone", "blockName", "personId" FROM "DirectoryPreferences";
DROP TABLE "DirectoryPreferences";
ALTER TABLE "new_DirectoryPreferences" RENAME TO "DirectoryPreferences";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
