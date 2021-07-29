CREATE TABLE `lab-triathlon`.`activities_total` (
  `year` INT NOT NULL,
  `month` INT NOT NULL,
  `ownerId` INT NOT NULL,
  `activities_total` INT NULL,
  `hours_total` INT NULL,
  `distance_total` INT NULL,
  `ownerDisplayName` VARCHAR(100) NULL,
  PRIMARY KEY (`year`, `month`, `ownerId`));