

CREATE TABLE [dbo].[autores](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[identificacion] [varchar](250) NOT NULL,
	[nombreCompleto] [varchar](250) NOT NULL,
	[fechaNacimiento] [date] NOT NULL,
	[ciudad] [varchar](300) NULL,
	[email] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[identificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


