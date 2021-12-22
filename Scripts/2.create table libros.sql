

CREATE TABLE [dbo].[libros](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](100) NOT NULL,
	[years] [varchar](50) NOT NULL,
	[noPaginas] [smallint] NULL,
	[identificacion] [varchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[libros]  WITH NOCHECK ADD  CONSTRAINT [FK_libros_librosidentificacion] FOREIGN KEY([identificacion])
REFERENCES [dbo].[autores] ([identificacion])
ON UPDATE CASCADE
GO

ALTER TABLE [dbo].[libros] CHECK CONSTRAINT [FK_libros_librosidentificacion]
GO


