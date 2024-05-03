-- CreateTable
CREATE TABLE "_SchoolYear_Term" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL,
    CONSTRAINT "_SchoolYear_Term_A_fkey" FOREIGN KEY ("A") REFERENCES "SchoolTerms" ("uniqueTermID") ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "_SchoolYear_Term_B_fkey" FOREIGN KEY ("B") REFERENCES "SchoolYearModel" ("yearId") ON DELETE CASCADE ON UPDATE CASCADE
);

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
    CONSTRAINT "SchoolTerms_schoolCode_fkey" FOREIGN KEY ("schoolCode") REFERENCES "SchoolConfig" ("schoolCode") ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO "new_SchoolTerms" ("firstDay", "lastDay", "modifiedBy", "modifiedDate", "name", "schoolCode", "semesterID", "termID", "uniqueTermID", "yearID") SELECT "firstDay", "lastDay", "modifiedBy", "modifiedDate", "name", "schoolCode", "semesterID", "termID", "uniqueTermID", "yearID" FROM "SchoolTerms";
DROP TABLE "SchoolTerms";
ALTER TABLE "new_SchoolTerms" RENAME TO "SchoolTerms";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;

-- CreateIndex
CREATE UNIQUE INDEX "_SchoolYear_Term_AB_unique" ON "_SchoolYear_Term"("A", "B");

-- CreateIndex
CREATE INDEX "_SchoolYear_Term_B_index" ON "_SchoolYear_Term"("B");
