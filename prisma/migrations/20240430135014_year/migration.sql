-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_SchoolYearModel" (
    "yearName" TEXT,
    "allowInquiry" BOOLEAN NOT NULL DEFAULT false,
    "blockAcademicYear" BOOLEAN NOT NULL DEFAULT false,
    "yearId" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "firstDay" DATETIME,
    "lastDay" DATETIME,
    "schoolCode" TEXT,
    CONSTRAINT "SchoolYearModel_schoolCode_fkey" FOREIGN KEY ("schoolCode") REFERENCES "SchoolConfig" ("schoolCode") ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO "new_SchoolYearModel" ("allowInquiry", "blockAcademicYear", "firstDay", "lastDay", "schoolCode", "yearId", "yearName") SELECT "allowInquiry", "blockAcademicYear", "firstDay", "lastDay", "schoolCode", "yearId", "yearName" FROM "SchoolYearModel";
DROP TABLE "SchoolYearModel";
ALTER TABLE "new_SchoolYearModel" RENAME TO "SchoolYearModel";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
