-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:4306
-- Thời gian đã tạo: Th1 23, 2024 lúc 11:14 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlsv`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `title`, `content`, `user_id`, `post_id`) VALUES
(1, ' Title 1', 'Content of Comment 1', 1, 1),
(2, ' Title 2', 'Content of Comment 2', 2, 2),
(3, ' Title 3', 'Content of Comment 3', 3, 3),
(4, ' Title 4', 'Content of Comment 4', 4, 4),
(5, ' Title 5', 'Content of Comment 5', 5, 5),
(6, ' Title 6', 'Content of Comment 6', 6, 6),
(7, ' Title 7', 'Content of Comment 7', 7, 7),
(8, ' Title 8', 'Content of Comment 8', 8, 8),
(9, ' Title 9', 'Content of Comment 9', 9, 9),
(10, ' Title 10', 'Content of Comment 10', 10, 10),
(11, ' Title 11', 'Content of Comment 11', 11, 11),
(12, ' Title 12', 'Content of Comment 12', 12, 12),
(13, ' Title 13', 'Content of Comment 13', 13, 13),
(14, ' Title 14', 'Content of Comment 14', 14, 14),
(15, ' Title 15', 'Content of Comment 15', 15, 15);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `create_date`, `user_id`) VALUES
(1, ' Title 1', 'Content of Post 1', '2024-01-19', 1),
(2, ' Title 2', 'Content of Post 2', '2024-01-18', 2),
(3, ' Title 3', 'Content of Post 3', '2024-01-17', 3),
(4, ' Title 4', 'Content of Post 4', '2024-01-16', 4),
(5, ' Title 5', 'Content of Post 5', '2024-01-15', 5),
(6, ' Title 6', 'Content of Post 6', '2024-01-14', 6),
(7, ' Title 7', 'Content of Post 7', '2024-01-13', 7),
(8, ' Title 8', 'Content of Post 8', '2024-01-12', 8),
(9, ' Title 9', 'Content of Post 9', '2024-01-11', 9),
(10, ' Title 10', 'Content of Post 10', '2024-01-10', 10),
(11, ' Title 11', 'Content of Post 11', '2024-01-09', 11),
(12, ' Title 12', 'Content of Post 12', '2024-01-08', 12),
(13, ' Title 13', 'Content of Post 13', '2024-01-07', 13),
(14, ' Title 14', 'Content of Post 14', '2024-01-06', 14),
(15, ' Title 15', 'Content of Post 15', '2024-01-05', 15);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'editor'),
(3, 'author'),
(4, 'role_4'),
(5, 'role_5'),
(6, 'role_6'),
(7, 'role_7'),
(8, 'role_8'),
(9, 'role_9'),
(10, 'role_10'),
(11, 'role_11'),
(12, 'role_12'),
(13, 'role_13'),
(14, 'role_14'),
(15, 'role_15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 2),
(1, 2),
(2, 3),
(3, 4),
(3, 5),
(4, 6),
(4, 7),
(5, 8),
(5, 9),
(6, 10),
(6, 11),
(7, 12),
(7, 13),
(8, 14),
(8, 15);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `birthday` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `create_date`, `birthday`) VALUES
(1, 'Trung1', 'trungnv1@gmail.com', '0973888888', '2024-01-19', '2024-01-20'),
(2, 'Trung2', 'trungnv2@gmail.com', '0973888889', '2024-01-18', '2024-01-19'),
(3, 'Trung3', 'trungnv3@gmail.com', '0973888890', '2024-01-17', '2024-01-18'),
(4, 'Trung4', 'trungnv4@gmail.com', '0973888891', '2024-01-16', '2024-01-17'),
(5, 'Trung5', 'trungnv5@gmail.com', '0973888892', '2024-01-15', '2024-01-16'),
(6, 'Trung6', 'trungnv6@gmail.com', '0973888893', '2024-01-14', '2024-01-15'),
(7, 'Trung7', 'trungnv7@gmail.com', '0973888894', '2024-01-13', '2024-01-14'),
(8, 'Trung8', 'trungnv8@gmail.com', '0973888895', '2024-01-12', '2024-01-13'),
(9, 'Trung9', 'trungnv9@gmail.com', '0973888896', '2024-01-11', '2024-01-12'),
(10, 'Trung10', 'trungnv10@gmail.com', '0973888897', '2024-01-10', '2024-01-11'),
(11, 'Trung11', 'trungnv11@gmail.com', '0973888898', '2024-01-09', '2024-01-10'),
(12, 'Trung12', 'trungnv12@gmail.com', '0973888899', '2024-01-08', '2024-01-09'),
(13, 'Trung13', 'trungnv13@gmail.com', '0973888800', '2024-01-07', '2024-01-08'),
(14, 'Trung14', 'trungnv14@gmail.com', '0973888801', '2024-01-06', '2024-01-07'),
(15, 'Trung15', 'trungnv15@gmail.com', '0973888802', '2024-01-05', '2024-01-06');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Các ràng buộc cho bảng `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `role_user_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/* 1 Lấy ra tất cả post có ngày nhỏ hơn ngày 2024-01-01, lấy ra tên của người tạo post:*/

SELECT posts.*, users.name as user_name
FROM posts
JOIN users ON posts.user_id = users.id
WHERE posts.create_date < '2024-01-01';

/*2Lấy ra các comment của post có id là 2, lấy ra tên của người comment, lấy ra title của bài post*/

SELECT comments.*, users.name as user_name, posts.title as post_title
FROM comments
JOIN users ON comments.user_id = users.id
JOIN posts ON comments.post_id = posts.id
WHERE comments.post_id = 2;

/*3Lấy ra tất cả user và tên quyền của người đó*/

SELECT users.*, roles.name as role_name
FROM users
JOIN role_user ON users.id = role_user.user_id
JOIN roles ON role_user.role_id = roles.id;

