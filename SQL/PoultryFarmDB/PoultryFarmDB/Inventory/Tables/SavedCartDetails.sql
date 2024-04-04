CREATE TABLE [Inventory].[SavedCartDetails](
	[SavedCartDetailID] [bigint] IDENTITY(1,1) NOT NULL,
	[SavedCartDetailGUID] [uniqueidentifier] NOT NULL,
	[SavedCartID] [bigint] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitID] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastUpdate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SavedCartDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


GO
ALTER TABLE [Inventory].[SavedCartDetails]  WITH CHECK ADD  CONSTRAINT [FK_SavedCartDetails_Inventory_Unit] FOREIGN KEY([UnitID])
REFERENCES [Miscellaneous].[Units] ([UnitID])
GO

ALTER TABLE [Inventory].[SavedCartDetails] CHECK CONSTRAINT [FK_SavedCartDetails_Inventory_Unit]
GO


GO


GO


GO


GO
ALTER TABLE [Inventory].[SavedCartDetails]  WITH CHECK ADD  CONSTRAINT [FK_SavedCartDetails_Inventory_Cart] FOREIGN KEY([SavedCartID])
REFERENCES [Inventory].[SavedCarts] ([SavedCartID])
GO

ALTER TABLE [Inventory].[SavedCartDetails] CHECK CONSTRAINT [FK_SavedCartDetails_Inventory_Cart]
GO


GO


GO


GO

