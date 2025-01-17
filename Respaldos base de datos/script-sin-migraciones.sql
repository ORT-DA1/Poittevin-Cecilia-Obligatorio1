USE [DBDA1]
GO
/****** Object:  Table [dbo].[BudgetCategoryDtoes]    Script Date: 26/11/2020 19:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BudgetCategoryDtoes](
	[BudgetCategoryDtoID] [int] IDENTITY(1,1) NOT NULL,
	[Amount] [float] NOT NULL,
	[CategoryDtoID] [int] NOT NULL,
	[BudgetDtoID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.BudgetCategoryDtoes] PRIMARY KEY CLUSTERED 
(
	[BudgetCategoryDtoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BudgetDtoes]    Script Date: 26/11/2020 19:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BudgetDtoes](
	[BudgetDtoID] [int] IDENTITY(1,1) NOT NULL,
	[Month] [int] NOT NULL,
	[TotalAmount] [float] NOT NULL,
	[Year] [int] NOT NULL,
 CONSTRAINT [PK_dbo.BudgetDtoes] PRIMARY KEY CLUSTERED 
(
	[BudgetDtoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryDtoes]    Script Date: 26/11/2020 19:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryDtoes](
	[CategoryDtoID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](15) NULL,
 CONSTRAINT [PK_dbo.CategoryDtoes] PRIMARY KEY CLUSTERED 
(
	[CategoryDtoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CurrencyDtoes]    Script Date: 26/11/2020 19:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CurrencyDtoes](
	[CurrencyDtoID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NULL,
	[Symbol] [nvarchar](max) NULL,
	[Quotation] [float] NOT NULL,
 CONSTRAINT [PK_dbo.CurrencyDtoes] PRIMARY KEY CLUSTERED 
(
	[CurrencyDtoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExpenseDtoes]    Script Date: 26/11/2020 19:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExpenseDtoes](
	[ExpenseDtoID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Amount] [float] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[CategoryDtoID] [int] NOT NULL,
	[CurrencyDtoID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ExpenseDtoes] PRIMARY KEY CLUSTERED 
(
	[ExpenseDtoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KeyWordsDtoes]    Script Date: 26/11/2020 19:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KeyWordsDtoes](
	[KeyWordsDtoID] [int] IDENTITY(1,1) NOT NULL,
	[Value] [nvarchar](450) NULL,
	[CategoryDtoID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.KeyWordsDtoes] PRIMARY KEY CLUSTERED 
(
	[KeyWordsDtoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BudgetCategoryDtoes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.BudgetCategoryDtoes_dbo.BudgetDtoes_BudgetDtoID] FOREIGN KEY([BudgetDtoID])
REFERENCES [dbo].[BudgetDtoes] ([BudgetDtoID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BudgetCategoryDtoes] CHECK CONSTRAINT [FK_dbo.BudgetCategoryDtoes_dbo.BudgetDtoes_BudgetDtoID]
GO
ALTER TABLE [dbo].[BudgetCategoryDtoes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.BudgetCategoryDtoes_dbo.CategoryDtoes_CategoryDtoID] FOREIGN KEY([CategoryDtoID])
REFERENCES [dbo].[CategoryDtoes] ([CategoryDtoID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BudgetCategoryDtoes] CHECK CONSTRAINT [FK_dbo.BudgetCategoryDtoes_dbo.CategoryDtoes_CategoryDtoID]
GO
ALTER TABLE [dbo].[ExpenseDtoes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ExpenseDtoes_dbo.CategoryDtoes_CategoryDtoID] FOREIGN KEY([CategoryDtoID])
REFERENCES [dbo].[CategoryDtoes] ([CategoryDtoID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ExpenseDtoes] CHECK CONSTRAINT [FK_dbo.ExpenseDtoes_dbo.CategoryDtoes_CategoryDtoID]
GO
ALTER TABLE [dbo].[ExpenseDtoes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ExpenseDtoes_dbo.CurrencyDtoes_CurrencyDtoID] FOREIGN KEY([CurrencyDtoID])
REFERENCES [dbo].[CurrencyDtoes] ([CurrencyDtoID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ExpenseDtoes] CHECK CONSTRAINT [FK_dbo.ExpenseDtoes_dbo.CurrencyDtoes_CurrencyDtoID]
GO
ALTER TABLE [dbo].[KeyWordsDtoes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.KeyWordsDtoes_dbo.CategoryDtoes_CategoryDtoID] FOREIGN KEY([CategoryDtoID])
REFERENCES [dbo].[CategoryDtoes] ([CategoryDtoID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KeyWordsDtoes] CHECK CONSTRAINT [FK_dbo.KeyWordsDtoes_dbo.CategoryDtoes_CategoryDtoID]
GO
