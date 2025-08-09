-- Create simplified database structure
CREATE DATABASE IF NOT EXISTS wms;
USE wms;

-- User table
CREATE TABLE IF NOT EXISTS usertable (
    id int(11) NOT NULL AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    email varchar(255) NOT NULL,
    password varchar(255) NOT NULL,
    role varchar(20) DEFAULT 'user',
    PRIMARY KEY (id)
);

-- Admin login table
CREATE TABLE IF NOT EXISTS adminlogin (
    Id int(11) NOT NULL AUTO_INCREMENT,
    username varchar(255) NOT NULL DEFAULT 'admin',
    password varchar(255) NOT NULL DEFAULT 'admin',
    PRIMARY KEY (Id)
);

-- Garbage info table
CREATE TABLE IF NOT EXISTS garbageinfo (
    Id int(11) NOT NULL AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    mobile varchar(15) DEFAULT NULL,
    email varchar(255) NOT NULL,
    wastetype varchar(255) NOT NULL,
    location varchar(255) NOT NULL,
    locationdescription varchar(255) NOT NULL,
    file varchar(255) NOT NULL,
    date varchar(255) DEFAULT NULL,
    status varchar(50) DEFAULT 'Pending',
    PRIMARY KEY (Id)
);

-- Insert default admin account
INSERT INTO adminlogin (username, password) VALUES ('admin', 'admin');

-- Add role column to existing usertable if it doesn't exist
ALTER TABLE usertable ADD COLUMN IF NOT EXISTS role varchar(20) DEFAULT 'user';

-- Insert a default admin user
INSERT INTO usertable (name, email, password, role) VALUES ('Admin User', 'admin@wms.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin');
S