/*
  Warnings:

  - The primary key for the `PersonVehicleEntity` table will be changed. If it partially fails, the table could be left without primary key constraint.

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
CREATE TABLE "new_PersonVehicleEntity" (
    "id" TEXT NOT NULL,
    "personId" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
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
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
