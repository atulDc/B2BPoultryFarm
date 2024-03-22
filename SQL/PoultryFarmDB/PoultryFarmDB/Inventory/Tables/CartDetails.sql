CREATE TABLE [Inventory].[CartDetails](
	[CartDetailID] [bigint] IDENTITY(1,1) NOT NULL,
	[CartDetailGUID] [uniqueidentifier] NOT NULL,
	[CartID] [bigint] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitID] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[ShippingAddressID] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastUpdate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CartDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


GO
ALTER TABLE [Inventory].[CartDetails]  WITH CHECK ADD  CONSTRAINT [FK_CartDetails_Inventory_Unit] FOREIGN KEY([UnitID])
REFERENCES [Miscellaneous].[Units] ([UnitID])
GO

ALTER TABLE [Inventory].[CartDetails] CHECK CONSTRAINT [FK_CartDetails_Inventory_Unit]
GO


GO


GO


GO
ALTER TABLE [Inventory].[CartDetails]  WITH CHECK ADD  CONSTRAINT [FK_CartDetails_Inventory_Cart] FOREIGN KEY([CartID])
REFERENCES [Inventory].[Cart] ([CartID])
GO

ALTER TABLE [Inventory].[CartDetails] CHECK CONSTRAINT [FK_CartDetails_Inventory_Cart]
GO


GO


GO


GO
ALTER TABLE [Inventory].[CartDetails]  WITH CHECK ADD  CONSTRAINT [FK_CartDetails_BusinessEntity_ShippingAddress] FOREIGN KEY([ShippingAddressID])
REFERENCES [BusinessEntity].[Address] ([AddressID])
GO

ALTER TABLE [Inventory].[CartDetails] CHECK CONSTRAINT [FK_CartDetails_BusinessEntity_ShippingAddress]
GO


GO


GO

