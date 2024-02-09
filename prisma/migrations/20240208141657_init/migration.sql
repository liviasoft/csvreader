-- CreateTable
CREATE TABLE `Call` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `home_operator` VARCHAR(191) NOT NULL,
    `terminating_operator` VARCHAR(191) NOT NULL,
    `country` VARCHAR(191) NOT NULL,
    `number_type` VARCHAR(191) NOT NULL,
    `anum` VARCHAR(191) NULL,
    `bnum` VARCHAR(191) NULL,
    `time_of_call` VARCHAR(191) NOT NULL,
    `date_of_call` VARCHAR(191) NOT NULL,
    `duration` VARCHAR(191) NULL,
    `node` VARCHAR(191) NULL,
    `route` VARCHAR(191) NULL,
    `ati_result` VARCHAR(191) NULL,
    `subscriber_state` VARCHAR(191) NULL,
    `verification_decision` VARCHAR(191) NOT NULL,
    `blacklisted` VARCHAR(191) NULL,
    `whitelisted` VARCHAR(191) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Verification` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `calling_party` VARCHAR(191) NULL,
    `called_party` VARCHAR(191) NULL,
    `call_date` VARCHAR(191) NOT NULL,
    `service_key` VARCHAR(191) NULL,
    `node` VARCHAR(191) NULL,
    `terminating_operator` VARCHAR(191) NOT NULL,
    `home_operator` VARCHAR(191) NOT NULL,
    `srism_result` VARCHAR(191) NULL,
    `ati_result` VARCHAR(191) NULL,
    `subscriber_state` VARCHAR(191) NULL,
    `verification_decision` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Whitelist` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `msisdn` VARCHAR(191) NOT NULL,
    `country` VARCHAR(191) NOT NULL,
    `home_operator` VARCHAR(191) NOT NULL,
    `number_type` VARCHAR(191) NOT NULL,
    `source` VARCHAR(191) NOT NULL,
    `comments` VARCHAR(191) NOT NULL,
    `effective_from` VARCHAR(191) NOT NULL,
    `effective_to` VARCHAR(191) NOT NULL,
    `created` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Blacklist` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
