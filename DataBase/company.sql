-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2023 at 08:30 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `company`
--

-- --------------------------------------------------------

--
-- Table structure for table `engineers`
--

CREATE TABLE `engineers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `specialty` varchar(255) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL
) ;

--
-- Dumping data for table `engineers`
--

INSERT INTO `engineers` (`id`, `name`, `specialty`, `salary`, `age`) VALUES
(1, 'mahmoud', 'architectural', 1000, 30),
(2, 'Faiz', 'architectural', 1200, 40),
(3, 'Fadi', 'design', 1250, 45),
(4, 'mahmoud', 'electricity', 1400, 33),
(5, 'rami', 'design', 1500, 32),
(6, 'ahmed', 'electricity', 1300, 28);

-- --------------------------------------------------------

--
-- Table structure for table `managers`
--

CREATE TABLE `managers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `specialty` varchar(255) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `managers`
--

INSERT INTO `managers` (`id`, `name`, `specialty`, `salary`) VALUES
(1, 'ahmed', 'administration', 1000),
(2, 'ali', 'engineering', 1200),
(4, 'mahmoud', 'administration', 1400),
(5, 'rami', 'engineering', 1500),
(6, 'Aimen', 'engineering', 1300);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `starting_date` date DEFAULT NULL,
  `Expiry_date` date DEFAULT NULL,
  `budget` bigint(20) DEFAULT NULL,
  `id_managers` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT 'gaza'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `starting_date`, `Expiry_date`, `budget`, `id_managers`, `address`) VALUES
(1, 'proj1', '2019-05-01', '2023-05-02', 800000, 1, 'gaza'),
(2, 'proj2', '2020-10-02', '2025-10-03', 1000000, 2, 'gaza'),
(3, 'proj3', '2021-05-08', '2023-05-09', 1200000, 3, 'gaza'),
(4, 'proj4', '2022-05-01', '2024-05-02', 750000, 4, 'gaza'),
(5, 'proj5', '2022-10-02', '2024-10-03', 500000, 5, 'gaza'),
(6, 'proj6', '2023-05-08', '2027-05-09', 2000000, 6, 'gaza');

-- --------------------------------------------------------

--
-- Table structure for table `proj_eng`
--

CREATE TABLE `proj_eng` (
  `id_projects` int(11) NOT NULL,
  `id_engineers` int(11) DEFAULT NULL,
  `hours` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `proj_eng`
--

INSERT INTO `proj_eng` (`id_projects`, `id_engineers`, `hours`) VALUES
(1, 5, 10),
(2, 3, 15),
(3, 2, 20),
(4, 1, 50),
(5, 4, 50),
(6, 6, 25);

-- --------------------------------------------------------

--
-- Stand-in structure for view `q01`
-- (See below for the actual view)
--
CREATE TABLE `q01` (
`name` varchar(255)
,`salary` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `q02`
-- (See below for the actual view)
--
CREATE TABLE `q02` (
`worker_name` varchar(255)
,`responsible_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `q03`
-- (See below for the actual view)
--
CREATE TABLE `q03` (
`project_name` varchar(255)
,`worker_count` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `q04`
-- (See below for the actual view)
--
CREATE TABLE `q04` (
`name` varchar(255)
,`age` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `q05`
-- (See below for the actual view)
--
CREATE TABLE `q05` (
`worker_name` varchar(255)
,`project_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `q06`
-- (See below for the actual view)
--
CREATE TABLE `q06` (
`id` int(11)
,`name` varchar(255)
,`specialty` varchar(255)
,`salary` int(11)
,`age` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `q07`
-- (See below for the actual view)
--
CREATE TABLE `q07` (
`name` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `q08`
-- (See below for the actual view)
--
CREATE TABLE `q08` (
`worker_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `q09`
-- (See below for the actual view)
--
CREATE TABLE `q09` (
`manager_name` varchar(255)
,`project_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `q10`
-- (See below for the actual view)
--
CREATE TABLE `q10` (
`id` int(11)
,`name` varchar(255)
,`age` int(11)
,`salary` int(11)
,`id_project` int(11)
,`id_engineers` int(11)
,`responsible_id` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `q11`
-- (See below for the actual view)
--
CREATE TABLE `q11` (
`id` int(11)
,`name` varchar(255)
,`specialty` varchar(255)
,`salary` int(11)
,`age` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `q12`
-- (See below for the actual view)
--
CREATE TABLE `q12` (
`id` int(11)
,`name` varchar(255)
,`specialty` varchar(255)
,`salary` int(11)
,`age` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `q13`
-- (See below for the actual view)
--
CREATE TABLE `q13` (
`id` int(11)
,`name` varchar(255)
,`starting_date` date
,`Expiry_date` date
,`budget` bigint(20)
,`id_managers` int(11)
,`address` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `q14`
-- (See below for the actual view)
--
CREATE TABLE `q14` (
`id` int(11)
,`name` varchar(255)
,`starting_date` date
,`Expiry_date` date
,`budget` bigint(20)
,`id_managers` int(11)
,`address` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `q15`
-- (See below for the actual view)
--
CREATE TABLE `q15` (
`project_name` varchar(255)
,`engineer_name` varchar(255)
,`work_hours` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `worker`
--

CREATE TABLE `worker` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `id_project` int(11) DEFAULT NULL,
  `id_engineers` int(11) DEFAULT NULL,
  `responsible_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `worker`
--

INSERT INTO `worker` (`id`, `name`, `age`, `salary`, `id_project`, `id_engineers`, `responsible_id`) VALUES
(1, 'Khalid', 25, 1000, 5, 5, 2),
(2, 'ali', 30, 1200, 4, 4, 1),
(3, 'fadi', 20, 1250, 2, 2, 2),
(4, 'mahmoud', 23, 1400, 3, 3, 3),
(5, 'rami', 27, 1500, 1, 1, 4),
(6, 'Yahya', 24, 1300, 2, 2, 1);

-- --------------------------------------------------------

--
-- Structure for view `q01`
--
DROP TABLE IF EXISTS `q01`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `q01`  AS SELECT `worker`.`name` AS `name`, `worker`.`salary` AS `salary` FROM `worker` WHERE `worker`.`salary` >= 12501250  ;

-- --------------------------------------------------------

--
-- Structure for view `q02`
--
DROP TABLE IF EXISTS `q02`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `q02`  AS SELECT `w`.`name` AS `worker_name`, `m`.`name` AS `responsible_name` FROM (`worker` `w` join `managers` `m` on(`w`.`responsible_id` = `m`.`id`))  ;

-- --------------------------------------------------------

--
-- Structure for view `q03`
--
DROP TABLE IF EXISTS `q03`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `q03`  AS SELECT `p`.`name` AS `project_name`, count(`w`.`id`) AS `worker_count` FROM (`projects` `p` left join `worker` `w` on(`p`.`id` = `w`.`id_project`)) GROUP BY `p`.`id``id`  ;

-- --------------------------------------------------------

--
-- Structure for view `q04`
--
DROP TABLE IF EXISTS `q04`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `q04`  AS SELECT `engineers`.`name` AS `name`, `engineers`.`age` AS `age` FROM `engineers` ORDER BY `engineers`.`age` AS `DESCdesc` ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `q05`
--
DROP TABLE IF EXISTS `q05`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `q05`  AS SELECT `w`.`name` AS `worker_name`, `p`.`name` AS `project_name` FROM (`worker` `w` join `projects` `p` on(`w`.`id_project` = `p`.`id`)) WHERE `p`.`budget` > 750000750000  ;

-- --------------------------------------------------------

--
-- Structure for view `q06`
--
DROP TABLE IF EXISTS `q06`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `q06`  AS SELECT `engineers`.`id` AS `id`, `engineers`.`name` AS `name`, `engineers`.`specialty` AS `specialty`, `engineers`.`salary` AS `salary`, `engineers`.`age` AS `age` FROM `engineers` WHERE `engineers`.`salary` > 1400 AND `engineers`.`age` between 30 and 4040  ;

-- --------------------------------------------------------

--
-- Structure for view `q07`
--
DROP TABLE IF EXISTS `q07`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `q07`  AS SELECT `managers`.`name` AS `name` FROM `managers` WHERE (`managers`.`name` like 'A%' OR `managers`.`name` like 'L%') AND `managers`.`salary` > 3030  ;

-- --------------------------------------------------------

--
-- Structure for view `q08`
--
DROP TABLE IF EXISTS `q08`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `q08`  AS SELECT `w`.`name` AS `worker_name` FROM (`worker` `w` join `projects` `p` on(`w`.`id_project` = `p`.`id`)) WHERE `p`.`budget` > 500000 ORDER BY `p`.`budget` ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `q09`
--
DROP TABLE IF EXISTS `q09`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `q09`  AS SELECT `managers`.`name` AS `manager_name`, `projects`.`name` AS `project_name` FROM (`managers` join `projects` on(`managers`.`id` = `projects`.`id_managers`))  ;

-- --------------------------------------------------------

--
-- Structure for view `q10`
--
DROP TABLE IF EXISTS `q10`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `q10`  AS SELECT `worker`.`id` AS `id`, `worker`.`name` AS `name`, `worker`.`age` AS `age`, `worker`.`salary` AS `salary`, `worker`.`id_project` AS `id_project`, `worker`.`id_engineers` AS `id_engineers`, `worker`.`responsible_id` AS `responsible_id` FROM `worker` WHERE `worker`.`salary` > (select avg(`worker`.`salary`) from `worker`)  ;

-- --------------------------------------------------------

--
-- Structure for view `q11`
--
DROP TABLE IF EXISTS `q11`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `q11`  AS SELECT `engineers`.`id` AS `id`, `engineers`.`name` AS `name`, `engineers`.`specialty` AS `specialty`, `engineers`.`salary` AS `salary`, `engineers`.`age` AS `age` FROM `engineers` WHERE `engineers`.`salary` = (select max(`engineers`.`salary`) from `engineers`)  ;

-- --------------------------------------------------------

--
-- Structure for view `q12`
--
DROP TABLE IF EXISTS `q12`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `q12`  AS SELECT `engineers`.`id` AS `id`, `engineers`.`name` AS `name`, `engineers`.`specialty` AS `specialty`, `engineers`.`salary` AS `salary`, `engineers`.`age` AS `age` FROM `engineers` WHERE `engineers`.`age` > 30 AND `engineers`.`salary` > (select avg(`engineers`.`salary`) from `engineers`)  ;

-- --------------------------------------------------------

--
-- Structure for view `q13`
--
DROP TABLE IF EXISTS `q13`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `q13`  AS SELECT `projects`.`id` AS `id`, `projects`.`name` AS `name`, `projects`.`starting_date` AS `starting_date`, `projects`.`Expiry_date` AS `Expiry_date`, `projects`.`budget` AS `budget`, `projects`.`id_managers` AS `id_managers`, `projects`.`address` AS `address` FROM `projects` WHERE `projects`.`Expiry_date` = '2024-05-05''2024-05-05'  ;

-- --------------------------------------------------------

--
-- Structure for view `q14`
--
DROP TABLE IF EXISTS `q14`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `q14`  AS SELECT `projects`.`id` AS `id`, `projects`.`name` AS `name`, `projects`.`starting_date` AS `starting_date`, `projects`.`Expiry_date` AS `Expiry_date`, `projects`.`budget` AS `budget`, `projects`.`id_managers` AS `id_managers`, `projects`.`address` AS `address` FROM `projects` WHERE `projects`.`starting_date` > '2020-01-01' AND `projects`.`Expiry_date` < '2025-01-01''2025-01-01'  ;

-- --------------------------------------------------------

--
-- Structure for view `q15`
--
DROP TABLE IF EXISTS `q15`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `q15`  AS SELECT `p`.`name` AS `project_name`, `e`.`name` AS `engineer_name`, `pe`.`hours` AS `work_hours` FROM ((`projects` `p` join `proj_eng` `pe` on(`p`.`id` = `pe`.`id_projects`)) join `engineers` `e` on(`e`.`id` = `pe`.`id_engineers`))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `engineers`
--
ALTER TABLE `engineers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proj_eng`
--
ALTER TABLE `proj_eng`
  ADD PRIMARY KEY (`id_projects`);

--
-- Indexes for table `worker`
--
ALTER TABLE `worker`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
