/*
  Warnings:

  - You are about to alter the column `outOfService` on the `LockerModel` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Boolean`.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_LockerModel" (
    "locker" TEXT,
    "lockerGroupId" INTEGER,
    "schoolCode" TEXT,
    "combination1" TEXT,
    "combination2" TEXT,
    "combination3" TEXT,
    "combination4" TEXT,
    "combination5" TEXT,
    "note" TEXT,
    "outOfService" BOOLEAN NOT NULL DEFAULT false,
    "currentCombination" INTEGER,
    "lockerId" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "configSchoolId" INTEGER NOT NULL
);
INSERT INTO "new_LockerModel" ("combination1", "combination2", "combination3", "combination4", "combination5", "configSchoolId", "currentCombination", "locker", "lockerGroupId", "lockerId", "note", "outOfService", "schoolCode") SELECT "combination1", "combination2", "combination3", "combination4", "combination5", "configSchoolId", "currentCombination", "locker", "lockerGroupId", "lockerId", "note", coalesce("outOfService", false) AS "outOfService", "schoolCode" FROM "LockerModel";
DROP TABLE "LockerModel";
ALTER TABLE "new_LockerModel" RENAME TO "LockerModel";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
