CREATE TABLE [Miscellaneous].[Type](
	[TypeId] [bigint] IDENTITY(1,1) NOT NULL,
	[TypeGUID] [uniqueidentifier] NOT NULL,
	[TypeKey] [nvarchar](50) NOT NULL,
	[TypeName] [nvarchar](255) NOT NULL,
	[TypeDescription] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastUpdate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

