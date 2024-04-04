CREATE TABLE [Inventory].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryGUID] [uniqueidentifier] NOT NULL,
	[CategoryKey] [nvarchar](50) NOT NULL,
	[CategoryName] [nvarchar](255) NOT NULL,
	[CategoryDescription] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastUpdate] [datetime] NOT NULL,
	[UIDocumentID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


GO
ALTER TABLE [Inventory].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_UIDocumentID] FOREIGN KEY([UIDocumentID])
REFERENCES [DocumentStorage].[UIDocuments] ([UIDocumentID])
GO

ALTER TABLE [Inventory].[Categories] CHECK CONSTRAINT [FK_Categories_UIDocumentID]