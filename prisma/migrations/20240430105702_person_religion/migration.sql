/*
  Warnings:

  - You are about to alter the column `localChurchMember` on the `PersonReligionEntity` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Boolean`.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
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
    "localChurchMember" BOOLEAN NOT NULL DEFAULT false,
    CONSTRAINT "PersonReligionEntity_personId_fkey" FOREIGN KEY ("personId") REFERENCES "Person" ("personId") ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO "new_PersonReligionEntity" ("baptismCity", "baptismCongregation", "baptismDate", "baptismState", "barMitzvahCity", "barMitzvahCongregation", "barMitzvahDate", "barMitzvahState", "communionCity", "communionCongregation", "communionDate", "communionState", "confirmationCity", "confirmationCongregation", "confirmationDate", "confirmationState", "congregationId", "denomination", "id", "localChurchMember", "personId", "reconciliationCity", "reconciliationCongregation", "reconciliationDate", "reconciliationState") SELECT "baptismCity", "baptismCongregation", "baptismDate", "baptismState", "barMitzvahCity", "barMitzvahCongregation", "barMitzvahDate", "barMitzvahState", "communionCity", "communionCongregation", "communionDate", "communionState", "confirmationCity", "confirmationCongregation", "confirmationDate", "confirmationState", "congregationId", "denomination", "id", coalesce("localChurchMember", false) AS "localChurchMember", "personId", "reconciliationCity", "reconciliationCongregation", "reconciliationDate", "reconciliationState" FROM "PersonReligionEntity";
DROP TABLE "PersonReligionEntity";
ALTER TABLE "new_PersonReligionEntity" RENAME TO "PersonReligionEntity";
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
