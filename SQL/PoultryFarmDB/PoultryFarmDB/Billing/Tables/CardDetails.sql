CREATE TABLE [Billing].[CardDetails](
	[CardDetailID] [int] IDENTITY(1,1) NOT NULL,
	[CardDetailGUID] [uniqueidentifier] NOT NULL,
	[UserID] [bigint] NOT NULL,
	[CardName] [nvarchar](255) NOT NULL,
	[CardNumber] [nvarchar](20) NOT NULL,
	[ExpiryDate] [date] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastUpdate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CardDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


GO
ALTER TABLE [Billing].[CardDetails]  WITH CHECK ADD  CONSTRAINT [FK_CardDetail_User] FOREIGN KEY([UserID])
REFERENCES [Account].[Users] ([UserId])
GO

ALTER TABLE [Billing].[CardDetails] CHECK CONSTRAINT [FK_CardDetail_User]
GO


GO


GO


GO

