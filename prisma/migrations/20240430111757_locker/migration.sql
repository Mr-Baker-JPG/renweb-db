/*
  Warnings:

  - You are about to drop the column `lockerId` on the `StudentModel` table. All the data in the column will be lost.

*/
-- CreateTable
CREATE TABLE "_LockerModelToStudent" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL,
    CONSTRAINT "_LockerModelToStudent_A_fkey" FOREIGN KEY ("A") REFERENCES "LockerModel" ("lockerId") ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "_LockerModelToStudent_B_fkey" FOREIGN KEY ("B") REFERENCES "StudentModel" ("studentId") ON DELETE CASCADE ON UPDATE CASCADE
);

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
CREATE TABLE "new_StudentModel" (
    "school" TEXT,
    "configSchoolId" INTEGER NOT NULL,
    "personStudentId" INTEGER NOT NULL,
    "studentId" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "schoolCode" TEXT,
    CONSTRAINT "StudentModel_configSchoolId_fkey" FOREIGN KEY ("configSchoolId") REFERENCES "SchoolConfig" ("configSchoolID") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "StudentModel_personStudentId_fkey" FOREIGN KEY ("personStudentId") REFERENCES "Person" ("personId") ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO "new_StudentModel" ("configSchoolId", "personStudentId", "school", "schoolCode", "studentId") SELECT "configSchoolId", "personStudentId", "school", "schoolCode", "studentId" FROM "StudentModel";
DROP TABLE "StudentModel";
ALTER TABLE "new_StudentModel" RENAME TO "StudentModel";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;

-- CreateIndex
CREATE UNIQUE INDEX "_LockerModelToStudent_AB_unique" ON "_LockerModelToStudent"("A", "B");

-- CreateIndex
CREATE INDEX "_LockerModelToStudent_B_index" ON "_LockerModelToStudent"("B");
