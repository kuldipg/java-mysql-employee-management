CREATE DATABASE `empdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
CREATE TABLE `department` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `login_master` (
  `userid` varchar(45) NOT NULL,
  `password` varchar(30) NOT NULL,
  `role` varchar(45) NOT NULL,
  `id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid_UNIQUE` (`userid`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `compliance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rltype` varchar(15) NOT NULL,
  `details` varchar(250) NOT NULL,
  `create_date` date NOT NULL,
  `deptid` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_deptid2_idx` (`deptid`),
  CONSTRAINT `fk_deptid2` FOREIGN KEY (`deptid`) REFERENCES `department` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `employee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `userid` varchar(45) NOT NULL,
  `password` varchar(30) NOT NULL,
  `role` varchar(45) NOT NULL,
  `deptid` int NOT NULL,
  `dob` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_deptid_idx` (`deptid`),
  CONSTRAINT `fk_deptid` FOREIGN KEY (`deptid`) REFERENCES `department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `status_report` (
  `id` int NOT NULL AUTO_INCREMENT,
  `compid` int NOT NULL,
  `empid` int NOT NULL,
  `deptid` int NOT NULL,
  `comments` varchar(160) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_compid1_idx` (`compid`),
  KEY `fk_eid1_idx` (`empid`),
  KEY `fk_deptid1_idx` (`deptid`),
  CONSTRAINT `fk_compid1` FOREIGN KEY (`compid`) REFERENCES `compliance` (`id`),
  CONSTRAINT `fk_deptid1` FOREIGN KEY (`deptid`) REFERENCES `department` (`id`),
  CONSTRAINT `fk_eid1` FOREIGN KEY (`empid`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `empdb`.`login_master`
(`userid`,
`password`,
`role`,
`id`)
VALUES
("scott",
"tiger",
"admin",
1);

INSERT INTO `empdb`.`department`
(`id`,
`name`)
VALUES
(1,
"Administration");

INSERT INTO `empdb`.`employee`
(`id`,
`fname`,
`lname`,
`email`,
`phone`,
`userid`,
`password`,
`role`,
`deptid`,
`dob`)
VALUES
(1,
"Scott",
"Styris",
"scottds@abc.com",
"1234567890",
"scott",
"tiger",
"admin",
1,
"1971-01-31");

