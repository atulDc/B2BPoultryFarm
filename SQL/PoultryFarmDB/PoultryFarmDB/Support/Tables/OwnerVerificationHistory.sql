CREATE TABLE [Support].[OwnerVerificationHistory](
	[HistoryID] [bigint] IDENTITY(1,1) NOT NULL,
	[HistoryGUID] [uniqueidentifier] NOT NULL,
	[RequestID] [bigint] NOT NULL,
	[VerificationStatusHistoryTypeID] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastUpdate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[HistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [Support].[OwnerVerificationHistory]  WITH CHECK ADD  CONSTRAINT [FK_OwnerVerificationHistory_Request] FOREIGN KEY([RequestID])
REFERENCES [Support].[OwnerVerificationRequest] ([RequestID])
GO

ALTER TABLE [Support].[OwnerVerificationHistory] CHECK CONSTRAINT [FK_OwnerVerificationHistory_Request]
GO
ALTER TABLE [Support].[OwnerVerificationHistory]  WITH CHECK ADD  CONSTRAINT [FK_OwnerVerificationHistory_VerificationStatusHistoryType] FOREIGN KEY([VerificationStatusHistoryTypeID])
REFERENCES [Miscellaneous].[Type] ([TypeId])
GO

ALTER TABLE [Support].[OwnerVerificationHistory] CHECK CONSTRAINT [FK_OwnerVerificationHistory_VerificationStatusHistoryType]