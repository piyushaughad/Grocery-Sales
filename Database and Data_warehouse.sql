CREATE DATABASE Sales_DW;
GO

USE Sales_DW;
GO

CREATE TABLE Product_Dim (
    ProductKey INT NOT NULL IDENTITY,
    ProductName VARCHAR(50) NOT NULL,
    CategoryName VARCHAR(50),
    Price DECIMAL(20,2) NOT NULL,
    Class VARCHAR(50),
    IsAllergic VARCHAR(50),
	PRIMARY KEY (ProductKey));
GO

CREATE TABLE Customer_Dim (
    CustomerKey INT NOT NULL IDENTITY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    MiddleInitial CHAR(5),
    Address VARCHAR(50)
	PRIMARY KEY (CustomerKey));
GO

CREATE TABLE Employee_Dim (
    EmployeeKey INT NOT NULL IDENTITY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    MiddleInitial VARCHAR(5),
    Gender VARCHAR(10),
    HireDate DATETIME
	PRIMARY KEY (EmployeeKey));
GO

CREATE TABLE Location_Dim (
    CityKey INT NOT NULL IDENTITY,
    CityName VARCHAR(50) NOT NULL,
    CountryName VARCHAR(50),
    CountryCode VARCHAR(10),
    Zipcode VARCHAR(20)
	PRIMARY KEY (CityKey));
GO

CREATE TABLE Calender_Dim (
    CalenderKey INT NOT NULL IDENTITY,
    SalesDate DATETIME NOT NULL,
    Day INT NOT NULL,
    Weekday VARCHAR(10),
    Month char(10) NOT NULL,
    Quarter char(2) NOT NULL,
    Year INT NOT NULL
	PRIMARY KEY (CalenderKey));
GO

CREATE TABLE Sales_Fact (
    ProductKey INT NOT NULL,
    CustomerKey INT NOT NULL,
    EmployeeKey INT NOT NULL,
    CityKey INT NOT NULL,
    CalenderKey INT NOT NULL,
    Quantity INT NOT NULL,
    Discount DECIMAL(20,1) DEFAULT 0,
    TotalPrice DECIMAL(20,2) NOT NULL,
	PRIMARY KEY (ProductKey,CalenderKey),
	FOREIGN KEY (ProductKey) REFERENCES Product_Dim(ProductKey),
    FOREIGN KEY (CustomerKey) REFERENCES Customer_Dim(CustomerKey),
    FOREIGN KEY (EmployeeKey) REFERENCES Employee_Dim(EmployeeKey),
    FOREIGN KEY (CityKey) REFERENCES Location_Dim(CityKey),
    FOREIGN KEY (CalenderKey) REFERENCES Calender_Dim(CalenderKey)
);

