CREATE TABLE `users` (
  `id` type PRIMARY KEY,
  `email` varchar(50),
  `password` varchar(50)
);

CREATE TABLE `ads` (
  `id` type PRIMARY KEY,
  `user_id` varchar(50),
  `title` varchar(50),
  `description` varchar(500),
  `content` carchar(100),
  `category_id` char
);

CREATE TABLE `categories` (
  `id` type PRIMARY KEY,
  `name` varchar(50)
);

ALTER TABLE `ads` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `ads` ADD FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
