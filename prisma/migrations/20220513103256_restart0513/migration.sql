/*
  Warnings:

  - You are about to drop the `car` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "car";

-- CreateTable
CREATE TABLE "Cars" (
    "id" SERIAL NOT NULL,
    "brand" TEXT NOT NULL,
    "model" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "bought" BOOLEAN NOT NULL DEFAULT false,

    CONSTRAINT "Cars_pkey" PRIMARY KEY ("id")
);
