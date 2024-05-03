-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_StudentRecognitionModel" (
    "studentId" INTEGER,
    "yearId" INTEGER,
    "recognition" TEXT,
    "note" TEXT,
    "category" TEXT,
    "gradeLevel" TEXT,
    "recognitionId" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "schoolCode" TEXT,
    CONSTRAINT "StudentRecognitionModel_schoolCode_fkey" FOREIGN KEY ("schoolCode") REFERENCES "SchoolConfig" ("schoolCode") ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "StudentRecognitionModel_yearId_fkey" FOREIGN KEY ("yearId") REFERENCES "SchoolYearModel" ("yearId") ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO "new_StudentRecognitionModel" ("category", "gradeLevel", "note", "recognition", "recognitionId", "schoolCode", "studentId", "yearId") SELECT "category", "gradeLevel", "note", "recognition", "recognitionId", "schoolCode", "studentId", "yearId" FROM "StudentRecognitionModel";
DROP TABLE "StudentRecognitionModel";
ALTER TABLE "new_StudentRecognitionModel" RENAME TO "StudentRecognitionModel";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
