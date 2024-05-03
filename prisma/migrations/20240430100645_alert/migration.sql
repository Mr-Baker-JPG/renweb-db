/*
  Warnings:

  - You are about to alter the column `active` on the `Alert` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Boolean`.

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
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
