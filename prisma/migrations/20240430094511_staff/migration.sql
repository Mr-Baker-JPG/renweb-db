/*
  Warnings:

  - You are about to alter the column `active` on the `Staff` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Boolean`.
  - You are about to alter the column `administrator` on the `Staff` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Boolean`.
  - You are about to alter the column `blockSurvey` on the `Staff` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Boolean`.
  - You are about to alter the column `districtUser` on the `Staff` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Boolean`.
  - You are about to alter the column `districtWideUser` on the `Staff` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Boolean`.
  - You are about to alter the column `dualEnrolledUser` on the `Staff` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Boolean`.
  - You are about to alter the column `elementary` on the `Staff` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Boolean`.
  - You are about to alter the column `faculty` on the `Staff` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Boolean`.
  - You are about to alter the column `financialFamilyId` on the `Staff` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Boolean`.
  - You are about to alter the column `fullTime` on the `Staff` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Boolean`.
  - You are about to alter the column `highSchool` on the `Staff` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Boolean`.
  - You are about to alter the column `middleSchool` on the `Staff` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Boolean`.
  - You are about to alter the column `pda` on the `Staff` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Boolean`.
  - You are about to alter the column `preschool` on the `Staff` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Boolean`.
  - You are about to alter the column `staffDirectoryBlock` on the `Staff` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Boolean`.
  - You are about to alter the column `substitute` on the `Staff` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Boolean`.
  - You are about to alter the column `unsubscribeRenWebEmail` on the `Staff` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Boolean`.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
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
    "financialFamilyId" BOOLEAN NOT NULL DEFAULT false,
    "pda" BOOLEAN NOT NULL DEFAULT false,
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
INSERT INTO "new_Staff" ("active", "administrator", "blockSurvey", "department", "districtUser", "districtWideUser", "dualEnrolledUser", "elementary", "endDate", "faculty", "financialFamilyId", "firstName", "fte", "fullTime", "highSchool", "lastName", "legacyStaffId", "middleName", "middleSchool", "name", "parentAlertPin", "pda", "preschool", "roomId", "schools", "spouse", "staffDirectoryBlock", "staffId", "startDate", "substitute", "teacherSite", "unsubscribeRenWebEmail") SELECT coalesce("active", false) AS "active", coalesce("administrator", false) AS "administrator", coalesce("blockSurvey", false) AS "blockSurvey", "department", coalesce("districtUser", false) AS "districtUser", coalesce("districtWideUser", false) AS "districtWideUser", coalesce("dualEnrolledUser", false) AS "dualEnrolledUser", coalesce("elementary", false) AS "elementary", "endDate", coalesce("faculty", false) AS "faculty", coalesce("financialFamilyId", false) AS "financialFamilyId", "firstName", "fte", coalesce("fullTime", false) AS "fullTime", coalesce("highSchool", false) AS "highSchool", "lastName", "legacyStaffId", "middleName", coalesce("middleSchool", false) AS "middleSchool", "name", "parentAlertPin", coalesce("pda", false) AS "pda", coalesce("preschool", false) AS "preschool", "roomId", "schools", "spouse", coalesce("staffDirectoryBlock", false) AS "staffDirectoryBlock", "staffId", "startDate", coalesce("substitute", false) AS "substitute", "teacherSite", coalesce("unsubscribeRenWebEmail", false) AS "unsubscribeRenWebEmail" FROM "Staff";
DROP TABLE "Staff";
ALTER TABLE "new_Staff" RENAME TO "Staff";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
