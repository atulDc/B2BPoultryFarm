CREATE TABLE [DocumentStorage].[UIDocuments](
	[UIDocumentID] [int] IDENTITY(1,1) NOT NULL,
	[FilePath] [nvarchar](max) NOT NULL,
	[UIDocumentTypeID] [bigint] NULL,
	[Description] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastUpdate] [datetime] NOT NULL,
	[UIDocumentGUID] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UIDocumentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [DocumentStorage].[UIDocuments]  WITH CHECK ADD  CONSTRAINT [FK_UIDocuments_UIDocumentTypeID] FOREIGN KEY([UIDocumentTypeID])
REFERENCES [Miscellaneous].[Type] ([TypeId])
GO

ALTER TABLE [DocumentStorage].[UIDocuments] CHECK CONSTRAINT [FK_UIDocuments_UIDocumentTypeID]