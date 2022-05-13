-- CreateTable
CREATE TABLE "car" (
    "id" SERIAL NOT NULL,
    "brandy" TEXT NOT NULL,
    "modelo" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "bought" BOOLEAN NOT NULL DEFAULT false,

    CONSTRAINT "car_pkey" PRIMARY KEY ("id")
);
