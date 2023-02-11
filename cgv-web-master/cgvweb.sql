-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2022 at 03:33 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cgvweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_hoa_don`
--

CREATE TABLE `chi_tiet_hoa_don` (
  `id` int(11) NOT NULL,
  `gia` double NOT NULL,
  `ghe_ngoi_id` int(11) DEFAULT NULL,
  `hoa_don_id` int(11) DEFAULT NULL,
  `suat_chieu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chi_tiet_hoa_don`
--

INSERT INTO `chi_tiet_hoa_don` (`id`, `gia`, `ghe_ngoi_id`, `hoa_don_id`, `suat_chieu_id`) VALUES
(1, 150000, 26, 1, 14),
(2, 150000, 27, 1, 14),
(3, 150000, 37, 1, 14),
(4, 150000, 38, 1, 14),
(5, 150000, 49, 2, 14),
(6, 150000, 50, 2, 14),
(7, 180000, 226, 3, 24),
(8, 180000, 227, 3, 24),
(9, 180000, 228, 3, 24),
(10, 180000, 231, 4, 24),
(73, 150000, 426, 26, 26),
(74, 150000, 427, 26, 26),
(75, 150000, 474, 26, 26),
(76, 150000, 475, 26, 26),
(77, 150000, 446, 27, 26),
(78, 150000, 447, 27, 26),
(79, 150000, 448, 27, 26),
(80, 150000, 449, 27, 26),
(81, 150000, 450, 27, 26),
(82, 120000, 26, 28, 35),
(83, 200000, 41, 29, 34);

-- --------------------------------------------------------

--
-- Table structure for table `danh_gia_phim`
--

CREATE TABLE `danh_gia_phim` (
  `id` int(11) NOT NULL,
  `so_sao` int(11) NOT NULL,
  `nguoi_dung_id` int(11) DEFAULT NULL,
  `phim_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `danh_gia_phim`
--

INSERT INTO `danh_gia_phim` (`id`, `so_sao`, `nguoi_dung_id`, `phim_id`) VALUES
(1, 5, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ghe_ngoi`
--

CREATE TABLE `ghe_ngoi` (
  `id` int(11) NOT NULL,
  `vi_tri_cot` varchar(255) DEFAULT NULL,
  `vi_tri_hang` varchar(255) DEFAULT NULL,
  `phong_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ghe_ngoi`
--

INSERT INTO `ghe_ngoi` (`id`, `vi_tri_cot`, `vi_tri_hang`, `phong_id`) VALUES
(26, '0', 'A', 18),
(27, '1', 'A', 18),
(28, '2', 'A', 18),
(29, '3', 'A', 18),
(30, '4', 'A', 18),
(31, '0', 'B', 18),
(32, '1', 'B', 18),
(33, '2', 'B', 18),
(34, '3', 'B', 18),
(35, '4', 'B', 18),
(36, '0', 'C', 18),
(37, '1', 'C', 18),
(38, '2', 'C', 18),
(39, '3', 'C', 18),
(40, '4', 'C', 18),
(41, '0', 'D', 18),
(42, '1', 'D', 18),
(43, '2', 'D', 18),
(44, '3', 'D', 18),
(45, '4', 'D', 18),
(46, '0', 'F', 18),
(47, '1', 'F', 18),
(48, '2', 'F', 18),
(49, '3', 'F', 18),
(50, '4', 'F', 18),
(176, '0', 'A', 21),
(177, '1', 'A', 21),
(178, '2', 'A', 21),
(179, '3', 'A', 21),
(180, '4', 'A', 21),
(181, '5', 'A', 21),
(182, '6', 'A', 21),
(183, '7', 'A', 21),
(184, '8', 'A', 21),
(185, '9', 'A', 21),
(186, '0', 'B', 21),
(187, '1', 'B', 21),
(188, '2', 'B', 21),
(189, '3', 'B', 21),
(190, '4', 'B', 21),
(191, '5', 'B', 21),
(192, '6', 'B', 21),
(193, '7', 'B', 21),
(194, '8', 'B', 21),
(195, '9', 'B', 21),
(196, '0', 'C', 21),
(197, '1', 'C', 21),
(198, '2', 'C', 21),
(199, '3', 'C', 21),
(200, '4', 'C', 21),
(201, '5', 'C', 21),
(202, '6', 'C', 21),
(203, '7', 'C', 21),
(204, '8', 'C', 21),
(205, '9', 'C', 21),
(206, '0', 'D', 21),
(207, '1', 'D', 21),
(208, '2', 'D', 21),
(209, '3', 'D', 21),
(210, '4', 'D', 21),
(211, '5', 'D', 21),
(212, '6', 'D', 21),
(213, '7', 'D', 21),
(214, '8', 'D', 21),
(215, '9', 'D', 21),
(216, '0', 'F', 21),
(217, '1', 'F', 21),
(218, '2', 'F', 21),
(219, '3', 'F', 21),
(220, '4', 'F', 21),
(221, '5', 'F', 21),
(222, '6', 'F', 21),
(223, '7', 'F', 21),
(224, '8', 'F', 21),
(225, '9', 'F', 21),
(226, '0', 'A', 22),
(227, '1', 'A', 22),
(228, '2', 'A', 22),
(229, '3', 'A', 22),
(230, '4', 'A', 22),
(231, '0', 'B', 22),
(232, '1', 'B', 22),
(233, '2', 'B', 22),
(234, '3', 'B', 22),
(235, '4', 'B', 22),
(236, '0', 'C', 22),
(237, '1', 'C', 22),
(238, '2', 'C', 22),
(239, '3', 'C', 22),
(240, '4', 'C', 22),
(241, '0', 'D', 22),
(242, '1', 'D', 22),
(243, '2', 'D', 22),
(244, '3', 'D', 22),
(245, '4', 'D', 22),
(246, '0', 'F', 22),
(247, '1', 'F', 22),
(248, '2', 'F', 22),
(249, '3', 'F', 22),
(250, '4', 'F', 22),
(251, '0', 'A', 23),
(252, '1', 'A', 23),
(253, '2', 'A', 23),
(254, '3', 'A', 23),
(255, '4', 'A', 23),
(256, '0', 'B', 23),
(257, '1', 'B', 23),
(258, '2', 'B', 23),
(259, '3', 'B', 23),
(260, '4', 'B', 23),
(261, '0', 'C', 23),
(262, '1', 'C', 23),
(263, '2', 'C', 23),
(264, '3', 'C', 23),
(265, '4', 'C', 23),
(266, '0', 'D', 23),
(267, '1', 'D', 23),
(268, '2', 'D', 23),
(269, '3', 'D', 23),
(270, '4', 'D', 23),
(271, '0', 'F', 23),
(272, '1', 'F', 23),
(273, '2', 'F', 23),
(274, '3', 'F', 23),
(275, '4', 'F', 23),
(301, '0', 'A', 25),
(302, '1', 'A', 25),
(303, '2', 'A', 25),
(304, '3', 'A', 25),
(305, '4', 'A', 25),
(306, '5', 'A', 25),
(307, '6', 'A', 25),
(308, '7', 'A', 25),
(309, '8', 'A', 25),
(310, '9', 'A', 25),
(311, '0', 'B', 25),
(312, '1', 'B', 25),
(313, '2', 'B', 25),
(314, '3', 'B', 25),
(315, '4', 'B', 25),
(316, '5', 'B', 25),
(317, '6', 'B', 25),
(318, '7', 'B', 25),
(319, '8', 'B', 25),
(320, '9', 'B', 25),
(321, '0', 'C', 25),
(322, '1', 'C', 25),
(323, '2', 'C', 25),
(324, '3', 'C', 25),
(325, '4', 'C', 25),
(326, '5', 'C', 25),
(327, '6', 'C', 25),
(328, '7', 'C', 25),
(329, '8', 'C', 25),
(330, '9', 'C', 25),
(331, '0', 'D', 25),
(332, '1', 'D', 25),
(333, '2', 'D', 25),
(334, '3', 'D', 25),
(335, '4', 'D', 25),
(336, '5', 'D', 25),
(337, '6', 'D', 25),
(338, '7', 'D', 25),
(339, '8', 'D', 25),
(340, '9', 'D', 25),
(341, '0', 'F', 25),
(342, '1', 'F', 25),
(343, '2', 'F', 25),
(344, '3', 'F', 25),
(345, '4', 'F', 25),
(346, '5', 'F', 25),
(347, '6', 'F', 25),
(348, '7', 'F', 25),
(349, '8', 'F', 25),
(350, '9', 'F', 25),
(351, '0', 'G', 25),
(352, '1', 'G', 25),
(353, '2', 'G', 25),
(354, '3', 'G', 25),
(355, '4', 'G', 25),
(356, '5', 'G', 25),
(357, '6', 'G', 25),
(358, '7', 'G', 25),
(359, '8', 'G', 25),
(360, '9', 'G', 25),
(361, '0', 'H', 25),
(362, '1', 'H', 25),
(363, '2', 'H', 25),
(364, '3', 'H', 25),
(365, '4', 'H', 25),
(366, '5', 'H', 25),
(367, '6', 'H', 25),
(368, '7', 'H', 25),
(369, '8', 'H', 25),
(370, '9', 'H', 25),
(371, '0', 'I', 25),
(372, '1', 'I', 25),
(373, '2', 'I', 25),
(374, '3', 'I', 25),
(375, '4', 'I', 25),
(376, '5', 'I', 25),
(377, '6', 'I', 25),
(378, '7', 'I', 25),
(379, '8', 'I', 25),
(380, '9', 'I', 25),
(381, '0', 'J', 25),
(382, '1', 'J', 25),
(383, '2', 'J', 25),
(384, '3', 'J', 25),
(385, '4', 'J', 25),
(386, '5', 'J', 25),
(387, '6', 'J', 25),
(388, '7', 'J', 25),
(389, '8', 'J', 25),
(390, '9', 'J', 25),
(391, '0', 'K', 25),
(392, '1', 'K', 25),
(393, '2', 'K', 25),
(394, '3', 'K', 25),
(395, '4', 'K', 25),
(396, '5', 'K', 25),
(397, '6', 'K', 25),
(398, '7', 'K', 25),
(399, '8', 'K', 25),
(400, '9', 'K', 25),
(401, '0', 'A', 26),
(402, '1', 'A', 26),
(403, '2', 'A', 26),
(404, '3', 'A', 26),
(405, '4', 'A', 26),
(406, '0', 'B', 26),
(407, '1', 'B', 26),
(408, '2', 'B', 26),
(409, '3', 'B', 26),
(410, '4', 'B', 26),
(411, '0', 'C', 26),
(412, '1', 'C', 26),
(413, '2', 'C', 26),
(414, '3', 'C', 26),
(415, '4', 'C', 26),
(416, '0', 'D', 26),
(417, '1', 'D', 26),
(418, '2', 'D', 26),
(419, '3', 'D', 26),
(420, '4', 'D', 26),
(421, '0', 'F', 26),
(422, '1', 'F', 26),
(423, '2', 'F', 26),
(424, '3', 'F', 26),
(425, '4', 'F', 26),
(426, '0', 'A', 27),
(427, '1', 'A', 27),
(428, '2', 'A', 27),
(429, '3', 'A', 27),
(430, '4', 'A', 27),
(431, '0', 'B', 27),
(432, '1', 'B', 27),
(433, '2', 'B', 27),
(434, '3', 'B', 27),
(435, '4', 'B', 27),
(436, '0', 'C', 27),
(437, '1', 'C', 27),
(438, '2', 'C', 27),
(439, '3', 'C', 27),
(440, '4', 'C', 27),
(441, '0', 'D', 27),
(442, '1', 'D', 27),
(443, '2', 'D', 27),
(444, '3', 'D', 27),
(445, '4', 'D', 27),
(446, '0', 'F', 27),
(447, '1', 'F', 27),
(448, '2', 'F', 27),
(449, '3', 'F', 27),
(450, '4', 'F', 27),
(451, '0', 'G', 27),
(452, '1', 'G', 27),
(453, '2', 'G', 27),
(454, '3', 'G', 27),
(455, '4', 'G', 27),
(456, '0', 'H', 27),
(457, '1', 'H', 27),
(458, '2', 'H', 27),
(459, '3', 'H', 27),
(460, '4', 'H', 27),
(461, '0', 'I', 27),
(462, '1', 'I', 27),
(463, '2', 'I', 27),
(464, '3', 'I', 27),
(465, '4', 'I', 27),
(466, '0', 'J', 27),
(467, '1', 'J', 27),
(468, '2', 'J', 27),
(469, '3', 'J', 27),
(470, '4', 'J', 27),
(471, '0', 'K', 27),
(472, '1', 'K', 27),
(473, '2', 'K', 27),
(474, '3', 'K', 27),
(475, '4', 'K', 27),
(476, '0', 'A', 28),
(477, '1', 'A', 28),
(478, '2', 'A', 28),
(479, '3', 'A', 28),
(480, '4', 'A', 28),
(481, '0', 'B', 28),
(482, '1', 'B', 28),
(483, '2', 'B', 28),
(484, '3', 'B', 28),
(485, '4', 'B', 28),
(486, '0', 'C', 28),
(487, '1', 'C', 28),
(488, '2', 'C', 28),
(489, '3', 'C', 28),
(490, '4', 'C', 28),
(491, '0', 'D', 28),
(492, '1', 'D', 28),
(493, '2', 'D', 28),
(494, '3', 'D', 28),
(495, '4', 'D', 28),
(496, '0', 'F', 28),
(497, '1', 'F', 28),
(498, '2', 'F', 28),
(499, '3', 'F', 28),
(500, '4', 'F', 28),
(501, '0', 'A', 29),
(502, '1', 'A', 29),
(503, '2', 'A', 29),
(504, '3', 'A', 29),
(505, '4', 'A', 29),
(506, '0', 'B', 29),
(507, '1', 'B', 29),
(508, '2', 'B', 29),
(509, '3', 'B', 29),
(510, '4', 'B', 29),
(511, '0', 'C', 29),
(512, '1', 'C', 29),
(513, '2', 'C', 29),
(514, '3', 'C', 29),
(515, '4', 'C', 29),
(516, '0', 'D', 29),
(517, '1', 'D', 29),
(518, '2', 'D', 29),
(519, '3', 'D', 29),
(520, '4', 'D', 29),
(521, '0', 'F', 29),
(522, '1', 'F', 29),
(523, '2', 'F', 29),
(524, '3', 'F', 29),
(525, '4', 'F', 29),
(526, '0', 'A', 30),
(552, '0', 'A', 32),
(553, '1', 'A', 32),
(554, '2', 'A', 32),
(555, '3', 'A', 32),
(556, '4', 'A', 32),
(557, '0', 'B', 32),
(558, '1', 'B', 32),
(559, '2', 'B', 32),
(560, '3', 'B', 32),
(561, '4', 'B', 32),
(562, '0', 'C', 32),
(563, '1', 'C', 32),
(564, '2', 'C', 32),
(565, '3', 'C', 32),
(566, '4', 'C', 32),
(567, '0', 'D', 32),
(568, '1', 'D', 32),
(569, '2', 'D', 32),
(570, '3', 'D', 32),
(571, '4', 'D', 32),
(572, '0', 'F', 32),
(573, '1', 'F', 32),
(574, '2', 'F', 32),
(575, '3', 'F', 32),
(576, '4', 'F', 32),
(577, '0', 'A', 33),
(578, '1', 'A', 33),
(579, '2', 'A', 33),
(580, '3', 'A', 33),
(581, '4', 'A', 33),
(582, '5', 'A', 33),
(583, '6', 'A', 33),
(584, '7', 'A', 33),
(585, '8', 'A', 33),
(586, '9', 'A', 33),
(587, '0', 'B', 33),
(588, '1', 'B', 33),
(589, '2', 'B', 33),
(590, '3', 'B', 33),
(591, '4', 'B', 33),
(592, '5', 'B', 33),
(593, '6', 'B', 33),
(594, '7', 'B', 33),
(595, '8', 'B', 33),
(596, '9', 'B', 33),
(597, '0', 'C', 33),
(598, '1', 'C', 33),
(599, '2', 'C', 33),
(600, '3', 'C', 33),
(601, '4', 'C', 33),
(602, '5', 'C', 33),
(603, '6', 'C', 33),
(604, '7', 'C', 33),
(605, '8', 'C', 33),
(606, '9', 'C', 33),
(607, '0', 'D', 33),
(608, '1', 'D', 33),
(609, '2', 'D', 33),
(610, '3', 'D', 33),
(611, '4', 'D', 33),
(612, '5', 'D', 33),
(613, '6', 'D', 33),
(614, '7', 'D', 33),
(615, '8', 'D', 33),
(616, '9', 'D', 33),
(617, '0', 'F', 33),
(618, '1', 'F', 33),
(619, '2', 'F', 33),
(620, '3', 'F', 33),
(621, '4', 'F', 33),
(622, '5', 'F', 33),
(623, '6', 'F', 33),
(624, '7', 'F', 33),
(625, '8', 'F', 33),
(626, '9', 'F', 33),
(627, '0', 'G', 33),
(628, '1', 'G', 33),
(629, '2', 'G', 33),
(630, '3', 'G', 33),
(631, '4', 'G', 33),
(632, '5', 'G', 33),
(633, '6', 'G', 33),
(634, '7', 'G', 33),
(635, '8', 'G', 33),
(636, '9', 'G', 33),
(637, '0', 'H', 33),
(638, '1', 'H', 33),
(639, '2', 'H', 33),
(640, '3', 'H', 33),
(641, '4', 'H', 33),
(642, '5', 'H', 33),
(643, '6', 'H', 33),
(644, '7', 'H', 33),
(645, '8', 'H', 33),
(646, '9', 'H', 33),
(647, '0', 'I', 33),
(648, '1', 'I', 33),
(649, '2', 'I', 33),
(650, '3', 'I', 33),
(651, '4', 'I', 33),
(652, '5', 'I', 33),
(653, '6', 'I', 33),
(654, '7', 'I', 33),
(655, '8', 'I', 33),
(656, '9', 'I', 33),
(657, '0', 'J', 33),
(658, '1', 'J', 33),
(659, '2', 'J', 33),
(660, '3', 'J', 33),
(661, '4', 'J', 33),
(662, '5', 'J', 33),
(663, '6', 'J', 33),
(664, '7', 'J', 33),
(665, '8', 'J', 33),
(666, '9', 'J', 33),
(667, '0', 'K', 33),
(668, '1', 'K', 33),
(669, '2', 'K', 33),
(670, '3', 'K', 33),
(671, '4', 'K', 33),
(672, '5', 'K', 33),
(673, '6', 'K', 33),
(674, '7', 'K', 33),
(675, '8', 'K', 33),
(676, '9', 'K', 33),
(677, '0', 'A', 34),
(678, '1', 'A', 34),
(679, '2', 'A', 34),
(680, '3', 'A', 34),
(681, '4', 'A', 34),
(682, '5', 'A', 34),
(683, '6', 'A', 34),
(684, '7', 'A', 34),
(685, '8', 'A', 34),
(686, '9', 'A', 34),
(687, '0', 'B', 34),
(688, '1', 'B', 34),
(689, '2', 'B', 34),
(690, '3', 'B', 34),
(691, '4', 'B', 34),
(692, '5', 'B', 34),
(693, '6', 'B', 34),
(694, '7', 'B', 34),
(695, '8', 'B', 34),
(696, '9', 'B', 34),
(697, '0', 'C', 34),
(698, '1', 'C', 34),
(699, '2', 'C', 34),
(700, '3', 'C', 34),
(701, '4', 'C', 34),
(702, '5', 'C', 34),
(703, '6', 'C', 34),
(704, '7', 'C', 34),
(705, '8', 'C', 34),
(706, '9', 'C', 34),
(707, '0', 'D', 34),
(708, '1', 'D', 34),
(709, '2', 'D', 34),
(710, '3', 'D', 34),
(711, '4', 'D', 34),
(712, '5', 'D', 34),
(713, '6', 'D', 34),
(714, '7', 'D', 34),
(715, '8', 'D', 34),
(716, '9', 'D', 34),
(717, '0', 'F', 34),
(718, '1', 'F', 34),
(719, '2', 'F', 34),
(720, '3', 'F', 34),
(721, '4', 'F', 34),
(722, '5', 'F', 34),
(723, '6', 'F', 34),
(724, '7', 'F', 34),
(725, '8', 'F', 34),
(726, '9', 'F', 34),
(727, '0', 'G', 34),
(728, '1', 'G', 34),
(729, '2', 'G', 34),
(730, '3', 'G', 34),
(731, '4', 'G', 34),
(732, '5', 'G', 34),
(733, '6', 'G', 34),
(734, '7', 'G', 34),
(735, '8', 'G', 34),
(736, '9', 'G', 34),
(737, '0', 'H', 34),
(738, '1', 'H', 34),
(739, '2', 'H', 34),
(740, '3', 'H', 34),
(741, '4', 'H', 34),
(742, '5', 'H', 34),
(743, '6', 'H', 34),
(744, '7', 'H', 34),
(745, '8', 'H', 34),
(746, '9', 'H', 34),
(747, '0', 'I', 34),
(748, '1', 'I', 34),
(749, '2', 'I', 34),
(750, '3', 'I', 34),
(751, '4', 'I', 34),
(752, '5', 'I', 34),
(753, '6', 'I', 34),
(754, '7', 'I', 34),
(755, '8', 'I', 34),
(756, '9', 'I', 34),
(757, '0', 'J', 34),
(758, '1', 'J', 34),
(759, '2', 'J', 34),
(760, '3', 'J', 34),
(761, '4', 'J', 34),
(762, '5', 'J', 34),
(763, '6', 'J', 34),
(764, '7', 'J', 34),
(765, '8', 'J', 34),
(766, '9', 'J', 34),
(767, '0', 'K', 34),
(768, '1', 'K', 34),
(769, '2', 'K', 34),
(770, '3', 'K', 34),
(771, '4', 'K', 34),
(772, '5', 'K', 34),
(773, '6', 'K', 34),
(774, '7', 'K', 34),
(775, '8', 'K', 34),
(776, '9', 'K', 34);

-- --------------------------------------------------------

--
-- Table structure for table `hoa_don`
--

CREATE TABLE `hoa_don` (
  `id` int(11) NOT NULL,
  `ngay_lap` date DEFAULT NULL,
  `nguoi_dung_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hoa_don`
--

INSERT INTO `hoa_don` (`id`, `ngay_lap`, `nguoi_dung_id`) VALUES
(1, '2022-03-12', 1),
(2, '2022-03-12', 1),
(3, '2022-03-13', 4),
(4, '2022-03-13', 4),
(5, '2022-03-13', 4),
(17, '2022-03-16', 4),
(18, '2022-03-16', 4),
(19, '2022-03-16', 4),
(20, '2022-03-16', 4),
(21, '2022-03-16', 4),
(22, '2022-03-16', 4),
(23, '2022-03-16', 4),
(24, '2022-03-16', 4),
(25, '2022-03-16', 4),
(26, '2022-03-17', 5),
(27, '2022-04-17', 5),
(28, '2022-04-17', 5),
(29, '2022-04-03', 10),
(30, '2022-05-27', 11);

-- --------------------------------------------------------

--
-- Table structure for table `khu_vuc`
--

CREATE TABLE `khu_vuc` (
  `id` int(11) NOT NULL,
  `ten_khu_vuc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khu_vuc`
--

INSERT INTO `khu_vuc` (`id`, `ten_khu_vuc`) VALUES
(4, 'Tp.Thủ Đức'),
(5, 'Vũng Tàu'),
(6, 'Bình Dương'),
(7, 'Hà Nội'),
(8, 'Hải Phòng'),
(9, 'Gò Vấp');

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung_vaitro`
--

CREATE TABLE `nguoidung_vaitro` (
  `nguoidung_id` int(11) NOT NULL,
  `vaitro_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nguoidung_vaitro`
--

INSERT INTO `nguoidung_vaitro` (`nguoidung_id`, `vaitro_id`) VALUES
(1, 2),
(3, 2),
(4, 1),
(4, 2),
(5, 2),
(10, 2),
(11, 1),
(12, 1),
(13, 1),
(13, 2),
(14, 2);

-- --------------------------------------------------------

--
-- Table structure for table `nguoi_dung`
--

CREATE TABLE `nguoi_dung` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ho_ten` varchar(255) DEFAULT NULL,
  `mat_khau` varchar(255) NOT NULL,
  `ngay_sinh` varchar(255) DEFAULT NULL,
  `sdt` varchar(255) DEFAULT NULL,
  `gioi_tinh` varchar(255) DEFAULT NULL,
  `token_quen_mat_khau` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nguoi_dung`
--

INSERT INTO `nguoi_dung` (`id`, `email`, `ho_ten`, `mat_khau`, `ngay_sinh`, `sdt`, `gioi_tinh`, `token_quen_mat_khau`) VALUES
(1, 'huyhao@gmail.com', 'Nguyễn Huy Hảo', '$2a$10$ZyBLyQnz5GlBboZr1BsDGe9jaZuSfOW3EvwBcGDrWpTg8AQK8PN6W', '09/05/2000', '0965603393', 'Nữ', '88de58a8-08e6-4d33-9a8e-3aba8db51ce0'),
(3, 'member3@gmail.com', 'van anh', '$2a$10$T7EWssVL1FoJ6nvEEBiHDOT9UkOrvZMfOT6.GgqmUBZ2ifLR4Iceq', '09/05/2000', '0965603300', 'Nam', NULL),
(4, 'admin@gmail.com', 'son pham', '$2a$10$uZjg1PwZWdQWbm4G4DJN7eEEKqFiKzO2Fa8OtgYfDW224LLTfZaNW', '15/04/2000', '0965603399', 'Nam', 'a0afdb56-e024-45ec-a474-965eb2b2b2ee'),
(5, 'sonktk1@gmail.com', 'son pham', '$2a$10$WIscADheu8FWHPeh1izGvOihxm8VuTUuKGpHrVyJw9R6iTcNTDabO', '25/04/2000', '0965603399', 'Nam', ''),
(10, 'haodev2000@gmail.com', 'Nguyễn Huy Toàn', '$2a$10$/cpg0qK0BUfpVBoNq1BJY.ILeFkJkL0EolVjAEni5L8fyNlDM5vau', '31/03/2022', '0353152228', 'Nữ', ''),
(11, 'fakebookhao01@gmail.com', 'Nguyễn Huy Hảo', '$2a$10$dn1q47kvQVsjjnzm4fsdJuTGp30Tl3m4VEtwpB8knmsr72S2d05Gm', '23/05/2022', '0353152228', 'Nam', ''),
(12, 'tao@gmail.com', 'Hảo', '$2a$12$hSZ44orAbV5Bp9iSXJKPyOD4LKcJvPAM/34FNTSHhYfexXwCbyu/W', '23/05/2022', '0353152228', 'Nam', NULL),
(13, 'admin2@gmail.com', 'Nguyễn Huy Hảo', '$2a$10$5bWWH2sll73mTazAXCEoQe1X8GB3y/OBvO2fXvuoh/dhvdtjeGl5e', '10/05/2022', '0353152228', 'Nam', '6a5cb300-6ad4-4520-bb13-55eef40bf52d'),
(14, 'tungcan2000@gmail.com', 'CGVer', '$2a$10$uZjg1PwZWdQWbm4G4DJN7eEEKqFiKzO2Fa8OtgYfDW224LLTfZaNW', '24/10/2022', '0348889995', 'Nam', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `phim`
--

CREATE TABLE `phim` (
  `id` int(11) NOT NULL,
  `dao_dien` varchar(255) DEFAULT NULL,
  `dien_vien` varchar(255) DEFAULT NULL,
  `hinh_anh` varchar(255) DEFAULT NULL,
  `mo_ta` text DEFAULT NULL,
  `ten_phim` varchar(255) DEFAULT NULL,
  `the_loai` varchar(255) DEFAULT NULL,
  `thoi_luong` int(11) NOT NULL,
  `trailer` varchar(255) DEFAULT NULL,
  `ngay_cong_chieu` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phim`
--

INSERT INTO `phim` (`id`, `dao_dien`, `dien_vien`, `hinh_anh`, `mo_ta`, `ten_phim`, `the_loai`, `thoi_luong`, `trailer`, `ngay_cong_chieu`) VALUES
(2, 'Lý Hải', 'Võ Thành Tâm, Mạc Văn Khoa, Huỳnh Đông.', 'https://hiepsieuhp89.s3.ap-northeast-1.amazonaws.com/dc4560f9-c20c-4420-8ac3-a68aacda2cf9.jpg', 'Lý Hải trở lại với dòng phim hành động sở trường của mình. Bối cảnh hoành tráng với sự đầu tư nghiêm túc, siêu phẩm hành động Việt Lật Mặt 48h sẽ kể về một hành trình trốn chạy đầy kịch tính, nghẹt thở đến phút cuối cùng.', 'LẬT MẶT: 48H', 'Hành Động', 110, 'https://www.youtube.com/embed/ykBfss-8H4Y', '2022-11-05'),
(4, 'Jon Watts', 'Tom Holland, Zendaya, Benedict Cumberbatch, Jacob Batalon, Jon Favreau', 'https://hiepsieuhp89.s3.ap-northeast-1.amazonaws.com/c77e50f9-2291-4cb2-8351-342e031a10d1.jpg', 'Lần đầu tiên trong lịch sử điện ảnh của Người Nhện, thân phận người hàng xóm thân thiện bị lật mở, khiến trách nhiệm làm một Siêu Anh Hùng xung đột với cuộc sống bình thường và đặt người anh quan tâm nhất vào tình thế nguy hiểm.', 'NO WAY HOME', 'Hành Động ', 150, 'https://www.youtube.com/embed/rt-2cxAiPJk', '2022-11-20'),
(5, 'Matt Reeves', 'Robert Pattinson, Colin Farrell, Zoe Kravitz, Andy Serkis  ', 'https://hiepsieuhp89.s3.ap-northeast-1.amazonaws.com/710222a8-7b83-49f3-b0b6-1ab18d258f48.jpg', 'Bộ phim đưa khán giả dõi theo hành trình phá án và diệt trừ tội phạm của chàng Hiệp sĩ Bóng đêm Batman, với một câu chuyện hoàn toàn khác biệt với những phần phim đã ra mắt trước đây. ', 'THE BATMAN ', 'Hành Động ', 150, 'https://www.youtube.com/embed/mqqft2x_Aa4', '2022-11-24'),
(8, 'James Cameron', 'Sam Worthington, Zoe Saldana, Stephen Lang, Giovanni Ribisi, Vin Diesel, Edie Falco, Michelle Yeoh, Jemaine Clement, Cliff Curtis, Kate Winslet, Sigourney Weaver.', 'https://hiepsieuhp89.s3.ap-northeast-1.amazonaws.com/2d139fc9-3724-4f89-b4c8-04af37ab3eea.jpg', 'Avatar 2 là bộ phim thuộc thể loại khoa học viễn tưởng của Mỹ được ra mắt vào năm 2018. Với sự góp mặt của hàng loạt diễn viên nổi tiếng bậc nhất thế giới và cũng từng đóng trong Avatar 1 như Sam Worthington, Zoe Saldana, Stephen Lang và Sigourney Weaver.', 'AVATAR 2', 'Phim Viễn tưởng', 121, 'https://www.youtube.com/embed/LfyKg7XjlJA&list=RDLfyKg7XjlJA&start_radio=1', '2022-11-02'),
(17, 'Jaume Collet-Serra', 'The Rock', 'https://hiepsieuhp89.s3.ap-northeast-1.amazonaws.com/d27363fa-c5a5-402a-89fa-e8ad1e5f47b8.jpg', 'Black Adam là một bộ phim điện ảnh siêu anh hùng của Hoa Kỳ ra mắt năm 2022, dựa trên nhân vật cùng tên của DC Comics. Được sản xuất bởi New Line Cinema, DC Films, Seven Bucks Productions và Flynn Picture, đây là phần phim ngoại truyện của Shazam!, và là phim thứ 11 trong Vũ trụ Mở rộng DC.', 'Black Adam', 'Hành Động, Viễn tưởng', 240, 'https://www.youtube.com/embed/mkomfZHG5q4', '2022-10-31'),
(18, 'Ryan Coogler', 'Chadwick Boseman', 'https://hiepsieuhp89.s3.ap-northeast-1.amazonaws.com/996382ec-7aee-45d8-b262-5ba94ff3c0fb.jpg', 'Ryan Coogler nói: \"Có rất nhiều thứ chưa từng được thực hiện trước đây trong phim. Ý tôi là những kỹ thuật làm phim mà chúng tôi áp dụng, kỹ thuật treo dây cáp và những gì chúng tôi làm với dàn diễn viên, đội ngũ đóng thế và trang điểm. Có bảy hệ tiếng nói trong phim.\r\n\r\nThật tuyệt vời khi thấy mọi người đều cố gắng hết mình. Ước gì tôi được tới Sài Gòn cùng các bạn. Sẽ rất tuyệt vời\".\r\n\r\nĐạo diễn Ryan Coogler tiết lộ với Charlie Nguyễn sự khác biệt then chốt giữa Black Panther: Wakanda Forever và Black Panther 1 chính là tập trung vào tình mẫu tử thay vì tình phụ tử. Phần 2 sẽ xoay quanh mối quan hệ giữa Nữ hoàng Ramonda (Angela Bassett) và con gái Shuri (Letitia Wright) sau khi T’Challa qua đời.', 'Black Panther: Wakanda Forever', 'Hành Động, Viễn tưởng', 150, 'https://www.youtube.com/embed/RlOB3UALvrQ', '2022-12-03');

-- --------------------------------------------------------

--
-- Table structure for table `phong`
--

CREATE TABLE `phong` (
  `id` int(11) NOT NULL,
  `cot` int(11) NOT NULL,
  `hang` int(11) NOT NULL,
  `ten_phong` varchar(255) DEFAULT NULL,
  `rap_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phong`
--

INSERT INTO `phong` (`id`, `cot`, `hang`, `ten_phong`, `rap_id`) VALUES
(18, 5, 5, 'phòng 1', 4),
(21, 10, 5, 'phòng 1', 5),
(22, 5, 5, 'phòng 1', 7),
(23, 5, 5, 'phòng 1', 6),
(25, 10, 10, 'phòng 1', 8),
(26, 5, 5, 'phòng 2', 4),
(27, 5, 10, 'phòng 1', 9),
(28, 5, 5, 'phòng 2', 10),
(29, 5, 5, 'phòng 1', 10),
(30, 1, 1, 'phòng 3', 10),
(32, 5, 5, 'phòng 1', 11),
(33, 10, 10, 'phòng 2', 8),
(34, 10, 10, 'Phòng 1', 12);

-- --------------------------------------------------------

--
-- Table structure for table `rap`
--

CREATE TABLE `rap` (
  `id` int(11) NOT NULL,
  `dia_chi` varchar(255) DEFAULT NULL,
  `ten_rap` varchar(255) DEFAULT NULL,
  `khuvuc_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rap`
--

INSERT INTO `rap` (`id`, `dia_chi`, `ten_rap`, `khuvuc_id`) VALUES
(4, '12-Nguyễn Văn Quá -Q12', 'GLX Nguyễn Văn Quá', 4),
(5, '12-Võ Thị Sau-TP. Vũng Tàu', 'GLX Vũng Tàu', 5),
(6, 'le thi rieng Ha Noi', 'GLX Indochina Plaza Hà Nội', 7),
(7, '12 - Hoàng Văn Thụ - TP.Thủ Dầu Một', 'GLX Bình Dương', 6),
(8, '12-Hoàng văn thụ - TP.Hải Phòng', 'GLX Hải Phòng', 8),
(9, '12- Le Thi Rieng - Q.Tân Bình', 'GLX Tân Bình', 4),
(10, '13-Hoàng Hoa Thám - Q.Gò Vấp', 'GLX Gò Vấp', 4),
(11, 'Vũng Tàu', 'CGV Vũng Tàu 1', 5),
(12, 'Gò Vấp', 'Lotte Gò Vấp', 9);

-- --------------------------------------------------------

--
-- Table structure for table `suat_chieu`
--

CREATE TABLE `suat_chieu` (
  `id` int(11) NOT NULL,
  `gia_ve` double NOT NULL,
  `gio_bat_dau` varchar(255) DEFAULT NULL,
  `ngay_chieu` date DEFAULT NULL,
  `phim_id` int(11) DEFAULT NULL,
  `the_loai_id` int(11) DEFAULT NULL,
  `phong_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suat_chieu`
--

INSERT INTO `suat_chieu` (`id`, `gia_ve`, `gio_bat_dau`, `ngay_chieu`, `phim_id`, `the_loai_id`, `phong_id`) VALUES
(14, 150000, '21:00', '2022-06-04', 2, 2, 18),
(16, 150000, '06:30', '2022-06-04', 2, 2, 21),
(18, 150000, '15:36', '2022-06-04', 4, 2, 22),
(24, 180000, '21:00', '2022-06-04', 2, 2, 22),
(26, 150000, '18:30', '2022-06-04', 2, 2, 27),
(29, 150000, '19:20', '2022-06-04', 4, 2, 18),
(30, 120000, '08:35', '2022-06-04', 5, 2, 18),
(34, 200000, '22:00', '2022-06-04', 2, 2, 18),
(35, 120000, '01:17', '2022-06-04', 4, 2, 18),
(39, 150000, '10:05', '2022-06-04', 2, 3, 18),
(41, 120000, '02:06', '2022-06-04', 5, 2, 18),
(49, 120000, '10:00', '2022-06-04', 2, 3, 32),
(57, 120000, '10:20', '2022-06-04', 4, 2, 18),
(58, 123000, '20:23', '2022-06-04', 2, 2, 18),
(59, 120000, '19:25', '2022-06-04', 8, 2, 18),
(70, 500000, '10:50', '2022-04-20', 2, 2, 34),
(75, 123, '00:32', '2022-04-20', 2, 2, 34),
(76, 50000, '11:20', '2022-04-20', 4, 3, 18),
(77, 120000, '14:02', '2022-10-25', 2, 2, 18),
(78, 123232, '22:00', '2022-10-25', 2, 2, 18),
(79, 140000, '20:30', '2022-11-03', 8, 2, 23),
(80, 120000, '00:30', '2022-11-03', 17, 2, 23),
(81, 90000, '11:33', '2022-11-05', 2, 2, 23),
(82, 123000, '11:35', '2022-11-21', 4, 2, 23),
(83, 50000, '12:30', '2022-11-05', 18, 2, 23);

-- --------------------------------------------------------

--
-- Table structure for table `the_loai`
--

CREATE TABLE `the_loai` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `the_loai`
--

INSERT INTO `the_loai` (`id`, `ten`) VALUES
(2, '2D'),
(3, '3D');

-- --------------------------------------------------------

--
-- Table structure for table `vai_tro`
--

CREATE TABLE `vai_tro` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vai_tro`
--

INSERT INTO `vai_tro` (`id`, `ten`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_MEMBER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chi_tiet_hoa_don`
--
ALTER TABLE `chi_tiet_hoa_don`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKmttso47r8uriygmc6fljmvjyt` (`ghe_ngoi_id`),
  ADD KEY `FK8u22ain8he9p3mgvuhkw82jkq` (`hoa_don_id`),
  ADD KEY `FKkq8785vlysbl36ljh2ebs3ng2` (`suat_chieu_id`);

--
-- Indexes for table `danh_gia_phim`
--
ALTER TABLE `danh_gia_phim`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKlkbfggcgthbjpmbcijvfvgdj7` (`nguoi_dung_id`),
  ADD KEY `FKdqgw65b04c804kw6xl70eg0o2` (`phim_id`);

--
-- Indexes for table `ghe_ngoi`
--
ALTER TABLE `ghe_ngoi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK55v1d3eweg804fme4oqghkup` (`phong_id`);

--
-- Indexes for table `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKdyrp3siy2ej5m684r8jyqn08c` (`nguoi_dung_id`);

--
-- Indexes for table `khu_vuc`
--
ALTER TABLE `khu_vuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nguoidung_vaitro`
--
ALTER TABLE `nguoidung_vaitro`
  ADD PRIMARY KEY (`nguoidung_id`,`vaitro_id`),
  ADD KEY `FKjx0c5d875frfyw09nb4ajxs03` (`vaitro_id`);

--
-- Indexes for table `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_majqh5g4djy2tp3p9dvr64brp` (`email`);

--
-- Indexes for table `phim`
--
ALTER TABLE `phim`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKalgyqukqt63we7q8x9gdvtdvv` (`rap_id`);

--
-- Indexes for table `rap`
--
ALTER TABLE `rap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKnl62ch17kxxdnykt7xmlsyajs` (`khuvuc_id`);

--
-- Indexes for table `suat_chieu`
--
ALTER TABLE `suat_chieu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKe9440vde3vmquhwxjaxbjr77a` (`phim_id`),
  ADD KEY `FKo39lhfv86a2dnkekfbtgqjfcf` (`the_loai_id`),
  ADD KEY `FKreocw1ncmybf5buj3oo7vqu1e` (`phong_id`);

--
-- Indexes for table `the_loai`
--
ALTER TABLE `the_loai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vai_tro`
--
ALTER TABLE `vai_tro`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chi_tiet_hoa_don`
--
ALTER TABLE `chi_tiet_hoa_don`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `danh_gia_phim`
--
ALTER TABLE `danh_gia_phim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ghe_ngoi`
--
ALTER TABLE `ghe_ngoi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=777;

--
-- AUTO_INCREMENT for table `hoa_don`
--
ALTER TABLE `hoa_don`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `khu_vuc`
--
ALTER TABLE `khu_vuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `phim`
--
ALTER TABLE `phim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `phong`
--
ALTER TABLE `phong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `rap`
--
ALTER TABLE `rap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `suat_chieu`
--
ALTER TABLE `suat_chieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `the_loai`
--
ALTER TABLE `the_loai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vai_tro`
--
ALTER TABLE `vai_tro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chi_tiet_hoa_don`
--
ALTER TABLE `chi_tiet_hoa_don`
  ADD CONSTRAINT `FK8u22ain8he9p3mgvuhkw82jkq` FOREIGN KEY (`hoa_don_id`) REFERENCES `hoa_don` (`id`),
  ADD CONSTRAINT `FKkq8785vlysbl36ljh2ebs3ng2` FOREIGN KEY (`suat_chieu_id`) REFERENCES `suat_chieu` (`id`),
  ADD CONSTRAINT `FKmttso47r8uriygmc6fljmvjyt` FOREIGN KEY (`ghe_ngoi_id`) REFERENCES `ghe_ngoi` (`id`);

--
-- Constraints for table `danh_gia_phim`
--
ALTER TABLE `danh_gia_phim`
  ADD CONSTRAINT `FKdqgw65b04c804kw6xl70eg0o2` FOREIGN KEY (`phim_id`) REFERENCES `phim` (`id`),
  ADD CONSTRAINT `FKlkbfggcgthbjpmbcijvfvgdj7` FOREIGN KEY (`nguoi_dung_id`) REFERENCES `nguoi_dung` (`id`);

--
-- Constraints for table `ghe_ngoi`
--
ALTER TABLE `ghe_ngoi`
  ADD CONSTRAINT `FK55v1d3eweg804fme4oqghkup` FOREIGN KEY (`phong_id`) REFERENCES `phong` (`id`);

--
-- Constraints for table `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD CONSTRAINT `FKdyrp3siy2ej5m684r8jyqn08c` FOREIGN KEY (`nguoi_dung_id`) REFERENCES `nguoi_dung` (`id`);

--
-- Constraints for table `nguoidung_vaitro`
--
ALTER TABLE `nguoidung_vaitro`
  ADD CONSTRAINT `FKjx0c5d875frfyw09nb4ajxs03` FOREIGN KEY (`vaitro_id`) REFERENCES `vai_tro` (`id`),
  ADD CONSTRAINT `FKpaklpuw2w0trk3j8a6gi5mr8s` FOREIGN KEY (`nguoidung_id`) REFERENCES `nguoi_dung` (`id`);

--
-- Constraints for table `phong`
--
ALTER TABLE `phong`
  ADD CONSTRAINT `FKalgyqukqt63we7q8x9gdvtdvv` FOREIGN KEY (`rap_id`) REFERENCES `rap` (`id`);

--
-- Constraints for table `rap`
--
ALTER TABLE `rap`
  ADD CONSTRAINT `FKnl62ch17kxxdnykt7xmlsyajs` FOREIGN KEY (`khuvuc_id`) REFERENCES `khu_vuc` (`id`);

--
-- Constraints for table `suat_chieu`
--
ALTER TABLE `suat_chieu`
  ADD CONSTRAINT `FKe9440vde3vmquhwxjaxbjr77a` FOREIGN KEY (`phim_id`) REFERENCES `phim` (`id`),
  ADD CONSTRAINT `FKo39lhfv86a2dnkekfbtgqjfcf` FOREIGN KEY (`the_loai_id`) REFERENCES `the_loai` (`id`),
  ADD CONSTRAINT `FKreocw1ncmybf5buj3oo7vqu1e` FOREIGN KEY (`phong_id`) REFERENCES `phong` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
