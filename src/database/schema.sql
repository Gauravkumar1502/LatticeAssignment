CREATE DATABASE IF NOT EXISTS `LatticeAssignment`;

CREATE TABLE IF NOT EXISTS `hospitals` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` varchar(255) NOT NULL,
    `address` varchar(255) NOT NULL,
    `phone_number` varchar(255) NOT NULL,
    `email` varchar(255) UNIQUE NOT NULL,
    `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` timestamp ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS `psychiatrists` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` varchar(255) NOT NULL,
    `phone_number` varchar(255) NOT NULL,
    `email` varchar(255) UNIQUE NOT NULL,
    `address` varchar(255) NOT NULL,
    `hospital_id` INT NOT NULL,
    `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` timestamp ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (hospital_id) REFERENCES hospitals(id)
);

CREATE TABLE IF NOT EXISTS `patients` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` varchar(255) NOT NULL,
    `address` varchar(255) NOT NULL,
    `email` varchar(255) UNIQUE NOT NULL,
    `phone_number` varchar(15),
    `password` varchar(255) NOT NULL,   
    `profile_picture` varchar(255) NOT NULL,
    `psychiatrist_id` INT NOT NULL,
    `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` timestamp ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (psychiatrist_id) REFERENCES psychiatrists(id)
);