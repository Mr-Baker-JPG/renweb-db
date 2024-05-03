/*
  Warnings:

  - You are about to alter the column `enableWeb` on the `FamilyConfig` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Boolean`.
  - You are about to alter the column `parentsWebFinancialBlock` on the `FamilyConfig` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Boolean`.
  - You are about to alter the column `unlisted` on the `FamilyConfig` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Boolean`.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_FamilyConfig" (
    "familyName" TEXT,
    "enableWeb" BOOLEAN NOT NULL DEFAULT false,
    "unlisted" BOOLEAN NOT NULL DEFAULT false,
    "note" TEXT,
    "modifiedBy" INTEGER,
    "modifiedDate" DATETIME,
    "familyNameBP" TEXT,
    "parentsWebFinancialBlock" BOOLEAN NOT NULL DEFAULT false,
    "familyID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT
);
INSERT INTO "new_FamilyConfig" ("enableWeb", "familyID", "familyName", "familyNameBP", "modifiedBy", "modifiedDate", "note", "parentsWebFinancialBlock", "unlisted") SELECT coalesce("enableWeb", false) AS "enableWeb", "familyID", "familyName", "familyNameBP", "modifiedBy", "modifiedDate", "note", "parentsWebFinancialBlock", coalesce("unlisted", false) AS "unlisted" FROM "FamilyConfig";
DROP TABLE "FamilyConfig";
ALTER TABLE "new_FamilyConfig" RENAME TO "FamilyConfig";
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
