CREATE TABLE [Support].[OwnerVerificationRequest](
	[RequestID] [bigint] IDENTITY(1,1) NOT NULL,
	[RequestGUID] [uniqueidentifier] NOT NULL,
	[RequestedByUserID] [bigint] NOT NULL,
	[PhysicalInspectionCompleted] [bit] NOT NULL,
	[VerificationStatusTypeID] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastUpdate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [Support].[OwnerVerificationRequest]  WITH CHECK ADD  CONSTRAINT [FK_OwnerVerificationRequest_User] FOREIGN KEY([RequestedByUserID])
REFERENCES [Account].[Users] ([UserId])
GO

ALTER TABLE [Support].[OwnerVerificationRequest] CHECK CONSTRAINT [FK_OwnerVerificationRequest_User]
GO


GO
ALTER TABLE [Support].[OwnerVerificationRequest]  WITH CHECK ADD  CONSTRAINT [FK_OwnerVerificationRequest_VerificationStatusType] FOREIGN KEY([VerificationStatusTypeID])
REFERENCES [Miscellaneous].[Type] ([TypeId])
GO

ALTER TABLE [Support].[OwnerVerificationRequest] CHECK CONSTRAINT [FK_OwnerVerificationRequest_VerificationStatusType]
GO

