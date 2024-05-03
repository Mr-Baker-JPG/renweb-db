/*
  Warnings:

  - You are about to alter the column `beep` on the `AlertApplication` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Boolean`.
  - You are about to alter the column `popUp` on the `AlertApplication` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Boolean`.
  - You are about to alter the column `popUpAlways` on the `AlertApplication` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Boolean`.
  - You are about to alter the column `visual` on the `AlertApplication` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Boolean`.

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
CREATE TABLE "new_AlertApplication" (
    "alertID" INTEGER NOT NULL,
    "applicationID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "visual" BOOLEAN NOT NULL DEFAULT false,
    "beep" BOOLEAN NOT NULL DEFAULT false,
    "popUp" BOOLEAN NOT NULL DEFAULT false,
    "popUpAlways" BOOLEAN NOT NULL DEFAULT false,
    CONSTRAINT "AlertApplication_alertID_fkey" FOREIGN KEY ("alertID") REFERENCES "Alert" ("alertID") ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO "new_AlertApplication" ("alertID", "applicationID", "beep", "popUp", "popUpAlways", "visual") SELECT "alertID", "applicationID", coalesce("beep", false) AS "beep", coalesce("popUp", false) AS "popUp", coalesce("popUpAlways", false) AS "popUpAlways", coalesce("visual", false) AS "visual" FROM "AlertApplication";
DROP TABLE "AlertApplication";
ALTER TABLE "new_AlertApplication" RENAME TO "AlertApplication";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
