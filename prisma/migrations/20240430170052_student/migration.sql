/*
  Warnings:

  - You are about to drop the `StudentSchoolModel` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the column `school` on the `StudentModel` table. All the data in the column will be lost.

*/
-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "StudentSchoolModel";
PRAGMA foreign_keys=on;

-- CreateTable
CREATE TABLE "StudentSchool" (
    "personId" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
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
    CONSTRAINT "StudentSchool_personId_fkey" FOREIGN KEY ("personId") REFERENCES "StudentModel" ("studentId") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_StudentModel" (
    "configSchoolId" INTEGER NOT NULL,
    "personStudentId" INTEGER NOT NULL,
    "studentId" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "schoolCode" TEXT,
    CONSTRAINT "StudentModel_personStudentId_fkey" FOREIGN KEY ("personStudentId") REFERENCES "Person" ("personId") ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO "new_StudentModel" ("configSchoolId", "personStudentId", "schoolCode", "studentId") SELECT "configSchoolId", "personStudentId", "schoolCode", "studentId" FROM "StudentModel";
DROP TABLE "StudentModel";
ALTER TABLE "new_StudentModel" RENAME TO "StudentModel";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
