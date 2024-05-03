/*
  Warnings:

  - You are about to alter the column `matchingGiftEmployer` on the `PersonWorkEntity` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Boolean`.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_PersonWorkEntity" (
    "id" TEXT NOT NULL,
    "personId" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
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
    "matchingGiftEmployer" BOOLEAN NOT NULL DEFAULT false,
    CONSTRAINT "PersonWorkEntity_personId_fkey" FOREIGN KEY ("personId") REFERENCES "Person" ("personId") ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO "new_PersonWorkEntity" ("company", "id", "jobCategory", "matchingGiftEmployer", "occupation", "personId", "workCity", "workFax", "workPhone", "workPhoneExtension", "workState", "workStreet", "workZip") SELECT "company", "id", "jobCategory", coalesce("matchingGiftEmployer", false) AS "matchingGiftEmployer", "occupation", "personId", "workCity", "workFax", "workPhone", "workPhoneExtension", "workState", "workStreet", "workZip" FROM "PersonWorkEntity";
DROP TABLE "PersonWorkEntity";
ALTER TABLE "new_PersonWorkEntity" RENAME TO "PersonWorkEntity";
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
