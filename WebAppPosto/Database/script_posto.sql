USE [master]
GO
/****** Object:  Database [dbPostoCombustivel]    Script Date: 19/04/2017 19:22:08 ******/
CREATE DATABASE [dbPostoCombustivel]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbPostoCombustivel', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\\dbPostoCombustivel.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'dbPostoCombustivel_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\\dbPostoCombustivel_0.ldf' , SIZE = 4672KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [dbPostoCombustivel] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbPostoCombustivel].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbPostoCombustivel] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbPostoCombustivel] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbPostoCombustivel] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbPostoCombustivel] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbPostoCombustivel] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbPostoCombustivel] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dbPostoCombustivel] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [dbPostoCombustivel] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbPostoCombustivel] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbPostoCombustivel] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbPostoCombustivel] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbPostoCombustivel] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbPostoCombustivel] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbPostoCombustivel] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbPostoCombustivel] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbPostoCombustivel] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dbPostoCombustivel] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbPostoCombustivel] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbPostoCombustivel] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbPostoCombustivel] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbPostoCombustivel] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbPostoCombustivel] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbPostoCombustivel] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbPostoCombustivel] SET RECOVERY FULL 
GO
ALTER DATABASE [dbPostoCombustivel] SET  MULTI_USER 
GO
ALTER DATABASE [dbPostoCombustivel] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbPostoCombustivel] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbPostoCombustivel] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbPostoCombustivel] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'dbPostoCombustivel', N'ON'
GO
USE [dbPostoCombustivel]
GO
/****** Object:  Table [dbo].[ItemPedido]    Script Date: 19/04/2017 19:22:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemPedido](
	[codItemPedido] [int] IDENTITY(1,1) NOT NULL,
	[codProduto] [int] NULL,
	[quantidade] [numeric](5, 2) NULL,
 CONSTRAINT [PK_ItemPedido] PRIMARY KEY CLUSTERED 
(
	[codItemPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 19/04/2017 19:22:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedido](
	[codPedido] [int] IDENTITY(1,1) NOT NULL,
	[codItemPedido] [int] NOT NULL,
	[codVendedor] [int] NOT NULL,
	[data] [datetime] NULL,
 CONSTRAINT [PK_Pedido] PRIMARY KEY CLUSTERED 
(
	[codPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Produto]    Script Date: 19/04/2017 19:22:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Produto](
	[codProduto] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](80) NULL,
	[descricao] [varchar](200) NULL,
	[unidade] [char](3) NULL,
	[preco] [decimal](10, 2) NULL,
	[estoque] [numeric](5, 2) NULL,
	[codTipo] [int] NOT NULL,
 CONSTRAINT [PK_Produto] PRIMARY KEY CLUSTERED 
(
	[codProduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tipo]    Script Date: 19/04/2017 19:22:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tipo](
	[codTipo] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tipo] PRIMARY KEY CLUSTERED 
(
	[codTipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Vendedor]    Script Date: 19/04/2017 19:22:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Vendedor](
	[codVendedor] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](50) NULL,
 CONSTRAINT [PK_vendedor] PRIMARY KEY CLUSTERED 
(
	[codVendedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ItemPedido] ON 

INSERT [dbo].[ItemPedido] ([codItemPedido], [codProduto], [quantidade]) VALUES (1, 4, CAST(5.00 AS Numeric(5, 2)))
INSERT [dbo].[ItemPedido] ([codItemPedido], [codProduto], [quantidade]) VALUES (2, 4, CAST(6.00 AS Numeric(5, 2)))
SET IDENTITY_INSERT [dbo].[ItemPedido] OFF
SET IDENTITY_INSERT [dbo].[Pedido] ON 

INSERT [dbo].[Pedido] ([codPedido], [codItemPedido], [codVendedor], [data]) VALUES (1, 1, 1, CAST(N'2012-01-01 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Pedido] OFF
SET IDENTITY_INSERT [dbo].[Produto] ON 

INSERT [dbo].[Produto] ([codProduto], [nome], [descricao], [unidade], [preco], [estoque], [codTipo]) VALUES (4, N'Gasolina', N'Gasolina Aditivada', N'LT ', CAST(3.00 AS Decimal(10, 2)), CAST(1.00 AS Numeric(5, 2)), 1)
SET IDENTITY_INSERT [dbo].[Produto] OFF
SET IDENTITY_INSERT [dbo].[Tipo] ON 

INSERT [dbo].[Tipo] ([codTipo], [nome]) VALUES (1, N'Combustível')
INSERT [dbo].[Tipo] ([codTipo], [nome]) VALUES (2, N'Outros')
SET IDENTITY_INSERT [dbo].[Tipo] OFF
SET IDENTITY_INSERT [dbo].[Vendedor] ON 

INSERT [dbo].[Vendedor] ([codVendedor], [nome]) VALUES (1, N'Cabral')
INSERT [dbo].[Vendedor] ([codVendedor], [nome]) VALUES (2, N'Pedro')
INSERT [dbo].[Vendedor] ([codVendedor], [nome]) VALUES (3, N'Joana')
INSERT [dbo].[Vendedor] ([codVendedor], [nome]) VALUES (4, N'Maria')
SET IDENTITY_INSERT [dbo].[Vendedor] OFF
ALTER TABLE [dbo].[ItemPedido]  WITH CHECK ADD  CONSTRAINT [FK_ItemPedido_Produto] FOREIGN KEY([codProduto])
REFERENCES [dbo].[Produto] ([codProduto])
GO
ALTER TABLE [dbo].[ItemPedido] CHECK CONSTRAINT [FK_ItemPedido_Produto]
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Pedido_ItemPedido] FOREIGN KEY([codItemPedido])
REFERENCES [dbo].[ItemPedido] ([codItemPedido])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Pedido_ItemPedido]
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Pedido_Vendedor] FOREIGN KEY([codVendedor])
REFERENCES [dbo].[Vendedor] ([codVendedor])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Pedido_Vendedor]
GO
ALTER TABLE [dbo].[Produto]  WITH CHECK ADD  CONSTRAINT [FK_Produto_Tipo] FOREIGN KEY([codTipo])
REFERENCES [dbo].[Tipo] ([codTipo])
GO
ALTER TABLE [dbo].[Produto] CHECK CONSTRAINT [FK_Produto_Tipo]
GO
USE [master]
GO
ALTER DATABASE [dbPostoCombustivel] SET  READ_WRITE 
GO
