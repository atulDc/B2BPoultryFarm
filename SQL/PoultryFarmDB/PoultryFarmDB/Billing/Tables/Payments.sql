CREATE TABLE [Billing].[Payments](
	[PaymentID] [bigint] IDENTITY(1,1) NOT NULL,
	[PaymentGUID] [uniqueidentifier] NOT NULL,
	[PaymentByUserID] [bigint] NOT NULL,
	[InvoiceID] [bigint] NOT NULL,
	[AmountPaid] [bigint] NOT NULL,
	[PaymentMethodType] [bigint] NOT NULL,
	[CardDetailID] [int] NULL,
	[BillingAddressesID] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastUpdate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


GO
ALTER TABLE [Billing].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payment_User] FOREIGN KEY([PaymentByUserID])
REFERENCES [Account].[Users] ([UserId])
GO

ALTER TABLE [Billing].[Payments] CHECK CONSTRAINT [FK_Payment_User]
GO


GO


GO


GO
ALTER TABLE [Billing].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payment_MethodType] FOREIGN KEY([PaymentMethodType])
REFERENCES [Miscellaneous].[Type] ([TypeId])
GO

ALTER TABLE [Billing].[Payments] CHECK CONSTRAINT [FK_Payment_MethodType]
GO


GO


GO


GO
ALTER TABLE [Billing].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Invoice] FOREIGN KEY([InvoiceID])
REFERENCES [Billing].[Invoices] ([InvoiceID])
GO

ALTER TABLE [Billing].[Payments] CHECK CONSTRAINT [FK_Payment_Invoice]
GO


GO


GO


GO
ALTER TABLE [Billing].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payment_CardDetail] FOREIGN KEY([CardDetailID])
REFERENCES [Billing].[CardDetails] ([CardDetailID])
GO

ALTER TABLE [Billing].[Payments] CHECK CONSTRAINT [FK_Payment_CardDetail]
GO


GO


GO


GO
ALTER TABLE [Billing].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payment_BillingAddress] FOREIGN KEY([BillingAddressesID])
REFERENCES [BusinessEntity].[Address] ([AddressID])
GO

ALTER TABLE [Billing].[Payments] CHECK CONSTRAINT [FK_Payment_BillingAddress]
GO


GO


GO

