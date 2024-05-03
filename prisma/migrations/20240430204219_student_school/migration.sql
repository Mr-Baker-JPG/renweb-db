-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_StudentModel" (
    "configSchoolId" INTEGER NOT NULL,
    "personStudentId" INTEGER NOT NULL,
    "studentId" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "schoolCode" TEXT,
    CONSTRAINT "StudentModel_studentId_fkey" FOREIGN KEY ("studentId") REFERENCES "Person" ("personId") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "StudentModel_studentId_fkey" FOREIGN KEY ("studentId") REFERENCES "StudentSchool" ("personId") ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO "new_StudentModel" ("configSchoolId", "personStudentId", "schoolCode", "studentId") SELECT "configSchoolId", "personStudentId", "schoolCode", "studentId" FROM "StudentModel";
DROP TABLE "StudentModel";
ALTER TABLE "new_StudentModel" RENAME TO "StudentModel";
CREATE TABLE "new_StudentSchool" (
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
    "nextGradeLevel" TEXT
);
INSERT INTO "new_StudentSchool" ("enrollDate", "gradeLevel", "graduationDate", "nextGradeLevel", "nextSchoolCode", "nextStatus", "personId", "status", "substatus", "withdrawDate", "withdrawReason") SELECT "enrollDate", "gradeLevel", "graduationDate", "nextGradeLevel", "nextSchoolCode", "nextStatus", "personId", "status", "substatus", "withdrawDate", "withdrawReason" FROM "StudentSchool";
DROP TABLE "StudentSchool";
ALTER TABLE "new_StudentSchool" RENAME TO "StudentSchool";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
