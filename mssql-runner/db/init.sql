-- Create a new database
CREATE DATABASE MySampleDB;
GO

-- Switch to the new database
USE MySampleDB;
GO

-- Create a table
CREATE TABLE Users (
    UserID INT PRIMARY KEY IDENTITY(1,1),
    Username NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) NOT NULL,
    CreatedAt DATETIME DEFAULT GETDATE()
);
GO

-- Insert sample data
INSERT INTO Users (Username, Email) VALUES ('alice', 'alice@example.com');
INSERT INTO Users (Username, Email) VALUES ('bob', 'bob@example.com');
GO
