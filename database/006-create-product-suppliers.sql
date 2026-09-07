USE StockManagementDb;
GO

CREATE TABLE ProductSuppliers
(
    Id INT PRIMARY KEY IDENTITY(1,1),
    ProductId INT NOT NULL,
    SupplierId INT NOT NULL,
    PurchasePrice DECIMAL(18,2) NOT NULL,
    CreatedDate DATETIME2 NOT NULL DEFAULT GETDATE(),

    CONSTRAINT FK_ProductSuppliers_Products
        FOREIGN KEY (ProductId)
        REFERENCES Products(Id),

    CONSTRAINT FK_ProductSuppliers_Suppliers
        FOREIGN KEY (SupplierId)
        REFERENCES Suppliers(Id),

    CONSTRAINT UQ_ProductSuppliers_Product_Supplier
        UNIQUE (ProductId, SupplierId)
);
GO