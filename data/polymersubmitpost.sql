-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 14, 2020 lúc 11:15 AM
-- Phiên bản máy phục vụ: 10.4.8-MariaDB
-- Phiên bản PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `polymersubmitpost`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) NOT NULL,
  `post_author` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `post_categories` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `post_images` varchar(50) CHARACTER SET latin1 NOT NULL,
  `post_date` date NOT NULL,
  `post_title` text CHARACTER SET utf8 NOT NULL,
  `post_content` varchar(8000) CHARACTER SET utf8 NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `post_author`, `post_categories`, `post_images`, `post_date`, `post_title`, `post_content`, `post_excerpt`) VALUES
(1, 'admin', 'test1', 'test.jpg', '2019-10-03', 'admin post 1', 'this is my test 1', 'this is....'),
(3, 'admin', 'agdasgdsag', '33333.jpg', '2020-02-16', 'asgsdag', 'asdgsagdsagsa<div><div style=\"max-width: 800px; max-height: 600px;\"><img alt=\"polymer-3.0\" style=\"width: 100%; text-align: center;\" src=\"http://localhost:3000/images/33333.jpg\" <=\"\" div=\"\"></div></div>', 'sadgsagdsag');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
