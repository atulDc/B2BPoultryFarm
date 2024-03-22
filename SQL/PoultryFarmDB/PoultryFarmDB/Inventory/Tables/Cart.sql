CREATE TABLE [Inventory].[Cart](
	[CartID] [bigint] IDENTITY(1,1) NOT NULL,
	[CartGUID] [uniqueidentifier] NOT NULL,
	[UserID] [bigint] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastUpdate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


GO
ALTER TABLE [Inventory].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Account_User] FOREIGN KEY([UserID])
REFERENCES [Account].[Users] ([UserId])
GO

ALTER TABLE [Inventory].[Cart] CHECK CONSTRAINT [FK_Cart_Account_User]
GO


GO


GO

