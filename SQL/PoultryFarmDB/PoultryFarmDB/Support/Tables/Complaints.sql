CREATE TABLE [Support].[Complaints](
	[ComplaintID] [bigint] IDENTITY(1,1) NOT NULL,
	[ComplaintGUID] [uniqueidentifier] NOT NULL,
	[ComplaintByCustomerID] [bigint] NOT NULL,
	[OrderID] [bigint] NOT NULL,
	[ComplaintType] [bigint] NOT NULL,
	[ComplaintDescription] [nvarchar](max) NOT NULL,
	[StatusTypeID] [bigint] NOT NULL,
	[ResolutionDescription] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastUpdate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ComplaintID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


GO
ALTER TABLE [Support].[Complaints]  WITH CHECK ADD  CONSTRAINT [FK_Complaint_StatusType] FOREIGN KEY([StatusTypeID])
REFERENCES [Miscellaneous].[Type] ([TypeId])
GO

ALTER TABLE [Support].[Complaints] CHECK CONSTRAINT [FK_Complaint_StatusType]
GO


GO


GO


GO
ALTER TABLE [Support].[Complaints]  WITH CHECK ADD  CONSTRAINT [FK_Complaint_Order] FOREIGN KEY([OrderID])
REFERENCES [Inventory].[Order] ([OrderID])
GO

ALTER TABLE [Support].[Complaints] CHECK CONSTRAINT [FK_Complaint_Order]
GO


GO


GO


GO
ALTER TABLE [Support].[Complaints]  WITH CHECK ADD  CONSTRAINT [FK_Complaint_Customer] FOREIGN KEY([ComplaintByCustomerID])
REFERENCES [Account].[Users] ([UserId])
GO

ALTER TABLE [Support].[Complaints] CHECK CONSTRAINT [FK_Complaint_Customer]
GO


GO


GO


GO
ALTER TABLE [Support].[Complaints]  WITH CHECK ADD  CONSTRAINT [FK_Complaint_ComplaintType] FOREIGN KEY([ComplaintType])
REFERENCES [Miscellaneous].[Type] ([TypeId])
GO

ALTER TABLE [Support].[Complaints] CHECK CONSTRAINT [FK_Complaint_ComplaintType]
GO


GO


GO

