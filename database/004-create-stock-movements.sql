USE StockManagementDb;
GO

CREATE TABLE StockMovements
(
    Id INT PRIMARY KEY IDENTITY(1,1),
    ProductId INT NOT NULL,
    Quantity INT NOT NULL,
    MovementType NVARCHAR(20) NOT NULL,
    Description NVARCHAR(500) NULL,
    CreatedDate DATETIME2 NOT NULL DEFAULT GETDATE(),

    CONSTRAINT FK_StockMovements_Products
        FOREIGN KEY (ProductId)
        REFERENCES Products(Id)
);
GO