CREATE TABLE [Inventory].[InventoryDetails](
	[InventoryID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [bigint] NOT NULL,
	[UnitID] [int] NOT NULL,
	[AddressID] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastUpdate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[InventoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


GO
ALTER TABLE [Inventory].[InventoryDetails]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_PhysicalAddress_Address] FOREIGN KEY([AddressID])
REFERENCES [BusinessEntity].[Address] ([AddressID])
GO

ALTER TABLE [Inventory].[InventoryDetails] CHECK CONSTRAINT [FK_Inventory_PhysicalAddress_Address]
GO


GO


GO


GO


GO
ALTER TABLE [Inventory].[InventoryDetails]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_Miscellaneous_Units] FOREIGN KEY([UnitID])
REFERENCES [Miscellaneous].[Units] ([UnitID])
GO

ALTER TABLE [Inventory].[InventoryDetails] CHECK CONSTRAINT [FK_Inventory_Miscellaneous_Units]
GO


GO


GO


GO


GO
ALTER TABLE [Inventory].[InventoryDetails]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_Inventory_Product] FOREIGN KEY([ProductID])
REFERENCES [Inventory].[Products] ([ProductID])
GO

ALTER TABLE [Inventory].[InventoryDetails] CHECK CONSTRAINT [FK_Inventory_Inventory_Product]
GO


GO


GO


GO

