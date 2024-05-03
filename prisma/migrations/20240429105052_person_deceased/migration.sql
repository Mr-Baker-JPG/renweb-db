/*
  Warnings:

  - You are about to alter the column `deceased` on the `Person` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Boolean`.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Person" (
    "personId" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "firstName" TEXT,
    "lastName" TEXT,
    "middleName" TEXT,
    "nickName" TEXT,
    "salutation" TEXT,
    "suffix" TEXT,
    "email" TEXT,
    "email2" TEXT,
    "username" TEXT,
    "homePhone" TEXT,
    "cellPhone" TEXT,
    "addressID" INTEGER,
    "deceased" BOOLEAN NOT NULL,
    "modifiedDate" DATETIME,
    CONSTRAINT "Person_addressID_fkey" FOREIGN KEY ("addressID") REFERENCES "Address" ("addressID") ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO "new_Person" ("addressID", "cellPhone", "deceased", "email", "email2", "firstName", "homePhone", "lastName", "middleName", "modifiedDate", "nickName", "personId", "salutation", "suffix", "username") SELECT "addressID", "cellPhone", "deceased", "email", "email2", "firstName", "homePhone", "lastName", "middleName", "modifiedDate", "nickName", "personId", "salutation", "suffix", "username" FROM "Person";
DROP TABLE "Person";
ALTER TABLE "new_Person" RENAME TO "Person";
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
