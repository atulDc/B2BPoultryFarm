CREATE TABLE [Inventory].[OrderDetails](
	[OrderDetailID] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderDetailGUID] [uniqueidentifier] NOT NULL,
	[OrderID] [bigint] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitID] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[InventoryAddressID] [bigint] NOT NULL,
	[ShippingAddressID] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastUpdate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


GO
ALTER TABLE [Inventory].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Miscellaneous_Unit] FOREIGN KEY([UnitID])
REFERENCES [Miscellaneous].[Units] ([UnitID])
GO

ALTER TABLE [Inventory].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Miscellaneous_Unit]
GO


GO


GO


GO


GO
ALTER TABLE [Inventory].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Inventory_Order] FOREIGN KEY([OrderID])
REFERENCES [Inventory].[Order] ([OrderID])
GO

ALTER TABLE [Inventory].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Inventory_Order]
GO


GO


GO


GO


GO
ALTER TABLE [Inventory].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_BusinessEntity_ShippingAddress] FOREIGN KEY([ShippingAddressID])
REFERENCES [BusinessEntity].[Address] ([AddressID])
GO

ALTER TABLE [Inventory].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_BusinessEntity_ShippingAddress]
GO


GO


GO


GO


GO
ALTER TABLE [Inventory].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_BusinessEntity_InventoryAddress] FOREIGN KEY([InventoryAddressID])
REFERENCES [BusinessEntity].[Address] ([AddressID])
GO

ALTER TABLE [Inventory].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_BusinessEntity_InventoryAddress]
GO


GO


GO


GO

