CREATE TABLE [BusinessEntity].[Address](
	[AddressID] [bigint] IDENTITY(1,1) NOT NULL,
	[AddressGUID] [uniqueidentifier] NOT NULL,
	[CompanyID] [int] NOT NULL,
	[OfficeID] [int] NOT NULL,
	[TypeID] [bigint] NOT NULL,
	[StreetAddressLine1] [varchar](255) NOT NULL,
	[StreetAddressLine2] [varchar](255) NULL,
	[City] [varchar](100) NOT NULL,
	[StateProvinceRegion] [varchar](100) NOT NULL,
	[PostalCode] [varchar](20) NOT NULL,
	[Country] [varchar](100) NOT NULL,
	[Latitude] [decimal](9, 6) NULL,
	[Longitude] [decimal](9, 6) NULL,
	[AddressType] [varchar](50) NOT NULL,
	[IsPrimary] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastUpdate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[AddressGUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


GO
ALTER TABLE [BusinessEntity].[Address]  WITH CHECK ADD FOREIGN KEY([CompanyID])
REFERENCES [BusinessEntity].[Companies] ([CompanyID])
GO
ALTER TABLE [BusinessEntity].[Address]  WITH CHECK ADD FOREIGN KEY([OfficeID])
REFERENCES [BusinessEntity].[Offices] ([OfficeID])
GO
ALTER TABLE [BusinessEntity].[Address]  WITH CHECK ADD FOREIGN KEY([TypeID])
REFERENCES [Miscellaneous].[Type] ([TypeId])
GO
ALTER TABLE [BusinessEntity].[Address]  WITH CHECK ADD FOREIGN KEY([CompanyID])
REFERENCES [BusinessEntity].[Companies] ([CompanyID])
GO
ALTER TABLE [BusinessEntity].[Address]  WITH CHECK ADD FOREIGN KEY([OfficeID])
REFERENCES [BusinessEntity].[Offices] ([OfficeID])
GO
ALTER TABLE [BusinessEntity].[Address]  WITH CHECK ADD FOREIGN KEY([TypeID])
REFERENCES [Miscellaneous].[Type] ([TypeId])
GO
ALTER TABLE [BusinessEntity].[Address]  WITH CHECK ADD FOREIGN KEY([CompanyID])
REFERENCES [BusinessEntity].[Companies] ([CompanyID])
GO
ALTER TABLE [BusinessEntity].[Address]  WITH CHECK ADD FOREIGN KEY([OfficeID])
REFERENCES [BusinessEntity].[Offices] ([OfficeID])
GO
ALTER TABLE [BusinessEntity].[Address]  WITH CHECK ADD FOREIGN KEY([TypeID])
REFERENCES [Miscellaneous].[Type] ([TypeId])
GO
ALTER TABLE [BusinessEntity].[Address]  WITH CHECK ADD FOREIGN KEY([CompanyID])
REFERENCES [BusinessEntity].[Companies] ([CompanyID])
GO
ALTER TABLE [BusinessEntity].[Address]  WITH CHECK ADD FOREIGN KEY([OfficeID])
REFERENCES [BusinessEntity].[Offices] ([OfficeID])
GO
ALTER TABLE [BusinessEntity].[Address]  WITH CHECK ADD FOREIGN KEY([TypeID])
REFERENCES [Miscellaneous].[Type] ([TypeId])
GO
ALTER TABLE [BusinessEntity].[Address]  WITH CHECK ADD FOREIGN KEY([CompanyID])
REFERENCES [BusinessEntity].[Companies] ([CompanyID])
GO
ALTER TABLE [BusinessEntity].[Address]  WITH CHECK ADD FOREIGN KEY([OfficeID])
REFERENCES [BusinessEntity].[Offices] ([OfficeID])
GO
ALTER TABLE [BusinessEntity].[Address]  WITH CHECK ADD FOREIGN KEY([TypeID])
REFERENCES [Miscellaneous].[Type] ([TypeId])