USE StockManagementDb;
GO

CREATE TABLE Products
(
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(150) NOT NULL,
    Description NVARCHAR(500) NULL,
    Price DECIMAL(18,2) NOT NULL,
    Stock INT NOT NULL DEFAULT 0,
    CategoryId INT NOT NULL,
    IsActive BIT NOT NULL DEFAULT 1,
    CreatedDate DATETIME2 NOT NULL DEFAULT GETDATE(),

    CONSTRAINT FK_Products_Categories
        FOREIGN KEY (CategoryId)
        REFERENCES Categories(Id)
);
GO