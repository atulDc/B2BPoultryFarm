CREATE TABLE [Billing].[Receipts](
	[ReceiptID] [bigint] IDENTITY(1,1) NOT NULL,
	[ReceiptGUID] [uniqueidentifier] NOT NULL,
	[PaymentID] [bigint] NOT NULL,
	[AmountReceived] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastUpdate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ReceiptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


GO
ALTER TABLE [Billing].[Receipts]  WITH CHECK ADD  CONSTRAINT [FK_Receipt_Payment] FOREIGN KEY([PaymentID])
REFERENCES [Billing].[Payments] ([PaymentID])
GO

ALTER TABLE [Billing].[Receipts] CHECK CONSTRAINT [FK_Receipt_Payment]
GO


GO


GO


GO

