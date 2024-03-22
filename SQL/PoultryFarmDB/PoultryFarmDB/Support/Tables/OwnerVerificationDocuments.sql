CREATE TABLE [Support].[OwnerVerificationDocuments](
	[DocumentID] [bigint] IDENTITY(1,1) NOT NULL,
	[DocumentGUID] [uniqueidentifier] NOT NULL,
	[RequestID] [bigint] NOT NULL,
	[DocumentType] [bigint] NOT NULL,
	[DocumentPath] [nvarchar](max) NOT NULL,
	[VerificationStatus] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastUpdate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DocumentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [Support].[OwnerVerificationDocuments]  WITH CHECK ADD  CONSTRAINT [FK_OwnerVerificationDocuments_DocumentType] FOREIGN KEY([DocumentType])
REFERENCES [Miscellaneous].[Type] ([TypeId])
GO

ALTER TABLE [Support].[OwnerVerificationDocuments] CHECK CONSTRAINT [FK_OwnerVerificationDocuments_DocumentType]
GO
ALTER TABLE [Support].[OwnerVerificationDocuments]  WITH CHECK ADD  CONSTRAINT [FK_OwnerVerificationDocuments_Request] FOREIGN KEY([RequestID])
REFERENCES [Support].[OwnerVerificationRequest] ([RequestID])
GO

ALTER TABLE [Support].[OwnerVerificationDocuments] CHECK CONSTRAINT [FK_OwnerVerificationDocuments_Request]
GO
ALTER TABLE [Support].[OwnerVerificationDocuments]  WITH CHECK ADD  CONSTRAINT [FK_OwnerVerificationDocuments_VerificationStatus] FOREIGN KEY([VerificationStatus])
REFERENCES [Miscellaneous].[Type] ([TypeId])
GO

ALTER TABLE [Support].[OwnerVerificationDocuments] CHECK CONSTRAINT [FK_OwnerVerificationDocuments_VerificationStatus]