/*
  Warnings:

  - You are about to alter the column `active` on the `SchoolConfig` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Boolean`.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
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
    CONSTRAINT "SchoolConfig_pwTermID2_fkey" FOREIGN KEY ("pwTermID2") REFERENCES "SchoolTerms" ("uniqueTermID") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "SchoolConfig_pwTermID_fkey" FOREIGN KEY ("pwTermID") REFERENCES "SchoolTerms" ("uniqueTermID") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "SchoolConfig_nextYearId_fkey" FOREIGN KEY ("nextYearId") REFERENCES "SchoolYearModel" ("yearId") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "SchoolConfig_defaultYearId_fkey" FOREIGN KEY ("defaultYearId") REFERENCES "SchoolYearModel" ("yearId") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "SchoolConfig_defaultTermId_fkey" FOREIGN KEY ("defaultTermId") REFERENCES "SchoolTerms" ("uniqueTermID") ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO "new_SchoolConfig" ("active", "address", "city", "configSchoolID", "defaultTermId", "defaultYearId", "districtName", "email", "fax", "modifiedBy", "modifiedDate", "nextYearId", "parentAlert", "phone", "pwTermID", "pwTermID2", "pwYearID", "schoolCode", "schoolLMS", "schoolName", "state", "zip") SELECT "active", "address", "city", "configSchoolID", "defaultTermId", "defaultYearId", "districtName", "email", "fax", "modifiedBy", "modifiedDate", "nextYearId", "parentAlert", "phone", "pwTermID", "pwTermID2", "pwYearID", "schoolCode", "schoolLMS", "schoolName", "state", "zip" FROM "SchoolConfig";
DROP TABLE "SchoolConfig";
ALTER TABLE "new_SchoolConfig" RENAME TO "SchoolConfig";
Pragma writable_schema=1;
CREATE UNIQUE INDEX "sqlite_autoindex_SchoolConfig_2" ON "SchoolConfig"("schoolCode");
Pragma writable_schema=0;
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
