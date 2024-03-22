CREATE TABLE [Inventory].[Order](
	[OrderID] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderGUID] [uniqueidentifier] NOT NULL,
	[UserID] [bigint] NOT NULL,
	[StatusTypeID] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastUpdate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


GO
ALTER TABLE [Inventory].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Miscellaneous_StatusType] FOREIGN KEY([StatusTypeID])
REFERENCES [Miscellaneous].[Type] ([TypeId])
GO

ALTER TABLE [Inventory].[Order] CHECK CONSTRAINT [FK_Order_Miscellaneous_StatusType]
GO


GO


GO


GO
ALTER TABLE [Inventory].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Account_User] FOREIGN KEY([UserID])
REFERENCES [Account].[Users] ([UserId])
GO

ALTER TABLE [Inventory].[Order] CHECK CONSTRAINT [FK_Order_Account_User]
GO


GO


GO

