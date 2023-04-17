USE [Websitebanhang]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 17/04/2023 5:03:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Avatar] [nvarchar](50) NULL,
	[Slug] [varchar](50) NULL,
	[ShowOnHomePage] [bit] NULL,
	[DisplayOrder] [int] NULL,
	[CreatedOnUtc] [datetime] NULL,
	[UpdatedOnUtc] [datetime] NULL,
	[Deleted] [bit] NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 17/04/2023 5:03:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Avatar] [nchar](100) NULL,
	[Slug] [varchar](50) NULL,
	[ShowOnHomePage] [bit] NULL,
	[DisplayOrder] [int] NULL,
	[Deleted] [bit] NULL,
	[CreatedOnUtc] [datetime] NULL,
	[UpdatedOnUtc] [datetime] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 17/04/2023 5:03:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Avatar] [nvarchar](50) NULL,
	[CategoryId] [int] NULL,
	[ShortDes] [nvarchar](50) NULL,
	[FullDestription] [nvarchar](500) NULL,
	[Price] [float] NULL,
	[PriceDiscount] [float] NULL,
	[TypeId] [int] NULL,
	[Slug] [varchar](50) NULL,
	[BrandID] [int] NULL,
	[Deleted] [bit] NULL,
	[ShowOnHomePage] [bit] NULL,
	[DisplayOrder] [int] NULL,
	[CreatedOnUtc] [datetime] NULL,
	[UpdatedOnUtc] [datetime] NULL,
 CONSTRAINT [PK_Product1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 17/04/2023 5:03:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[IsAdmin] [bit] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([Id], [Name], [Avatar], [Slug], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc], [Deleted]) VALUES (1, N'Iphone', N'iphone.jpg', N'iphone', 1, 1, NULL, NULL, 0)
INSERT [dbo].[Brand] ([Id], [Name], [Avatar], [Slug], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc], [Deleted]) VALUES (2, N'Samsung', N'samsung.jpg', N'samsung', 1, 2, NULL, NULL, 0)
INSERT [dbo].[Brand] ([Id], [Name], [Avatar], [Slug], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc], [Deleted]) VALUES (3, N'Xiaomi', N'xiaomi.jpg', N'xiaomi', 1, 3, NULL, NULL, 0)
INSERT [dbo].[Brand] ([Id], [Name], [Avatar], [Slug], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc], [Deleted]) VALUES (4, N'Casio', N'casio.jpg', N'casio', 1, 4, NULL, NULL, 0)
INSERT [dbo].[Brand] ([Id], [Name], [Avatar], [Slug], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc], [Deleted]) VALUES (5, N'Rolex', N'rolex.jpg', N'rolex', 1, 5, NULL, NULL, 0)
INSERT [dbo].[Brand] ([Id], [Name], [Avatar], [Slug], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc], [Deleted]) VALUES (1006, N'IPad', N'2.jpg', N'IPad', 1, 6, CAST(N'2023-04-17T11:44:31.500' AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name], [Avatar], [Slug], [ShowOnHomePage], [DisplayOrder], [Deleted], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (1, N'Điện thoại', N'1.jpg                                                                                               ', N'dien-thoai', 1, 1, 0, NULL, NULL)
INSERT [dbo].[Category] ([Id], [Name], [Avatar], [Slug], [ShowOnHomePage], [DisplayOrder], [Deleted], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2, N'Máy tính bảng', N'2.jpg                                                                                               ', N'may-tinh-bang', 1, 2, 0, NULL, NULL)
INSERT [dbo].[Category] ([Id], [Name], [Avatar], [Slug], [ShowOnHomePage], [DisplayOrder], [Deleted], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (3, N'Đồng hồ', N'3.jpg                                                                                               ', N'dong-ho', 1, 3, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (1, N'Iphone 6', N'iphone6.jpg', 1, N'Iphone 6', N'Iphone 6', 3000000, 2500000, 1, N'iphone-6', 1, NULL, NULL, NULL, CAST(N'2023-04-13T18:32:25.617' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2, N'Iphone 7', N'iphone7.jpg', 1, N'Iphone 7', N'Iphone 7', 4000000, 3500000, 1, N'Iphone-7', 1, NULL, NULL, NULL, CAST(N'2023-04-13T18:33:00.940' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (3, N'iphone 8', N'iphone8.jpg', 1, N'iphone 8', N'iphone 8', 4000000, 4000000, 2, N'iphone-8', 1, NULL, NULL, NULL, CAST(N'2023-04-13T18:33:35.740' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (5, N'Iphone xs', N'iphonexs.jpg', 1, N'Iphone xs', N'Iphone xs', 8000000, 7000000, 1, N'Iphone-xs', 1, NULL, NULL, NULL, CAST(N'2023-04-13T18:35:37.640' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (6, N'Iphone 12', N'iphone12.jpg', 1, N'Iphone 12', N'Iphone 12', 12000000, 11000000, 1, N'Iphone-12', 1, NULL, NULL, NULL, CAST(N'2023-04-13T18:36:12.880' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (7, N'Samsung Galaxy A23', N'samsung-galaxy-a23.jpg', 1, N'Samsung Galaxy A23', N'Samsung Galaxy A23', 6000000, 3500000, 1, N'samsung-galaxy-a23', 2, NULL, NULL, NULL, CAST(N'2023-04-13T18:45:24.937' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (8, N'Samsung Galaxy S21', N'Samsung-Galaxy-S21.jpg', 1, N'Samsung Galaxy S21', N'Samsung Galaxy S21', 6000000, 5000000, 1, N'Samsung-Galaxy-S21', 2, NULL, NULL, NULL, CAST(N'2023-04-13T18:55:30.963' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (10, N'Iphone 12 Pro Max', N'iphone-12-pro-max.jpg', 1, N'Iphone 12 Pro Max', N'Iphone 12 Pro Max', 12000000, 13000000, 2, N'Iphone-12-Pro-Max', 1, NULL, NULL, NULL, CAST(N'2023-04-14T23:10:07.230' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (11, N'Iphone 13', N'iphone-13.jpg', 1, N'Iphone 13', N'Iphone 13', 12000000, 13000000, 2, N'Iphone-13', 1, NULL, NULL, NULL, CAST(N'2023-04-14T23:11:07.957' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (12, N'Iphone 13 Pro Max', N'iphone-13-pro-max.jpg', 1, N'Iphone 13 Pro Max', N'Iphone 13 Pro Max', 6000000, 13000000, 2, N'Iphone-13-Pro-Max', 1, NULL, NULL, NULL, CAST(N'2023-04-14T23:11:48.540' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (13, N'Iphone 14', N'iphone-14.jpg', 1, N'Iphone 14', N'Iphone 14', 6000000, 5000000, 1, N'iphone-14', 1, NULL, NULL, NULL, CAST(N'2023-04-14T23:12:18.803' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (14, N'Iphone 14 Pro Max', N'iphone-14-pro-max.jpg', 1, N'Iphone 14 Pro Max', N'Iphone 14 Pro Max', 12000000, 13000000, 2, N'iphone-14-pro-max', 1, NULL, NULL, NULL, CAST(N'2023-04-14T23:12:49.883' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (15, N'Samsung Galaxy A50', N'Samsung Galaxy A50.jpg', 1, N'Samsung Galaxy A50', N'Samsung Galaxy A50', 6000000, 5000000, 1, N'Samsung-Galaxy-A50', 2, NULL, NULL, NULL, CAST(N'2023-04-14T23:21:44.430' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (16, N'Samsung Galaxy A52', N'Samsung Galaxy A52.jpg', 1, N'Samsung Galaxy A52', N'Samsung Galaxy A52', 8000000, 5000000, 1, N'Samsung-Galaxy-A52', 2, NULL, NULL, NULL, CAST(N'2023-04-14T23:22:18.753' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (17, N'Samsung Galaxy A73', N'Samsung Galaxy A73.jpg', 1, N'Samsung Galaxy A73', N'Samsung Galaxy A73', 4000000, 5000000, 2, N'Samsung-Galaxy-A73', 2, NULL, NULL, NULL, CAST(N'2023-04-14T23:22:49.073' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (18, N'Samsung Galaxy M33', N'Samsung Galaxy M33.jpg', 1, N'Samsung Galaxy M33', N'Samsung Galaxy M33', 8000000, 13000000, 2, N'Samsung -Galaxy-M33', 2, NULL, NULL, NULL, CAST(N'2023-04-14T23:23:19.890' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (19, N'Samsung Galaxy Note 20 Ultra', N'Samsung Galaxy Note 20 Ultra.jpg', 1, N'Samsung Galaxy Note 20 Ultra', N'Samsung Galaxy Note 20 Ultra', 12000000, 13000000, 2, N'Samsung-Galaxy-Note-20-Ultra', 2, NULL, NULL, NULL, CAST(N'2023-04-14T23:23:49.720' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (20, N'Samsung Galaxy S9', N'Samsung Galaxy S9.jpg', 1, N'Samsung Galaxy S9', N'Samsung Galaxy S9', 8000000, 5000000, 1, N'Samsung-Galaxy-S9', 2, NULL, NULL, NULL, CAST(N'2023-04-14T23:24:25.237' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (21, N'Samsung Galaxy S23', N'Samsung Galaxy S23.jpg', 1, N'Samsung Galaxy S23', N'Samsung Galaxy S23', 12000000, 13000000, 2, N'Samsung-Galaxy-S23', 2, NULL, NULL, NULL, CAST(N'2023-04-14T23:24:54.497' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (22, N'Samsung Galaxy S23 Ultra', N'samsung-galaxy-s23-ultra.jpg', 1, N'Samsung Galaxy S23 Ultra', N'Samsung Galaxy S23 Ultra', 12000000, 13000000, 2, N'samsung-galaxy-s23-ultra', 2, NULL, NULL, NULL, CAST(N'2023-04-14T23:25:32.913' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2009, N'Điện thoại Xiaomi 12T', N'Điện thoại Xiaomi 12T.jpg', 1, N'Điện thoại Xiaomi 12T', N'Điện thoại Xiaomi 12T', 6000000, 5000000, 1, N'dien-thoai-xiaomi-12T', 3, NULL, NULL, NULL, CAST(N'2023-04-17T11:33:47.447' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2010, N'Điện thoại Xiaomi 13', N'Điện thoại Xiaomi 13.jpg', 1, N'Điện thoại Xiaomi 13', N'Điện thoại Xiaomi 13', 8000000, 6000000, 1, N'dien-thoai-xiaomi-13', 3, NULL, NULL, NULL, CAST(N'2023-04-17T11:34:53.603' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2011, N'Xiaomi 11T', N'Xiaomi 11T.jpg', 1, N'Xiaomi 11T', N'Xiaomi 11T', 8000000, 13000000, 2, N'Xiaomi-11T', 3, NULL, NULL, NULL, CAST(N'2023-04-17T11:35:21.753' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2012, N'Xiaomi Mi 13 Lite', N'Xiaomi Mi 13 Lite.jpg', 1, N'Xiaomi Mi 13 Lite', N'Xiaomi Mi 13 Lite', 12000000, 13000000, 2, N'Xiaomi-Mi-13-Lite', 3, NULL, NULL, NULL, CAST(N'2023-04-17T11:35:53.620' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2013, N'Xiaomi Mi9', N'Xiaomi Mi9.jpg', 1, N'Xiaomi Mi9', N'Xiaomi Mi9', 4000000, 2500000, 1, N'Xiaomi-Mi9', 3, NULL, NULL, NULL, CAST(N'2023-04-17T11:36:12.707' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2014, N'Xiaomi Redmi A1', N'Xiaomi Redmi A1.jpg', 1, N'Xiaomi Redmi A1', N'Xiaomi Redmi A1', 12000000, 13000000, 2, N'Xiaomi-Redmi-A1', 3, NULL, NULL, NULL, CAST(N'2023-04-17T11:36:38.100' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2015, N'Xiaomi Redmi Note 10 Pro', N'Xiaomi Redmi Note 10 Pro.jpg', 1, N'Xiaomi Redmi Note 10 Pro', N'Xiaomi Redmi Note 10 Pro', 12000000, 13000000, 2, N'Xiaomi-Redmi-Note-10-Pro', 3, NULL, NULL, NULL, CAST(N'2023-04-17T11:37:10.377' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2016, N'Xiaomi Redmi Note 10', N'Xiaomi Redmi Note 10.jpg', 1, N'Xiaomi Redmi Note 10', N'Xiaomi Redmi Note 10', 8000000, 5000000, 1, N'Xiaomi-Redmi-Note-10', 3, NULL, NULL, NULL, CAST(N'2023-04-17T11:39:06.423' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2017, N'Xiaomi Redmi Note 11', N'Xiaomi Redmi Note 11.jpg', 1, N'Xiaomi Redmi Note 11', N'Xiaomi Redmi Note 11', 12000000, 13000000, 2, N'Xiaomi-Redmi-Note 11', 3, NULL, NULL, NULL, CAST(N'2023-04-17T11:39:30.560' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2018, N'Xiaomi Redmi Note 12', N'Xiaomi Redmi Note 12.jpg', 1, N'Xiaomi Redmi Note 12', N'Xiaomi Redmi Note 12', 12000000, 13000000, 2, N'Xiaomi-Redmi-Note 12', 3, NULL, NULL, NULL, CAST(N'2023-04-17T11:42:19.057' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2019, N'iPad 10.2', N'iPad 10.2.jpg', 2, N'iPad 10.2', N'iPad 10.2', 12000000, 13000000, 2, N'iPad-10.2', 1006, NULL, NULL, NULL, CAST(N'2023-04-17T11:51:45.020' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2020, N'ipad 10', N'ipad 10.jpg', 2, N'ipad 10', N'ipad 10', 8000000, 5000000, 1, N'ipad-10', 1006, NULL, NULL, NULL, CAST(N'2023-04-17T11:53:40.013' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2021, N'iPad Air 3', N'iPad Air 3.jpg', 2, N'iPad Air 3', N'iPad Air 3', 12000000, 13000000, 2, N'iPad-Air-3', 1006, NULL, NULL, NULL, CAST(N'2023-04-17T11:54:09.523' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2022, N'iPad Air 5', N'iPad Air 5.jpg', 2, N'iPad Air 5', N'iPad Air 5', 12000000, 11000000, 1, N'iPad-Air-5', 1006, NULL, NULL, NULL, CAST(N'2023-04-17T11:54:42.720' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2023, N'iPad Gen 6', N'iPad Gen 6.jpg', 2, N'iPad Gen 6', N'iPad Gen 6', 6000000, 5000000, 1, N'iPad-Gen-6', 1006, NULL, NULL, NULL, CAST(N'2023-04-17T11:55:05.587' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2024, N'iPad Pro 11', N'iPad Pro 11.jpg', 2, N'iPad Pro 11', N'iPad Pro 11', 12000000, 13000000, 2, N'iPad-Pro-11', 1006, NULL, NULL, NULL, CAST(N'2023-04-17T11:55:32.817' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2025, N'iPad Pro 12.9', N'iPad Pro 12.9.jpg', 2, N'iPad Pro 12.9', N'iPad Pro 12.9', 12000000, 5000000, 1, N'iPad-Pro-12.9', 1006, NULL, NULL, NULL, CAST(N'2023-04-17T11:55:57.473' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2026, N'iPad Pro M2', N'iPad Pro M2.jpg', 2, N'iPad Pro M2', N'iPad Pro M2', 8000000, 5000000, 1, N'iPad-Pro-M2', 1006, NULL, NULL, NULL, CAST(N'2023-04-17T11:56:16.307' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2027, N'iPad Pro', N'iPad Pro.jpg', 2, N'iPad Pro', N'iPad Pro', 12000000, 11000000, 1, N'iPad-Pro', 1006, NULL, NULL, NULL, CAST(N'2023-04-17T11:56:43.027' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2028, N'iPad 9', N'iPad-9.jpg', 2, N'iPad 9', N'iPad 9', 8000000, 5000000, 1, N'iPad-9', 1006, NULL, NULL, NULL, CAST(N'2023-04-17T11:57:06.763' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2029, N'Rolex Cosmograph Daytona', N'dong-ho-rolex-cosmograph-daytona.jpg', 3, N'Rolex Cosmograph Daytona', N'Rolex Cosmograph Daytona', 120000000, 110000000, 1, N'rolex-cosmograph-daytona', 5, NULL, NULL, NULL, CAST(N'2023-04-17T13:03:26.210' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2030, N'Rolex Oyster Perpetual', N'dong-ho-rolex-oyster-perpetual.jpg', 3, N'Rolex Oyster Perpetual', N'Rolex Oyster Perpetual', 130000000, 100000000, 1, N'rolex-oyster-perpetual', 5, NULL, NULL, NULL, CAST(N'2023-04-17T13:04:18.183' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2031, N'Rolex Yacht Master', N'dong-ho-rolex-yacht-master.jpg', 3, N'Rolex Yacht Master', N'Rolex Yacht Master', 12000000, 5000000, 1, N'rolex-yacht-master', 5, NULL, NULL, NULL, CAST(N'2023-04-17T13:04:59.060' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2032, N'Rolex Cosmograph Daytona', N'Rolex Cosmograph Daytona.jpg', 3, N'Rolex Cosmograph Daytona', N'Rolex Cosmograph Daytona', 300000000, 250000000, 1, N'Rolex-Cosmograph-Daytona', 1006, NULL, NULL, NULL, CAST(N'2023-04-17T13:05:30.087' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2033, N'Rolex Day Date 40MM', N'Rolex Day Date 40MM.jpg', 3, N'Rolex Day Date 40MM', N'Rolex Day Date 40MM', 200000000, 150000000, 1, N'Rolex-Day-Date-40MM', 5, NULL, NULL, NULL, CAST(N'2023-04-17T13:05:59.190' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2034, N'Rolex Day Date', N'Rolex Day Date.jpg', 3, N'Rolex Day Date', N'Rolex Day Date', 600000000, 500000000, 1, N'Rolex-Day-Date', 5, NULL, NULL, NULL, CAST(N'2023-04-17T13:06:29.567' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2035, N'Rolex Day Date 40mm Mặt Số Kim Cương', N'Rolex Day-Date 40mm Mặt Số Kim Cương.jpg', 3, N'Rolex Day-Date 40mm Mặt Số Kim Cương', N'Rolex Day-Date 40mm Mặt Số Kim Cương', 600000000, 500000000, 1, N'Rolex-Day-Date-40mm-kim-cuong', 5, NULL, NULL, NULL, CAST(N'2023-04-17T13:07:16.457' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2036, N'Rolex Oyster Day-Date', N'Rolex Oyster Day-Date.jpg', 3, N'Rolex Oyster Day-Date', N'Rolex Oyster Day-Date', 12000000, 13000000, 2, N'Rolex-Oyster-Day-Date', 5, NULL, NULL, NULL, CAST(N'2023-04-17T13:08:12.293' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2037, N'Rolex Oyster Perpetual', N'Rolex Oyster Perpetual.jpg', 3, N'Rolex Oyster Perpetual', N'Rolex Oyster Perpetual', 12000000, 11000000, 1, N'Rolex-Oyster-Perpetual', 5, NULL, NULL, NULL, CAST(N'2023-04-17T13:08:37.087' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2038, N'Rolex Submariner Date', N'Rolex Submariner Date.jpg', 3, N'Rolex Submariner Date', N'Rolex Submariner Date', 12000000, 13000000, 2, N'Rolex-Submariner-Date', 5, NULL, NULL, NULL, CAST(N'2023-04-17T13:09:02.023' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2039, N'Casio MTP-1374D-7AVDF', N'Casio MTP-1374D-7AVDF.jpg', 3, N'Casio MTP-1374D-7AVDF', N'Casio MTP-1374D-7AVDF', 12000000, 11000000, 1, N'Casio-MTP-1374D-7AVDF', 4, NULL, NULL, NULL, CAST(N'2023-04-17T13:16:26.743' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2040, N'Casio MTP-1375L-7AVDF', N'Casio MTP-1375L-7AVDF.jpg', 3, N'Casio MTP-1375L-7AVDF', N'Casio MTP-1375L-7AVDF', 8000000, 5000000, 1, N'Casio-MTP-1375L-7AVDF', 4, NULL, NULL, NULL, CAST(N'2023-04-17T13:16:46.827' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2041, N'CASIO MTS-100D-7AVDF', N'CASIO MTS-100D-7AVDF.jpg', 3, N'CASIO MTS-100D-7AVDF', N'CASIO MTS-100D-7AVDF', 6000000, 5000000, 1, N'CASIO-MTS-100D-7AVDF', 4, NULL, NULL, NULL, CAST(N'2023-04-17T13:17:06.883' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2042, N'Casio Nam EFR-539L-5AVUDF Dây Da 54.1 mm', N'Casio Nam EFR-539L-5AVUDF Dây Da 54.1 mm.jpg', 3, N'Casio Nam EFR-539L-5AVUDF Dây Da 54.1 mm', N'Casio Nam EFR-539L-5AVUDF D&acirc;y Da 54.1 mm', 12000000, 11000000, 1, N'Casio-Nam-EFR-539L-5AVUDF-Day-Da-54.1mm', 4, NULL, NULL, NULL, CAST(N'2023-04-17T13:17:41.737' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2043, N'Casio AE-1200WH-1BVDF', N'Đồng Hồ Casio AE-1200WH-1BVDF.jpg', 3, N'Đồng Hồ Casio AE-1200WH-1BVDF', N'Đồng Hồ Casio AE-1200WH-1BVDF', 8000000, 500000000, 2, N'Casio-AE-1200WH-1BVDF', 4, NULL, NULL, NULL, CAST(N'2023-04-17T13:18:17.090' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2044, N'Edifice EFV-600D-3CVUDF', N'Edifice EFV-600D-3CVUDF.jpg', 3, N'Edifice EFV-600D-3CVUDF', N'Edifice EFV-600D-3CVUDF', 12000000, 5000000, 1, N'Edifice-EFV-600D-3CVUDF', 4, NULL, NULL, NULL, CAST(N'2023-04-17T13:18:41.173' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2045, N'G-Shock GA-2100-1A1DR', N'G-Shock GA-2100-1A1DR.jpg', 3, N'G-Shock GA-2100-1A1DR', N'G-Shock GA-2100-1A1DR', 8000000, 500000000, 2, N'G-Shock-GA-2100-1A1DR', 4, NULL, NULL, NULL, CAST(N'2023-04-17T13:19:02.003' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2046, N'G-Shock GA-2100-1ADR', N'G-Shock GA-2100-1ADR.jpg', 3, N'G-Shock GA-2100-1ADR', N'G-Shock GA-2100-1ADR', 12000000, 13000000, 2, N'G-Shock-GA-2100-1ADR', 4, NULL, NULL, NULL, CAST(N'2023-04-17T13:19:26.413' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2047, N'G-SHOCK GM-2100G-1A9', N'G-SHOCK GM-2100G-1A9.jpg', 3, N'G-SHOCK GM-2100G-1A9', N'G-SHOCK GM-2100G-1A9', 8000000, 5000000, 1, N'G-SHOCK-GM-2100G-1A9', 4, NULL, NULL, NULL, CAST(N'2023-04-17T13:19:47.253' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDestription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandID], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2048, N'G-Shock GMA-S140M-1ADR', N'G-Shock GMA-S140M-1ADR.jpg', 3, N'G-Shock GMA-S140M-1ADR', N'G-Shock GMA-S140M-1ADR', 12000000, 11000000, 1, N'G-Shock-GMA-S140M-1ADR', 4, NULL, NULL, NULL, CAST(N'2023-04-17T13:20:05.467' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Email], [Password], [IsAdmin]) VALUES (1, N'Giang', N'Nguy?n', N'devntgiangit12@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', NULL)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Email], [Password], [IsAdmin]) VALUES (4, N'Giang', N'Nguy?n', N'balabilu2734@gmail.com', N'fcea920f7412b5da7be0cf42b8c93759', 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
