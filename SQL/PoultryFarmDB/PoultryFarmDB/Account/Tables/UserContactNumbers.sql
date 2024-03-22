CREATE TABLE [Account].[UserContactNumbers](
	[ContactNumberID] [bigint] IDENTITY(1,1) NOT NULL,
	[ContactNumberGUID] [uniqueidentifier] NOT NULL,
	[UserID] [bigint] NOT NULL,
	[ContactNumber] [varchar](20) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastUpdate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ContactNumberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ContactNumberGUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


GO
ALTER TABLE [Account].[UserContactNumbers]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [Account].[Users] ([UserId])
GO
ALTER TABLE [Account].[UserContactNumbers]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [Account].[Users] ([UserId])
GO
ALTER TABLE [Account].[UserContactNumbers]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [Account].[Users] ([UserId])
GO
ALTER TABLE [Account].[UserContactNumbers]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [Account].[Users] ([UserId])