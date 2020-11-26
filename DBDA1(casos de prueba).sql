USE [DBDA1]
GO
/****** Object:  Table [dbo].[BudgetCategoryDtoes]    Script Date: 25/11/2020 23:10:34 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BudgetDtoes]    Script Date: 25/11/2020 23:10:34 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryDtoes]    Script Date: 25/11/2020 23:10:34 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CurrencyDtoes]    Script Date: 25/11/2020 23:10:34 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExpenseDtoes]    Script Date: 25/11/2020 23:10:34 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KeyWordsDtoes]    Script Date: 25/11/2020 23:10:34 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BudgetCategoryDtoes] ON 

INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3012, 2, 4065, 3011)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3013, 0, 4064, 3011)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3014, 0, 4059, 3011)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3015, 0, 4063, 3011)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3016, 0, 4068, 3011)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3017, 0, 4061, 3011)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3018, 0, 4066, 3011)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3019, 0, 4060, 3011)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3020, 0, 4062, 3011)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3021, 0, 4067, 3011)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3022, 0, 4065, 3012)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3023, 2, 4064, 3012)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3024, 0, 4059, 3012)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3025, 3, 4063, 3012)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3026, 0, 4068, 3012)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3027, 0, 4061, 3012)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3028, 0, 4066, 3012)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3029, 0, 4060, 3012)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3030, 0, 4062, 3012)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3031, 0, 4067, 3012)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3032, 4, 4065, 3013)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3033, 0, 4064, 3013)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3034, 0, 4059, 3013)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3035, 0, 4063, 3013)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3036, 0, 4068, 3013)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3037, 6, 4061, 3013)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3038, 0, 4066, 3013)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3039, 0, 4060, 3013)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3040, 0, 4062, 3013)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3041, 0, 4067, 3013)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3042, 5, 4065, 3014)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3043, 0, 4064, 3014)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3044, 0, 4059, 3014)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3045, 0, 4063, 3014)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3046, 4, 4068, 3014)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3047, 0, 4061, 3014)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3048, 0, 4066, 3014)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3049, 0, 4060, 3014)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3050, 0, 4062, 3014)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3051, 0, 4067, 3014)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3052, 0, 4065, 3015)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3053, 0, 4064, 3015)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3054, 0, 4059, 3015)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3055, 54, 4063, 3015)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3056, 0, 4068, 3015)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3057, 0, 4061, 3015)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3058, 0, 4066, 3015)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3059, 0, 4060, 3015)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3060, 0, 4062, 3015)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3061, 0, 4067, 3015)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3062, 24, 4065, 3016)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3063, 0, 4064, 3016)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3064, 3, 4059, 3016)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3065, 0, 4063, 3016)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3066, 40, 4068, 3016)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3067, 0, 4061, 3016)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3068, 0, 4066, 3016)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3069, 0, 4060, 3016)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3070, 0, 4062, 3016)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3071, 0, 4067, 3016)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3072, 1, 4065, 3017)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3073, 1, 4064, 3017)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3074, 1, 4059, 3017)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3075, 1, 4063, 3017)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3076, 1, 4068, 3017)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3077, 1, 4061, 3017)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3078, 0, 4066, 3017)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3079, 0, 4060, 3017)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3080, 0, 4062, 3017)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3081, 0, 4067, 3017)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3082, 0, 4065, 3018)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3083, 0, 4064, 3018)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3084, 3, 4059, 3018)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3085, 0, 4063, 3018)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3086, 0, 4068, 3018)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3087, 0, 4061, 3018)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3088, 0, 4066, 3018)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3089, 0, 4060, 3018)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3090, 0, 4062, 3018)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3091, 0, 4067, 3018)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3092, 0, 4065, 3019)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3093, 0, 4064, 3019)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3094, 0, 4059, 3019)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3095, 5, 4063, 3019)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3096, 0, 4068, 3019)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3097, 0, 4061, 3019)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3098, 0, 4066, 3019)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3099, 0, 4060, 3019)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3100, 0, 4062, 3019)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3101, 0, 4067, 3019)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3102, 0, 4065, 3020)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3103, 0, 4064, 3020)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3104, 0, 4059, 3020)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3105, 0, 4063, 3020)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3106, 5, 4068, 3020)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3107, 0, 4061, 3020)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3108, 0, 4066, 3020)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3109, 0, 4060, 3020)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3110, 0, 4062, 3020)
GO
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3111, 0, 4067, 3020)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3112, 0, 4065, 3021)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3113, 0, 4064, 3021)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3114, 0, 4059, 3021)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3115, 0, 4063, 3021)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3116, 0, 4068, 3021)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3117, 0, 4061, 3021)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3118, 0, 4066, 3021)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3119, 0, 4060, 3021)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3120, 0, 4062, 3021)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3121, 0, 4067, 3021)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3122, 0, 4065, 3022)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3123, 0, 4064, 3022)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3124, 0, 4059, 3022)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3125, 0, 4063, 3022)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3126, 0, 4068, 3022)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3127, 4, 4061, 3022)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3128, 0, 4066, 3022)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3129, 0, 4060, 3022)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3130, 0, 4062, 3022)
INSERT [dbo].[BudgetCategoryDtoes] ([BudgetCategoryDtoID], [Amount], [CategoryDtoID], [BudgetDtoID]) VALUES (3131, 0, 4067, 3022)
SET IDENTITY_INSERT [dbo].[BudgetCategoryDtoes] OFF
GO
SET IDENTITY_INSERT [dbo].[BudgetDtoes] ON 

INSERT [dbo].[BudgetDtoes] ([BudgetDtoID], [Month], [TotalAmount], [Year]) VALUES (3011, 1, 0, 2020)
INSERT [dbo].[BudgetDtoes] ([BudgetDtoID], [Month], [TotalAmount], [Year]) VALUES (3012, 3, 0, 2020)
INSERT [dbo].[BudgetDtoes] ([BudgetDtoID], [Month], [TotalAmount], [Year]) VALUES (3013, 2, 0, 2020)
INSERT [dbo].[BudgetDtoes] ([BudgetDtoID], [Month], [TotalAmount], [Year]) VALUES (3014, 4, 0, 2020)
INSERT [dbo].[BudgetDtoes] ([BudgetDtoID], [Month], [TotalAmount], [Year]) VALUES (3015, 5, 0, 2020)
INSERT [dbo].[BudgetDtoes] ([BudgetDtoID], [Month], [TotalAmount], [Year]) VALUES (3016, 6, 0, 2020)
INSERT [dbo].[BudgetDtoes] ([BudgetDtoID], [Month], [TotalAmount], [Year]) VALUES (3017, 7, 0, 2020)
INSERT [dbo].[BudgetDtoes] ([BudgetDtoID], [Month], [TotalAmount], [Year]) VALUES (3018, 8, 0, 2020)
INSERT [dbo].[BudgetDtoes] ([BudgetDtoID], [Month], [TotalAmount], [Year]) VALUES (3019, 9, 0, 2020)
INSERT [dbo].[BudgetDtoes] ([BudgetDtoID], [Month], [TotalAmount], [Year]) VALUES (3020, 10, 0, 2020)
INSERT [dbo].[BudgetDtoes] ([BudgetDtoID], [Month], [TotalAmount], [Year]) VALUES (3021, 11, 0, 2019)
INSERT [dbo].[BudgetDtoes] ([BudgetDtoID], [Month], [TotalAmount], [Year]) VALUES (3022, 12, 0, 2019)
SET IDENTITY_INSERT [dbo].[BudgetDtoes] OFF
GO
SET IDENTITY_INSERT [dbo].[CategoryDtoes] ON 

INSERT [dbo].[CategoryDtoes] ([CategoryDtoID], [Name]) VALUES (4065, N'Clothing')
INSERT [dbo].[CategoryDtoes] ([CategoryDtoID], [Name]) VALUES (4064, N'food')
INSERT [dbo].[CategoryDtoes] ([CategoryDtoID], [Name]) VALUES (4059, N'fun')
INSERT [dbo].[CategoryDtoes] ([CategoryDtoID], [Name]) VALUES (4063, N'Games')
INSERT [dbo].[CategoryDtoes] ([CategoryDtoID], [Name]) VALUES (4068, N'House')
INSERT [dbo].[CategoryDtoes] ([CategoryDtoID], [Name]) VALUES (4061, N'music')
INSERT [dbo].[CategoryDtoes] ([CategoryDtoID], [Name]) VALUES (4066, N'school')
INSERT [dbo].[CategoryDtoes] ([CategoryDtoID], [Name]) VALUES (4060, N'supermarcket')
INSERT [dbo].[CategoryDtoes] ([CategoryDtoID], [Name]) VALUES (4062, N'technology')
INSERT [dbo].[CategoryDtoes] ([CategoryDtoID], [Name]) VALUES (4067, N'Vacations')
SET IDENTITY_INSERT [dbo].[CategoryDtoes] OFF
GO
SET IDENTITY_INSERT [dbo].[CurrencyDtoes] ON 

INSERT [dbo].[CurrencyDtoes] ([CurrencyDtoID], [Name], [Symbol], [Quotation]) VALUES (3038, N'Coins', N'$5', 5)
INSERT [dbo].[CurrencyDtoes] ([CurrencyDtoID], [Name], [Symbol], [Quotation]) VALUES (3039, N'Euros', N'E', 2.14)
INSERT [dbo].[CurrencyDtoes] ([CurrencyDtoID], [Name], [Symbol], [Quotation]) VALUES (3040, N'Oro', N'Au', 200)
INSERT [dbo].[CurrencyDtoes] ([CurrencyDtoID], [Name], [Symbol], [Quotation]) VALUES (3041, N'Peso', N'$U', 1)
INSERT [dbo].[CurrencyDtoes] ([CurrencyDtoID], [Name], [Symbol], [Quotation]) VALUES (3042, N'Dolar', N'USD', 43)
SET IDENTITY_INSERT [dbo].[CurrencyDtoes] OFF
GO
SET IDENTITY_INSERT [dbo].[ExpenseDtoes] ON 

INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4231, N' games ', 151, CAST(N'2020-02-03T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4232, N' casino ', 152, CAST(N'2020-10-14T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4233, N' guitar lessons ', 153, CAST(N'2020-04-06T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4234, N' play flauta ', 154, CAST(N'2020-02-17T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4235, N' piano lessons ', 155, CAST(N'2020-06-09T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4236, N' soccer practice ', 156, CAST(N'2020-06-09T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4237, N' singing lessons ', 157, CAST(N'2020-04-19T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4238, N' singing lessons ', 158, CAST(N'2020-08-11T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4239, N' singing lessons ', 159, CAST(N'2020-02-03T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4240, N' games ', 160, CAST(N'2020-02-03T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4241, N' roller coaster ', 161, CAST(N'2020-10-14T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4242, N' volleyball practice ', 162, CAST(N'2020-03-06T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4243, N' guitar lessons ', 163, CAST(N'2020-07-24T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4244, N' casino ', 164, CAST(N'2020-05-08T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4245, N' games ', 165, CAST(N'2020-09-26T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4246, N' soccer practice ', 166, CAST(N'2020-07-11T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4247, N' singing lessons ', 167, CAST(N'2020-07-11T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4248, N' guitar lessons ', 168, CAST(N'2020-01-03T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4249, N' piano lessons ', 169, CAST(N'2020-05-21T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4250, N' piano lessons ', 170, CAST(N'2020-03-05T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4251, N' volleyball practice ', 171, CAST(N'2020-03-05T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4252, N' singing lessons ', 172, CAST(N'2020-06-24T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4253, N' singing lessons ', 173, CAST(N'2020-08-26T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4254, N' guitar lessons ', 174, CAST(N'2020-02-18T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4255, N' guitar lessons ', 175, CAST(N'2020-02-18T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4256, N' play flauta ', 176, CAST(N'2020-10-02T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4257, N' singing lessons ', 177, CAST(N'2020-04-21T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4258, N' piano lessons ', 178, CAST(N'2020-04-21T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4259, N' play flauta ', 179, CAST(N'2020-08-13T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4260, N' games ', 180, CAST(N'2020-06-23T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4261, N' volleyball practice ', 181, CAST(N'2020-06-23T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4262, N' casino ', 182, CAST(N'2020-10-15T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4263, N' casino ', 183, CAST(N'2020-03-07T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4264, N' games ', 184, CAST(N'2020-03-07T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4265, N' soccer practice ', 185, CAST(N'2020-01-18T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4266, N' soccer practice ', 186, CAST(N'2020-05-10T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4267, N' play flauta ', 187, CAST(N'2020-03-20T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4268, N' games ', 188, CAST(N'2020-03-20T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4269, N' play flauta ', 189, CAST(N'2020-07-12T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4270, N' casino ', 190, CAST(N'2020-01-04T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4271, N' games ', 191, CAST(N'2020-09-15T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4272, N' roller coaster ', 192, CAST(N'2020-09-15T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4273, N' guitar lessons ', 193, CAST(N'2020-03-07T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4274, N' guitar lessons ', 194, CAST(N'2020-06-25T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4275, N' piano lessons ', 195, CAST(N'2020-05-09T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4276, N' roller coaster ', 196, CAST(N'2020-08-01T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4277, N' volleyball practice ', 197, CAST(N'2020-04-22T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4278, N' games ', 198, CAST(N'2020-02-06T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4279, N' games ', 199, CAST(N'2020-06-24T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4280, N' games ', 200, CAST(N'2020-09-16T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4281, N' play flauta ', 201, CAST(N'2020-08-01T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4282, N' roller coaster ', 202, CAST(N'2020-08-01T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4283, N' guitar lessons ', 203, CAST(N'2020-01-19T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4284, N' play flauta ', 204, CAST(N'2020-09-03T00:00:00.000' AS DateTime), 4059, 3038)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4285, N'shop flour  flour  milk  flour  milk  vegetables ', 25, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4286, N'shop bread  bread  vegetables  bread  vegetables  fruits ', 50, CAST(N'2020-02-15T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4287, N'shop fruits  fruits  cookies  fruits  cookies  fruits ', 75, CAST(N'2020-06-08T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4288, N'shop fruits  fruits  vegetables  fruits  vegetables  vegetables ', 100, CAST(N'2020-08-10T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4289, N'shop milk  milk chocolate milk chocolate rice ', 125, CAST(N'2020-01-02T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4290, N'shopchocolatechocolatechocolatechocolatechocolate rice ', 150, CAST(N'2020-05-20T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4291, N'shop cookies  cookies  vegetables  cookies  vegetables  flour ', 175, CAST(N'2020-05-20T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4292, N'shop cereales  cereales  cereales  cereales  cereales chocolate', 200, CAST(N'2020-03-05T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4293, N'shop fruits  fruits  rice  fruits  rice  bread ', 225, CAST(N'2020-07-23T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4294, N'shop milk  milk  flour  milk  flour  rice ', 250, CAST(N'2020-07-23T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4295, N'shop vegetables  vegetables chocolate vegetables chocolatechocolate', 275, CAST(N'2020-05-07T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4296, N'shop bread  bread  cookies  bread  cookies  cookies ', 300, CAST(N'2020-09-25T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4297, N'shop cookies  cookies  bread  cookies  bread  bread ', 325, CAST(N'2020-02-17T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4298, N'shop cereales  cereales  cookies  cereales  cookies chocolate', 350, CAST(N'2020-02-17T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4299, N'shop rice  rice  milk  rice  milk  cookies ', 375, CAST(N'2020-11-02T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4300, N'shop fruits  fruits  bread  fruits  bread  rice ', 400, CAST(N'2020-04-20T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4301, N'shop fruits  fruits  fruits  fruits  fruits  bread ', 425, CAST(N'2020-08-12T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4302, N'shop milk  milk  rice  milk  rice  fruits ', 450, CAST(N'2020-06-22T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4303, N'shop bread  bread  bread  bread  bread chocolate', 475, CAST(N'2020-10-14T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4304, N'shop bread  bread  vegetables  bread  vegetables  cereales ', 500, CAST(N'2020-08-25T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4305, N'shop cookies  cookies  rice  cookies  rice  rice ', 525, CAST(N'2020-08-25T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4306, N'shop bread  bread chocolate bread chocolate bread ', 550, CAST(N'2020-01-17T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4307, N'shop vegetables  vegetables  fruits  vegetables  fruits  fruits ', 575, CAST(N'2020-05-09T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4308, N'shop cookies  cookies  flour  cookies  flour  cereales ', 600, CAST(N'2020-03-19T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4309, N'shop bread  bread  fruits  bread  fruits  bread ', 625, CAST(N'2020-07-11T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4310, N'shop fruits  fruits chocolate fruits chocolate flour ', 650, CAST(N'2020-11-03T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4311, N'shop flour  flour chocolate flour chocolate vegetables ', 675, CAST(N'2020-10-14T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4312, N'shop cereales  cereales  bread  cereales  bread chocolate', 700, CAST(N'2020-03-06T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4313, N'shop vegetables  vegetables  rice  vegetables  rice  fruits ', 725, CAST(N'2020-01-16T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4314, N'shop cookies  cookies chocolate cookies chocolate bread ', 750, CAST(N'2020-05-08T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4315, N'shopchocolatechocolate milk chocolate milk  fruits ', 775, CAST(N'2020-09-26T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4316, N'shop cookies  cookies  rice  cookies  rice  fruits ', 800, CAST(N'2020-07-11T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4317, N'shop fruits  fruits  bread  fruits  bread  cereales ', 825, CAST(N'2020-11-03T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4318, N'shop milk  milk  cookies  milk  cookies  vegetables ', 850, CAST(N'2020-04-21T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4319, N'shop cereales  cereales  bread  cereales  bread  flour ', 875, CAST(N'2020-06-23T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4320, N'shop cookies  cookies  fruits  cookies  fruits  milk ', 900, CAST(N'2020-06-23T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4321, N'shop rice  rice  fruits  rice  fruits  milk ', 925, CAST(N'2020-08-26T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4322, N'shop cookies  cookies  vegetables  cookies  vegetables  vegetables ', 950, CAST(N'2020-01-18T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4323, N'shop vegetables  vegetables  fruits  vegetables  fruits  vegetables ', 975, CAST(N'2020-10-02T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4324, N'shop cookies  cookies  fruits  cookies  fruits  vegetables ', 1000, CAST(N'2020-03-21T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4325, N'shop fruits  fruits  milk  fruits  milk  fruits ', 1025, CAST(N'2020-07-13T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4326, N'shop cookies  cookies  cookies  cookies  cookies  cereales ', 1050, CAST(N'2020-05-23T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4327, N'shop bread  bread  cereales  bread  cereales  milk ', 1075, CAST(N'2020-07-26T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4328, N'shop vegetables  vegetables  flour  vegetables  flour  cereales ', 1100, CAST(N'2020-11-18T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4329, N'shop bread  bread  cereales  bread  cereales  fruits ', 1125, CAST(N'2020-04-10T00:00:00.000' AS DateTime), 4060, 3039)
GO
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4330, N'shopchocolatechocolate flour chocolate flour  flour ', 1150, CAST(N'2020-02-20T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4331, N'shop cookies  cookies  milk  cookies  milk  cereales ', 1175, CAST(N'2020-06-12T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4332, N'shop rice  rice  flour  rice  flour  rice ', 1200, CAST(N'2020-10-04T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4333, N'shop cookies  cookies  flour  cookies  flour  vegetables ', 1225, CAST(N'2020-10-04T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4334, N'shopchocolatechocolate milk chocolate milk  milk ', 1250, CAST(N'2020-09-15T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4335, N'shopchocolatechocolate vegetables chocolate vegetables  fruits ', 1275, CAST(N'2020-02-07T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4336, N'shop vegetables  vegetables  vegetables  vegetables  vegetables  vegetables ', 1300, CAST(N'2020-11-17T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4337, N'shop fruits  fruits  rice  fruits  rice  milk ', 1325, CAST(N'2020-04-09T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4338, N'shop milk  milk  bread  milk  bread  cereales ', 1350, CAST(N'2020-08-01T00:00:00.000' AS DateTime), 4060, 3039)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4339, N'shop', 100, CAST(N'2020-09-06T00:00:00.000' AS DateTime), 4061, 3040)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4340, N'shop', 200, CAST(N'2020-11-09T00:00:00.000' AS DateTime), 4061, 3040)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4341, N'shop', 300, CAST(N'2020-03-12T00:00:00.000' AS DateTime), 4061, 3040)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4342, N'shop', 400, CAST(N'2020-07-04T00:00:00.000' AS DateTime), 4061, 3040)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4343, N'shop', 500, CAST(N'2020-07-04T00:00:00.000' AS DateTime), 4061, 3040)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4344, N'shop', 600, CAST(N'2020-05-14T00:00:00.000' AS DateTime), 4061, 3040)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4345, N'shop', 700, CAST(N'2020-09-06T00:00:00.000' AS DateTime), 4061, 3040)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4346, N'shop', 800, CAST(N'2020-02-24T00:00:00.000' AS DateTime), 4061, 3040)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4347, N'shop', 900, CAST(N'2020-11-09T00:00:00.000' AS DateTime), 4061, 3040)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4348, N'shop', 1000, CAST(N'2020-04-01T00:00:00.000' AS DateTime), 4061, 3040)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4349, N'shop', 1100, CAST(N'2020-02-11T00:00:00.000' AS DateTime), 4061, 3040)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4350, N'shop', 1200, CAST(N'2020-06-03T00:00:00.000' AS DateTime), 4061, 3040)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4351, N'shop', 1300, CAST(N'2020-10-21T00:00:00.000' AS DateTime), 4061, 3040)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4352, N'shop', 1400, CAST(N'2020-08-06T00:00:00.000' AS DateTime), 4061, 3040)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4353, N'shop', 1500, CAST(N'2020-08-06T00:00:00.000' AS DateTime), 4061, 3040)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4354, N'shop', 1600, CAST(N'2020-01-24T00:00:00.000' AS DateTime), 4061, 3040)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4355, N'shop', 1700, CAST(N'2020-05-16T00:00:00.000' AS DateTime), 4061, 3040)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4356, N'shop', 1800, CAST(N'2020-03-26T00:00:00.000' AS DateTime), 4061, 3040)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4357, N'shop', 1900, CAST(N'2020-03-26T00:00:00.000' AS DateTime), 4061, 3040)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4358, N'shop', 2000, CAST(N'2020-05-03T00:00:00.000' AS DateTime), 4061, 3040)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4359, N'shop', 2100, CAST(N'2020-05-03T00:00:00.000' AS DateTime), 4061, 3040)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4360, N'shop', 2200, CAST(N'2020-09-21T00:00:00.000' AS DateTime), 4061, 3040)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4361, N'shop', 2300, CAST(N'2020-02-13T00:00:00.000' AS DateTime), 4061, 3040)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4362, N'shop', 2400, CAST(N'2020-11-23T00:00:00.000' AS DateTime), 4061, 3040)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4363, N'shop', 2500, CAST(N'2020-11-23T00:00:00.000' AS DateTime), 4061, 3040)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4364, N'shop', 2600, CAST(N'2020-04-16T00:00:00.000' AS DateTime), 4061, 3040)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4365, N'shop', 2700, CAST(N'2020-08-08T00:00:00.000' AS DateTime), 4061, 3040)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4366, N'shop', 2800, CAST(N'2020-08-08T00:00:00.000' AS DateTime), 4061, 3040)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4367, N'shop', 2900, CAST(N'2020-07-18T00:00:00.000' AS DateTime), 4061, 3040)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4368, N'shop', 3000, CAST(N'2020-10-10T00:00:00.000' AS DateTime), 4061, 3040)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4369, N'shop', 3100, CAST(N'2020-09-21T00:00:00.000' AS DateTime), 4061, 3040)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4370, N'shop', 3200, CAST(N'2020-02-13T00:00:00.000' AS DateTime), 4061, 3040)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4371, N'shop', 3300, CAST(N'2020-06-05T00:00:00.000' AS DateTime), 4061, 3040)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4372, N'shop', 3400, CAST(N'2020-06-05T00:00:00.000' AS DateTime), 4061, 3040)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4373, N'shop', 3500, CAST(N'2020-04-15T00:00:00.000' AS DateTime), 4061, 3040)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4374, N'shop', 3600, CAST(N'2020-08-07T00:00:00.000' AS DateTime), 4061, 3040)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4375, N'shop', 3700, CAST(N'2020-01-25T00:00:00.000' AS DateTime), 4061, 3040)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4376, N'shop', 3800, CAST(N'2020-10-10T00:00:00.000' AS DateTime), 4061, 3040)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4377, N'shop', 3900, CAST(N'2020-03-02T00:00:00.000' AS DateTime), 4061, 3040)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4378, N'shop Cell phone  Cell phone  tablet ', 134, CAST(N'2025-06-22T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4379, N'shop memory  memory  Laptop ', 268, CAST(N'2023-07-14T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4380, N'shop Cell phone  Cell phone  keyboard ', 402, CAST(N'2025-11-07T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4381, N'shop tablet  tablet  computer ', 536, CAST(N'2029-09-17T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4382, N'shop mouse  mouse  computer ', 670, CAST(N'2021-02-09T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4383, N'shop tablet  tablet  keyboard ', 804, CAST(N'2026-01-19T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4384, N'shop Cell phone  Cell phone  play station ', 938, CAST(N'2026-01-19T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4385, N'shop mouse  mouse  computer ', 1072, CAST(N'2028-05-12T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4386, N'shop keyboard  keyboard  keyboard ', 1206, CAST(N'2020-08-04T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4387, N'shop play station  play station  Cell phone ', 1340, CAST(N'2025-07-14T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4388, N'shop tablet  tablet  mouse ', 1474, CAST(N'2026-11-06T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4389, N'shop memory  memory  play station ', 1608, CAST(N'2026-11-06T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4390, N'shop keyboard  keyboard  tablet ', 1742, CAST(N'2028-04-24T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4391, N'shop Laptop  Laptop  play station ', 1876, CAST(N'2023-02-09T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4392, N'shop Cell phone  Cell phone  mouse ', 2010, CAST(N'2025-06-01T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4393, N'shop computer  computer  tablet ', 2144, CAST(N'2020-04-11T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4394, N'shop play station  play station  computer ', 2278, CAST(N'2022-08-03T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4395, N'shop keyboard  keyboard  mouse ', 2412, CAST(N'2022-08-03T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4396, N'shop Cell phone  Cell phone  computer ', 2546, CAST(N'2024-01-21T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4397, N'shop tablet  tablet  Cell phone ', 2680, CAST(N'2028-10-06T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4398, N'shop Laptop  Laptop  keyboard ', 2814, CAST(N'2028-10-06T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4399, N'shop Laptop  Laptop  tablet ', 2948, CAST(N'2020-03-24T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4400, N'shop keyboard  keyboard  Cell phone ', 3082, CAST(N'2022-07-16T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4401, N'shop Cell phone  Cell phone  mouse ', 3216, CAST(N'2027-05-26T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4402, N'shop computer  computer  keyboard ', 3350, CAST(N'2027-05-26T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4403, N'shop memory  memory  play station ', 3484, CAST(N'2029-09-18T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4404, N'shop tablet  tablet  Laptop ', 3618, CAST(N'2024-07-03T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4405, N'shop tablet  tablet  play station ', 3752, CAST(N'2025-11-21T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4406, N'shop play station  play station  Cell phone ', 3886, CAST(N'2027-04-13T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4407, N'shop tablet  tablet  memory ', 4020, CAST(N'2027-04-13T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4408, N'shop mouse  mouse  Laptop ', 4154, CAST(N'2022-02-23T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4409, N'shop memory  memory  computer ', 4288, CAST(N'2024-06-15T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4410, N'shop keyboard  keyboard  computer ', 4422, CAST(N'2024-06-15T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4411, N'shop tablet  tablet  mouse ', 4556, CAST(N'2026-10-07T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4412, N'shop play station  play station  keyboard ', 4690, CAST(N'2021-08-18T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4413, N'shop Laptop  Laptop  keyboard ', 4824, CAST(N'2022-01-10T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4414, N'shop computer  computer  Laptop ', 4958, CAST(N'2022-01-10T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4415, N'shop Laptop  Laptop  keyboard ', 5092, CAST(N'2027-11-20T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4416, N'shop memory  memory  tablet ', 5226, CAST(N'2029-04-12T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4417, N'shop play station  play station  Cell phone ', 5360, CAST(N'2021-07-04T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4418, N'shop Cell phone  Cell phone  mouse ', 5494, CAST(N'2026-06-15T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4419, N'shop computer  computer  memory ', 5628, CAST(N'2026-06-15T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4420, N'shop Laptop  Laptop  keyboard ', 5762, CAST(N'2028-10-07T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4421, N'shop keyboard  keyboard  memory ', 5896, CAST(N'2020-03-25T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4422, N'shop mouse  mouse  tablet ', 6030, CAST(N'2020-03-25T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4423, N'shop computer  computer  keyboard ', 6164, CAST(N'2024-01-09T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4424, N'shop mouse  mouse  play station ', 6298, CAST(N'2026-05-01T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4425, N'shop play station  play station  computer ', 6432, CAST(N'2026-05-01T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4426, N'shop mouse  mouse  Laptop ', 6566, CAST(N'2021-03-12T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4427, N'shop keyboard  keyboard  tablet ', 6700, CAST(N'2025-11-22T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4428, N'shop Laptop  Laptop  computer ', 6834, CAST(N'2025-11-22T00:00:00.000' AS DateTime), 4062, 3041)
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4429, N'shop computer  computer  play station ', 6968, CAST(N'2020-09-06T00:00:00.000' AS DateTime), 4062, 3041)
GO
INSERT [dbo].[ExpenseDtoes] ([ExpenseDtoID], [Description], [Amount], [CreationDate], [CategoryDtoID], [CurrencyDtoID]) VALUES (4430, N'play', 134, CAST(N'2020-09-01T00:00:00.000' AS DateTime), 4063, 3042)
SET IDENTITY_INSERT [dbo].[ExpenseDtoes] OFF
GO
SET IDENTITY_INSERT [dbo].[KeyWordsDtoes] ON 

INSERT [dbo].[KeyWordsDtoes] ([KeyWordsDtoID], [Value], [CategoryDtoID]) VALUES (2047, N'lessons', 4059)
INSERT [dbo].[KeyWordsDtoes] ([KeyWordsDtoID], [Value], [CategoryDtoID]) VALUES (2048, N'shopping', 4060)
INSERT [dbo].[KeyWordsDtoes] ([KeyWordsDtoID], [Value], [CategoryDtoID]) VALUES (2049, N'music', 4061)
INSERT [dbo].[KeyWordsDtoes] ([KeyWordsDtoID], [Value], [CategoryDtoID]) VALUES (2050, N'computer', 4062)
INSERT [dbo].[KeyWordsDtoes] ([KeyWordsDtoID], [Value], [CategoryDtoID]) VALUES (2051, N'Play Station', 4063)
INSERT [dbo].[KeyWordsDtoes] ([KeyWordsDtoID], [Value], [CategoryDtoID]) VALUES (2052, N'dinner', 4064)
INSERT [dbo].[KeyWordsDtoes] ([KeyWordsDtoID], [Value], [CategoryDtoID]) VALUES (2053, N'tshirts', 4065)
INSERT [dbo].[KeyWordsDtoes] ([KeyWordsDtoID], [Value], [CategoryDtoID]) VALUES (2054, N'pencils', 4066)
INSERT [dbo].[KeyWordsDtoes] ([KeyWordsDtoID], [Value], [CategoryDtoID]) VALUES (2055, N'hotel', 4067)
INSERT [dbo].[KeyWordsDtoes] ([KeyWordsDtoID], [Value], [CategoryDtoID]) VALUES (2056, N'armchair', 4068)
SET IDENTITY_INSERT [dbo].[KeyWordsDtoes] OFF
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
