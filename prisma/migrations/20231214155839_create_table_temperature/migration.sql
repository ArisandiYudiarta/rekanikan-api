-- CreateTable
CREATE TABLE `temperatures` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `temperature` INTEGER NOT NULL,
    `feeder_id` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `temperatures` ADD CONSTRAINT `temperatures_feeder_id_fkey` FOREIGN KEY (`feeder_id`) REFERENCES `feeders`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
