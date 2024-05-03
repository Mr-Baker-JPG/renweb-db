-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Staff" (
    "active" BOOLEAN NOT NULL DEFAULT false,
    "administrator" BOOLEAN NOT NULL DEFAULT false,
    "blockSurvey" BOOLEAN NOT NULL DEFAULT false,
    "districtUser" BOOLEAN NOT NULL DEFAULT false,
    "districtWideUser" BOOLEAN NOT NULL DEFAULT false,
    "dualEnrolledUser" BOOLEAN NOT NULL DEFAULT false,
    "elementary" BOOLEAN NOT NULL DEFAULT false,
    "faculty" BOOLEAN NOT NULL DEFAULT false,
    "fullTime" BOOLEAN NOT NULL DEFAULT false,
    "highSchool" BOOLEAN NOT NULL DEFAULT false,
    "middleSchool" BOOLEAN NOT NULL DEFAULT false,
    "preschool" BOOLEAN NOT NULL DEFAULT false,
    "staffDirectoryBlock" BOOLEAN NOT NULL DEFAULT false,
    "substitute" BOOLEAN NOT NULL DEFAULT false,
    "unsubscribeRenWebEmail" BOOLEAN NOT NULL DEFAULT false,
    "endDate" DATETIME,
    "startDate" DATETIME,
    "fte" DECIMAL,
    "financialFamilyId" INTEGER,
    "pda" INTEGER,
    "roomId" INTEGER,
    "schools" TEXT,
    "department" TEXT,
    "firstName" TEXT,
    "lastName" TEXT,
    "legacyStaffId" TEXT,
    "middleName" TEXT,
    "parentAlertPin" TEXT,
    "spouse" TEXT,
    "teacherSite" TEXT,
    "staffId" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT,
    CONSTRAINT "Staff_staffId_fkey" FOREIGN KEY ("staffId") REFERENCES "Person" ("personId") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_Staff" ("active", "administrator", "blockSurvey", "department", "districtUser", "districtWideUser", "dualEnrolledUser", "elementary", "endDate", "faculty", "financialFamilyId", "firstName", "fte", "fullTime", "highSchool", "lastName", "legacyStaffId", "middleName", "middleSchool", "name", "parentAlertPin", "pda", "preschool", "roomId", "schools", "spouse", "staffDirectoryBlock", "staffId", "startDate", "substitute", "teacherSite", "unsubscribeRenWebEmail") SELECT "active", "administrator", "blockSurvey", "department", "districtUser", "districtWideUser", "dualEnrolledUser", "elementary", "endDate", "faculty", "financialFamilyId", "firstName", "fte", "fullTime", "highSchool", "lastName", "legacyStaffId", "middleName", "middleSchool", "name", "parentAlertPin", "pda", "preschool", "roomId", "schools", "spouse", "staffDirectoryBlock", "staffId", "startDate", "substitute", "teacherSite", "unsubscribeRenWebEmail" FROM "Staff";
DROP TABLE "Staff";
ALTER TABLE "new_Staff" RENAME TO "Staff";
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
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
