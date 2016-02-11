--create database for Expense Application
CREATE DATABASE ExpenseApplication;

-- use ID Identity that means 1+1

USE ExpenseApplication;
CREATE TABLE Category(
	Id INT IDENTITY(1,1) PRIMARY KEY,
	Name VARCHAR(20) NOT NULL,
	[Description] VARCHAR(100) NOT NULL
);
-- create transaction table and then do the relation with the user table and receipt table
CREATE TABLE [Transaction]( 
	Id INT PRIMARY KEY,
	AccountID INT,
	Amount DECIMAL(10,2),
	[Description] VARCHAR(MAX),
	CategoryID INT,
	UserID INT,
	[Date] SMALLDATETIME,
	Receipt INT
);
 
CREATE TABLE [User](
	UserID	INT IDENTITY(1,1) PRIMARY KEY,
	FirstName VARCHAR(15) NOT NULL,
	LastName VARCHAR(15) NOT NULL,
	Phone VARCHAR(15),
	[Address] VARCHAR(100)
);
CREATE TABLE Account(
	AccountID INT PRIMARY KEY,
	RoutingNumber INT,
	InstitutionName VARCHAR(30)
);
CREATE TABLE Receipt(
	ReceiptID INT IDENTITY(1,1) PRIMARY KEY,
	ReceiptURL VARCHAR(200)
);