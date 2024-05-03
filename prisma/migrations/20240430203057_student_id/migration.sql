/*
  Warnings:

  - The primary key for the `StudentModel` table will be changed. If it partially fails, the table could be left without primary key constraint.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_AdvisingNote" (
    "note" TEXT,
    "date" DATETIME,
    "studentId" INTEGER,
    "modifiedBy" INTEGER,
    "modifiedDate" DATETIME,
    "noteId" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    CONSTRAINT "AdvisingNote_studentId_fkey" FOREIGN KEY ("studentId") REFERENCES "StudentModel" ("studentId") ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO "new_AdvisingNote" ("date", "modifiedBy", "modifiedDate", "note", "noteId", "studentId") SELECT "date", "modifiedBy", "modifiedDate", "note", "noteId", "studentId" FROM "AdvisingNote";
DROP TABLE "AdvisingNote";
ALTER TABLE "new_AdvisingNote" RENAME TO "AdvisingNote";
CREATE TABLE "new_EmergencyContact" (
    "emergencyContactID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
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
CREATE TABLE "new_AssignmentGradesModel" (
    "sisGradeId" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
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
CREATE TABLE "new_EnrollmentHistory" (
    "beginDate" DATETIME,
    "endDate" DATETIME,
    "gradeLevel" TEXT,
    "note" TEXT,
    "schoolCode" TEXT,
    "status" TEXT,
    "studentId" INTEGER NOT NULL,
    "yearId" INTEGER,
    "enrollmentHistoryId" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    CONSTRAINT "EnrollmentHistory_yearId_fkey" FOREIGN KEY ("yearId") REFERENCES "SchoolYearModel" ("yearId") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "EnrollmentHistory_studentId_fkey" FOREIGN KEY ("studentId") REFERENCES "StudentModel" ("studentId") ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO "new_EnrollmentHistory" ("beginDate", "endDate", "enrollmentHistoryId", "gradeLevel", "note", "schoolCode", "status", "studentId", "yearId") SELECT "beginDate", "endDate", "enrollmentHistoryId", "gradeLevel", "note", "schoolCode", "status", "studentId", "yearId" FROM "EnrollmentHistory";
DROP TABLE "EnrollmentHistory";
ALTER TABLE "new_EnrollmentHistory" RENAME TO "EnrollmentHistory";
CREATE TABLE "new_StudentRecognitionModel" (
    "studentId" INTEGER,
    "yearId" INTEGER,
    "recognition" TEXT,
    "note" TEXT,
    "category" TEXT,
    "gradeLevel" TEXT,
    "recognitionId" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "schoolCode" TEXT,
    CONSTRAINT "StudentRecognitionModel_schoolCode_fkey" FOREIGN KEY ("schoolCode") REFERENCES "SchoolConfig" ("schoolCode") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "StudentRecognitionModel_yearId_fkey" FOREIGN KEY ("yearId") REFERENCES "SchoolYearModel" ("yearId") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "StudentRecognitionModel_studentId_fkey" FOREIGN KEY ("studentId") REFERENCES "StudentModel" ("studentId") ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO "new_StudentRecognitionModel" ("category", "gradeLevel", "note", "recognition", "recognitionId", "schoolCode", "studentId", "yearId") SELECT "category", "gradeLevel", "note", "recognition", "recognitionId", "schoolCode", "studentId", "yearId" FROM "StudentRecognitionModel";
DROP TABLE "StudentRecognitionModel";
ALTER TABLE "new_StudentRecognitionModel" RENAME TO "StudentRecognitionModel";
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
INSERT INTO "new_InquiryFormModel" ("custom", "id", "interestCategories", "requestId", "schoolCode", "schoolOptions", "standard", "studentId") SELECT "custom", "id", "interestCategories", "requestId", "schoolCode", "schoolOptions", "standard", "studentId" FROM "InquiryFormModel";
DROP TABLE "InquiryFormModel";
ALTER TABLE "new_InquiryFormModel" RENAME TO "InquiryFormModel";
CREATE TABLE "new_PickupContact" (
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
    "pickupId" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    CONSTRAINT "PickupContact_refId_fkey" FOREIGN KEY ("refId") REFERENCES "Person" ("personId") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "PickupContact_studentId_fkey" FOREIGN KEY ("studentId") REFERENCES "StudentModel" ("studentId") ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO "new_PickupContact" ("cellPhone", "countryCode", "email", "firstName", "homePhone", "lastName", "middleName", "note", "pickupId", "portalSortOrder", "refId", "relationship", "salutation", "studentId", "suffix", "workPhone") SELECT "cellPhone", "countryCode", "email", "firstName", "homePhone", "lastName", "middleName", "note", "pickupId", "portalSortOrder", "refId", "relationship", "salutation", "studentId", "suffix", "workPhone" FROM "PickupContact";
DROP TABLE "PickupContact";
ALTER TABLE "new_PickupContact" RENAME TO "PickupContact";
CREATE TABLE "new_StudentModel" (
    "configSchoolId" INTEGER NOT NULL,
    "personStudentId" INTEGER NOT NULL,
    "studentId" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "schoolCode" TEXT,
    CONSTRAINT "StudentModel_personStudentId_fkey" FOREIGN KEY ("personStudentId") REFERENCES "Person" ("personId") ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO "new_StudentModel" ("configSchoolId", "personStudentId", "schoolCode", "studentId") SELECT "configSchoolId", "personStudentId", "schoolCode", "studentId" FROM "StudentModel";
DROP TABLE "StudentModel";
ALTER TABLE "new_StudentModel" RENAME TO "StudentModel";
CREATE TABLE "new_Alert" (
    "alertID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "studentID" INTEGER,
    "title" TEXT,
    "description" TEXT,
    "active" BOOLEAN NOT NULL DEFAULT false,
    CONSTRAINT "Alert_studentID_fkey" FOREIGN KEY ("studentID") REFERENCES "StudentModel" ("studentId") ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO "new_Alert" ("active", "alertID", "description", "studentID", "title") SELECT "active", "alertID", "description", "studentID", "title" FROM "Alert";
DROP TABLE "Alert";
ALTER TABLE "new_Alert" RENAME TO "Alert";
CREATE TABLE "new__LockerModelToStudent" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL,
    CONSTRAINT "_LockerModelToStudent_A_fkey" FOREIGN KEY ("A") REFERENCES "LockerModel" ("lockerId") ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "_LockerModelToStudent_B_fkey" FOREIGN KEY ("B") REFERENCES "StudentModel" ("studentId") ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO "new__LockerModelToStudent" ("A", "B") SELECT "A", "B" FROM "_LockerModelToStudent";
DROP TABLE "_LockerModelToStudent";
ALTER TABLE "new__LockerModelToStudent" RENAME TO "_LockerModelToStudent";
CREATE UNIQUE INDEX "_LockerModelToStudent_AB_unique" ON "_LockerModelToStudent"("A", "B");
CREATE INDEX "_LockerModelToStudent_B_index" ON "_LockerModelToStudent"("B");
CREATE TABLE "new_ClassEnrollment" (
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
INSERT INTO "new_ClassEnrollment" ("altYearId", "classId", "enrolled", "enrolled1", "enrolled2", "enrolled3", "enrolled4", "enrolled5", "enrolled6", "gradeLevel", "modifiedBy", "modifiedDate", "studentId") SELECT "altYearId", "classId", "enrolled", "enrolled1", "enrolled2", "enrolled3", "enrolled4", "enrolled5", "enrolled6", "gradeLevel", "modifiedBy", "modifiedDate", "studentId" FROM "ClassEnrollment";
DROP TABLE "ClassEnrollment";
ALTER TABLE "new_ClassEnrollment" RENAME TO "ClassEnrollment";
CREATE TABLE "new_StudentSchool" (
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
    CONSTRAINT "StudentSchool_personId_fkey" FOREIGN KEY ("personId") REFERENCES "StudentModel" ("studentId") ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO "new_StudentSchool" ("enrollDate", "gradeLevel", "graduationDate", "nextGradeLevel", "nextSchoolCode", "nextStatus", "personId", "status", "substatus", "withdrawDate", "withdrawReason") SELECT "enrollDate", "gradeLevel", "graduationDate", "nextGradeLevel", "nextSchoolCode", "nextStatus", "personId", "status", "substatus", "withdrawDate", "withdrawReason" FROM "StudentSchool";
DROP TABLE "StudentSchool";
ALTER TABLE "new_StudentSchool" RENAME TO "StudentSchool";
CREATE TABLE "new_CreateInquiryFormCommand" (
    "requestId" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "studentId" INTEGER NOT NULL,
    CONSTRAINT "CreateInquiryFormCommand_studentId_fkey" FOREIGN KEY ("studentId") REFERENCES "StudentModel" ("studentId") ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO "new_CreateInquiryFormCommand" ("requestId", "studentId") SELECT "requestId", "studentId" FROM "CreateInquiryFormCommand";
DROP TABLE "CreateInquiryFormCommand";
ALTER TABLE "new_CreateInquiryFormCommand" RENAME TO "CreateInquiryFormCommand";
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
    "conferenceId" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    CONSTRAINT "Conference_staffID_fkey" FOREIGN KEY ("staffID") REFERENCES "Staff" ("staffId") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "Conference_studentId_fkey" FOREIGN KEY ("studentId") REFERENCES "StudentModel" ("studentId") ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO "new_Conference" ("conferenceId", "date", "location", "modifiedBy", "modifiedDate", "parent", "problem", "problem1", "problem10", "problem2", "problem3", "problem4", "problem5", "problem6", "problem7", "problem8", "problem9", "reason", "reason1", "reason2", "reason3", "recommendation", "staffID", "studentId", "subject") SELECT "conferenceId", "date", "location", "modifiedBy", "modifiedDate", "parent", "problem", "problem1", "problem10", "problem2", "problem3", "problem4", "problem5", "problem6", "problem7", "problem8", "problem9", "reason", "reason1", "reason2", "reason3", "recommendation", "staffID", "studentId", "subject" FROM "Conference";
DROP TABLE "Conference";
ALTER TABLE "new_Conference" RENAME TO "Conference";
CREATE TABLE "new_ParentStudent" (
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
INSERT INTO "new_ParentStudent" ("correspondence", "custody", "emergencyContact", "grandparent", "parentID", "parentsWeb", "pickUp", "pwBlock", "reEnroll", "relationship", "reportCard", "studentID") SELECT "correspondence", "custody", "emergencyContact", "grandparent", "parentID", "parentsWeb", "pickUp", "pwBlock", "reEnroll", "relationship", "reportCard", "studentID" FROM "ParentStudent";
DROP TABLE "ParentStudent";
ALTER TABLE "new_ParentStudent" RENAME TO "ParentStudent";
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
    "disciplineID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    CONSTRAINT "BehaviorEvents_staffID_fkey" FOREIGN KEY ("staffID") REFERENCES "Staff" ("staffId") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "BehaviorEvents_studentID_fkey" FOREIGN KEY ("studentID") REFERENCES "StudentModel" ("studentId") ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO "new_BehaviorEvents" ("dateOfIncident", "demerits", "descriptionOfIncident", "disciplineID", "history", "level", "modifiedBy", "modifiedDate", "notified", "reportedBy", "reviewedBy", "sanction1", "sanction2", "sanctionDate1", "sanctionDate2", "staffID", "status", "studentID", "type", "violation") SELECT "dateOfIncident", "demerits", "descriptionOfIncident", "disciplineID", "history", "level", "modifiedBy", "modifiedDate", "notified", "reportedBy", "reviewedBy", "sanction1", "sanction2", "sanctionDate1", "sanctionDate2", "staffID", "status", "studentID", "type", "violation" FROM "BehaviorEvents";
DROP TABLE "BehaviorEvents";
ALTER TABLE "new_BehaviorEvents" RENAME TO "BehaviorEvents";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
