CREATE TABLE [BusinessEntity].[Offices](
	[OfficeID] [int] IDENTITY(1,1) NOT NULL,
	[OfficeGUID] [uniqueidentifier] NOT NULL,
	[CompanyID] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastUpdate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OfficeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[OfficeGUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


GO
ALTER TABLE [BusinessEntity].[Offices]  WITH CHECK ADD FOREIGN KEY([CompanyID])
REFERENCES [BusinessEntity].[Companies] ([CompanyID])
GO
ALTER TABLE [BusinessEntity].[Offices]  WITH CHECK ADD FOREIGN KEY([CompanyID])
REFERENCES [BusinessEntity].[Companies] ([CompanyID])
GO
ALTER TABLE [BusinessEntity].[Offices]  WITH CHECK ADD FOREIGN KEY([CompanyID])
REFERENCES [BusinessEntity].[Companies] ([CompanyID])
GO
ALTER TABLE [BusinessEntity].[Offices]  WITH CHECK ADD FOREIGN KEY([CompanyID])
REFERENCES [BusinessEntity].[Companies] ([CompanyID])
GO
ALTER TABLE [BusinessEntity].[Offices]  WITH CHECK ADD FOREIGN KEY([CompanyID])
REFERENCES [BusinessEntity].[Companies] ([CompanyID])