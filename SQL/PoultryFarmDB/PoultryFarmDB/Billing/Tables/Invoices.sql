CREATE TABLE [Billing].[Invoices](
	[InvoiceID] [bigint] IDENTITY(1,1) NOT NULL,
	[InvoiceGUID] [uniqueidentifier] NOT NULL,
	[OrderID] [bigint] NOT NULL,
	[StatusTypeID] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastUpdate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[InvoiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


GO
ALTER TABLE [Billing].[Invoices]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_StatusType] FOREIGN KEY([StatusTypeID])
REFERENCES [Miscellaneous].[Type] ([TypeId])
GO

ALTER TABLE [Billing].[Invoices] CHECK CONSTRAINT [FK_Invoice_StatusType]
GO


GO


GO


GO


GO
ALTER TABLE [Billing].[Invoices]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Order] FOREIGN KEY([OrderID])
REFERENCES [Inventory].[Order] ([OrderID])
GO

ALTER TABLE [Billing].[Invoices] CHECK CONSTRAINT [FK_Invoice_Order]
GO


GO


GO


GO

