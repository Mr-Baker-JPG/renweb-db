/*
  Warnings:

  - You are about to alter the column `factsCustomer` on the `PersonFamily` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Boolean`.
  - You are about to alter the column `financialResponsibility` on the `PersonFamily` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Boolean`.
  - You are about to alter the column `parent` on the `PersonFamily` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Boolean`.
  - You are about to alter the column `student` on the `PersonFamily` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Boolean`.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_PersonFamily" (
    "personId" INTEGER NOT NULL,
    "familyId" INTEGER NOT NULL,
    "parent" BOOLEAN NOT NULL DEFAULT false,
    "student" BOOLEAN NOT NULL DEFAULT false,
    "financialResponsibility" BOOLEAN NOT NULL DEFAULT false,
    "financialResponsibilityPercent" TEXT,
    "familyOrder" INTEGER,
    "factsCustomer" BOOLEAN NOT NULL DEFAULT false,

    PRIMARY KEY ("personId", "familyId"),
    CONSTRAINT "PersonFamily_familyId_fkey" FOREIGN KEY ("familyId") REFERENCES "FamilyConfig" ("familyID") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "PersonFamily_personId_fkey" FOREIGN KEY ("personId") REFERENCES "Person" ("personId") ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO "new_PersonFamily" ("factsCustomer", "familyId", "familyOrder", "financialResponsibility", "financialResponsibilityPercent", "parent", "personId", "student") SELECT "factsCustomer", "familyId", "familyOrder", coalesce("financialResponsibility", false) AS "financialResponsibility", "financialResponsibilityPercent", coalesce("parent", false) AS "parent", "personId", coalesce("student", false) AS "student" FROM "PersonFamily";
DROP TABLE "PersonFamily";
ALTER TABLE "new_PersonFamily" RENAME TO "PersonFamily";
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
