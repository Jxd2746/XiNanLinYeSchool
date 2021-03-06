
USE [stuScoreDB]
GO
/****** Object:  Table [dbo].[buxiStateTable]    Script Date: 2019/3/3 星期日 19:05:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[buxiStateTable](
	[id] [int] NOT NULL,
	[buxiStateName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_buxiStateTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[classTable]    Script Date: 2019/3/3 星期日 19:05:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[classTable](
	[classID] [int] IDENTITY(1,1) NOT NULL,
	[className] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_classTable] PRIMARY KEY CLUSTERED 
(
	[classID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[stuTable]    Script Date: 2019/3/3 星期日 19:05:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stuTable](
	[stuID] [bigint] IDENTITY(1,1) NOT NULL,
	[stuName] [nvarchar](100) NOT NULL,
	[stuSex] [smallint] NULL,
	[stuBirthday] [date] NULL,
	[buxiStateID] [int] NULL,
	[classID] [int] NOT NULL,
 CONSTRAINT [PK_stuTable] PRIMARY KEY CLUSTERED 
(
	[stuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[userTable]    Script Date: 2019/3/3 星期日 19:05:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userTable](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[userName] [nvarchar](50) NOT NULL,
	[passwd] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_userTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[buxiStateTable] ([id], [buxiStateName]) VALUES (1, N'在读')
INSERT [dbo].[buxiStateTable] ([id], [buxiStateName]) VALUES (2, N'休学')
INSERT [dbo].[buxiStateTable] ([id], [buxiStateName]) VALUES (3, N'停课')
INSERT [dbo].[buxiStateTable] ([id], [buxiStateName]) VALUES (4, N'退费')
INSERT [dbo].[buxiStateTable] ([id], [buxiStateName]) VALUES (5, N'结课')
SET IDENTITY_INSERT [dbo].[classTable] ON 

INSERT [dbo].[classTable] ([classID], [className]) VALUES (1, N'计算机2016-01')
INSERT [dbo].[classTable] ([classID], [className]) VALUES (3, N'计算机2016-003')
INSERT [dbo].[classTable] ([classID], [className]) VALUES (4, N'计算机2016-004')
SET IDENTITY_INSERT [dbo].[classTable] OFF
SET IDENTITY_INSERT [dbo].[stuTable] ON 

INSERT [dbo].[stuTable] ([stuID], [stuName], [stuSex], [stuBirthday], [buxiStateID], [classID]) VALUES (1, N'张三', 1, CAST(0x053F0B00 AS Date), 4, 1)
INSERT [dbo].[stuTable] ([stuID], [stuName], [stuSex], [stuBirthday], [buxiStateID], [classID]) VALUES (3, N'张三2', 1, CAST(0x243F0B00 AS Date), 1, 3)
SET IDENTITY_INSERT [dbo].[stuTable] OFF
SET IDENTITY_INSERT [dbo].[userTable] ON 

INSERT [dbo].[userTable] ([id], [userName], [passwd]) VALUES (1, N'666', N'E1ADC3949BA59ABBE56E057F2F883E')
SET IDENTITY_INSERT [dbo].[userTable] OFF
USE [master]
GO
ALTER DATABASE [stuScoreDB] SET  READ_WRITE 
GO
