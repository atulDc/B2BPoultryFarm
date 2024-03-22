CREATE TABLE [Account].[Users](
	[UserId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserGUID] [uniqueidentifier] NOT NULL,
	[FirstName] [varchar](100) NOT NULL,
	[MiddleName] [varchar](100) NULL,
	[LastName] [varchar](100) NOT NULL,
	[EmailAddress] [varchar](255) NOT NULL,
	[Password] [varchar](255) NOT NULL,
	[Designation] [varchar](100) NOT NULL,
	[CompanyID] [int] NOT NULL,
	[OfficeID] [int] NOT NULL,
	[IsPointOfContact] [bit] NOT NULL,
	[ISOwner] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsKYCVerified] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastUpdate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[EmailAddress] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[UserGUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


GO
ALTER TABLE [Account].[Users]  WITH CHECK ADD FOREIGN KEY([CompanyID])
REFERENCES [BusinessEntity].[Companies] ([CompanyID])
GO
ALTER TABLE [Account].[Users]  WITH CHECK ADD FOREIGN KEY([OfficeID])
REFERENCES [BusinessEntity].[Offices] ([OfficeID])
GO
ALTER TABLE [Account].[Users]  WITH CHECK ADD FOREIGN KEY([CompanyID])
REFERENCES [BusinessEntity].[Companies] ([CompanyID])
GO
ALTER TABLE [Account].[Users]  WITH CHECK ADD FOREIGN KEY([OfficeID])
REFERENCES [BusinessEntity].[Offices] ([OfficeID])
GO
ALTER TABLE [Account].[Users]  WITH CHECK ADD FOREIGN KEY([CompanyID])
REFERENCES [BusinessEntity].[Companies] ([CompanyID])
GO
ALTER TABLE [Account].[Users]  WITH CHECK ADD FOREIGN KEY([OfficeID])
REFERENCES [BusinessEntity].[Offices] ([OfficeID])
GO
ALTER TABLE [Account].[Users]  WITH CHECK ADD FOREIGN KEY([CompanyID])
REFERENCES [BusinessEntity].[Companies] ([CompanyID])
GO
ALTER TABLE [Account].[Users]  WITH CHECK ADD FOREIGN KEY([OfficeID])
REFERENCES [BusinessEntity].[Offices] ([OfficeID])