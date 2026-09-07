USE StockManagementDb;
GO

CREATE TABLE SaleDetails
(
    Id INT PRIMARY KEY IDENTITY(1,1),
    SaleId INT NOT NULL,
    ProductId INT NOT NULL,
    Quantity INT NOT NULL,
    UnitPrice DECIMAL(18,2) NOT NULL,

    CONSTRAINT FK_SaleDetails_Sales
        FOREIGN KEY (SaleId)
        REFERENCES Sales(Id),

    CONSTRAINT FK_SaleDetails_Products
        FOREIGN KEY (ProductId)
        REFERENCES Products(Id)
);
GO