-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_SchoolTerms" (
    "termID" INTEGER,
    "yearID" INTEGER,
    "name" TEXT,
    "firstDay" DATETIME,
    "lastDay" DATETIME,
    "schoolCode" TEXT,
    "semesterID" TEXT,
    "modifiedBy" INTEGER,
    "modifiedDate" DATETIME,
    "uniqueTermID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT
);
INSERT INTO "new_SchoolTerms" ("firstDay", "lastDay", "modifiedBy", "modifiedDate", "name", "schoolCode", "semesterID", "termID", "uniqueTermID", "yearID") SELECT "firstDay", "lastDay", "modifiedBy", "modifiedDate", "name", "schoolCode", "semesterID", "termID", "uniqueTermID", "yearID" FROM "SchoolTerms";
DROP TABLE "SchoolTerms";
ALTER TABLE "new_SchoolTerms" RENAME TO "SchoolTerms";
CREATE TABLE "new_StudentModel" (
    "school" TEXT,
    "configSchoolId" INTEGER NOT NULL,
    "personStudentId" INTEGER NOT NULL,
    "studentId" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "schoolCode" TEXT,
    CONSTRAINT "StudentModel_personStudentId_fkey" FOREIGN KEY ("personStudentId") REFERENCES "Person" ("personId") ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO "new_StudentModel" ("configSchoolId", "personStudentId", "school", "schoolCode", "studentId") SELECT "configSchoolId", "personStudentId", "school", "schoolCode", "studentId" FROM "StudentModel";
DROP TABLE "StudentModel";
ALTER TABLE "new_StudentModel" RENAME TO "StudentModel";
CREATE TABLE "new_SchoolConfig" (
    "fax" TEXT,
    "phone" TEXT,
    "active" BOOLEAN NOT NULL DEFAULT false,
    "address" TEXT,
    "city" TEXT,
    "configSchoolID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "defaultTermId" INTEGER,
    "defaultYearId" INTEGER,
    "districtName" TEXT,
    "email" TEXT,
    "modifiedBy" INTEGER,
    "modifiedDate" DATETIME,
    "nextYearId" INTEGER,
    "parentAlert" BOOLEAN NOT NULL DEFAULT false,
    "pwTermID" INTEGER,
    "pwTermID2" INTEGER,
    "pwYearID" INTEGER,
    "schoolCode" TEXT,
    "schoolLMS" BOOLEAN NOT NULL DEFAULT false,
    "schoolName" TEXT,
    "state" TEXT,
    "zip" TEXT,
    CONSTRAINT "SchoolConfig_pwYearID_fkey" FOREIGN KEY ("pwYearID") REFERENCES "SchoolYearModel" ("yearId") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "SchoolConfig_nextYearId_fkey" FOREIGN KEY ("nextYearId") REFERENCES "SchoolYearModel" ("yearId") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "SchoolConfig_defaultYearId_fkey" FOREIGN KEY ("defaultYearId") REFERENCES "SchoolYearModel" ("yearId") ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO "new_SchoolConfig" ("active", "address", "city", "configSchoolID", "defaultTermId", "defaultYearId", "districtName", "email", "fax", "modifiedBy", "modifiedDate", "nextYearId", "parentAlert", "phone", "pwTermID", "pwTermID2", "pwYearID", "schoolCode", "schoolLMS", "schoolName", "state", "zip") SELECT "active", "address", "city", "configSchoolID", "defaultTermId", "defaultYearId", "districtName", "email", "fax", "modifiedBy", "modifiedDate", "nextYearId", "parentAlert", "phone", "pwTermID", "pwTermID2", "pwYearID", "schoolCode", "schoolLMS", "schoolName", "state", "zip" FROM "SchoolConfig";
DROP TABLE "SchoolConfig";
ALTER TABLE "new_SchoolConfig" RENAME TO "SchoolConfig";
Pragma writable_schema=1;
CREATE UNIQUE INDEX "sqlite_autoindex_SchoolConfig_2" ON "SchoolConfig"("schoolCode");
Pragma writable_schema=0;
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
