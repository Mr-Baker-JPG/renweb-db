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
    "uniqueTermID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    CONSTRAINT "SchoolTerms_yearID_fkey" FOREIGN KEY ("yearID") REFERENCES "SchoolYearModel" ("yearId") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "SchoolTerms_schoolCode_fkey" FOREIGN KEY ("schoolCode") REFERENCES "SchoolConfig" ("schoolCode") ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO "new_SchoolTerms" ("firstDay", "lastDay", "modifiedBy", "modifiedDate", "name", "schoolCode", "semesterID", "termID", "uniqueTermID", "yearID") SELECT "firstDay", "lastDay", "modifiedBy", "modifiedDate", "name", "schoolCode", "semesterID", "termID", "uniqueTermID", "yearID" FROM "SchoolTerms";
DROP TABLE "SchoolTerms";
ALTER TABLE "new_SchoolTerms" RENAME TO "SchoolTerms";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
