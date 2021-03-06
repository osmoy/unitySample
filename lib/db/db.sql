USE [AppsDB]
GO
/****** Object:  Table [dbo].[SysRole]    Script Date: 11/17/2017 16:39:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SysRole](
	[Id] [varchar](50) NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[Description] [varchar](4000) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[CreatePerson] [varchar](200) NOT NULL,
 CONSTRAINT [PK_SysRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysRole', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysRole', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysRole', @level2type=N'COLUMN',@level2name=N'CreatePerson'
GO
INSERT [dbo].[SysRole] ([Id], [Name], [Description], [CreateTime], [CreatePerson]) VALUES (N'2017111711350298629372bc08ed6d8', N'测试角色', N'用于测试', CAST(0x0000A82E00F1733F AS DateTime), N'admin')
INSERT [dbo].[SysRole] ([Id], [Name], [Description], [CreateTime], [CreatePerson]) VALUES (N'administrator', N'超级管理员', N'全部授权', CAST(0x0000A0DD00000000 AS DateTime), N'Administrator')
/****** Object:  Table [dbo].[SysUser]    Script Date: 11/17/2017 16:39:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SysUser](
	[Id] [varchar](50) NOT NULL,
	[UserName] [varchar](200) NOT NULL,
	[Password] [varchar](200) NOT NULL,
	[TrueName] [varchar](200) NULL,
	[Card] [varchar](50) NULL,
	[MobileNumber] [varchar](200) NULL,
	[PhoneNumber] [varchar](200) NULL,
	[QQ] [varchar](50) NULL,
	[EmailAddress] [varchar](200) NULL,
	[OtherContact] [varchar](200) NULL,
	[Province] [varchar](200) NULL,
	[City] [varchar](200) NULL,
	[Village] [varchar](200) NULL,
	[Address] [varchar](200) NULL,
	[State] [bit] NULL,
	[CreateTime] [datetime] NULL,
	[CreatePerson] [varchar](200) NULL,
	[Sex] [varchar](10) NULL,
	[Birthday] [datetime] NULL,
	[JoinDate] [datetime] NULL,
	[Marital] [varchar](10) NULL,
	[Political] [varchar](50) NULL,
	[Nationality] [varchar](20) NULL,
	[Native] [varchar](20) NULL,
	[School] [varchar](50) NULL,
	[Professional] [varchar](100) NULL,
	[Degree] [varchar](20) NULL,
	[DepId] [varchar](50) NOT NULL,
	[PosId] [varchar](50) NOT NULL,
	[Expertise] [varchar](3000) NULL,
	[JobState] [varchar](20) NULL,
	[Photo] [varchar](200) NULL,
	[Attach] [varchar](200) NULL,
 CONSTRAINT [PK_SysUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'MobileNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'婚姻' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'Marital'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'党派' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'Political'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'民族' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'Nationality'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'籍贯' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'Native'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'毕业学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'School'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'就读专业' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'Professional'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学历' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'Degree'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'DepId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'职位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'PosId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'个人简介' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'Expertise'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'在职状况' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'JobState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'照片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'Photo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'Attach'
GO
INSERT [dbo].[SysUser] ([Id], [UserName], [Password], [TrueName], [Card], [MobileNumber], [PhoneNumber], [QQ], [EmailAddress], [OtherContact], [Province], [City], [Village], [Address], [State], [CreateTime], [CreatePerson], [Sex], [Birthday], [JoinDate], [Marital], [Political], [Nationality], [Native], [School], [Professional], [Degree], [DepId], [PosId], [Expertise], [JobState], [Photo], [Attach]) VALUES (N'admin', N'admin', N'01-92-02-3A-7B-BD-73-25-05-16-F0-69-DF-18-B5-00', N'系统管理员', NULL, NULL, N'06638888888', N'324345345', N'ymnets@sina.com', N'MSN：ymnets', N'440000', N'440100', N'440101', N'小小村落', 1, CAST(0x0000A10D01022DC0 AS DateTime), N'admin', N'男', CAST(0x0000008900000000 AS DateTime), CAST(0x0000A13900000000 AS DateTime), N'未婚', N'中国', N'中国', N'广东揭阳', N'美国哈佛大学', N'计算机工程', N'硕士', N'20000', N'20001', N'勤劳向学,为人友善,乐于助人', N'在职', NULL, NULL)
/****** Object:  Table [dbo].[SysSample]    Script Date: 11/17/2017 16:39:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SysSample](
	[Id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Name] [varchar](50) NULL,
	[Age] [int] NULL,
	[Bir] [datetime] NULL,
	[Photo] [varchar](50) NULL,
	[Note] [text] NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_SysSampl_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SysSample] ON
INSERT [dbo].[SysSample] ([Id], [Name], [Age], [Bir], [Photo], [Note], [CreateTime]) VALUES (1, N'来打酱油', 25, CAST(0x000081C900000000 AS DateTime), NULL, N'1', CAST(0x0000A82A00000000 AS DateTime))
INSERT [dbo].[SysSample] ([Id], [Name], [Age], [Bir], [Photo], [Note], [CreateTime]) VALUES (6, N'moy', 26, CAST(0x0000A82600000000 AS DateTime), N'2', N'1', CAST(0x0000A82B00B0C9C4 AS DateTime))
SET IDENTITY_INSERT [dbo].[SysSample] OFF
/****** Object:  Table [dbo].[SysModule]    Script Date: 11/17/2017 16:39:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SysModule](
	[Id] [varchar](50) NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[EnglishName] [varchar](200) NULL,
	[ParentId] [varchar](50) NULL,
	[Url] [varchar](200) NULL,
	[Iconic] [varchar](200) NULL,
	[Sort] [int] NULL,
	[Remark] [varchar](4000) NULL,
	[Enable] [bit] NOT NULL,
	[CreatePerson] [varchar](200) NULL,
	[CreateTime] [datetime] NULL,
	[IsLast] [bit] NOT NULL,
	[Version] [timestamp] NULL,
 CONSTRAINT [PK_SysModule] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[SysModule] ([Id], [Name], [EnglishName], [ParentId], [Url], [Iconic], [Sort], [Remark], [Enable], [CreatePerson], [CreateTime], [IsLast]) VALUES (N'0', N'顶级菜单', N'Root', N'0', N'', N'', 0, N'', 1, N'Administrator', CAST(0x0000A0DD00000000 AS DateTime), 0)
INSERT [dbo].[SysModule] ([Id], [Name], [EnglishName], [ParentId], [Url], [Iconic], [Sort], [Remark], [Enable], [CreatePerson], [CreateTime], [IsLast]) VALUES (N'BaseSample', N'模板样例', N'Sample by Ajax', N'SampleFile', N'SysSample', N'', 0, N'', 1, N'Administrator', NULL, 1)
INSERT [dbo].[SysModule] ([Id], [Name], [EnglishName], [ParentId], [Url], [Iconic], [Sort], [Remark], [Enable], [CreatePerson], [CreateTime], [IsLast]) VALUES (N'Document', N'我的桌面', N'Start', N'PersonDocument', N'Home/Doc', N'', 0, N'', 1, N'Administrator', CAST(0x0000A0DD00000000 AS DateTime), 1)
INSERT [dbo].[SysModule] ([Id], [Name], [EnglishName], [ParentId], [Url], [Iconic], [Sort], [Remark], [Enable], [CreatePerson], [CreateTime], [IsLast]) VALUES (N'Info', N'我的资料', N'Info', N'PersonDocument', N'Home/Info', N'', 0, N'', 1, N'Administrator', CAST(0x0000A0DD00000000 AS DateTime), 1)
INSERT [dbo].[SysModule] ([Id], [Name], [EnglishName], [ParentId], [Url], [Iconic], [Sort], [Remark], [Enable], [CreatePerson], [CreateTime], [IsLast]) VALUES (N'InfoHome', N'主页', N'Home', N'Information', N'MIS/Article', N'', 1, N'', 1, N'Administrator', CAST(0x0000A0DD00000000 AS DateTime), 1)
INSERT [dbo].[SysModule] ([Id], [Name], [EnglishName], [ParentId], [Url], [Iconic], [Sort], [Remark], [Enable], [CreatePerson], [CreateTime], [IsLast]) VALUES (N'Information', N'信息中心', N'Information', N'OA', N'', N'', 0, N'', 1, N'Administrator', CAST(0x0000A0DD00000000 AS DateTime), 0)
INSERT [dbo].[SysModule] ([Id], [Name], [EnglishName], [ParentId], [Url], [Iconic], [Sort], [Remark], [Enable], [CreatePerson], [CreateTime], [IsLast]) VALUES (N'ManageInfo', N'管理中心', N'Manage Article', N'Information', N'MIS/ManageArticle', N'', 4, N'', 1, N'Administrator', CAST(0x0000A0DD00000000 AS DateTime), 1)
INSERT [dbo].[SysModule] ([Id], [Name], [EnglishName], [ParentId], [Url], [Iconic], [Sort], [Remark], [Enable], [CreatePerson], [CreateTime], [IsLast]) VALUES (N'ModuleSetting', N'模块维护', N'Module Setting', N'MoudleManage', N'SysModule', N'', 100, N'', 1, N'Administrator', CAST(0x0000A0DD00000000 AS DateTime), 1)
INSERT [dbo].[SysModule] ([Id], [Name], [EnglishName], [ParentId], [Url], [Iconic], [Sort], [Remark], [Enable], [CreatePerson], [CreateTime], [IsLast]) VALUES (N'MoudleManage', N'模块管理', N'Moudle Manage', N'0', N'', NULL, 1, NULL, 1, N'Administrator', CAST(0x0000A82500F8D720 AS DateTime), 0)
INSERT [dbo].[SysModule] ([Id], [Name], [EnglishName], [ParentId], [Url], [Iconic], [Sort], [Remark], [Enable], [CreatePerson], [CreateTime], [IsLast]) VALUES (N'MyInfo', N'我的信息', N'My Article', N'Information', N'MIS/MyArticle', N'', 2, N'', 1, N'Administrator', CAST(0x0000A0DD00000000 AS DateTime), 1)
INSERT [dbo].[SysModule] ([Id], [Name], [EnglishName], [ParentId], [Url], [Iconic], [Sort], [Remark], [Enable], [CreatePerson], [CreateTime], [IsLast]) VALUES (N'PersonDocument', N'个人中心', N'Person Center', N'0', N'', N'', 2, N'', 1, N'Administrator', CAST(0x0000A0DD00000000 AS DateTime), 0)
INSERT [dbo].[SysModule] ([Id], [Name], [EnglishName], [ParentId], [Url], [Iconic], [Sort], [Remark], [Enable], [CreatePerson], [CreateTime], [IsLast]) VALUES (N'RightManage', N'权限管理', N'Authorities Management', N'0', N'', N'', 4, N'', 1, N'Administrator', CAST(0x0000A0DD00000000 AS DateTime), 0)
INSERT [dbo].[SysModule] ([Id], [Name], [EnglishName], [ParentId], [Url], [Iconic], [Sort], [Remark], [Enable], [CreatePerson], [CreateTime], [IsLast]) VALUES (N'RoleAuthorize', N'角色分配权限', N'Role Authorize', N'RightManage', N'SysRight', N'', 2, N'', 1, N'Administrator', CAST(0x0000A0DD00000000 AS DateTime), 1)
INSERT [dbo].[SysModule] ([Id], [Name], [EnglishName], [ParentId], [Url], [Iconic], [Sort], [Remark], [Enable], [CreatePerson], [CreateTime], [IsLast]) VALUES (N'RoleManage', N'角色管理', N'Role Manage', N'RightManage', N'SysRole', N'', 3, N'', 1, N'Administrator', CAST(0x0000A0DD00000000 AS DateTime), 1)
INSERT [dbo].[SysModule] ([Id], [Name], [EnglishName], [ParentId], [Url], [Iconic], [Sort], [Remark], [Enable], [CreatePerson], [CreateTime], [IsLast]) VALUES (N'SampleFile', N'开发指南样例', N'SampleFile', N'0', N'SysSample', N'', 1, N'', 1, N'Administrator', NULL, 0)
INSERT [dbo].[SysModule] ([Id], [Name], [EnglishName], [ParentId], [Url], [Iconic], [Sort], [Remark], [Enable], [CreatePerson], [CreateTime], [IsLast]) VALUES (N'SystemConfig', N'系统配置', N'System Config', N'SystemManage', N'SysConfig', N'', 0, N'', 1, N'Administrator', CAST(0x0000A0DD00000000 AS DateTime), 1)
INSERT [dbo].[SysModule] ([Id], [Name], [EnglishName], [ParentId], [Url], [Iconic], [Sort], [Remark], [Enable], [CreatePerson], [CreateTime], [IsLast]) VALUES (N'SystemExcepiton', N'系统异常', N'System Exception', N'SystemManage', N'SysException', N'', 2, N'', 1, N'Administrator', CAST(0x0000A0DD00000000 AS DateTime), 1)
INSERT [dbo].[SysModule] ([Id], [Name], [EnglishName], [ParentId], [Url], [Iconic], [Sort], [Remark], [Enable], [CreatePerson], [CreateTime], [IsLast]) VALUES (N'SystemJobs', N'系统任务', N'System Jobs', N'TaskScheduling', N'Jobs/Jobs', N'', 0, N'', 1, N'Administrator', CAST(0x0000A0DD00000000 AS DateTime), 1)
INSERT [dbo].[SysModule] ([Id], [Name], [EnglishName], [ParentId], [Url], [Iconic], [Sort], [Remark], [Enable], [CreatePerson], [CreateTime], [IsLast]) VALUES (N'SystemLog', N'系统日志', N'System Log', N'SystemManage', N'SysLog', N'', 1, N'', 1, N'Administrator', CAST(0x0000A0DD00000000 AS DateTime), 1)
INSERT [dbo].[SysModule] ([Id], [Name], [EnglishName], [ParentId], [Url], [Iconic], [Sort], [Remark], [Enable], [CreatePerson], [CreateTime], [IsLast]) VALUES (N'SystemManage', N'系统管理', N'System Management', N'0', N'', N'', 3, N'', 1, N'Administrator', CAST(0x0000A0DD00000000 AS DateTime), 0)
INSERT [dbo].[SysModule] ([Id], [Name], [EnglishName], [ParentId], [Url], [Iconic], [Sort], [Remark], [Enable], [CreatePerson], [CreateTime], [IsLast]) VALUES (N'UserManage', N'用户管理', N'User Manage', N'RightManage', N'SysUser', NULL, 1, NULL, 1, N'Administrator', CAST(0x0000A0DD00000000 AS DateTime), 1)
/****** Object:  Table [dbo].[SysLog]    Script Date: 11/17/2017 16:39:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SysLog](
	[Id] [varchar](50) NOT NULL,
	[Operator] [varchar](50) NULL,
	[Message] [varchar](500) NULL,
	[Result] [varchar](20) NULL,
	[Type] [varchar](20) NULL,
	[Module] [varchar](20) NULL,
	[CreateTime] [datetime] NULL,
 CONSTRAINT [PK_SysLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'20171109154454865339082f8d81636', N'系统管理员', N'Id:1,Name:moy', N'失败', N'创建', N'样例程序', CAST(0x0000A8260103874C AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'2017110915461249477913f25e09962', N'系统管理员', N'Id:1,Name:moy', N'失败', N'创建', N'样例程序', CAST(0x0000A8260103E245 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711141034277548072663d8d2020', N'系统管理员', N'Id:0,Name:moy', N'失败', N'创建', N'样例程序', CAST(0x0000A82B00AE42A7 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'20171114104343186576147a7124f14', N'系统管理员', N'Id:0,Name:moy', N'成功', N'创建', N'样例程序', CAST(0x0000A82B00B0CD8C AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711141118387484354ff73877a69', N'虚拟用户', N'Id:6,Name:moy1', N'成功', N'编辑', N'样例程序', CAST(0x0000A82B00BA6548 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'2017111411190051568045f2bf66413', N'虚拟用户', N'Id:6,Name:moy', N'成功', N'编辑', N'样例程序', CAST(0x0000A82B00BA7ECB AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711151030481333053860051d1b8', N'系统管理员', N'Id:201711151029543352282fc666c5e41', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00AD4148 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711151045190881210ed1e825d1e', N'系统管理员', N'Id:201711141037306162663a34918e31c', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B13DEE AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'20171115104521760273965d5b0673f', N'系统管理员', N'Id:2017111410340678860802d33a254e7', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B14110 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711151045237733890cc81320a70', N'系统管理员', N'Id:2017111410350416488971db2f7761e', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B1436C AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'2017111510452612952383e7f704337', N'系统管理员', N'Id:2017111410414310470786c1243d5b1', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B1462F AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711151045292517024a4906c438f', N'系统管理员', N'Id:2017111410305916387652881212474', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B149D8 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711151045344610003aa26db4051', N'系统管理员', N'Id:201711141007364646467e8567fdec2', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B14FF2 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'20171115104540093322565c4f4941f', N'系统管理员', N'Id:2017111410073544758859b80393aa7', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B1568C AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711151045501368969fac4604106', N'系统管理员', N'Id:201711091553053653940d7b1bf1758', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B16251 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711151045545751508b0c1482155', N'系统管理员', N'Id:201711091553053653940d7b1bf1758', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B16785 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711151045568272796bf9c9bf79c', N'系统管理员', N'Id:2017110915530255223313346ad4efb', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B16A28 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'20171115104559540434846660c2dcf', N'系统管理员', N'Id:201711091555127236785f79fcced6f', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B16D56 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711151046020105761ba87dcea5b', N'系统管理员', N'Id:2017110915523917189580efadd74c1', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B1703B AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711151046054257714dba12d7aca', N'系统管理员', N'Id:201711091553263715955038b7bf70e', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B1743C AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'20171115104614589295596ebad810c', N'系统管理员', N'Id:2017110915505563997412133564faf', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B17EF9 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711151046172574481540d994f3a', N'系统管理员', N'Id:201711091553086575823270b487776', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B18219 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711151046199136000289fcf3fe9', N'系统管理员', N'Id:2017110915505395887805ef70d5865', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B18536 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'20171115104622825766676dd2c7f67', N'系统管理员', N'Id:20171109155056119001580566acb4c', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B188A0 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711151046298711696398250a505', N'系统管理员', N'Id:201711091550554199615bea2751759', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B190E1 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711151046358645124df27a46003', N'系统管理员', N'Id:2017110915532880273450965888596', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B197E8 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711151046399397455b20df6ff6c', N'系统管理员', N'Id:20171109155041317154946b113390b', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B19CAE AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'2017111510464902726539cffb3509a', N'系统管理员', N'Id:201711091544548583386bac6afd701', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B1A754 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'2017111510465152640826b6b9b56c6', N'系统管理员', N'Id:201711091550465364534e49b681a81', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B1AA42 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711151046541445579991fe56e1b', N'系统管理员', N'Id:2017110915430390299233ac631667a', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B1AD54 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'2017111510465748974935aaf6e96e6', N'系统管理员', N'Id:20171109155055898988951c72a1abc', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B1B13F AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711151047013069676f989037fd5', N'系统管理员', N'Id:20171109133527088047545311a2828', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B1B5B8 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'2017111510470400712214d7e17be18', N'系统管理员', N'Id:2017110915462417044690626529509', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B1B8E2 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'20171115104706839284006f2664f09', N'系统管理员', N'Id:2017110911110107437995e6cdb982b', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B1BC34 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711151047092974246da09108f2a', N'系统管理员', N'Id:201711091546124897788818b8b002d', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B1BF15 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'2017111510471191357439a3e59c1b5', N'系统管理员', N'Id:2017110911095397654214227b9a99c', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B1C226 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711151047142867100d9228b98ef', N'系统管理员', N'Id:20171109112203259254789d45d4613', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B1C4EE AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711151047165058369e2c542c323', N'系统管理员', N'Id:2017110910592097333647c343b9fa1', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B1C788 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'2017111510471960801443eae067733', N'系统管理员', N'Id:201711091555107055630f71add58ee', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B1CB2A AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711151047218071402f65ce630da', N'系统管理员', N'Id:2017110911094778918829a444922dd', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B1CDBE AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711151047239442624ad96987cae', N'系统管理员', N'Id:201711131618590621500a5eac0a949', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B1D03F AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'2017111510472695443463973d17890', N'系统管理员', N'Id:201711091110184709431e8e8b071ae', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B1D3C6 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'20171115104732273738843d3c1b491', N'系统管理员', N'Id:2017110915554734265860c4bd91b72', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B1DA03 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'2017111510473498189374cb1d7a786', N'系统管理员', N'Id:20171113163332959134057c8001a3c', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B1DD2F AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711151047371460175e6edb04f0c', N'系统管理员', N'Id:201711091059417535250b61fd18675', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B1DFB8 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'2017111510473912613076fa9c9e512', N'系统管理员', N'Id:201711131634323415305255e389cf5', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B1E20A AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711151047411582470d79f103d75', N'系统管理员', N'Id:20171113163410083257438ae3e3909', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B1E46B AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'2017111510474333237134ec0429a6a', N'系统管理员', N'Id:2017111316562888883275ba66b68f8', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B1E6F8 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'20171115104745337486025ebaa2294', N'系统管理员', N'Id:2017111316342567014891f54f2685a', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B1E951 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711151047472555957d7592b26f7', N'系统管理员', N'Id:20171113165637831344280dcfc2e29', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B1EB91 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'20171115104749330714416a9262e52', N'系统管理员', N'Id:201711131633218785003a372149528', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B1EDFF AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711151047514048330cbd9983b4d', N'系统管理员', N'Id:201711131658351860565e0151a1bf6', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B1F06E AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'20171115104753524954334788d0d93', N'系统管理员', N'Id:201711091556490981908847c91b218', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B1F2EA AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711151047556270745ef7075f4cc', N'系统管理员', N'Id:201711131658321938854cd6c26d38c', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B1F560 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711151047581752203cd1d383657', N'系统管理员', N'Id:201711091054344989510c02817e3c9', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B1F85D AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'2017111510480101938300b480b101f', N'系统管理员', N'Id:2017111316344790342062a1d661fe3', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B1FBB2 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711151048031905071a2ffc44306', N'系统管理员', N'Id:201711141003002418476899877d065', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B1FE3D AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'2017111510480571365152659840536', N'系统管理员', N'Id:201711141001100115428e8f0ca9608', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B20132 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'20171115104809937893194486c2b17', N'系统管理员', N'Id:201711091049438773284181031dfdf', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B20625 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711151048126910505ce5d22f031', N'系统管理员', N'Id:2017110913391439204865bdc73bd4a', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B2095F AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711151048152391963ae261bbc58', N'系统管理员', N'Id:201711091045163790284fc49db7ec5', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B20C5C AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'20171115104817385319031905a9c0d', N'系统管理员', N'Id:201711131703247366179fcbf420215', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B20EE0 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'2017111510481971845250d6545c9f7', N'系统管理员', N'Id:20171113163441187036584fc705d5a', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B2119B AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'20171115104822069587010e37048f7', N'系统管理员', N'Id:20171109103622193474791b2d85694', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B2145D AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'2017111510482485074607332349f20', N'系统管理员', N'Id:201711091041185314243bc0c896e23', N'成功', N'删除', N'日志模块', CAST(0x0000A82C00B2179F AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'2017111610440238262234da908e864', N'admin', N'Id:UserManage,Name:编辑,创建失败', N'失败', N'创建', N'模块设置', CAST(0x0000A82D00B0E40F AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711161046248827728be1cf76651', N'admin', N'Id:UserManage,Name:1,创建失败', N'失败', N'创建', N'模块设置', CAST(0x0000A82D00B18B09 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'2017111610492769322906a86e1afd2', N'admin', N'Id:UserManage,Name:编辑,创建失败', N'失败', N'创建', N'模块设置', CAST(0x0000A82D00B26149 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'20171116105354245474994649f8058', N'admin', N'Id:UserManage,Name:编辑,创建失败', N'失败', N'创建', N'模块设置', CAST(0x0000A82D00B399A2 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711161059001429712369e2596f7', N'admin', N'Id:UserManage,Name:编辑', N'成功', N'创建', N'模块设置', CAST(0x0000A82D00B5001B AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'20171117092509474530396187181f4', N'admin', N'Idadmin,UserNameadmin,一个实体对象不能由多个 IEntityChangeTracker 实例引用。', N'失败', N'修改', N'SysUser', CAST(0x0000A82E009B39AB AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711170939108186525ed606b9e75', N'admin', N'Idadmin,UserNameadmin,一个实体对象不能由多个 IEntityChangeTracker 实例引用。', N'失败', N'修改', N'SysUser', CAST(0x0000A82E009F139E AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711170941059682386c4aaf4d80f', N'admin', N'Idadmin,UserNameadmin,一个实体对象不能由多个 IEntityChangeTracker 实例引用。', N'失败', N'修改', N'SysUser', CAST(0x0000A82E009F9A8E AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'20171117094220662510986cdaab20c', N'admin', N'Idadmin,UserNameadmin,一个实体对象不能由多个 IEntityChangeTracker 实例引用。', N'失败', N'修改', N'SysUser', CAST(0x0000A82E009FF217 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711170944227244925d5fa98eefe', N'admin', N'Idadmin,UserNameadmin,一个实体对象不能由多个 IEntityChangeTracker 实例引用。', N'失败', N'修改', N'SysUser', CAST(0x0000A82E00A08122 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711171024031786466573e75e87e', N'admin', N'Id201711171023394332885c923e72381,Name1,创建失败', N'失败', N'创建', N'SysRole', CAST(0x0000A82E00AB66BA AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'2017111710270224788889d551f4cbd', N'admin', N'Id201711171026536733984aef2d40e7b,Name测试用户,创建失败', N'失败', N'创建', N'SysRole', CAST(0x0000A82E00AC3892 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711171027315305637133613027c', N'admin', N'Id201711171027315265635c7b38b3f0e,Name测试用户,创建失败', N'失败', N'创建', N'SysRole', CAST(0x0000A82E00AC5AE3 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711171029024127619a9763644e0', N'admin', N'Id20171117102902333757323ffc3054b,Name1,创建失败', N'失败', N'创建', N'SysRole', CAST(0x0000A82E00ACC564 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711171029393348737d7607af1d1', N'admin', N'Id201711171029121463186d292f9cdd1,Name1,创建失败', N'失败', N'创建', N'SysRole', CAST(0x0000A82E00ACF0A9 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711171032499787779a1f755a1be', N'admin', N'Id201711171032368800287b358131152,Name1', N'成功', N'创建', N'SysRole', CAST(0x0000A82E00ADD012 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'2017111710413318270349e18d15947', N'admin', N'Id201711171032368800287b358131152,Name2,一个实体对象不能由多个 IEntityChangeTracker 实例引用。', N'失败', N'修改', N'SysRole', CAST(0x0000A82E00B03533 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'2017111710520595389598d8271e7b9', N'admin', N'Id201711171032368800287b358131152,Name1,一个实体对象不能由多个 IEntityChangeTracker 实例引用。', N'失败', N'修改', N'SysRole', CAST(0x0000A82E00B31ABB AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711171107159559450cd816b745a', N'admin', N'Id201711171032368800287b358131152,Name1,一个实体对象不能由多个 IEntityChangeTracker 实例引用。', N'失败', N'修改', N'SysRole', CAST(0x0000A82E00B74523 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711171126317050501d3694673b0', N'admin', N'Id201711171032368800287b358131152,无法删除此对象，因为未在 ObjectStateManager 中找到它。', N'失败', N'删除', N'SysRole', CAST(0x0000A82E00BC8F88 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711171129187146025542bb86eb7', N'admin', N'Id201711171032368800287b358131152,一个实体对象不能由多个 IEntityChangeTracker 实例引用。', N'失败', N'删除', N'SysRole', CAST(0x0000A82E00BD533F AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'2017111711311713837597a478def3a', N'admin', N'Id201711171032368800287b358131152,无法删除此对象，因为未在 ObjectStateManager 中找到它。', N'失败', N'删除', N'SysRole', CAST(0x0000A82E00BDDE05 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'2017111711331043385613882078129', N'admin', N'Id:201711171032368800287b358131152', N'成功', N'删除', N'SysRole', CAST(0x0000A82E00BE62CB AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711171135032143067cf364fc1e0', N'admin', N'Id2017111711350298629372bc08ed6d8,Name1', N'成功', N'创建', N'SysRole', CAST(0x0000A82E00BEE6F5 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'2017111711353181394250d98c7265c', N'admin', N'Id2017111711350298629372bc08ed6d8,Name1,一个实体对象不能由多个 IEntityChangeTracker 实例引用。', N'失败', N'修改', N'SysRole', CAST(0x0000A82E00BF0878 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711171137219132399e6fc292d55', N'admin', N'Id2017111711350298629372bc08ed6d8,Name1', N'成功', N'修改', N'SysRole', CAST(0x0000A82E00BF897F AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'20171117143905603895355c5a75343', N'admin', N'Id2017111711350298629372bc08ed6d8,Name测试角色', N'成功', N'修改', N'SysRole', CAST(0x0000A82E00F17341 AS DateTime))
INSERT [dbo].[SysLog] ([Id], [Operator], [Message], [Result], [Type], [Module], [CreateTime]) VALUES (N'201711171444187518063cbec84f04b', N'admin', N'Id:RoleManage,Name:保存', N'成功', N'创建', N'模块设置', CAST(0x0000A82E00F2E23A AS DateTime))
/****** Object:  Table [dbo].[SysException]    Script Date: 11/17/2017 16:39:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SysException](
	[Id] [varchar](50) NOT NULL,
	[HelpLink] [varchar](500) NULL,
	[Message] [varchar](500) NULL,
	[Source] [varchar](500) NULL,
	[StackTrace] [text] NULL,
	[TargetSite] [varchar](500) NULL,
	[Data] [varchar](500) NULL,
	[CreateTime] [datetime] NULL,
 CONSTRAINT [PK_SysException] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'2017110910340821281156374b3aeca', NULL, N'执行命令定义时出错。有关详细信息，请参阅内部异常。', N'EntityFramework', N'   在 System.Data.Entity.Core.EntityClient.Internal.EntityCommandDefinition.ExecuteStoreCommands(EntityCommand entityCommand, CommandBehavior behavior)
   在 System.Data.Entity.Core.Objects.Internal.ObjectQueryExecutionPlan.Execute[TResultType](ObjectContext context, ObjectParameterCollection parameterValues)
   在 System.Data.Entity.Core.Objects.ObjectQuery`1.<>c__DisplayClass7.<GetResults>b__6()
   在 System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   在 System.Data.Entity.Core.Objects.ObjectQuery`1.<>c__DisplayClass7.<GetResults>b__5()
   在 System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   在 System.Data.Entity.Core.Objects.ObjectQuery`1.GetResults(Nullable`1 forMergeOption)
   在 System.Data.Entity.Core.Objects.ObjectQuery`1.<System.Collections.Generic.IEnumerable<T>.GetEnumerator>b__0()
   在 System.Data.Entity.Internal.LazyEnumerator`1.MoveNext()
   在 System.Linq.Enumerable.Single[TSource](IEnumerable`1 source)
   在 System.Data.Entity.Core.Objects.ELinq.ObjectQueryProvider.<GetElementFunction>b__3[TResult](IEnumerable`1 sequence)
   在 System.Data.Entity.Core.Objects.ELinq.ObjectQueryProvider.ExecuteSingle[TResult](IEnumerable`1 query, Expression queryRoot)
   在 System.Data.Entity.Core.Objects.ELinq.ObjectQueryProvider.System.Linq.IQueryProvider.Execute[TResult](Expression expression)
   在 System.Data.Entity.Internal.Linq.DbQueryProvider.Execute[TResult](Expression expression)
   在 System.Linq.Queryable.Count[TSource](IQueryable`1 source)
   在 App.BLL.SysSampleBLL.CreateModelList(GridPager& pager, IQueryable`1& queryData) 位置 f:\tools\project\unitySample-master\App.BLL\SysSampleBLL.cs:行号 74
   在 App.BLL.SysSampleBLL.GetList(GridPager& pager, String queryStr) 位置 f:\tools\project\unitySample-master\App.BLL\SysSampleBLL.cs:行号 69
   在 App.Admin.Controllers.SysSampleController.GetList(GridPager pager, String queryStr) 位置 f:\tools\project\unitySample-master\App.Admin\Controllers\SysSampleController.cs:行号 32
   在 lambda_method(Closure , ControllerBase , Object[] )
   在 System.Web.Mvc.ActionMethodDispatcher.Execute(ControllerBase controller, Object[] parameters)
   在 System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass42.<BeginInvokeSynchronousActionMethod>b__41()
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass8`1.<BeginSynchronous>b__7(IAsyncResult _)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<>c__DisplayClass39.<BeginInvokeActionMethodWithFilters>b__33()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass4f.<InvokeActionMethodFilterAsynchronously>b__49()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeActionMethodWithFilters>b__36(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<>c__DisplayClass2a.<BeginInvokeAction>b__20()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<BeginInvokeAction>b__22(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeAction(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.<>c__DisplayClass1d.<BeginExecuteCore>b__18(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecuteCore(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.<>c__DisplayClass8.<BeginProcessRequest>b__3(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'System.Data.Common.DbDataReader ExecuteStoreCommands(System.Data.Entity.Core.EntityClient.EntityCommand, System.Data.CommandBehavior)', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82600AE2BC8 AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'2017110910361900529244d3be5feef', NULL, N'执行命令定义时出错。有关详细信息，请参阅内部异常。', N'EntityFramework', N'   在 System.Data.Entity.Core.EntityClient.Internal.EntityCommandDefinition.ExecuteStoreCommands(EntityCommand entityCommand, CommandBehavior behavior)
   在 System.Data.Entity.Core.Objects.Internal.ObjectQueryExecutionPlan.Execute[TResultType](ObjectContext context, ObjectParameterCollection parameterValues)
   在 System.Data.Entity.Core.Objects.ObjectQuery`1.<>c__DisplayClass7.<GetResults>b__6()
   在 System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   在 System.Data.Entity.Core.Objects.ObjectQuery`1.<>c__DisplayClass7.<GetResults>b__5()
   在 System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   在 System.Data.Entity.Core.Objects.ObjectQuery`1.GetResults(Nullable`1 forMergeOption)
   在 System.Data.Entity.Core.Objects.ObjectQuery`1.<System.Collections.Generic.IEnumerable<T>.GetEnumerator>b__0()
   在 System.Data.Entity.Internal.LazyEnumerator`1.MoveNext()
   在 System.Linq.Enumerable.Single[TSource](IEnumerable`1 source)
   在 System.Data.Entity.Core.Objects.ELinq.ObjectQueryProvider.<GetElementFunction>b__3[TResult](IEnumerable`1 sequence)
   在 System.Data.Entity.Core.Objects.ELinq.ObjectQueryProvider.ExecuteSingle[TResult](IEnumerable`1 query, Expression queryRoot)
   在 System.Data.Entity.Core.Objects.ELinq.ObjectQueryProvider.System.Linq.IQueryProvider.Execute[TResult](Expression expression)
   在 System.Data.Entity.Internal.Linq.DbQueryProvider.Execute[TResult](Expression expression)
   在 System.Linq.Queryable.Count[TSource](IQueryable`1 source)
   在 App.BLL.SysSampleBLL.CreateModelList(GridPager& pager, IQueryable`1& queryData) 位置 f:\tools\project\unitySample-master\App.BLL\SysSampleBLL.cs:行号 74
   在 App.BLL.SysSampleBLL.GetList(GridPager& pager, String queryStr) 位置 f:\tools\project\unitySample-master\App.BLL\SysSampleBLL.cs:行号 69
   在 App.Admin.Controllers.SysSampleController.GetList(GridPager pager, String queryStr) 位置 f:\tools\project\unitySample-master\App.Admin\Controllers\SysSampleController.cs:行号 32
   在 lambda_method(Closure , ControllerBase , Object[] )
   在 System.Web.Mvc.ActionMethodDispatcher.Execute(ControllerBase controller, Object[] parameters)
   在 System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass42.<BeginInvokeSynchronousActionMethod>b__41()
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass8`1.<BeginSynchronous>b__7(IAsyncResult _)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<>c__DisplayClass39.<BeginInvokeActionMethodWithFilters>b__33()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass4f.<InvokeActionMethodFilterAsynchronously>b__49()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeActionMethodWithFilters>b__36(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<>c__DisplayClass2a.<BeginInvokeAction>b__20()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<BeginInvokeAction>b__22(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeAction(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.<>c__DisplayClass1d.<BeginExecuteCore>b__18(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecuteCore(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.<>c__DisplayClass8.<BeginProcessRequest>b__3(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'System.Data.Common.DbDataReader ExecuteStoreCommands(System.Data.Entity.Core.EntityClient.EntityCommand, System.Data.CommandBehavior)', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82600AEC506 AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'2017110910541627690887548739aab', NULL, N'执行命令定义时出错。有关详细信息，请参阅内部异常。', N'EntityFramework', N'   在 System.Data.Entity.Core.EntityClient.Internal.EntityCommandDefinition.ExecuteStoreCommands(EntityCommand entityCommand, CommandBehavior behavior)
   在 System.Data.Entity.Core.Objects.Internal.ObjectQueryExecutionPlan.Execute[TResultType](ObjectContext context, ObjectParameterCollection parameterValues)
   在 System.Data.Entity.Core.Objects.ObjectQuery`1.<>c__DisplayClass7.<GetResults>b__6()
   在 System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   在 System.Data.Entity.Core.Objects.ObjectQuery`1.<>c__DisplayClass7.<GetResults>b__5()
   在 System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   在 System.Data.Entity.Core.Objects.ObjectQuery`1.GetResults(Nullable`1 forMergeOption)
   在 System.Data.Entity.Core.Objects.ObjectQuery`1.<System.Collections.Generic.IEnumerable<T>.GetEnumerator>b__0()
   在 System.Data.Entity.Internal.LazyEnumerator`1.MoveNext()
   在 System.Linq.Enumerable.Single[TSource](IEnumerable`1 source)
   在 System.Data.Entity.Core.Objects.ELinq.ObjectQueryProvider.<GetElementFunction>b__3[TResult](IEnumerable`1 sequence)
   在 System.Data.Entity.Core.Objects.ELinq.ObjectQueryProvider.ExecuteSingle[TResult](IEnumerable`1 query, Expression queryRoot)
   在 System.Data.Entity.Core.Objects.ELinq.ObjectQueryProvider.System.Linq.IQueryProvider.Execute[TResult](Expression expression)
   在 System.Data.Entity.Internal.Linq.DbQueryProvider.Execute[TResult](Expression expression)
   在 System.Linq.Queryable.Count[TSource](IQueryable`1 source)
   在 App.BLL.SysSampleBLL.CreateModelList(GridPager& pager, IQueryable`1& queryData) 位置 f:\tools\project\unitySample-master\App.BLL\SysSampleBLL.cs:行号 74
   在 App.BLL.SysSampleBLL.GetList(GridPager& pager, String queryStr) 位置 f:\tools\project\unitySample-master\App.BLL\SysSampleBLL.cs:行号 69
   在 App.Admin.Controllers.SysSampleController.GetList(GridPager pager, String queryStr) 位置 f:\tools\project\unitySample-master\App.Admin\Controllers\SysSampleController.cs:行号 32
   在 lambda_method(Closure , ControllerBase , Object[] )
   在 System.Web.Mvc.ActionMethodDispatcher.Execute(ControllerBase controller, Object[] parameters)
   在 System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass42.<BeginInvokeSynchronousActionMethod>b__41()
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass8`1.<BeginSynchronous>b__7(IAsyncResult _)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<>c__DisplayClass39.<BeginInvokeActionMethodWithFilters>b__33()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass4f.<InvokeActionMethodFilterAsynchronously>b__49()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeActionMethodWithFilters>b__36(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<>c__DisplayClass2a.<BeginInvokeAction>b__20()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<BeginInvokeAction>b__22(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeAction(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.<>c__DisplayClass1d.<BeginExecuteCore>b__18(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecuteCore(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.<>c__DisplayClass8.<BeginProcessRequest>b__3(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'System.Data.Common.DbDataReader ExecuteStoreCommands(System.Data.Entity.Core.EntityClient.EntityCommand, System.Data.CommandBehavior)', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82600B3B373 AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'20171113170401330710993e053dfe8', NULL, N'执行命令定义时出错。有关详细信息，请参阅内部异常。', N'EntityFramework', N'   在 System.Data.Entity.Core.EntityClient.Internal.EntityCommandDefinition.ExecuteStoreCommands(EntityCommand entityCommand, CommandBehavior behavior)
   在 System.Data.Entity.Core.Objects.Internal.ObjectQueryExecutionPlan.Execute[TResultType](ObjectContext context, ObjectParameterCollection parameterValues)
   在 System.Data.Entity.Core.Objects.ObjectQuery`1.<>c__DisplayClass7.<GetResults>b__6()
   在 System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   在 System.Data.Entity.Core.Objects.ObjectQuery`1.<>c__DisplayClass7.<GetResults>b__5()
   在 System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   在 System.Data.Entity.Core.Objects.ObjectQuery`1.GetResults(Nullable`1 forMergeOption)
   在 System.Data.Entity.Core.Objects.ObjectQuery`1.<System.Collections.Generic.IEnumerable<T>.GetEnumerator>b__0()
   在 System.Data.Entity.Internal.LazyEnumerator`1.MoveNext()
   在 System.Linq.Enumerable.Single[TSource](IEnumerable`1 source)
   在 System.Data.Entity.Core.Objects.ELinq.ObjectQueryProvider.<GetElementFunction>b__3[TResult](IEnumerable`1 sequence)
   在 System.Data.Entity.Core.Objects.ELinq.ObjectQueryProvider.ExecuteSingle[TResult](IEnumerable`1 query, Expression queryRoot)
   在 System.Data.Entity.Core.Objects.ELinq.ObjectQueryProvider.System.Linq.IQueryProvider.Execute[TResult](Expression expression)
   在 System.Data.Entity.Internal.Linq.DbQueryProvider.Execute[TResult](Expression expression)
   在 System.Linq.Queryable.Count[TSource](IQueryable`1 source)
   在 App.BLL.SysSampleBLL.CreateModelList(GridPager& pager, IQueryable`1& queryData) 位置 f:\tools\project\unitySample-master\App.BLL\SysSampleBLL.cs:行号 74
   在 App.BLL.SysSampleBLL.GetList(GridPager& pager, String queryStr) 位置 f:\tools\project\unitySample-master\App.BLL\SysSampleBLL.cs:行号 69
   在 App.Admin.Controllers.SysSampleController.GetList(GridPager pager, String queryStr) 位置 f:\tools\project\unitySample-master\App.Admin\Controllers\SysSampleController.cs:行号 30
   在 lambda_method(Closure , ControllerBase , Object[] )
   在 System.Web.Mvc.ActionMethodDispatcher.Execute(ControllerBase controller, Object[] parameters)
   在 System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass42.<BeginInvokeSynchronousActionMethod>b__41()
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass8`1.<BeginSynchronous>b__7(IAsyncResult _)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<>c__DisplayClass39.<BeginInvokeActionMethodWithFilters>b__33()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass4f.<InvokeActionMethodFilterAsynchronously>b__49()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeActionMethodWithFilters>b__36(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<>c__DisplayClass2a.<BeginInvokeAction>b__20()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<BeginInvokeAction>b__22(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeAction(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.<>c__DisplayClass1d.<BeginExecuteCore>b__18(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecuteCore(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.<>c__DisplayClass8.<BeginProcessRequest>b__3(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'System.Data.Common.DbDataReader ExecuteStoreCommands(System.Data.Entity.Core.EntityClient.EntityCommand, System.Data.CommandBehavior)', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82A01194190 AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'201711131704538417144838edb4c73', NULL, N'执行命令定义时出错。有关详细信息，请参阅内部异常。', N'EntityFramework', N'   在 System.Data.Entity.Core.EntityClient.Internal.EntityCommandDefinition.ExecuteStoreCommands(EntityCommand entityCommand, CommandBehavior behavior)
   在 System.Data.Entity.Core.Objects.Internal.ObjectQueryExecutionPlan.Execute[TResultType](ObjectContext context, ObjectParameterCollection parameterValues)
   在 System.Data.Entity.Core.Objects.ObjectQuery`1.<>c__DisplayClass7.<GetResults>b__6()
   在 System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   在 System.Data.Entity.Core.Objects.ObjectQuery`1.<>c__DisplayClass7.<GetResults>b__5()
   在 System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   在 System.Data.Entity.Core.Objects.ObjectQuery`1.GetResults(Nullable`1 forMergeOption)
   在 System.Data.Entity.Core.Objects.ObjectQuery`1.<System.Collections.Generic.IEnumerable<T>.GetEnumerator>b__0()
   在 System.Data.Entity.Internal.LazyEnumerator`1.MoveNext()
   在 System.Linq.Enumerable.Single[TSource](IEnumerable`1 source)
   在 System.Data.Entity.Core.Objects.ELinq.ObjectQueryProvider.<GetElementFunction>b__3[TResult](IEnumerable`1 sequence)
   在 System.Data.Entity.Core.Objects.ELinq.ObjectQueryProvider.ExecuteSingle[TResult](IEnumerable`1 query, Expression queryRoot)
   在 System.Data.Entity.Core.Objects.ELinq.ObjectQueryProvider.System.Linq.IQueryProvider.Execute[TResult](Expression expression)
   在 System.Data.Entity.Internal.Linq.DbQueryProvider.Execute[TResult](Expression expression)
   在 System.Linq.Queryable.Count[TSource](IQueryable`1 source)
   在 App.BLL.SysSampleBLL.CreateModelList(GridPager& pager, IQueryable`1& queryData) 位置 f:\tools\project\unitySample-master\App.BLL\SysSampleBLL.cs:行号 74
   在 App.BLL.SysSampleBLL.GetList(GridPager& pager, String queryStr) 位置 f:\tools\project\unitySample-master\App.BLL\SysSampleBLL.cs:行号 69
   在 App.Admin.Controllers.SysSampleController.GetList(GridPager pager, String queryStr) 位置 f:\tools\project\unitySample-master\App.Admin\Controllers\SysSampleController.cs:行号 30
   在 lambda_method(Closure , ControllerBase , Object[] )
   在 System.Web.Mvc.ActionMethodDispatcher.Execute(ControllerBase controller, Object[] parameters)
   在 System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass42.<BeginInvokeSynchronousActionMethod>b__41()
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass8`1.<BeginSynchronous>b__7(IAsyncResult _)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<>c__DisplayClass39.<BeginInvokeActionMethodWithFilters>b__33()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass4f.<InvokeActionMethodFilterAsynchronously>b__49()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeActionMethodWithFilters>b__36(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<>c__DisplayClass2a.<BeginInvokeAction>b__20()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<BeginInvokeAction>b__22(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeAction(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.<>c__DisplayClass1d.<BeginExecuteCore>b__18(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecuteCore(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.<>c__DisplayClass8.<BeginProcessRequest>b__3(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'System.Data.Common.DbDataReader ExecuteStoreCommands(System.Data.Entity.Core.EntityClient.EntityCommand, System.Data.CommandBehavior)', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82A01197F21 AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'201711141001066963532247946f9c9', NULL, N'从具体化“System.Int32”类型到“System.String”类型的指定强制转换无效。', N'EntityFramework', N'   在 System.Data.Entity.Core.Common.Internal.Materialization.Shaper.ErrorHandlingValueReader`1.GetValue(DbDataReader reader, Int32 ordinal)
   在 lambda_method(Closure , Shaper )
   在 System.Data.Entity.Core.Common.Internal.Materialization.Coordinator`1.ReadNextElement(Shaper shaper)
   在 System.Data.Entity.Core.Common.Internal.Materialization.Shaper`1.SimpleEnumerator.MoveNext()
   在 System.Data.Entity.Internal.LazyEnumerator`1.MoveNext()
   在 System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)
   在 System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)
   在 App.BLL.SysSampleBLL.CreateModelList(GridPager& pager, IQueryable`1& queryData) 位置 f:\tools\project\unitySample-master\App.BLL\SysSampleBLL.cs:行号 86
   在 App.BLL.SysSampleBLL.GetList(GridPager& pager, String queryStr) 位置 f:\tools\project\unitySample-master\App.BLL\SysSampleBLL.cs:行号 69
   在 App.Admin.Controllers.SysSampleController.GetList(GridPager pager, String queryStr) 位置 f:\tools\project\unitySample-master\App.Admin\Controllers\SysSampleController.cs:行号 32
   在 lambda_method(Closure , ControllerBase , Object[] )
   在 System.Web.Mvc.ActionMethodDispatcher.Execute(ControllerBase controller, Object[] parameters)
   在 System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass42.<BeginInvokeSynchronousActionMethod>b__41()
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass8`1.<BeginSynchronous>b__7(IAsyncResult _)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<>c__DisplayClass39.<BeginInvokeActionMethodWithFilters>b__33()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass4f.<InvokeActionMethodFilterAsynchronously>b__49()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass4f.<InvokeActionMethodFilterAsynchronously>b__49()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeActionMethodWithFilters>b__36(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<>c__DisplayClass2a.<BeginInvokeAction>b__20()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<BeginInvokeAction>b__22(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeAction(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.<>c__DisplayClass1d.<BeginExecuteCore>b__18(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecuteCore(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.<>c__DisplayClass8.<BeginProcessRequest>b__3(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'T GetValue(System.Data.Common.DbDataReader, Int32)', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82B00A519AA AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'20171114100123928338840a9d8e422', NULL, N'从具体化“System.Int32”类型到“System.String”类型的指定强制转换无效。', N'EntityFramework', N'   在 System.Data.Entity.Core.Common.Internal.Materialization.Shaper.ErrorHandlingValueReader`1.GetValue(DbDataReader reader, Int32 ordinal)
   在 lambda_method(Closure , Shaper )
   在 System.Data.Entity.Core.Common.Internal.Materialization.Coordinator`1.ReadNextElement(Shaper shaper)
   在 System.Data.Entity.Core.Common.Internal.Materialization.Shaper`1.SimpleEnumerator.MoveNext()
   在 System.Data.Entity.Internal.LazyEnumerator`1.MoveNext()
   在 System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)
   在 System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)
   在 App.BLL.SysSampleBLL.CreateModelList(GridPager& pager, IQueryable`1& queryData) 位置 f:\tools\project\unitySample-master\App.BLL\SysSampleBLL.cs:行号 86
   在 App.BLL.SysSampleBLL.GetList(GridPager& pager, String queryStr) 位置 f:\tools\project\unitySample-master\App.BLL\SysSampleBLL.cs:行号 69
   在 App.Admin.Controllers.SysSampleController.GetList(GridPager pager, String queryStr) 位置 f:\tools\project\unitySample-master\App.Admin\Controllers\SysSampleController.cs:行号 32
   在 lambda_method(Closure , ControllerBase , Object[] )
   在 System.Web.Mvc.ActionMethodDispatcher.Execute(ControllerBase controller, Object[] parameters)
   在 System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass42.<BeginInvokeSynchronousActionMethod>b__41()
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass8`1.<BeginSynchronous>b__7(IAsyncResult _)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<>c__DisplayClass39.<BeginInvokeActionMethodWithFilters>b__33()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass4f.<InvokeActionMethodFilterAsynchronously>b__49()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass4f.<InvokeActionMethodFilterAsynchronously>b__49()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeActionMethodWithFilters>b__36(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<>c__DisplayClass2a.<BeginInvokeAction>b__20()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<BeginInvokeAction>b__22(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeAction(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.<>c__DisplayClass1d.<BeginExecuteCore>b__18(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecuteCore(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.<>c__DisplayClass8.<BeginProcessRequest>b__3(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'T GetValue(System.Data.Common.DbDataReader, Int32)', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82B00A52DDB AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'2017111410025855675134e7f6fc765', NULL, N'从具体化“System.Int32”类型到“System.String”类型的指定强制转换无效。', N'EntityFramework', N'   在 System.Data.Entity.Core.Common.Internal.Materialization.Shaper.ErrorHandlingValueReader`1.GetValue(DbDataReader reader, Int32 ordinal)
   在 lambda_method(Closure , Shaper )
   在 System.Data.Entity.Core.Common.Internal.Materialization.Coordinator`1.ReadNextElement(Shaper shaper)
   在 System.Data.Entity.Core.Common.Internal.Materialization.Shaper`1.SimpleEnumerator.MoveNext()
   在 System.Data.Entity.Internal.LazyEnumerator`1.MoveNext()
   在 System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)
   在 System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)
   在 App.BLL.SysSampleBLL.CreateModelList(GridPager& pager, IQueryable`1& queryData) 位置 f:\tools\project\unitySample-master\App.BLL\SysSampleBLL.cs:行号 86
   在 App.BLL.SysSampleBLL.GetList(GridPager& pager, String queryStr) 位置 f:\tools\project\unitySample-master\App.BLL\SysSampleBLL.cs:行号 69
   在 App.Admin.Controllers.SysSampleController.GetList(GridPager pager, String queryStr) 位置 f:\tools\project\unitySample-master\App.Admin\Controllers\SysSampleController.cs:行号 32
   在 lambda_method(Closure , ControllerBase , Object[] )
   在 System.Web.Mvc.ActionMethodDispatcher.Execute(ControllerBase controller, Object[] parameters)
   在 System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass42.<BeginInvokeSynchronousActionMethod>b__41()
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass8`1.<BeginSynchronous>b__7(IAsyncResult _)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<>c__DisplayClass39.<BeginInvokeActionMethodWithFilters>b__33()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass4f.<InvokeActionMethodFilterAsynchronously>b__49()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass4f.<InvokeActionMethodFilterAsynchronously>b__49()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeActionMethodWithFilters>b__36(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<>c__DisplayClass2a.<BeginInvokeAction>b__20()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<BeginInvokeAction>b__22(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeAction(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.<>c__DisplayClass1d.<BeginExecuteCore>b__18(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecuteCore(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.<>c__DisplayClass8.<BeginProcessRequest>b__3(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'T GetValue(System.Data.Common.DbDataReader, Int32)', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82B00A59CBF AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'201711141007349485600831bd81a66', NULL, N'概念端类型“SysMgr_DBModel.SysSample”中的成员“Id”的类型“Edm.String”与对象端类型“App.Models.SysSample”中的成员“Id”的类型“System.Int32”不匹配。', N'EntityFramework', N'   在 System.Data.Entity.Core.Mapping.DefaultObjectMappingItemCollection.ValidateMembersMatch(EdmMember edmMember, EdmMember objectMember)
   在 System.Data.Entity.Core.Mapping.DefaultObjectMappingItemCollection.LoadEntityTypeOrComplexTypeMapping(ObjectTypeMapping objectMapping, EdmType edmType, EdmType objectType, DefaultObjectMappingItemCollection ocItemCollection, Dictionary`2 typeMappings)
   在 System.Data.Entity.Core.Mapping.DefaultObjectMappingItemCollection.LoadObjectMapping(EdmType edmType, EdmType objectType, DefaultObjectMappingItemCollection ocItemCollection, Dictionary`2 typeMappings)
   在 System.Data.Entity.Core.Mapping.DefaultObjectMappingItemCollection.LoadObjectMapping(EdmType cdmType, EdmType objectType, DefaultObjectMappingItemCollection ocItemCollection)
   在 System.Data.Entity.Core.Mapping.DefaultObjectMappingItemCollection.GetDefaultMapping(EdmType cdmType, EdmType clrType)
   在 System.Data.Entity.Core.Mapping.DefaultObjectMappingItemCollection.TryGetMap(String identity, DataSpace typeSpace, Boolean ignoreCase, MappingBase& map)
   在 System.Data.Entity.Core.Mapping.DefaultObjectMappingItemCollection.TryGetMap(String identity, DataSpace typeSpace, MappingBase& map)
   在 System.Data.Entity.Core.Mapping.DefaultObjectMappingItemCollection.TryGetMap(GlobalItem item, MappingBase& map)
   在 System.Data.Entity.Core.Metadata.Edm.MetadataWorkspace.TryGetMap(GlobalItem item, DataSpace dataSpace, MappingBase& map)
   在 System.Data.Entity.Core.Metadata.Edm.MetadataWorkspace.TryGetEdmSpaceType[T](T objectSpaceType, T& edmSpaceType)
   在 System.Data.Entity.Core.Metadata.Edm.MetadataWorkspace.GetEdmSpaceType[T](T objectSpaceType)
   在 System.Data.Entity.Core.Metadata.Edm.MetadataWorkspace.GetEdmSpaceType(StructuralType objectSpaceType)
   在 System.Data.Entity.Core.Metadata.Edm.MetadataOptimization.UpdateEntitySetMappings()
   在 System.Data.Entity.Core.Metadata.Edm.MetadataOptimization.TryUpdateEntitySetMappingsForType(Type entityType)
   在 System.Data.Entity.Internal.InternalContext.TryUpdateEntitySetMappingsForType(Type entityType)
   在 System.Data.Entity.Internal.InternalContext.TryGetEntitySetAndBaseTypeForType(Type entityType)
   在 System.Data.Entity.Internal.Linq.InternalSet`1.TryInitialize()
   在 System.Data.Entity.Internal.InternalContext.ForceOSpaceLoadingForKnownEntityTypes()
   在 System.Data.Entity.DbContext.System.Data.Entity.Infrastructure.IObjectContextAdapter.get_ObjectContext()
   在 App.DAL.SysMgr_DBEntities.P_Sys_GetRightOperate(String userId, String url) 位置 f:\tools\project\unitySample-master\App.DAL\SysMgr_DB.Context.cs:行号 71
   在 App.DAL.SysRightRepository.GetPermission(String accountid, String controller) 位置 f:\tools\project\unitySample-master\App.DAL\SysRightRepository.cs:行号 22
   在 App.BLL.SysUserBLL.GetPermission(String accountid, String controller) 位置 f:\tools\project\unitySample-master\App.BLL\SysUserBLL.cs:行号 27
   在 App.Admin.Filters.SupportFilterAttribute.ValiddatePermission(AccountModel account, String controller, String action, String filePath) 位置 f:\tools\project\unitySample-master\App.Admin\Filters\SupportFilterAttribute.cs:行号 107
   在 App.Admin.Filters.SupportFilterAttribute.OnActionExecuting(ActionExecutingContext filterContext) 位置 f:\tools\project\unitySample-master\App.Admin\Filters\SupportFilterAttribute.cs:行号 74
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.InvokeActionMethodFilterAsynchronously(IActionFilter filter, ActionExecutingContext preContext, Func`1 nextInChain)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<>c__DisplayClass39.<>c__DisplayClass3b.<BeginInvokeActionMethodWithFilters>b__35()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.InvokeActionMethodFilterAsynchronously(IActionFilter filter, ActionExecutingContext preContext, Func`1 nextInChain)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<>c__DisplayClass39.<>c__DisplayClass3b.<BeginInvokeActionMethodWithFilters>b__35()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeActionMethodWithFilters>b__31(AsyncCallback asyncCallback, Object asyncState)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.BeginInvokeActionMethodWithFilters(ControllerContext controllerContext, IList`1 filters, ActionDescriptor actionDescriptor, IDictionary`2 parameters, AsyncCallback callback, Object state)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<BeginInvokeAction>b__1e(AsyncCallback asyncCallback, Object asyncState)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.BeginInvokeAction(ControllerContext controllerContext, String actionName, AsyncCallback callback, Object state)
   在 System.Web.Mvc.Controller.<>c__DisplayClass1d.<BeginExecuteCore>b__17(AsyncCallback asyncCallback, Object asyncState)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   在 System.Web.Mvc.Controller.BeginExecuteCore(AsyncCallback callback, Object state)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   在 System.Web.Mvc.Controller.BeginExecute(RequestContext requestContext, AsyncCallback callback, Object state)
   在 System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.BeginExecute(RequestContext requestContext, AsyncCallback callback, Object state)
   在 System.Web.Mvc.MvcHandler.<>c__DisplayClass8.<BeginProcessRequest>b__2(AsyncCallback asyncCallback, Object asyncState)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   在 System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   在 System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'Void ValidateMembersMatch(System.Data.Entity.Core.Metadata.Edm.EdmMember, System.Data.Entity.Core.Metadata.Edm.EdmMember)', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82B00A6E0A7 AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'201711141007379917340d451c2b745', NULL, N'概念端类型“SysMgr_DBModel.SysSample”中的成员“Id”的类型“Edm.String”与对象端类型“App.Models.SysSample”中的成员“Id”的类型“System.Int32”不匹配。', N'EntityFramework', N'   在 System.Data.Entity.Core.Mapping.DefaultObjectMappingItemCollection.ValidateMembersMatch(EdmMember edmMember, EdmMember objectMember)
   在 System.Data.Entity.Core.Mapping.DefaultObjectMappingItemCollection.LoadEntityTypeOrComplexTypeMapping(ObjectTypeMapping objectMapping, EdmType edmType, EdmType objectType, DefaultObjectMappingItemCollection ocItemCollection, Dictionary`2 typeMappings)
   在 System.Data.Entity.Core.Mapping.DefaultObjectMappingItemCollection.LoadObjectMapping(EdmType edmType, EdmType objectType, DefaultObjectMappingItemCollection ocItemCollection, Dictionary`2 typeMappings)
   在 System.Data.Entity.Core.Mapping.DefaultObjectMappingItemCollection.LoadObjectMapping(EdmType cdmType, EdmType objectType, DefaultObjectMappingItemCollection ocItemCollection)
   在 System.Data.Entity.Core.Mapping.DefaultObjectMappingItemCollection.GetDefaultMapping(EdmType cdmType, EdmType clrType)
   在 System.Data.Entity.Core.Mapping.DefaultObjectMappingItemCollection.TryGetMap(String identity, DataSpace typeSpace, Boolean ignoreCase, MappingBase& map)
   在 System.Data.Entity.Core.Mapping.DefaultObjectMappingItemCollection.TryGetMap(String identity, DataSpace typeSpace, MappingBase& map)
   在 System.Data.Entity.Core.Mapping.DefaultObjectMappingItemCollection.TryGetMap(GlobalItem item, MappingBase& map)
   在 System.Data.Entity.Core.Metadata.Edm.MetadataWorkspace.TryGetMap(GlobalItem item, DataSpace dataSpace, MappingBase& map)
   在 System.Data.Entity.Core.Metadata.Edm.MetadataWorkspace.TryGetEdmSpaceType[T](T objectSpaceType, T& edmSpaceType)
   在 System.Data.Entity.Core.Metadata.Edm.MetadataWorkspace.GetEdmSpaceType[T](T objectSpaceType)
   在 System.Data.Entity.Core.Metadata.Edm.MetadataWorkspace.GetEdmSpaceType(StructuralType objectSpaceType)
   在 System.Data.Entity.Core.Metadata.Edm.MetadataOptimization.UpdateEntitySetMappings()
   在 System.Data.Entity.Core.Metadata.Edm.MetadataOptimization.TryUpdateEntitySetMappingsForType(Type entityType)
   在 System.Data.Entity.Internal.InternalContext.TryUpdateEntitySetMappingsForType(Type entityType)
   在 System.Data.Entity.Internal.InternalContext.TryGetEntitySetAndBaseTypeForType(Type entityType)
   在 System.Data.Entity.Internal.Linq.InternalSet`1.TryInitialize()
   在 System.Data.Entity.Internal.InternalContext.ForceOSpaceLoadingForKnownEntityTypes()
   在 System.Data.Entity.DbContext.System.Data.Entity.Infrastructure.IObjectContextAdapter.get_ObjectContext()
   在 App.DAL.SysMgr_DBEntities.P_Sys_GetRightOperate(String userId, String url) 位置 f:\tools\project\unitySample-master\App.DAL\SysMgr_DB.Context.cs:行号 71
   在 App.DAL.SysRightRepository.GetPermission(String accountid, String controller) 位置 f:\tools\project\unitySample-master\App.DAL\SysRightRepository.cs:行号 22
   在 App.BLL.SysUserBLL.GetPermission(String accountid, String controller) 位置 f:\tools\project\unitySample-master\App.BLL\SysUserBLL.cs:行号 27
   在 App.Admin.Filters.SupportFilterAttribute.ValiddatePermission(AccountModel account, String controller, String action, String filePath) 位置 f:\tools\project\unitySample-master\App.Admin\Filters\SupportFilterAttribute.cs:行号 107
   在 App.Admin.Filters.SupportFilterAttribute.OnActionExecuting(ActionExecutingContext filterContext) 位置 f:\tools\project\unitySample-master\App.Admin\Filters\SupportFilterAttribute.cs:行号 74
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.InvokeActionMethodFilterAsynchronously(IActionFilter filter, ActionExecutingContext preContext, Func`1 nextInChain)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<>c__DisplayClass39.<>c__DisplayClass3b.<BeginInvokeActionMethodWithFilters>b__35()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.InvokeActionMethodFilterAsynchronously(IActionFilter filter, ActionExecutingContext preContext, Func`1 nextInChain)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<>c__DisplayClass39.<>c__DisplayClass3b.<BeginInvokeActionMethodWithFilters>b__35()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeActionMethodWithFilters>b__31(AsyncCallback asyncCallback, Object asyncState)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.BeginInvokeActionMethodWithFilters(ControllerContext controllerContext, IList`1 filters, ActionDescriptor actionDescriptor, IDictionary`2 parameters, AsyncCallback callback, Object state)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<BeginInvokeAction>b__1e(AsyncCallback asyncCallback, Object asyncState)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.BeginInvokeAction(ControllerContext controllerContext, String actionName, AsyncCallback callback, Object state)
   在 System.Web.Mvc.Controller.<>c__DisplayClass1d.<BeginExecuteCore>b__17(AsyncCallback asyncCallback, Object asyncState)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   在 System.Web.Mvc.Controller.BeginExecuteCore(AsyncCallback callback, Object state)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   在 System.Web.Mvc.Controller.BeginExecute(RequestContext requestContext, AsyncCallback callback, Object state)
   在 System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.BeginExecute(RequestContext requestContext, AsyncCallback callback, Object state)
   在 System.Web.Mvc.MvcHandler.<>c__DisplayClass8.<BeginProcessRequest>b__2(AsyncCallback asyncCallback, Object asyncState)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   在 System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   在 System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'Void ValidateMembersMatch(System.Data.Entity.Core.Metadata.Edm.EdmMember, System.Data.Entity.Core.Metadata.Edm.EdmMember)', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82B00A6E436 AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'2017111410185500045673431c7461d', NULL, N'LINQ to Entities 不识别方法“Int32 ToInt32(System.String)”，因此该方法无法转换为存储表达式。', N'EntityFramework', N'   在 System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.MethodCallTranslator.DefaultTranslator.Translate(ExpressionConverter parent, MethodCallExpression call)
   在 System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.MethodCallTranslator.TypedTranslate(ExpressionConverter parent, MethodCallExpression linq)
   在 System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TypedTranslator`1.Translate(ExpressionConverter parent, Expression linq)
   在 System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TranslateExpression(Expression linq)
   在 System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.EqualsTranslator.TypedTranslate(ExpressionConverter parent, BinaryExpression linq)
   在 System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TypedTranslator`1.Translate(ExpressionConverter parent, Expression linq)
   在 System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TranslateExpression(Expression linq)
   在 System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TranslateLambda(LambdaExpression lambda, DbExpression input)
   在 System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TranslateLambda(LambdaExpression lambda, DbExpression input, DbExpressionBinding& binding)
   在 System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.MethodCallTranslator.OneLambdaTranslator.Translate(ExpressionConverter parent, MethodCallExpression call, DbExpression& source, DbExpressionBinding& sourceBinding, DbExpression& lambda)
   在 System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.MethodCallTranslator.OneLambdaTranslator.Translate(ExpressionConverter parent, MethodCallExpression call)
   在 System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.MethodCallTranslator.FirstPredicateTranslatorBase.Translate(ExpressionConverter parent, MethodCallExpression call)
   在 System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.MethodCallTranslator.SinglePredicateTranslatorBase.Translate(ExpressionConverter parent, MethodCallExpression call)
   在 System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.MethodCallTranslator.SequenceMethodTranslator.Translate(ExpressionConverter parent, MethodCallExpression call, SequenceMethod sequenceMethod)
   在 System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.MethodCallTranslator.TypedTranslate(ExpressionConverter parent, MethodCallExpression linq)
   在 System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TypedTranslator`1.Translate(ExpressionConverter parent, Expression linq)
   在 System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TranslateExpression(Expression linq)
   在 System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.Convert()
   在 System.Data.Entity.Core.Objects.ELinq.ELinqQueryState.GetExecutionPlan(Nullable`1 forMergeOption)
   在 System.Data.Entity.Core.Objects.ObjectQuery`1.<>c__DisplayClass7.<GetResults>b__6()
   在 System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   在 System.Data.Entity.Core.Objects.ObjectQuery`1.<>c__DisplayClass7.<GetResults>b__5()
   在 System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   在 System.Data.Entity.Core.Objects.ObjectQuery`1.GetResults(Nullable`1 forMergeOption)
   在 System.Data.Entity.Core.Objects.ObjectQuery`1.<System.Collections.Generic.IEnumerable<T>.GetEnumerator>b__0()
   在 System.Data.Entity.Internal.LazyEnumerator`1.MoveNext()
   在 System.Linq.Enumerable.SingleOrDefault[TSource](IEnumerable`1 source)
   在 System.Data.Entity.Core.Objects.ELinq.ObjectQueryProvider.<GetElementFunction>b__2[TResult](IEnumerable`1 sequence)
   在 System.Data.Entity.Core.Objects.ELinq.ObjectQueryProvider.ExecuteSingle[TResult](IEnumerable`1 query, Expression queryRoot)
   在 System.Data.Entity.Core.Objects.ELinq.ObjectQueryProvider.System.Linq.IQueryProvider.Execute[TResult](Expression expression)
   在 System.Data.Entity.Internal.Linq.DbQueryProvider.Execute[TResult](Expression expression)
   在 System.Linq.Queryable.SingleOrDefault[TSource](IQueryable`1 source, Expression`1 predicate)
   在 App.DAL.SysSampleSetRepository.GetById(String id) 位置 f:\tools\project\unitySample-master\App.DAL\SysSampleRepository.cs:行号 92
   在 App.BLL.SysSampleBLL.Create(ValidationErrors& errors, SysSampleModel model) 位置 f:\tools\project\unitySample-master\App.BLL\SysSampleBLL.cs:行号 144', N'System.Data.Entity.Core.Common.CommandTrees.DbExpression Translate(System.Data.Entity.Core.Objects.ELinq.ExpressionConverter, System.Linq.Expressions.MethodCallExpression)', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82B00A9FD98 AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'20171114101916113664379c3983d5a', NULL, N'LINQ to Entities 不识别方法“Int32 ToInt32(System.String)”，因此该方法无法转换为存储表达式。', N'EntityFramework', N'   在 System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.MethodCallTranslator.DefaultTranslator.Translate(ExpressionConverter parent, MethodCallExpression call)
   在 System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.MethodCallTranslator.TypedTranslate(ExpressionConverter parent, MethodCallExpression linq)
   在 System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TypedTranslator`1.Translate(ExpressionConverter parent, Expression linq)
   在 System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TranslateExpression(Expression linq)
   在 System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.EqualsTranslator.TypedTranslate(ExpressionConverter parent, BinaryExpression linq)
   在 System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TypedTranslator`1.Translate(ExpressionConverter parent, Expression linq)
   在 System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TranslateExpression(Expression linq)
   在 System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TranslateLambda(LambdaExpression lambda, DbExpression input)
   在 System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TranslateLambda(LambdaExpression lambda, DbExpression input, DbExpressionBinding& binding)
   在 System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.MethodCallTranslator.OneLambdaTranslator.Translate(ExpressionConverter parent, MethodCallExpression call, DbExpression& source, DbExpressionBinding& sourceBinding, DbExpression& lambda)
   在 System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.MethodCallTranslator.OneLambdaTranslator.Translate(ExpressionConverter parent, MethodCallExpression call)
   在 System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.MethodCallTranslator.FirstPredicateTranslatorBase.Translate(ExpressionConverter parent, MethodCallExpression call)
   在 System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.MethodCallTranslator.SinglePredicateTranslatorBase.Translate(ExpressionConverter parent, MethodCallExpression call)
   在 System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.MethodCallTranslator.SequenceMethodTranslator.Translate(ExpressionConverter parent, MethodCallExpression call, SequenceMethod sequenceMethod)
   在 System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.MethodCallTranslator.TypedTranslate(ExpressionConverter parent, MethodCallExpression linq)
   在 System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TypedTranslator`1.Translate(ExpressionConverter parent, Expression linq)
   在 System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.TranslateExpression(Expression linq)
   在 System.Data.Entity.Core.Objects.ELinq.ExpressionConverter.Convert()
   在 System.Data.Entity.Core.Objects.ELinq.ELinqQueryState.GetExecutionPlan(Nullable`1 forMergeOption)
   在 System.Data.Entity.Core.Objects.ObjectQuery`1.<>c__DisplayClass7.<GetResults>b__6()
   在 System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   在 System.Data.Entity.Core.Objects.ObjectQuery`1.<>c__DisplayClass7.<GetResults>b__5()
   在 System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   在 System.Data.Entity.Core.Objects.ObjectQuery`1.GetResults(Nullable`1 forMergeOption)
   在 System.Data.Entity.Core.Objects.ObjectQuery`1.<System.Collections.Generic.IEnumerable<T>.GetEnumerator>b__0()
   在 System.Data.Entity.Internal.LazyEnumerator`1.MoveNext()
   在 System.Linq.Enumerable.SingleOrDefault[TSource](IEnumerable`1 source)
   在 System.Data.Entity.Core.Objects.ELinq.ObjectQueryProvider.<GetElementFunction>b__2[TResult](IEnumerable`1 sequence)
   在 System.Data.Entity.Core.Objects.ELinq.ObjectQueryProvider.ExecuteSingle[TResult](IEnumerable`1 query, Expression queryRoot)
   在 System.Data.Entity.Core.Objects.ELinq.ObjectQueryProvider.System.Linq.IQueryProvider.Execute[TResult](Expression expression)
   在 System.Data.Entity.Internal.Linq.DbQueryProvider.Execute[TResult](Expression expression)
   在 System.Linq.Queryable.SingleOrDefault[TSource](IQueryable`1 source, Expression`1 predicate)
   在 App.DAL.SysSampleSetRepository.GetById(String id) 位置 f:\tools\project\unitySample-master\App.DAL\SysSampleRepository.cs:行号 92
   在 App.BLL.SysSampleBLL.Create(ValidationErrors& errors, SysSampleModel model) 位置 f:\tools\project\unitySample-master\App.BLL\SysSampleBLL.cs:行号 144', N'System.Data.Entity.Core.Common.CommandTrees.DbExpression Translate(System.Data.Entity.Core.Objects.ELinq.ExpressionConverter, System.Linq.Expressions.MethodCallExpression)', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82B00AA1653 AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'2017111410294391957284dd2e53c14', NULL, N'更新条目时出错。有关详细信息，请参阅内部异常。', N'EntityFramework', N'   在 System.Data.Entity.Internal.InternalContext.SaveChanges()
   在 System.Data.Entity.Internal.LazyInternalContext.SaveChanges()
   在 System.Data.Entity.DbContext.SaveChanges()
   在 App.DAL.SysSampleSetRepository.Create(SysSample entity) 位置 f:\tools\project\unitySample-master\App.DAL\SysSampleRepository.cs:行号 46
   在 App.BLL.SysSampleBLL.Create(ValidationErrors& errors, SysSampleModel model) 位置 f:\tools\project\unitySample-master\App.BLL\SysSampleBLL.cs:行号 157', N'Int32 SaveChanges()', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82B00ACF60D AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'201711141029530960976b05478c1a0', NULL, N'更新条目时出错。有关详细信息，请参阅内部异常。', N'EntityFramework', N'   在 System.Data.Entity.Internal.InternalContext.SaveChanges()
   在 System.Data.Entity.Internal.LazyInternalContext.SaveChanges()
   在 System.Data.Entity.DbContext.SaveChanges()
   在 App.DAL.SysSampleSetRepository.Create(SysSample entity) 位置 f:\tools\project\unitySample-master\App.DAL\SysSampleRepository.cs:行号 46
   在 App.BLL.SysSampleBLL.Create(ValidationErrors& errors, SysSampleModel model) 位置 f:\tools\project\unitySample-master\App.BLL\SysSampleBLL.cs:行号 157', N'Int32 SaveChanges()', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82B00AD00C9 AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'201711141042358957273d92bd2c210', NULL, N'更新条目时出错。有关详细信息，请参阅内部异常。', N'EntityFramework', N'   在 System.Data.Entity.Internal.InternalContext.SaveChanges()
   在 System.Data.Entity.Internal.LazyInternalContext.SaveChanges()
   在 System.Data.Entity.DbContext.SaveChanges()
   在 App.DAL.SysSampleSetRepository.Create(SysSample entity) 位置 f:\tools\project\unitySample-master\App.DAL\SysSampleRepository.cs:行号 46
   在 App.BLL.SysSampleBLL.Create(ValidationErrors& errors, SysSampleModel model) 位置 f:\tools\project\unitySample-master\App.BLL\SysSampleBLL.cs:行号 151', N'Int32 SaveChanges()', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82B00B07EB1 AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'201711141701308950948225f12185b', NULL, N'未找到路径“/SysConfig”的控制器或该控制器未实现 IController。', N'System.Web.Mvc', N'   在 System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   在 System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   在 System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   在 System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   在 System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'System.Web.Mvc.IController GetControllerInstance(System.Web.Routing.RequestContext, System.Type)', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82B01189146 AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'201711141719151109645e3bd49f6ba', NULL, N'f:\tools\project\unitySample-master\App.Admin\Views\SysLog\Index.cshtml(22): error CS1928: “System.Web.Mvc.HtmlHelper<dynamic>”不包含“ToolButton”的定义，并且最佳扩展方法重载“System.Web.Mvc.ExtendMvcHtml.ToolButton(System.Web.Mvc.HtmlHelper, string, string, string, bool)”的某些参数无效', N'System.Web', N'   在 System.Web.Compilation.AssemblyBuilder.Compile()
   在 System.Web.Compilation.BuildProvidersCompiler.PerformBuild()
   在 System.Web.Compilation.BuildManager.CompileWebFile(VirtualPath virtualPath)
   在 System.Web.Compilation.BuildManager.GetVPathBuildResultInternal(VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   在 System.Web.Compilation.BuildManager.GetVPathBuildResultWithNoAssert(HttpContext context, VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   在 System.Web.Compilation.BuildManager.GetVirtualPathObjectFactory(VirtualPath virtualPath, HttpContext context, Boolean allowCrossApp, Boolean throwIfNotFound)
   在 System.Web.Mvc.BuildManagerWrapper.System.Web.Mvc.IBuildManager.FileExists(String virtualPath)
   在 System.Web.Mvc.BuildManagerViewEngine.FileExists(ControllerContext controllerContext, String virtualPath)
   在 Microsoft.Web.Mvc.FixedRazorViewEngine.Microsoft.Web.Mvc.IViewEngineProxy.FileExists(ControllerContext controllerContext, String virtualPath)
   在 Microsoft.Web.Mvc.ViewEngineFixWorker`1.<>c__DisplayClass4.<GetPathFromGeneralName>b__0(String path)
   在 System.Web.WebPages.DefaultDisplayMode.GetDisplayInfo(HttpContextBase httpContext, String virtualPath, Func`2 virtualPathExists)
   在 System.Web.WebPages.DisplayModeProvider.<>c__DisplayClassb.<GetDisplayInfoForVirtualPath>b__8(IDisplayMode mode)
   在 System.Linq.Enumerable.WhereSelectListIterator`2.MoveNext()
   在 System.Linq.Enumerable.FirstOrDefault[TSource](IEnumerable`1 source, Func`2 predicate)
   在 System.Web.WebPages.DisplayModeProvider.GetDisplayInfoForVirtualPath(String virtualPath, HttpContextBase httpContext, Func`2 virtualPathExists, IDisplayMode currentDisplayMode, Boolean requireConsistentDisplayMode)
   在 Microsoft.Web.Mvc.ViewEngineFixWorker`1.GetPathFromGeneralName(ControllerContext controllerContext, List`1 locations, String name, String controllerName, String areaName, String cacheKey, String[]& searchedLocations)
   在 Microsoft.Web.Mvc.ViewEngineFixWorker`1.GetPath(ControllerContext controllerContext, String[] locations, String[] areaLocations, String locationsPropertyName, String name, String controllerName, String cacheKeyPrefix, Boolean useCache, String[]& searchedLocations)
   在 Microsoft.Web.Mvc.ViewEngineFixWorker`1.FindView(ControllerContext controllerContext, String viewName, String masterName, Boolean useCache)
   在 Microsoft.Web.Mvc.FixedRazorViewEngine.FindView(ControllerContext controllerContext, String viewName, String masterName, Boolean useCache)
   在 System.Web.Mvc.ViewEngineCollection.<>c__DisplayClassc.<FindView>b__b(IViewEngine e)
   在 System.Web.Mvc.ViewEngineCollection.Find(Func`2 lookup, Boolean trackSearchedPaths)
   在 System.Web.Mvc.ViewEngineCollection.FindView(ControllerContext controllerContext, String viewName, String masterName)
   在 System.Web.Mvc.ViewResult.FindView(ControllerContext context)
   在 System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   在 System.Web.Mvc.ControllerActionInvoker.<>c__DisplayClass1a.<InvokeActionResultWithFilters>b__17()
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilter(IResultFilter filter, ResultExecutingContext preContext, Func`1 continuation)
   在 System.Web.Mvc.ControllerActionInvoker.<>c__DisplayClass1a.<>c__DisplayClass1c.<InvokeActionResultWithFilters>b__19()
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<>c__DisplayClass2a.<BeginInvokeAction>b__20()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<BeginInvokeAction>b__22(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeAction(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.<>c__DisplayClass1d.<BeginExecuteCore>b__18(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecuteCore(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.<>c__DisplayClass8.<BeginProcessRequest>b__3(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'System.CodeDom.Compiler.CompilerResults Compile()', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82B011D7069 AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'2017111510120375499458f43365f7a', NULL, N'节关键字后不应有 “{”字符。节名称必须以“_”或字母字符开头，其余字符必须是“_”或字母数字。
', N'System.Web.WebPages.Razor', N'   在 System.Web.WebPages.Razor.RazorBuildProvider.EnsureGeneratedCode()
   在 System.Web.WebPages.Razor.RazorBuildProvider.get_CodeCompilerType()
   在 System.Web.Compilation.BuildProvider.GetCompilerTypeFromBuildProvider(BuildProvider buildProvider)
   在 System.Web.Compilation.BuildProvidersCompiler.ProcessBuildProviders()
   在 System.Web.Compilation.BuildProvidersCompiler.PerformBuild()
   在 System.Web.Compilation.BuildManager.CompileWebFile(VirtualPath virtualPath)
   在 System.Web.Compilation.BuildManager.GetVPathBuildResultInternal(VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   在 System.Web.Compilation.BuildManager.GetVPathBuildResultWithNoAssert(HttpContext context, VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   在 System.Web.Compilation.BuildManager.GetVirtualPathObjectFactory(VirtualPath virtualPath, HttpContext context, Boolean allowCrossApp, Boolean throwIfNotFound)
   在 System.Web.Compilation.BuildManager.GetObjectFactory(String virtualPath, Boolean throwIfNotFound)
   在 System.Web.Mvc.BuildManagerWrapper.System.Web.Mvc.IBuildManager.FileExists(String virtualPath)
   在 System.Web.Mvc.BuildManagerViewEngine.FileExists(ControllerContext controllerContext, String virtualPath)
   在 Microsoft.Web.Mvc.FixedRazorViewEngine.Microsoft.Web.Mvc.IViewEngineProxy.FileExists(ControllerContext controllerContext, String virtualPath)
   在 Microsoft.Web.Mvc.ViewEngineFixWorker`1.FileExists(ControllerContext controllerContext, String virtualPath)
   在 Microsoft.Web.Mvc.ViewEngineFixWorker`1.<>c__DisplayClass4.<GetPathFromGeneralName>b__0(String path)
   在 System.Web.WebPages.DefaultDisplayMode.GetDisplayInfo(HttpContextBase httpContext, String virtualPath, Func`2 virtualPathExists)
   在 System.Web.WebPages.DisplayModeProvider.<>c__DisplayClassb.<GetDisplayInfoForVirtualPath>b__8(IDisplayMode mode)
   在 System.Linq.Enumerable.WhereSelectListIterator`2.MoveNext()
   在 System.Linq.Enumerable.FirstOrDefault[TSource](IEnumerable`1 source, Func`2 predicate)
   在 System.Web.WebPages.DisplayModeProvider.GetDisplayInfoForVirtualPath(String virtualPath, HttpContextBase httpContext, Func`2 virtualPathExists, IDisplayMode currentDisplayMode, Boolean requireConsistentDisplayMode)
   在 System.Web.WebPages.DisplayModeProvider.GetDisplayInfoForVirtualPath(String virtualPath, HttpContextBase httpContext, Func`2 virtualPathExists, IDisplayMode currentDisplayMode)
   在 Microsoft.Web.Mvc.ViewEngineFixWorker`1.GetPathFromGeneralName(ControllerContext controllerContext, List`1 locations, String name, String controllerName, String areaName, String cacheKey, String[]& searchedLocations)
   在 Microsoft.Web.Mvc.ViewEngineFixWorker`1.GetPath(ControllerContext controllerContext, String[] locations, String[] areaLocations, String locationsPropertyName, String name, String controllerName, String cacheKeyPrefix, Boolean useCache, String[]& searchedLocations)
   在 Microsoft.Web.Mvc.ViewEngineFixWorker`1.FindView(ControllerContext controllerContext, String viewName, String masterName, Boolean useCache)
   在 Microsoft.Web.Mvc.FixedRazorViewEngine.FindView(ControllerContext controllerContext, String viewName, String masterName, Boolean useCache)
   在 System.Web.Mvc.ViewEngineCollection.<>c__DisplayClassc.<FindView>b__b(IViewEngine e)
   在 System.Web.Mvc.ViewEngineCollection.Find(Func`2 lookup, Boolean trackSearchedPaths)
   在 System.Web.Mvc.ViewEngineCollection.FindView(ControllerContext controllerContext, String viewName, String masterName)
   在 System.Web.Mvc.ViewResult.FindView(ControllerContext context)
   在 System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   在 System.Web.Mvc.ControllerActionInvoker.<>c__DisplayClass1a.<InvokeActionResultWithFilters>b__17()
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilter(IResultFilter filter, ResultExecutingContext preContext, Func`1 continuation)
   在 System.Web.Mvc.ControllerActionInvoker.<>c__DisplayClass1a.<>c__DisplayClass1c.<InvokeActionResultWithFilters>b__19()
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<>c__DisplayClass2a.<BeginInvokeAction>b__20()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<BeginInvokeAction>b__22(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeAction(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.<>c__DisplayClass1d.<BeginExecuteCore>b__18(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecuteCore(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.<>c__DisplayClass8.<BeginProcessRequest>b__3(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'Void EnsureGeneratedCode()', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82C00A81BAC AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'201711151015433845566b25b39e5d1', NULL, N'节关键字后不应有 “{”字符。节名称必须以“_”或字母字符开头，其余字符必须是“_”或字母数字。
', N'System.Web.WebPages.Razor', N'   在 System.Web.WebPages.Razor.RazorBuildProvider.EnsureGeneratedCode()
   在 System.Web.WebPages.Razor.RazorBuildProvider.get_CodeCompilerType()
   在 System.Web.Compilation.BuildProvider.GetCompilerTypeFromBuildProvider(BuildProvider buildProvider)
   在 System.Web.Compilation.BuildProvidersCompiler.ProcessBuildProviders()
   在 System.Web.Compilation.BuildProvidersCompiler.PerformBuild()
   在 System.Web.Compilation.BuildManager.CompileWebFile(VirtualPath virtualPath)
   在 System.Web.Compilation.BuildManager.GetVPathBuildResultInternal(VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   在 System.Web.Compilation.BuildManager.GetVPathBuildResultWithNoAssert(HttpContext context, VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   在 System.Web.Compilation.BuildManager.GetVirtualPathObjectFactory(VirtualPath virtualPath, HttpContext context, Boolean allowCrossApp, Boolean throwIfNotFound)
   在 System.Web.Compilation.BuildManager.GetObjectFactory(String virtualPath, Boolean throwIfNotFound)
   在 System.Web.Mvc.BuildManagerWrapper.System.Web.Mvc.IBuildManager.FileExists(String virtualPath)
   在 System.Web.Mvc.BuildManagerViewEngine.FileExists(ControllerContext controllerContext, String virtualPath)
   在 Microsoft.Web.Mvc.FixedRazorViewEngine.Microsoft.Web.Mvc.IViewEngineProxy.FileExists(ControllerContext controllerContext, String virtualPath)
   在 Microsoft.Web.Mvc.ViewEngineFixWorker`1.FileExists(ControllerContext controllerContext, String virtualPath)
   在 Microsoft.Web.Mvc.ViewEngineFixWorker`1.<>c__DisplayClass4.<GetPathFromGeneralName>b__0(String path)
   在 System.Web.WebPages.DefaultDisplayMode.GetDisplayInfo(HttpContextBase httpContext, String virtualPath, Func`2 virtualPathExists)
   在 System.Web.WebPages.DisplayModeProvider.<>c__DisplayClassb.<GetDisplayInfoForVirtualPath>b__8(IDisplayMode mode)
   在 System.Linq.Enumerable.WhereSelectListIterator`2.MoveNext()
   在 System.Linq.Enumerable.FirstOrDefault[TSource](IEnumerable`1 source, Func`2 predicate)
   在 System.Web.WebPages.DisplayModeProvider.GetDisplayInfoForVirtualPath(String virtualPath, HttpContextBase httpContext, Func`2 virtualPathExists, IDisplayMode currentDisplayMode, Boolean requireConsistentDisplayMode)
   在 System.Web.WebPages.DisplayModeProvider.GetDisplayInfoForVirtualPath(String virtualPath, HttpContextBase httpContext, Func`2 virtualPathExists, IDisplayMode currentDisplayMode)
   在 Microsoft.Web.Mvc.ViewEngineFixWorker`1.GetPathFromGeneralName(ControllerContext controllerContext, List`1 locations, String name, String controllerName, String areaName, String cacheKey, String[]& searchedLocations)
   在 Microsoft.Web.Mvc.ViewEngineFixWorker`1.GetPath(ControllerContext controllerContext, String[] locations, String[] areaLocations, String locationsPropertyName, String name, String controllerName, String cacheKeyPrefix, Boolean useCache, String[]& searchedLocations)
   在 Microsoft.Web.Mvc.ViewEngineFixWorker`1.FindView(ControllerContext controllerContext, String viewName, String masterName, Boolean useCache)
   在 Microsoft.Web.Mvc.FixedRazorViewEngine.FindView(ControllerContext controllerContext, String viewName, String masterName, Boolean useCache)
   在 System.Web.Mvc.ViewEngineCollection.<>c__DisplayClassc.<FindView>b__b(IViewEngine e)
   在 System.Web.Mvc.ViewEngineCollection.Find(Func`2 lookup, Boolean trackSearchedPaths)
   在 System.Web.Mvc.ViewEngineCollection.FindView(ControllerContext controllerContext, String viewName, String masterName)
   在 System.Web.Mvc.ViewResult.FindView(ControllerContext context)
   在 System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   在 System.Web.Mvc.ControllerActionInvoker.<>c__DisplayClass1a.<InvokeActionResultWithFilters>b__17()
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilter(IResultFilter filter, ResultExecutingContext preContext, Func`1 continuation)
   在 System.Web.Mvc.ControllerActionInvoker.<>c__DisplayClass1a.<>c__DisplayClass1c.<InvokeActionResultWithFilters>b__19()
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<>c__DisplayClass2a.<BeginInvokeAction>b__20()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<BeginInvokeAction>b__22(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeAction(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.<>c__DisplayClass1d.<BeginExecuteCore>b__18(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecuteCore(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.<>c__DisplayClass8.<BeginProcessRequest>b__3(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'Void EnsureGeneratedCode()', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82C00A91D0B AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'20171115102400525991560b8ec3fde', NULL, N'节关键字后不应有 “{”字符。节名称必须以“_”或字母字符开头，其余字符必须是“_”或字母数字。
', N'System.Web.WebPages.Razor', N'   在 System.Web.WebPages.Razor.RazorBuildProvider.EnsureGeneratedCode()
   在 System.Web.WebPages.Razor.RazorBuildProvider.get_CodeCompilerType()
   在 System.Web.Compilation.BuildProvider.GetCompilerTypeFromBuildProvider(BuildProvider buildProvider)
   在 System.Web.Compilation.BuildProvidersCompiler.ProcessBuildProviders()
   在 System.Web.Compilation.BuildProvidersCompiler.PerformBuild()
   在 System.Web.Compilation.BuildManager.CompileWebFile(VirtualPath virtualPath)
   在 System.Web.Compilation.BuildManager.GetVPathBuildResultInternal(VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   在 System.Web.Compilation.BuildManager.GetVPathBuildResultWithNoAssert(HttpContext context, VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   在 System.Web.Compilation.BuildManager.GetVirtualPathObjectFactory(VirtualPath virtualPath, HttpContext context, Boolean allowCrossApp, Boolean throwIfNotFound)
   在 System.Web.Compilation.BuildManager.GetObjectFactory(String virtualPath, Boolean throwIfNotFound)
   在 System.Web.Mvc.BuildManagerWrapper.System.Web.Mvc.IBuildManager.FileExists(String virtualPath)
   在 System.Web.Mvc.BuildManagerViewEngine.FileExists(ControllerContext controllerContext, String virtualPath)
   在 Microsoft.Web.Mvc.FixedRazorViewEngine.Microsoft.Web.Mvc.IViewEngineProxy.FileExists(ControllerContext controllerContext, String virtualPath)
   在 Microsoft.Web.Mvc.ViewEngineFixWorker`1.FileExists(ControllerContext controllerContext, String virtualPath)
   在 Microsoft.Web.Mvc.ViewEngineFixWorker`1.<>c__DisplayClass4.<GetPathFromGeneralName>b__0(String path)
   在 System.Web.WebPages.DefaultDisplayMode.GetDisplayInfo(HttpContextBase httpContext, String virtualPath, Func`2 virtualPathExists)
   在 System.Web.WebPages.DisplayModeProvider.<>c__DisplayClassb.<GetDisplayInfoForVirtualPath>b__8(IDisplayMode mode)
   在 System.Linq.Enumerable.WhereSelectListIterator`2.MoveNext()
   在 System.Linq.Enumerable.FirstOrDefault[TSource](IEnumerable`1 source, Func`2 predicate)
   在 System.Web.WebPages.DisplayModeProvider.GetDisplayInfoForVirtualPath(String virtualPath, HttpContextBase httpContext, Func`2 virtualPathExists, IDisplayMode currentDisplayMode, Boolean requireConsistentDisplayMode)
   在 System.Web.WebPages.DisplayModeProvider.GetDisplayInfoForVirtualPath(String virtualPath, HttpContextBase httpContext, Func`2 virtualPathExists, IDisplayMode currentDisplayMode)
   在 Microsoft.Web.Mvc.ViewEngineFixWorker`1.GetPathFromGeneralName(ControllerContext controllerContext, List`1 locations, String name, String controllerName, String areaName, String cacheKey, String[]& searchedLocations)
   在 Microsoft.Web.Mvc.ViewEngineFixWorker`1.GetPath(ControllerContext controllerContext, String[] locations, String[] areaLocations, String locationsPropertyName, String name, String controllerName, String cacheKeyPrefix, Boolean useCache, String[]& searchedLocations)
   在 Microsoft.Web.Mvc.ViewEngineFixWorker`1.FindView(ControllerContext controllerContext, String viewName, String masterName, Boolean useCache)
   在 Microsoft.Web.Mvc.FixedRazorViewEngine.FindView(ControllerContext controllerContext, String viewName, String masterName, Boolean useCache)
   在 System.Web.Mvc.ViewEngineCollection.<>c__DisplayClassc.<FindView>b__b(IViewEngine e)
   在 System.Web.Mvc.ViewEngineCollection.Find(Func`2 lookup, Boolean trackSearchedPaths)
   在 System.Web.Mvc.ViewEngineCollection.FindView(ControllerContext controllerContext, String viewName, String masterName)
   在 System.Web.Mvc.ViewResult.FindView(ControllerContext context)
   在 System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   在 System.Web.Mvc.ControllerActionInvoker.<>c__DisplayClass1a.<InvokeActionResultWithFilters>b__17()
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilter(IResultFilter filter, ResultExecutingContext preContext, Func`1 continuation)
   在 System.Web.Mvc.ControllerActionInvoker.<>c__DisplayClass1a.<>c__DisplayClass1c.<InvokeActionResultWithFilters>b__19()
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<>c__DisplayClass2a.<BeginInvokeAction>b__20()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<BeginInvokeAction>b__22(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeAction(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.<>c__DisplayClass1d.<BeginExecuteCore>b__18(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecuteCore(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.<>c__DisplayClass8.<BeginProcessRequest>b__3(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'Void EnsureGeneratedCode()', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82C00AB639E AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'201711151024477346916278c4c93b7', NULL, N'节关键字后不应有 “{”字符。节名称必须以“_”或字母字符开头，其余字符必须是“_”或字母数字。
', N'System.Web.WebPages.Razor', N'   在 System.Web.WebPages.Razor.RazorBuildProvider.EnsureGeneratedCode()
   在 System.Web.WebPages.Razor.RazorBuildProvider.get_CodeCompilerType()
   在 System.Web.Compilation.BuildProvider.GetCompilerTypeFromBuildProvider(BuildProvider buildProvider)
   在 System.Web.Compilation.BuildProvidersCompiler.ProcessBuildProviders()
   在 System.Web.Compilation.BuildProvidersCompiler.PerformBuild()
   在 System.Web.Compilation.BuildManager.CompileWebFile(VirtualPath virtualPath)
   在 System.Web.Compilation.BuildManager.GetVPathBuildResultInternal(VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   在 System.Web.Compilation.BuildManager.GetVPathBuildResultWithNoAssert(HttpContext context, VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   在 System.Web.Compilation.BuildManager.GetVirtualPathObjectFactory(VirtualPath virtualPath, HttpContext context, Boolean allowCrossApp, Boolean throwIfNotFound)
   在 System.Web.Compilation.BuildManager.GetObjectFactory(String virtualPath, Boolean throwIfNotFound)
   在 System.Web.Mvc.BuildManagerWrapper.System.Web.Mvc.IBuildManager.FileExists(String virtualPath)
   在 System.Web.Mvc.BuildManagerViewEngine.FileExists(ControllerContext controllerContext, String virtualPath)
   在 Microsoft.Web.Mvc.FixedRazorViewEngine.Microsoft.Web.Mvc.IViewEngineProxy.FileExists(ControllerContext controllerContext, String virtualPath)
   在 Microsoft.Web.Mvc.ViewEngineFixWorker`1.FileExists(ControllerContext controllerContext, String virtualPath)
   在 Microsoft.Web.Mvc.ViewEngineFixWorker`1.<>c__DisplayClass4.<GetPathFromGeneralName>b__0(String path)
   在 System.Web.WebPages.DefaultDisplayMode.GetDisplayInfo(HttpContextBase httpContext, String virtualPath, Func`2 virtualPathExists)
   在 System.Web.WebPages.DisplayModeProvider.<>c__DisplayClassb.<GetDisplayInfoForVirtualPath>b__8(IDisplayMode mode)
   在 System.Linq.Enumerable.WhereSelectListIterator`2.MoveNext()
   在 System.Linq.Enumerable.FirstOrDefault[TSource](IEnumerable`1 source, Func`2 predicate)
   在 System.Web.WebPages.DisplayModeProvider.GetDisplayInfoForVirtualPath(String virtualPath, HttpContextBase httpContext, Func`2 virtualPathExists, IDisplayMode currentDisplayMode, Boolean requireConsistentDisplayMode)
   在 System.Web.WebPages.DisplayModeProvider.GetDisplayInfoForVirtualPath(String virtualPath, HttpContextBase httpContext, Func`2 virtualPathExists, IDisplayMode currentDisplayMode)
   在 Microsoft.Web.Mvc.ViewEngineFixWorker`1.GetPathFromGeneralName(ControllerContext controllerContext, List`1 locations, String name, String controllerName, String areaName, String cacheKey, String[]& searchedLocations)
   在 Microsoft.Web.Mvc.ViewEngineFixWorker`1.GetPath(ControllerContext controllerContext, String[] locations, String[] areaLocations, String locationsPropertyName, String name, String controllerName, String cacheKeyPrefix, Boolean useCache, String[]& searchedLocations)
   在 Microsoft.Web.Mvc.ViewEngineFixWorker`1.FindView(ControllerContext controllerContext, String viewName, String masterName, Boolean useCache)
   在 Microsoft.Web.Mvc.FixedRazorViewEngine.FindView(ControllerContext controllerContext, String viewName, String masterName, Boolean useCache)
   在 System.Web.Mvc.ViewEngineCollection.<>c__DisplayClassc.<FindView>b__b(IViewEngine e)
   在 System.Web.Mvc.ViewEngineCollection.Find(Func`2 lookup, Boolean trackSearchedPaths)
   在 System.Web.Mvc.ViewEngineCollection.FindView(ControllerContext controllerContext, String viewName, String masterName)
   在 System.Web.Mvc.ViewResult.FindView(ControllerContext context)
   在 System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   在 System.Web.Mvc.ControllerActionInvoker.<>c__DisplayClass1a.<InvokeActionResultWithFilters>b__17()
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilter(IResultFilter filter, ResultExecutingContext preContext, Func`1 continuation)
   在 System.Web.Mvc.ControllerActionInvoker.<>c__DisplayClass1a.<>c__DisplayClass1c.<InvokeActionResultWithFilters>b__19()
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<>c__DisplayClass2a.<BeginInvokeAction>b__20()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<BeginInvokeAction>b__22(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeAction(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.<>c__DisplayClass1d.<BeginExecuteCore>b__18(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecuteCore(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.<>c__DisplayClass8.<BeginProcessRequest>b__3(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'Void EnsureGeneratedCode()', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82C00AB9AF1 AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'201711151048268548607745e760104', NULL, N'未找到路径“/SysConfig”的控制器或该控制器未实现 IController。', N'System.Web.Mvc', N'   在 System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   在 System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   在 System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   在 System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   在 System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'System.Web.Mvc.IController GetControllerInstance(System.Web.Routing.RequestContext, System.Type)', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82C00B219F9 AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'2017111510595404116558446b99162', NULL, N'', N'System.Web', N'   在 System.Web.Util.FileUtil.CheckSuspiciousPhysicalPath(String physicalPath)
   在 System.Web.CachedPathData.ValidatePath(String physicalPath)
   在 System.Web.HttpContext.ValidatePath()
   在 System.Web.HttpApplication.PipelineStepManager.ValidateHelper(HttpContext context)', N'Void CheckSuspiciousPhysicalPath(System.String)', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82C00B53F46 AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'20171115110000496534794545900a4', NULL, N'未找到路径“/SysConfig”的控制器或该控制器未实现 IController。', N'System.Web.Mvc', N'   在 System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   在 System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   在 System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   在 System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   在 System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'System.Web.Mvc.IController GetControllerInstance(System.Web.Routing.RequestContext, System.Type)', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82C00B546D6 AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'201711151100182815519b01ceafca9', NULL, N'', N'System.Web', N'   在 System.Web.Util.FileUtil.CheckSuspiciousPhysicalPath(String physicalPath)
   在 System.Web.CachedPathData.ValidatePath(String physicalPath)
   在 System.Web.HttpContext.ValidatePath()
   在 System.Web.HttpApplication.PipelineStepManager.ValidateHelper(HttpContext context)', N'Void CheckSuspiciousPhysicalPath(System.String)', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82C00B55BAD AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'201711151101216021737e8f6634bf4', NULL, N'', N'System.Web', N'   在 System.Web.Util.FileUtil.CheckSuspiciousPhysicalPath(String physicalPath)
   在 System.Web.CachedPathData.ValidatePath(String physicalPath)
   在 System.Web.HttpContext.ValidatePath()
   在 System.Web.HttpApplication.PipelineStepManager.ValidateHelper(HttpContext context)', N'Void CheckSuspiciousPhysicalPath(System.String)', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82C00B5A5E5 AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'201711151532264534700365cab36f0', NULL, N'尝试创建“App.Admin.Controllers.SysUserController”类型的控制器时出错。请确保控制器具有无参数公共构造函数。', N'System.Web.Mvc', N'   在 System.Web.Mvc.DefaultControllerFactory.DefaultControllerActivator.Create(RequestContext requestContext, Type controllerType)
   在 System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   在 System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   在 System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   在 System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   在 System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'System.Web.Mvc.IController Create(System.Web.Routing.RequestContext, System.Type)', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82C01001A47 AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'201711151536247611004924c1a5862', NULL, N'f:\tools\project\unitySample-master\App.Admin\Views\SysUser\Index.cshtml(16): error CS0103: 当前上下文中不存在名称“perm”', N'System.Web', N'   在 System.Web.Compilation.AssemblyBuilder.Compile()
   在 System.Web.Compilation.BuildProvidersCompiler.PerformBuild()
   在 System.Web.Compilation.BuildManager.CompileWebFile(VirtualPath virtualPath)
   在 System.Web.Compilation.BuildManager.GetVPathBuildResultInternal(VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   在 System.Web.Compilation.BuildManager.GetVPathBuildResultWithNoAssert(HttpContext context, VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   在 System.Web.Compilation.BuildManager.GetVirtualPathObjectFactory(VirtualPath virtualPath, HttpContext context, Boolean allowCrossApp, Boolean throwIfNotFound)
   在 System.Web.Compilation.BuildManager.GetObjectFactory(String virtualPath, Boolean throwIfNotFound)
   在 System.Web.Mvc.BuildManagerWrapper.System.Web.Mvc.IBuildManager.FileExists(String virtualPath)
   在 System.Web.Mvc.BuildManagerViewEngine.FileExists(ControllerContext controllerContext, String virtualPath)
   在 Microsoft.Web.Mvc.FixedRazorViewEngine.Microsoft.Web.Mvc.IViewEngineProxy.FileExists(ControllerContext controllerContext, String virtualPath)
   在 Microsoft.Web.Mvc.ViewEngineFixWorker`1.FileExists(ControllerContext controllerContext, String virtualPath)
   在 Microsoft.Web.Mvc.ViewEngineFixWorker`1.<>c__DisplayClass4.<GetPathFromGeneralName>b__0(String path)
   在 System.Web.WebPages.DefaultDisplayMode.GetDisplayInfo(HttpContextBase httpContext, String virtualPath, Func`2 virtualPathExists)
   在 System.Web.WebPages.DisplayModeProvider.<>c__DisplayClassb.<GetDisplayInfoForVirtualPath>b__8(IDisplayMode mode)
   在 System.Linq.Enumerable.WhereSelectListIterator`2.MoveNext()
   在 System.Linq.Enumerable.FirstOrDefault[TSource](IEnumerable`1 source, Func`2 predicate)
   在 System.Web.WebPages.DisplayModeProvider.GetDisplayInfoForVirtualPath(String virtualPath, HttpContextBase httpContext, Func`2 virtualPathExists, IDisplayMode currentDisplayMode, Boolean requireConsistentDisplayMode)
   在 System.Web.WebPages.DisplayModeProvider.GetDisplayInfoForVirtualPath(String virtualPath, HttpContextBase httpContext, Func`2 virtualPathExists, IDisplayMode currentDisplayMode)
   在 Microsoft.Web.Mvc.ViewEngineFixWorker`1.GetPathFromGeneralName(ControllerContext controllerContext, List`1 locations, String name, String controllerName, String areaName, String cacheKey, String[]& searchedLocations)
   在 Microsoft.Web.Mvc.ViewEngineFixWorker`1.GetPath(ControllerContext controllerContext, String[] locations, String[] areaLocations, String locationsPropertyName, String name, String controllerName, String cacheKeyPrefix, Boolean useCache, String[]& searchedLocations)
   在 Microsoft.Web.Mvc.ViewEngineFixWorker`1.FindView(ControllerContext controllerContext, String viewName, String masterName, Boolean useCache)
   在 Microsoft.Web.Mvc.FixedRazorViewEngine.FindView(ControllerContext controllerContext, String viewName, String masterName, Boolean useCache)
   在 System.Web.Mvc.ViewEngineCollection.<>c__DisplayClassc.<FindView>b__b(IViewEngine e)
   在 System.Web.Mvc.ViewEngineCollection.Find(Func`2 lookup, Boolean trackSearchedPaths)
   在 System.Web.Mvc.ViewEngineCollection.FindView(ControllerContext controllerContext, String viewName, String masterName)
   在 System.Web.Mvc.ViewResult.FindView(ControllerContext context)
   在 System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   在 System.Web.Mvc.ControllerActionInvoker.<>c__DisplayClass1a.<InvokeActionResultWithFilters>b__17()
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilter(IResultFilter filter, ResultExecutingContext preContext, Func`1 continuation)
   在 System.Web.Mvc.ControllerActionInvoker.<>c__DisplayClass1a.<>c__DisplayClass1c.<InvokeActionResultWithFilters>b__19()
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<>c__DisplayClass2a.<BeginInvokeAction>b__20()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<BeginInvokeAction>b__22(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeAction(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.<>c__DisplayClass1d.<BeginExecuteCore>b__18(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecuteCore(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.<>c__DisplayClass8.<BeginProcessRequest>b__3(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'System.CodeDom.Compiler.CompilerResults Compile()', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82C01013185 AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'201711151538476652740177550465d', NULL, N'f:\tools\project\unitySample-master\App.Admin\Views\SysUser\Index.cshtml(16): error CS0103: 当前上下文中不存在名称“perm”', N'System.Web', N'   在 System.Web.Compilation.AssemblyBuilder.Compile()
   在 System.Web.Compilation.BuildProvidersCompiler.PerformBuild()
   在 System.Web.Compilation.BuildManager.CompileWebFile(VirtualPath virtualPath)
   在 System.Web.Compilation.BuildManager.GetVPathBuildResultInternal(VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   在 System.Web.Compilation.BuildManager.GetVPathBuildResultWithNoAssert(HttpContext context, VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   在 System.Web.Compilation.BuildManager.GetVirtualPathObjectFactory(VirtualPath virtualPath, HttpContext context, Boolean allowCrossApp, Boolean throwIfNotFound)
   在 System.Web.Compilation.BuildManager.GetObjectFactory(String virtualPath, Boolean throwIfNotFound)
   在 System.Web.Mvc.BuildManagerWrapper.System.Web.Mvc.IBuildManager.FileExists(String virtualPath)
   在 System.Web.Mvc.BuildManagerViewEngine.FileExists(ControllerContext controllerContext, String virtualPath)
   在 Microsoft.Web.Mvc.FixedRazorViewEngine.Microsoft.Web.Mvc.IViewEngineProxy.FileExists(ControllerContext controllerContext, String virtualPath)
   在 Microsoft.Web.Mvc.ViewEngineFixWorker`1.FileExists(ControllerContext controllerContext, String virtualPath)
   在 Microsoft.Web.Mvc.ViewEngineFixWorker`1.<>c__DisplayClass4.<GetPathFromGeneralName>b__0(String path)
   在 System.Web.WebPages.DefaultDisplayMode.GetDisplayInfo(HttpContextBase httpContext, String virtualPath, Func`2 virtualPathExists)
   在 System.Web.WebPages.DisplayModeProvider.<>c__DisplayClassb.<GetDisplayInfoForVirtualPath>b__8(IDisplayMode mode)
   在 System.Linq.Enumerable.WhereSelectListIterator`2.MoveNext()
   在 System.Linq.Enumerable.FirstOrDefault[TSource](IEnumerable`1 source, Func`2 predicate)
   在 System.Web.WebPages.DisplayModeProvider.GetDisplayInfoForVirtualPath(String virtualPath, HttpContextBase httpContext, Func`2 virtualPathExists, IDisplayMode currentDisplayMode, Boolean requireConsistentDisplayMode)
   在 System.Web.WebPages.DisplayModeProvider.GetDisplayInfoForVirtualPath(String virtualPath, HttpContextBase httpContext, Func`2 virtualPathExists, IDisplayMode currentDisplayMode)
   在 Microsoft.Web.Mvc.ViewEngineFixWorker`1.GetPathFromGeneralName(ControllerContext controllerContext, List`1 locations, String name, String controllerName, String areaName, String cacheKey, String[]& searchedLocations)
   在 Microsoft.Web.Mvc.ViewEngineFixWorker`1.GetPath(ControllerContext controllerContext, String[] locations, String[] areaLocations, String locationsPropertyName, String name, String controllerName, String cacheKeyPrefix, Boolean useCache, String[]& searchedLocations)
   在 Microsoft.Web.Mvc.ViewEngineFixWorker`1.FindView(ControllerContext controllerContext, String viewName, String masterName, Boolean useCache)
   在 Microsoft.Web.Mvc.FixedRazorViewEngine.FindView(ControllerContext controllerContext, String viewName, String masterName, Boolean useCache)
   在 System.Web.Mvc.ViewEngineCollection.<>c__DisplayClassc.<FindView>b__b(IViewEngine e)
   在 System.Web.Mvc.ViewEngineCollection.Find(Func`2 lookup, Boolean trackSearchedPaths)
   在 System.Web.Mvc.ViewEngineCollection.FindView(ControllerContext controllerContext, String viewName, String masterName)
   在 System.Web.Mvc.ViewResult.FindView(ControllerContext context)
   在 System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   在 System.Web.Mvc.ControllerActionInvoker.<>c__DisplayClass1a.<InvokeActionResultWithFilters>b__17()
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilter(IResultFilter filter, ResultExecutingContext preContext, Func`1 continuation)
   在 System.Web.Mvc.ControllerActionInvoker.<>c__DisplayClass1a.<>c__DisplayClass1c.<InvokeActionResultWithFilters>b__19()
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilter(IResultFilter filter, ResultExecutingContext preContext, Func`1 continuation)
   在 System.Web.Mvc.ControllerActionInvoker.<>c__DisplayClass1a.<>c__DisplayClass1c.<InvokeActionResultWithFilters>b__19()
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<>c__DisplayClass2a.<BeginInvokeAction>b__20()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<BeginInvokeAction>b__22(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeAction(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.<>c__DisplayClass1d.<BeginExecuteCore>b__18(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecuteCore(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.<>c__DisplayClass8.<BeginProcessRequest>b__3(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'System.CodeDom.Compiler.CompilerResults Compile()', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82C0101D8FC AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'2017111515483562490344cf43422a6', NULL, N'f:\tools\project\unitySample-master\App.Admin\Views\SysUser\Index.cshtml(16): error CS0103: 当前上下文中不存在名称“perm”', N'System.Web', N'   在 System.Web.Compilation.AssemblyBuilder.Compile()
   在 System.Web.Compilation.BuildProvidersCompiler.PerformBuild()
   在 System.Web.Compilation.BuildManager.CompileWebFile(VirtualPath virtualPath)
   在 System.Web.Compilation.BuildManager.GetVPathBuildResultInternal(VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   在 System.Web.Compilation.BuildManager.GetVPathBuildResultWithNoAssert(HttpContext context, VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   在 System.Web.Compilation.BuildManager.GetVirtualPathObjectFactory(VirtualPath virtualPath, HttpContext context, Boolean allowCrossApp, Boolean throwIfNotFound)
   在 System.Web.Compilation.BuildManager.GetObjectFactory(String virtualPath, Boolean throwIfNotFound)
   在 System.Web.Mvc.BuildManagerWrapper.System.Web.Mvc.IBuildManager.FileExists(String virtualPath)
   在 System.Web.Mvc.BuildManagerViewEngine.FileExists(ControllerContext controllerContext, String virtualPath)
   在 Microsoft.Web.Mvc.FixedRazorViewEngine.Microsoft.Web.Mvc.IViewEngineProxy.FileExists(ControllerContext controllerContext, String virtualPath)
   在 Microsoft.Web.Mvc.ViewEngineFixWorker`1.FileExists(ControllerContext controllerContext, String virtualPath)
   在 Microsoft.Web.Mvc.ViewEngineFixWorker`1.<>c__DisplayClass4.<GetPathFromGeneralName>b__0(String path)
   在 System.Web.WebPages.DefaultDisplayMode.GetDisplayInfo(HttpContextBase httpContext, String virtualPath, Func`2 virtualPathExists)
   在 System.Web.WebPages.DisplayModeProvider.<>c__DisplayClassb.<GetDisplayInfoForVirtualPath>b__8(IDisplayMode mode)
   在 System.Linq.Enumerable.WhereSelectListIterator`2.MoveNext()
   在 System.Linq.Enumerable.FirstOrDefault[TSource](IEnumerable`1 source, Func`2 predicate)
   在 System.Web.WebPages.DisplayModeProvider.GetDisplayInfoForVirtualPath(String virtualPath, HttpContextBase httpContext, Func`2 virtualPathExists, IDisplayMode currentDisplayMode, Boolean requireConsistentDisplayMode)
   在 System.Web.WebPages.DisplayModeProvider.GetDisplayInfoForVirtualPath(String virtualPath, HttpContextBase httpContext, Func`2 virtualPathExists, IDisplayMode currentDisplayMode)
   在 Microsoft.Web.Mvc.ViewEngineFixWorker`1.GetPathFromGeneralName(ControllerContext controllerContext, List`1 locations, String name, String controllerName, String areaName, String cacheKey, String[]& searchedLocations)
   在 Microsoft.Web.Mvc.ViewEngineFixWorker`1.GetPath(ControllerContext controllerContext, String[] locations, String[] areaLocations, String locationsPropertyName, String name, String controllerName, String cacheKeyPrefix, Boolean useCache, String[]& searchedLocations)
   在 Microsoft.Web.Mvc.ViewEngineFixWorker`1.FindView(ControllerContext controllerContext, String viewName, String masterName, Boolean useCache)
   在 Microsoft.Web.Mvc.FixedRazorViewEngine.FindView(ControllerContext controllerContext, String viewName, String masterName, Boolean useCache)
   在 System.Web.Mvc.ViewEngineCollection.<>c__DisplayClassc.<FindView>b__b(IViewEngine e)
   在 System.Web.Mvc.ViewEngineCollection.Find(Func`2 lookup, Boolean trackSearchedPaths)
   在 System.Web.Mvc.ViewEngineCollection.FindView(ControllerContext controllerContext, String viewName, String masterName)
   在 System.Web.Mvc.ViewResult.FindView(ControllerContext context)
   在 System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   在 System.Web.Mvc.ControllerActionInvoker.<>c__DisplayClass1a.<InvokeActionResultWithFilters>b__17()
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilter(IResultFilter filter, ResultExecutingContext preContext, Func`1 continuation)
   在 System.Web.Mvc.ControllerActionInvoker.<>c__DisplayClass1a.<>c__DisplayClass1c.<InvokeActionResultWithFilters>b__19()
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilter(IResultFilter filter, ResultExecutingContext preContext, Func`1 continuation)
   在 System.Web.Mvc.ControllerActionInvoker.<>c__DisplayClass1a.<>c__DisplayClass1c.<InvokeActionResultWithFilters>b__19()
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<>c__DisplayClass2a.<BeginInvokeAction>b__20()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<BeginInvokeAction>b__22(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeAction(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.<>c__DisplayClass1d.<BeginExecuteCore>b__18(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecuteCore(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.<>c__DisplayClass8.<BeginProcessRequest>b__3(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'System.CodeDom.Compiler.CompilerResults Compile()', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82C01048A00 AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'201711151650160065531966a541836', NULL, N'未找到视图“Create”或其母版视图，或没有视图引擎支持搜索的位置。搜索了以下位置: 
~/Views/SysRole/Create.cshtml
~/Views/SysRole/Create.vbhtml
~/Views/Shared/Create.cshtml
~/Views/Shared/Create.vbhtml', N'System.Web.Mvc', N'   在 System.Web.Mvc.ViewResult.FindView(ControllerContext context)
   在 System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   在 System.Web.Mvc.ControllerActionInvoker.<>c__DisplayClass1a.<InvokeActionResultWithFilters>b__17()
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilter(IResultFilter filter, ResultExecutingContext preContext, Func`1 continuation)
   在 System.Web.Mvc.ControllerActionInvoker.<>c__DisplayClass1a.<>c__DisplayClass1c.<InvokeActionResultWithFilters>b__19()
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilter(IResultFilter filter, ResultExecutingContext preContext, Func`1 continuation)
   在 System.Web.Mvc.ControllerActionInvoker.<>c__DisplayClass1a.<>c__DisplayClass1c.<InvokeActionResultWithFilters>b__19()
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<>c__DisplayClass2a.<BeginInvokeAction>b__20()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<BeginInvokeAction>b__22(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeAction(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.<>c__DisplayClass1d.<BeginExecuteCore>b__18(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecuteCore(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.<>c__DisplayClass8.<BeginProcessRequest>b__3(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'System.Web.Mvc.ViewEngineResult FindView(System.Web.Mvc.ControllerContext)', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82C01157A67 AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'20171115171131343498216b73c0070', NULL, N'未找到路径“/SysConfig”的控制器或该控制器未实现 IController。', N'System.Web.Mvc', N'   在 System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   在 System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   在 System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   在 System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   在 System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'System.Web.Mvc.IController GetControllerInstance(System.Web.Routing.RequestContext, System.Type)', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82C011B50EC AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'201711151711450362814d78b110ed2', NULL, N'未找到视图“Create”或其母版视图，或没有视图引擎支持搜索的位置。搜索了以下位置: 
~/Views/SysRole/Create.cshtml
~/Views/SysRole/Create.vbhtml
~/Views/Shared/Create.cshtml
~/Views/Shared/Create.vbhtml', N'System.Web.Mvc', N'   在 System.Web.Mvc.ViewResult.FindView(ControllerContext context)
   在 System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   在 System.Web.Mvc.ControllerActionInvoker.<>c__DisplayClass1a.<InvokeActionResultWithFilters>b__17()
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilter(IResultFilter filter, ResultExecutingContext preContext, Func`1 continuation)
   在 System.Web.Mvc.ControllerActionInvoker.<>c__DisplayClass1a.<>c__DisplayClass1c.<InvokeActionResultWithFilters>b__19()
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilter(IResultFilter filter, ResultExecutingContext preContext, Func`1 continuation)
   在 System.Web.Mvc.ControllerActionInvoker.<>c__DisplayClass1a.<>c__DisplayClass1c.<InvokeActionResultWithFilters>b__19()
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<>c__DisplayClass2a.<BeginInvokeAction>b__20()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<BeginInvokeAction>b__22(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeAction(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.<>c__DisplayClass1d.<BeginExecuteCore>b__18(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecuteCore(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.<>c__DisplayClass8.<BeginProcessRequest>b__3(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'System.Web.Mvc.ViewEngineResult FindView(System.Web.Mvc.ControllerContext)', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82C011B60F7 AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'201711161010023169372a21b963ff2', NULL, N'不存在具有键“ModuleId”的“IEnumerable<SelectListItem>”类型的 ViewData 项。', N'System.Web.Mvc', N'   在 System.Web.Mvc.Html.SelectExtensions.GetSelectData(HtmlHelper htmlHelper, String name)
   在 System.Web.Mvc.Html.SelectExtensions.SelectInternal(HtmlHelper htmlHelper, ModelMetadata metadata, String optionLabel, String name, IEnumerable`1 selectList, Boolean allowMultiple, IDictionary`2 htmlAttributes)
   在 System.Web.Mvc.Html.SelectExtensions.DropDownListFor[TModel,TProperty](HtmlHelper`1 htmlHelper, Expression`1 expression, IEnumerable`1 selectList, String optionLabel, IDictionary`2 htmlAttributes)
   在 System.Web.Mvc.Html.SelectExtensions.DropDownListFor[TModel,TProperty](HtmlHelper`1 htmlHelper, Expression`1 expression, IEnumerable`1 selectList)
   在 ASP._Page_Views_SysModule_CreateOpt_cshtml.Execute() 位置 f:\tools\project\unitySample-master\App.Admin\Views\SysModule\CreateOpt.cshtml:行号 76
   在 System.Web.WebPages.WebPageBase.ExecutePageHierarchy()
   在 System.Web.Mvc.WebViewPage.ExecutePageHierarchy()
   在 System.Web.WebPages.StartPage.RunPage()
   在 System.Web.WebPages.StartPage.ExecutePageHierarchy()
   在 System.Web.WebPages.WebPageBase.ExecutePageHierarchy(WebPageContext pageContext, TextWriter writer, WebPageRenderingBase startPage)
   在 System.Web.Mvc.RazorView.RenderView(ViewContext viewContext, TextWriter writer, Object instance)
   在 System.Web.Mvc.BuildManagerCompiledView.Render(ViewContext viewContext, TextWriter writer)
   在 System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   在 System.Web.Mvc.ControllerActionInvoker.<>c__DisplayClass1a.<InvokeActionResultWithFilters>b__17()
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilter(IResultFilter filter, ResultExecutingContext preContext, Func`1 continuation)
   在 System.Web.Mvc.ControllerActionInvoker.<>c__DisplayClass1a.<>c__DisplayClass1c.<InvokeActionResultWithFilters>b__19()
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilter(IResultFilter filter, ResultExecutingContext preContext, Func`1 continuation)
   在 System.Web.Mvc.ControllerActionInvoker.<>c__DisplayClass1a.<>c__DisplayClass1c.<InvokeActionResultWithFilters>b__19()
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<>c__DisplayClass2a.<BeginInvokeAction>b__20()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<BeginInvokeAction>b__22(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeAction(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.<>c__DisplayClass1d.<BeginExecuteCore>b__18(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecuteCore(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.<>c__DisplayClass8.<BeginProcessRequest>b__3(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'System.Collections.Generic.IEnumerable`1[System.Web.Mvc.SelectListItem] GetSelectData(System.Web.Mvc.HtmlHelper, System.String)', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82D00A78D58 AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'20171116110927171835236918a9d6e', NULL, N'未找到路径“/__browserLink/requestData/dafeb06310b04c8baea1135cb6b4ea09”的控制器或该控制器未实现 IController。', N'System.Web.Mvc', N'   在 System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   在 System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   在 System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   在 System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   在 System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'System.Web.Mvc.IController GetControllerInstance(System.Web.Routing.RequestContext, System.Type)', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82D00B7DEE8 AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'2017111611340339427032ba6e052ae', NULL, N'未找到视图“GetRoleByUser”或其母版视图，或没有视图引擎支持搜索的位置。搜索了以下位置: 
~/Views/SysUser/GetRoleByUser.cshtml
~/Views/SysUser/GetRoleByUser.vbhtml
~/Views/Shared/GetRoleByUser.cshtml
~/Views/Shared/GetRoleByUser.vbhtml', N'System.Web.Mvc', N'   在 System.Web.Mvc.ViewResult.FindView(ControllerContext context)
   在 System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   在 System.Web.Mvc.ControllerActionInvoker.<>c__DisplayClass1a.<InvokeActionResultWithFilters>b__17()
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilter(IResultFilter filter, ResultExecutingContext preContext, Func`1 continuation)
   在 System.Web.Mvc.ControllerActionInvoker.<>c__DisplayClass1a.<>c__DisplayClass1c.<InvokeActionResultWithFilters>b__19()
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilter(IResultFilter filter, ResultExecutingContext preContext, Func`1 continuation)
   在 System.Web.Mvc.ControllerActionInvoker.<>c__DisplayClass1a.<>c__DisplayClass1c.<InvokeActionResultWithFilters>b__19()
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<>c__DisplayClass2a.<BeginInvokeAction>b__20()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<BeginInvokeAction>b__22(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeAction(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.<>c__DisplayClass1d.<BeginExecuteCore>b__18(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecuteCore(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.<>c__DisplayClass8.<BeginProcessRequest>b__3(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'System.Web.Mvc.ViewEngineResult FindView(System.Web.Mvc.ControllerContext)', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82D00BEA0DB AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'201711161520253251123ff506c9b77', NULL, N'查询的结果不能枚举多次。', N'EntityFramework', N'   在 System.Data.Entity.Core.Objects.ObjectResult`1.EnsureCanEnumerateResults()
   在 System.Data.Entity.Core.Objects.ObjectResult`1.GetDbEnumerator()
   在 System.Data.Entity.Core.Objects.ObjectResult`1.GetEnumerator()
   在 System.Linq.Enumerable.<SkipIterator>d__4d`1.MoveNext()
   在 System.Linq.Enumerable.<TakeIterator>d__3a`1.MoveNext()
   在 System.Linq.Enumerable.WhereSelectEnumerableIterator`2.MoveNext()
   在 System.Linq.Buffer`1..ctor(IEnumerable`1 source)
   在 System.Linq.Enumerable.ToArray[TSource](IEnumerable`1 source)
   在 App.Admin.Controllers.SysUserController.GetRoleListByUser(GridPager pager, String id) 位置 f:\tools\project\unitySample-master\App.Admin\Controllers\SysUserController.cs:行号 195
   在 lambda_method(Closure , ControllerBase , Object[] )
   在 System.Web.Mvc.ActionMethodDispatcher.Execute(ControllerBase controller, Object[] parameters)
   在 System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass42.<BeginInvokeSynchronousActionMethod>b__41()
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass8`1.<BeginSynchronous>b__7(IAsyncResult _)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<>c__DisplayClass39.<BeginInvokeActionMethodWithFilters>b__33()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass4f.<InvokeActionMethodFilterAsynchronously>b__49()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass4f.<InvokeActionMethodFilterAsynchronously>b__49()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeActionMethodWithFilters>b__36(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<>c__DisplayClass2a.<BeginInvokeAction>b__20()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<BeginInvokeAction>b__22(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeAction(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.<>c__DisplayClass1d.<BeginExecuteCore>b__18(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecuteCore(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.<>c__DisplayClass8.<BeginProcessRequest>b__3(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'Void EnsureCanEnumerateResults()', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82D00FCCD2E AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'201711161535224664259f93b722475', NULL, N'查询的结果不能枚举多次。', N'EntityFramework', N'   在 System.Data.Entity.Core.Objects.ObjectResult`1.EnsureCanEnumerateResults()
   在 System.Data.Entity.Core.Objects.ObjectResult`1.GetDbEnumerator()
   在 System.Data.Entity.Core.Objects.ObjectResult`1.GetEnumerator()
   在 System.Linq.Enumerable.<SkipIterator>d__4d`1.MoveNext()
   在 System.Linq.Enumerable.<TakeIterator>d__3a`1.MoveNext()
   在 System.Linq.Enumerable.WhereSelectEnumerableIterator`2.MoveNext()
   在 System.Linq.Buffer`1..ctor(IEnumerable`1 source)
   在 System.Linq.Enumerable.ToArray[TSource](IEnumerable`1 source)
   在 App.Admin.Controllers.SysUserController.GetRoleListByUser(GridPager pager, String id) 位置 f:\tools\project\unitySample-master\App.Admin\Controllers\SysUserController.cs:行号 195
   在 lambda_method(Closure , ControllerBase , Object[] )
   在 System.Web.Mvc.ActionMethodDispatcher.Execute(ControllerBase controller, Object[] parameters)
   在 System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass42.<BeginInvokeSynchronousActionMethod>b__41()
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass8`1.<BeginSynchronous>b__7(IAsyncResult _)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<>c__DisplayClass39.<BeginInvokeActionMethodWithFilters>b__33()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass4f.<InvokeActionMethodFilterAsynchronously>b__49()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass4f.<InvokeActionMethodFilterAsynchronously>b__49()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeActionMethodWithFilters>b__36(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<>c__DisplayClass2a.<BeginInvokeAction>b__20()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<BeginInvokeAction>b__22(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeAction(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.<>c__DisplayClass1d.<BeginExecuteCore>b__18(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecuteCore(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.<>c__DisplayClass8.<BeginProcessRequest>b__3(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'Void EnsureCanEnumerateResults()', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82D0100E884 AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'201711161535332040400e416c888b9', NULL, N'查询的结果不能枚举多次。', N'EntityFramework', N'   在 System.Data.Entity.Core.Objects.ObjectResult`1.EnsureCanEnumerateResults()
   在 System.Data.Entity.Core.Objects.ObjectResult`1.GetDbEnumerator()
   在 System.Data.Entity.Core.Objects.ObjectResult`1.GetEnumerator()
   在 System.Linq.Enumerable.<SkipIterator>d__4d`1.MoveNext()
   在 System.Linq.Enumerable.<TakeIterator>d__3a`1.MoveNext()
   在 System.Linq.Enumerable.WhereSelectEnumerableIterator`2.MoveNext()
   在 System.Linq.Buffer`1..ctor(IEnumerable`1 source)
   在 System.Linq.Enumerable.ToArray[TSource](IEnumerable`1 source)
   在 App.Admin.Controllers.SysUserController.GetRoleListByUser(GridPager pager, String id) 位置 f:\tools\project\unitySample-master\App.Admin\Controllers\SysUserController.cs:行号 195
   在 lambda_method(Closure , ControllerBase , Object[] )
   在 System.Web.Mvc.ActionMethodDispatcher.Execute(ControllerBase controller, Object[] parameters)
   在 System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass42.<BeginInvokeSynchronousActionMethod>b__41()
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass8`1.<BeginSynchronous>b__7(IAsyncResult _)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<>c__DisplayClass39.<BeginInvokeActionMethodWithFilters>b__33()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass4f.<InvokeActionMethodFilterAsynchronously>b__49()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass4f.<InvokeActionMethodFilterAsynchronously>b__49()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeActionMethodWithFilters>b__36(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<>c__DisplayClass2a.<BeginInvokeAction>b__20()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<BeginInvokeAction>b__22(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeAction(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.<>c__DisplayClass1d.<BeginExecuteCore>b__18(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecuteCore(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.<>c__DisplayClass8.<BeginProcessRequest>b__3(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'Void EnsureCanEnumerateResults()', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82D0100F519 AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'2017111709250924751730ba70a7318', NULL, N'一个实体对象不能由多个 IEntityChangeTracker 实例引用。', N'EntityFramework', N'   在 System.Data.Entity.Core.Objects.ObjectContext.VerifyContextForAddOrAttach(IEntityWrapper wrappedEntity)
   在 System.Data.Entity.Core.Objects.ObjectContext.AttachSingleObject(IEntityWrapper wrappedEntity, EntitySet entitySet)
   在 System.Data.Entity.Core.Objects.ObjectContext.AttachTo(String entitySetName, Object entity)
   在 System.Data.Entity.Internal.Linq.InternalSet`1.<>c__DisplayClassa.<Attach>b__9()
   在 System.Data.Entity.Internal.Linq.InternalSet`1.ActOnSet(Action action, EntityState newState, Object entity, String methodName)
   在 System.Data.Entity.Internal.Linq.InternalSet`1.Attach(Object entity)
   在 System.Data.Entity.DbSet`1.Attach(TEntity entity)
   在 App.DAL.SysUserRepository.Edit(SysUser entity) 位置 f:\tools\project\unitySample-master\App.DAL\SysUserRepository.cs:行号 57
   在 App.BLL.SysUserBLL.Edit(ValidationErrors& errors, SysUserModel model) 位置 f:\tools\project\unitySample-master\App.BLL\SysUserBLL.cs:行号 250', N'Void VerifyContextForAddOrAttach(System.Data.Entity.Core.Objects.Internal.IEntityWrapper)', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82E009B396F AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'201711170939108156523f4e9952af5', NULL, N'一个实体对象不能由多个 IEntityChangeTracker 实例引用。', N'EntityFramework', N'   在 System.Data.Entity.Core.Objects.ObjectContext.VerifyContextForAddOrAttach(IEntityWrapper wrappedEntity)
   在 System.Data.Entity.Core.Objects.ObjectContext.AttachSingleObject(IEntityWrapper wrappedEntity, EntitySet entitySet)
   在 System.Data.Entity.Core.Objects.ObjectContext.AttachTo(String entitySetName, Object entity)
   在 System.Data.Entity.Internal.Linq.InternalSet`1.<>c__DisplayClassa.<Attach>b__9()
   在 System.Data.Entity.Internal.Linq.InternalSet`1.ActOnSet(Action action, EntityState newState, Object entity, String methodName)
   在 System.Data.Entity.Internal.Linq.InternalSet`1.Attach(Object entity)
   在 System.Data.Entity.DbSet`1.Attach(TEntity entity)
   在 App.DAL.SysUserRepository.Edit(SysUser entity) 位置 f:\tools\project\unitySample-master\App.DAL\SysUserRepository.cs:行号 57
   在 App.BLL.SysUserBLL.Edit(ValidationErrors& errors, SysUserModel model) 位置 f:\tools\project\unitySample-master\App.BLL\SysUserBLL.cs:行号 250', N'Void VerifyContextForAddOrAttach(System.Data.Entity.Core.Objects.Internal.IEntityWrapper)', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82E009F139D AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'20171117094105966238532ed1964f6', NULL, N'一个实体对象不能由多个 IEntityChangeTracker 实例引用。', N'EntityFramework', N'   在 System.Data.Entity.Core.Objects.ObjectContext.VerifyContextForAddOrAttach(IEntityWrapper wrappedEntity)
   在 System.Data.Entity.Core.Objects.ObjectContext.AttachSingleObject(IEntityWrapper wrappedEntity, EntitySet entitySet)
   在 System.Data.Entity.Core.Objects.ObjectContext.AttachTo(String entitySetName, Object entity)
   在 System.Data.Entity.Internal.Linq.InternalSet`1.<>c__DisplayClassa.<Attach>b__9()
   在 System.Data.Entity.Internal.Linq.InternalSet`1.ActOnSet(Action action, EntityState newState, Object entity, String methodName)
   在 System.Data.Entity.Internal.Linq.InternalSet`1.Attach(Object entity)
   在 System.Data.Entity.DbSet`1.Attach(TEntity entity)
   在 App.DAL.SysUserRepository.Edit(SysUser entity) 位置 f:\tools\project\unitySample-master\App.DAL\SysUserRepository.cs:行号 57
   在 App.BLL.SysUserBLL.Edit(ValidationErrors& errors, SysUserModel model) 位置 f:\tools\project\unitySample-master\App.BLL\SysUserBLL.cs:行号 250', N'Void VerifyContextForAddOrAttach(System.Data.Entity.Core.Objects.Internal.IEntityWrapper)', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82E009F9A8E AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'201711170942206595107d8137d0804', NULL, N'一个实体对象不能由多个 IEntityChangeTracker 实例引用。', N'EntityFramework', N'   在 System.Data.Entity.Core.Objects.ObjectContext.VerifyContextForAddOrAttach(IEntityWrapper wrappedEntity)
   在 System.Data.Entity.Core.Objects.ObjectContext.AttachSingleObject(IEntityWrapper wrappedEntity, EntitySet entitySet)
   在 System.Data.Entity.Core.Objects.ObjectContext.AttachTo(String entitySetName, Object entity)
   在 System.Data.Entity.Internal.Linq.InternalSet`1.<>c__DisplayClassa.<Attach>b__9()
   在 System.Data.Entity.Internal.Linq.InternalSet`1.ActOnSet(Action action, EntityState newState, Object entity, String methodName)
   在 System.Data.Entity.Internal.Linq.InternalSet`1.Attach(Object entity)
   在 System.Data.Entity.DbSet`1.Attach(TEntity entity)
   在 App.DAL.SysUserRepository.Edit(SysUser entity) 位置 f:\tools\project\unitySample-master\App.DAL\SysUserRepository.cs:行号 57
   在 App.BLL.SysUserBLL.Edit(ValidationErrors& errors, SysUserModel model) 位置 f:\tools\project\unitySample-master\App.BLL\SysUserBLL.cs:行号 250', N'Void VerifyContextForAddOrAttach(System.Data.Entity.Core.Objects.Internal.IEntityWrapper)', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82E009FF216 AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'2017111709442258248435c4c14740d', NULL, N'一个实体对象不能由多个 IEntityChangeTracker 实例引用。', N'EntityFramework', N'   在 System.Data.Entity.Core.Objects.ObjectContext.VerifyContextForAddOrAttach(IEntityWrapper wrappedEntity)
   在 System.Data.Entity.Core.Objects.ObjectContext.AttachSingleObject(IEntityWrapper wrappedEntity, EntitySet entitySet)
   在 System.Data.Entity.Core.Objects.ObjectContext.AttachTo(String entitySetName, Object entity)
   在 System.Data.Entity.Internal.Linq.InternalSet`1.<>c__DisplayClassa.<Attach>b__9()
   在 System.Data.Entity.Internal.Linq.InternalSet`1.ActOnSet(Action action, EntityState newState, Object entity, String methodName)
   在 System.Data.Entity.Internal.Linq.InternalSet`1.Attach(Object entity)
   在 System.Data.Entity.DbSet`1.Attach(TEntity entity)
   在 App.DAL.SysUserRepository.Edit(SysUser entity) 位置 f:\tools\project\unitySample-master\App.DAL\SysUserRepository.cs:行号 57
   在 App.BLL.SysUserBLL.Edit(ValidationErrors& errors, SysUserModel model) 位置 f:\tools\project\unitySample-master\App.BLL\SysUserBLL.cs:行号 250', N'Void VerifyContextForAddOrAttach(System.Data.Entity.Core.Objects.Internal.IEntityWrapper)', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82E00A080F7 AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'201711171001259440173972fdc184d', NULL, N'未找到视图“Edit”或其母版视图，或没有视图引擎支持搜索的位置。搜索了以下位置: 
~/Views/SysRole/Edit.cshtml
~/Views/SysRole/Edit.vbhtml
~/Views/Shared/Edit.cshtml
~/Views/Shared/Edit.vbhtml', N'System.Web.Mvc', N'   在 System.Web.Mvc.ViewResult.FindView(ControllerContext context)
   在 System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   在 System.Web.Mvc.ControllerActionInvoker.<>c__DisplayClass1a.<InvokeActionResultWithFilters>b__17()
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilter(IResultFilter filter, ResultExecutingContext preContext, Func`1 continuation)
   在 System.Web.Mvc.ControllerActionInvoker.<>c__DisplayClass1a.<>c__DisplayClass1c.<InvokeActionResultWithFilters>b__19()
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilter(IResultFilter filter, ResultExecutingContext preContext, Func`1 continuation)
   在 System.Web.Mvc.ControllerActionInvoker.<>c__DisplayClass1a.<>c__DisplayClass1c.<InvokeActionResultWithFilters>b__19()
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<>c__DisplayClass2a.<BeginInvokeAction>b__20()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<BeginInvokeAction>b__22(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeAction(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.<>c__DisplayClass1d.<BeginExecuteCore>b__18(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecuteCore(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.<>c__DisplayClass8.<BeginProcessRequest>b__3(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'System.Web.Mvc.ViewEngineResult FindView(System.Web.Mvc.ControllerContext)', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82E00A53038 AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'201711171041330166939e4612ca5e0', NULL, N'一个实体对象不能由多个 IEntityChangeTracker 实例引用。', N'EntityFramework', N'   在 System.Data.Entity.Core.Objects.ObjectContext.VerifyContextForAddOrAttach(IEntityWrapper wrappedEntity)
   在 System.Data.Entity.Core.Objects.ObjectContext.AttachSingleObject(IEntityWrapper wrappedEntity, EntitySet entitySet)
   在 System.Data.Entity.Core.Objects.ObjectContext.AttachTo(String entitySetName, Object entity)
   在 System.Data.Entity.Internal.Linq.InternalSet`1.<>c__DisplayClassa.<Attach>b__9()
   在 System.Data.Entity.Internal.Linq.InternalSet`1.ActOnSet(Action action, EntityState newState, Object entity, String methodName)
   在 System.Data.Entity.Internal.Linq.InternalSet`1.Attach(Object entity)
   在 System.Data.Entity.DbSet`1.Attach(TEntity entity)
   在 App.DAL.SysRoleRepository.Edit(SysRole entity) 位置 f:\tools\project\unitySample-master\App.DAL\SysRoleRepository.cs:行号 44
   在 App.BLL.SysRoleBLL.Edit(ValidationErrors& errors, SysRoleModel model) 位置 f:\tools\project\unitySample-master\App.BLL\SysRoleBLL.cs:行号 136', N'Void VerifyContextForAddOrAttach(System.Data.Entity.Core.Objects.Internal.IEntityWrapper)', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82E00B03502 AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'201711171052057788859fbc423759b', NULL, N'一个实体对象不能由多个 IEntityChangeTracker 实例引用。', N'EntityFramework', N'   在 System.Data.Entity.Core.Objects.ObjectContext.VerifyContextForAddOrAttach(IEntityWrapper wrappedEntity)
   在 System.Data.Entity.Core.Objects.ObjectContext.AttachSingleObject(IEntityWrapper wrappedEntity, EntitySet entitySet)
   在 System.Data.Entity.Core.Objects.ObjectContext.AttachTo(String entitySetName, Object entity)
   在 System.Data.Entity.Internal.Linq.InternalSet`1.<>c__DisplayClassa.<Attach>b__9()
   在 System.Data.Entity.Internal.Linq.InternalSet`1.ActOnSet(Action action, EntityState newState, Object entity, String methodName)
   在 System.Data.Entity.Internal.Linq.InternalSet`1.Attach(Object entity)
   在 System.Data.Entity.Internal.InternalEntityEntry.set_State(EntityState value)
   在 System.Data.Entity.Infrastructure.DbEntityEntry`1.set_State(EntityState value)
   在 App.DAL.SysRoleRepository.Edit(SysRole entity) 位置 f:\tools\project\unitySample-master\App.DAL\SysRoleRepository.cs:行号 45
   在 App.BLL.SysRoleBLL.Edit(ValidationErrors& errors, SysRoleModel model) 位置 f:\tools\project\unitySample-master\App.BLL\SysRoleBLL.cs:行号 136', N'Void VerifyContextForAddOrAttach(System.Data.Entity.Core.Objects.Internal.IEntityWrapper)', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82E00B31A86 AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'201711171107157609339bd6d02eaa7', NULL, N'一个实体对象不能由多个 IEntityChangeTracker 实例引用。', N'EntityFramework', N'   在 System.Data.Entity.Core.Objects.ObjectContext.VerifyContextForAddOrAttach(IEntityWrapper wrappedEntity)
   在 System.Data.Entity.Core.Objects.ObjectContext.AttachSingleObject(IEntityWrapper wrappedEntity, EntitySet entitySet)
   在 System.Data.Entity.Core.Objects.ObjectContext.AttachTo(String entitySetName, Object entity)
   在 System.Data.Entity.Internal.Linq.InternalSet`1.<>c__DisplayClassa.<Attach>b__9()
   在 System.Data.Entity.Internal.Linq.InternalSet`1.ActOnSet(Action action, EntityState newState, Object entity, String methodName)
   在 System.Data.Entity.Internal.Linq.InternalSet`1.Attach(Object entity)
   在 System.Data.Entity.Internal.InternalEntityEntry.set_State(EntityState value)
   在 System.Data.Entity.Infrastructure.DbEntityEntry`1.set_State(EntityState value)
   在 App.DAL.SysRoleRepository.Edit(SysRole entity) 位置 f:\tools\project\unitySample-master\App.DAL\SysRoleRepository.cs:行号 45
   在 App.BLL.SysRoleBLL.Edit(ValidationErrors& errors, SysRoleModel model) 位置 f:\tools\project\unitySample-master\App.BLL\SysRoleBLL.cs:行号 136', N'Void VerifyContextForAddOrAttach(System.Data.Entity.Core.Objects.Internal.IEntityWrapper)', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82E00B744E9 AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'20171117112631702049924a104af39', NULL, N'无法删除此对象，因为未在 ObjectStateManager 中找到它。', N'EntityFramework', N'   在 System.Data.Entity.Core.Objects.ObjectContext.DeleteObject(Object entity, EntitySet expectedEntitySet)
   在 System.Data.Entity.Core.Objects.ObjectContext.DeleteObject(Object entity)
   在 System.Data.Entity.Internal.Linq.InternalSet`1.Remove(Object entity)
   在 System.Data.Entity.DbSet`1.Remove(TEntity entity)
   在 App.DAL.SysRoleRepository.Delete(String id) 位置 f:\tools\project\unitySample-master\App.DAL\SysRoleRepository.cs:行号 37
   在 App.BLL.SysRoleBLL.Delete(ValidationErrors& errors, String id) 位置 f:\tools\project\unitySample-master\App.BLL\SysRoleBLL.cs:行号 102', N'Void DeleteObject(System.Object, System.Data.Entity.Core.Metadata.Edm.EntitySet)', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82E00BC8F87 AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'2017111711291859459565366fdcb57', NULL, N'一个实体对象不能由多个 IEntityChangeTracker 实例引用。', N'EntityFramework', N'   在 System.Data.Entity.Core.Objects.ObjectContext.VerifyContextForAddOrAttach(IEntityWrapper wrappedEntity)
   在 System.Data.Entity.Core.Objects.ObjectContext.AttachSingleObject(IEntityWrapper wrappedEntity, EntitySet entitySet)
   在 System.Data.Entity.Core.Objects.ObjectContext.AttachTo(String entitySetName, Object entity)
   在 System.Data.Entity.Internal.Linq.InternalSet`1.<>c__DisplayClassa.<Attach>b__9()
   在 System.Data.Entity.Internal.Linq.InternalSet`1.ActOnSet(Action action, EntityState newState, Object entity, String methodName)
   在 System.Data.Entity.Internal.Linq.InternalSet`1.Attach(Object entity)
   在 System.Data.Entity.DbSet`1.Attach(TEntity entity)
   在 App.DAL.SysRoleRepository.Delete(String id) 位置 f:\tools\project\unitySample-master\App.DAL\SysRoleRepository.cs:行号 38
   在 App.BLL.SysRoleBLL.Delete(ValidationErrors& errors, String id) 位置 f:\tools\project\unitySample-master\App.BLL\SysRoleBLL.cs:行号 102', N'Void VerifyContextForAddOrAttach(System.Data.Entity.Core.Objects.Internal.IEntityWrapper)', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82E00BD531B AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'20171117113117017369069725c3af1', NULL, N'无法删除此对象，因为未在 ObjectStateManager 中找到它。', N'EntityFramework', N'   在 System.Data.Entity.Core.Objects.ObjectContext.DeleteObject(Object entity, EntitySet expectedEntitySet)
   在 System.Data.Entity.Core.Objects.ObjectContext.DeleteObject(Object entity)
   在 System.Data.Entity.Internal.Linq.InternalSet`1.Remove(Object entity)
   在 System.Data.Entity.DbSet`1.Remove(TEntity entity)
   在 App.DAL.SysRoleRepository.Delete(String id) 位置 f:\tools\project\unitySample-master\App.DAL\SysRoleRepository.cs:行号 37
   在 App.BLL.SysRoleBLL.Delete(ValidationErrors& errors, String id) 位置 f:\tools\project\unitySample-master\App.BLL\SysRoleBLL.cs:行号 102', N'Void DeleteObject(System.Object, System.Data.Entity.Core.Metadata.Edm.EntitySet)', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82E00BDDDE1 AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'201711171135317679399dfa0ef4bf2', NULL, N'一个实体对象不能由多个 IEntityChangeTracker 实例引用。', N'EntityFramework', N'   在 System.Data.Entity.Core.Objects.ObjectContext.VerifyContextForAddOrAttach(IEntityWrapper wrappedEntity)
   在 System.Data.Entity.Core.Objects.ObjectContext.AttachSingleObject(IEntityWrapper wrappedEntity, EntitySet entitySet)
   在 System.Data.Entity.Core.Objects.ObjectContext.AttachTo(String entitySetName, Object entity)
   在 System.Data.Entity.Internal.Linq.InternalSet`1.<>c__DisplayClassa.<Attach>b__9()
   在 System.Data.Entity.Internal.Linq.InternalSet`1.ActOnSet(Action action, EntityState newState, Object entity, String methodName)
   在 System.Data.Entity.Internal.Linq.InternalSet`1.Attach(Object entity)
   在 System.Data.Entity.Internal.InternalEntityEntry.set_State(EntityState value)
   在 System.Data.Entity.Infrastructure.DbEntityEntry`1.set_State(EntityState value)
   在 App.DAL.SysRoleRepository.Edit(SysRole entity) 位置 f:\tools\project\unitySample-master\App.DAL\SysRoleRepository.cs:行号 48
   在 App.BLL.SysRoleBLL.Edit(ValidationErrors& errors, SysRoleModel model) 位置 f:\tools\project\unitySample-master\App.BLL\SysRoleBLL.cs:行号 136', N'Void VerifyContextForAddOrAttach(System.Data.Entity.Core.Objects.Internal.IEntityWrapper)', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82E00BF086C AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'2017111715022736907172a8a1e0822', NULL, N'未找到路径“/SysConfig”的控制器或该控制器未实现 IController。', N'System.Web.Mvc', N'   在 System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   在 System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   在 System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   在 System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   在 System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'System.Web.Mvc.IController GetControllerInstance(System.Web.Routing.RequestContext, System.Type)', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82E00F7DDF3 AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'2017111715100967651427c25c33c1c', NULL, N'更新条目时出错。有关详细信息，请参阅内部异常。', N'EntityFramework', N'   在 System.Data.Entity.Internal.InternalContext.SaveChanges()
   在 System.Data.Entity.Internal.LazyInternalContext.SaveChanges()
   在 System.Data.Entity.DbContext.SaveChanges()
   在 App.DAL.SysRightRepository.UpdateRight(SysRightOperateModel model) 位置 f:\tools\project\unitySample-master\App.DAL\SysRightRepository.cs:行号 56
   在 App.BLL.SysRightBLL.UpdateRight(SysRightOperateModel model) 位置 f:\tools\project\unitySample-master\App.BLL\SysRightBLL.cs:行号 21
   在 App.Admin.Controllers.SysRightController.UpdateRight(SysRightOperateModel model) 位置 f:\tools\project\unitySample-master\App.Admin\Controllers\SysRightController.cs:行号 125
   在 lambda_method(Closure , ControllerBase , Object[] )
   在 System.Web.Mvc.ActionMethodDispatcher.Execute(ControllerBase controller, Object[] parameters)
   在 System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass42.<BeginInvokeSynchronousActionMethod>b__41()
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass8`1.<BeginSynchronous>b__7(IAsyncResult _)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<>c__DisplayClass39.<BeginInvokeActionMethodWithFilters>b__33()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass4f.<InvokeActionMethodFilterAsynchronously>b__49()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass4f.<InvokeActionMethodFilterAsynchronously>b__49()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeActionMethodWithFilters>b__36(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<>c__DisplayClass2a.<BeginInvokeAction>b__20()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<BeginInvokeAction>b__22(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeAction(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.<>c__DisplayClass1d.<BeginExecuteCore>b__18(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecuteCore(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.<>c__DisplayClass8.<BeginProcessRequest>b__3(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'Int32 SaveChanges()', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82E00F9FBB8 AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'201711171513084197377900ced9717', NULL, N'更新条目时出错。有关详细信息，请参阅内部异常。', N'EntityFramework', N'   在 System.Data.Entity.Internal.InternalContext.SaveChanges()
   在 System.Data.Entity.Internal.LazyInternalContext.SaveChanges()
   在 System.Data.Entity.DbContext.SaveChanges()
   在 App.DAL.SysRightRepository.UpdateRight(SysRightOperateModel model) 位置 f:\tools\project\unitySample-master\App.DAL\SysRightRepository.cs:行号 56
   在 App.BLL.SysRightBLL.UpdateRight(SysRightOperateModel model) 位置 f:\tools\project\unitySample-master\App.BLL\SysRightBLL.cs:行号 21
   在 App.Admin.Controllers.SysRightController.UpdateRight(SysRightOperateModel model) 位置 f:\tools\project\unitySample-master\App.Admin\Controllers\SysRightController.cs:行号 125
   在 lambda_method(Closure , ControllerBase , Object[] )
   在 System.Web.Mvc.ActionMethodDispatcher.Execute(ControllerBase controller, Object[] parameters)
   在 System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass42.<BeginInvokeSynchronousActionMethod>b__41()
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass8`1.<BeginSynchronous>b__7(IAsyncResult _)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<>c__DisplayClass39.<BeginInvokeActionMethodWithFilters>b__33()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass4f.<InvokeActionMethodFilterAsynchronously>b__49()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass4f.<InvokeActionMethodFilterAsynchronously>b__49()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeActionMethodWithFilters>b__36(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<>c__DisplayClass2a.<BeginInvokeAction>b__20()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<BeginInvokeAction>b__22(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeAction(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.<>c__DisplayClass1d.<BeginExecuteCore>b__18(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecuteCore(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.<>c__DisplayClass8.<BeginProcessRequest>b__3(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'Int32 SaveChanges()', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82E00FACD35 AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'201711171513321450947ae497203f8', NULL, N'更新条目时出错。有关详细信息，请参阅内部异常。', N'EntityFramework', N'   在 System.Data.Entity.Internal.InternalContext.SaveChanges()
   在 System.Data.Entity.Internal.LazyInternalContext.SaveChanges()
   在 System.Data.Entity.DbContext.SaveChanges()
   在 App.DAL.SysRightRepository.UpdateRight(SysRightOperateModel model) 位置 f:\tools\project\unitySample-master\App.DAL\SysRightRepository.cs:行号 56
   在 App.BLL.SysRightBLL.UpdateRight(SysRightOperateModel model) 位置 f:\tools\project\unitySample-master\App.BLL\SysRightBLL.cs:行号 21
   在 App.Admin.Controllers.SysRightController.UpdateRight(SysRightOperateModel model) 位置 f:\tools\project\unitySample-master\App.Admin\Controllers\SysRightController.cs:行号 125
   在 lambda_method(Closure , ControllerBase , Object[] )
   在 System.Web.Mvc.ActionMethodDispatcher.Execute(ControllerBase controller, Object[] parameters)
   在 System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass42.<BeginInvokeSynchronousActionMethod>b__41()
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass8`1.<BeginSynchronous>b__7(IAsyncResult _)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<>c__DisplayClass39.<BeginInvokeActionMethodWithFilters>b__33()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass4f.<InvokeActionMethodFilterAsynchronously>b__49()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass4f.<InvokeActionMethodFilterAsynchronously>b__49()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeActionMethodWithFilters>b__36(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<>c__DisplayClass2a.<BeginInvokeAction>b__20()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<BeginInvokeAction>b__22(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeAction(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.<>c__DisplayClass1d.<BeginExecuteCore>b__18(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecuteCore(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.<>c__DisplayClass8.<BeginProcessRequest>b__3(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'Int32 SaveChanges()', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82E00FAE8FC AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'201711171513326431232069c8df0bd', NULL, N'更新条目时出错。有关详细信息，请参阅内部异常。', N'EntityFramework', N'   在 System.Data.Entity.Internal.InternalContext.SaveChanges()
   在 System.Data.Entity.Internal.LazyInternalContext.SaveChanges()
   在 System.Data.Entity.DbContext.SaveChanges()
   在 App.DAL.SysRightRepository.UpdateRight(SysRightOperateModel model) 位置 f:\tools\project\unitySample-master\App.DAL\SysRightRepository.cs:行号 56
   在 App.BLL.SysRightBLL.UpdateRight(SysRightOperateModel model) 位置 f:\tools\project\unitySample-master\App.BLL\SysRightBLL.cs:行号 21
   在 App.Admin.Controllers.SysRightController.UpdateRight(SysRightOperateModel model) 位置 f:\tools\project\unitySample-master\App.Admin\Controllers\SysRightController.cs:行号 125
   在 lambda_method(Closure , ControllerBase , Object[] )
   在 System.Web.Mvc.ActionMethodDispatcher.Execute(ControllerBase controller, Object[] parameters)
   在 System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass42.<BeginInvokeSynchronousActionMethod>b__41()
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass8`1.<BeginSynchronous>b__7(IAsyncResult _)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<>c__DisplayClass39.<BeginInvokeActionMethodWithFilters>b__33()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass4f.<InvokeActionMethodFilterAsynchronously>b__49()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass4f.<InvokeActionMethodFilterAsynchronously>b__49()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeActionMethodWithFilters>b__36(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<>c__DisplayClass2a.<BeginInvokeAction>b__20()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<BeginInvokeAction>b__22(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeAction(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.<>c__DisplayClass1d.<BeginExecuteCore>b__18(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecuteCore(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.<>c__DisplayClass8.<BeginProcessRequest>b__3(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'Int32 SaveChanges()', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82E00FAE991 AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'20171117151333152152307f280b22c', NULL, N'更新条目时出错。有关详细信息，请参阅内部异常。', N'EntityFramework', N'   在 System.Data.Entity.Internal.InternalContext.SaveChanges()
   在 System.Data.Entity.Internal.LazyInternalContext.SaveChanges()
   在 System.Data.Entity.DbContext.SaveChanges()
   在 App.DAL.SysRightRepository.UpdateRight(SysRightOperateModel model) 位置 f:\tools\project\unitySample-master\App.DAL\SysRightRepository.cs:行号 56
   在 App.BLL.SysRightBLL.UpdateRight(SysRightOperateModel model) 位置 f:\tools\project\unitySample-master\App.BLL\SysRightBLL.cs:行号 21
   在 App.Admin.Controllers.SysRightController.UpdateRight(SysRightOperateModel model) 位置 f:\tools\project\unitySample-master\App.Admin\Controllers\SysRightController.cs:行号 125
   在 lambda_method(Closure , ControllerBase , Object[] )
   在 System.Web.Mvc.ActionMethodDispatcher.Execute(ControllerBase controller, Object[] parameters)
   在 System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass42.<BeginInvokeSynchronousActionMethod>b__41()
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass8`1.<BeginSynchronous>b__7(IAsyncResult _)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<>c__DisplayClass39.<BeginInvokeActionMethodWithFilters>b__33()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass4f.<InvokeActionMethodFilterAsynchronously>b__49()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass4f.<InvokeActionMethodFilterAsynchronously>b__49()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeActionMethodWithFilters>b__36(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<>c__DisplayClass2a.<BeginInvokeAction>b__20()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<BeginInvokeAction>b__22(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeAction(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.<>c__DisplayClass1d.<BeginExecuteCore>b__18(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecuteCore(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.<>c__DisplayClass8.<BeginProcessRequest>b__3(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'Int32 SaveChanges()', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82E00FAEA2B AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'201711171513421296658e4a9775b8c', NULL, N'更新条目时出错。有关详细信息，请参阅内部异常。', N'EntityFramework', N'   在 System.Data.Entity.Internal.InternalContext.SaveChanges()
   在 System.Data.Entity.Internal.LazyInternalContext.SaveChanges()
   在 System.Data.Entity.DbContext.SaveChanges()
   在 App.DAL.SysRightRepository.UpdateRight(SysRightOperateModel model) 位置 f:\tools\project\unitySample-master\App.DAL\SysRightRepository.cs:行号 56
   在 App.BLL.SysRightBLL.UpdateRight(SysRightOperateModel model) 位置 f:\tools\project\unitySample-master\App.BLL\SysRightBLL.cs:行号 21
   在 App.Admin.Controllers.SysRightController.UpdateRight(SysRightOperateModel model) 位置 f:\tools\project\unitySample-master\App.Admin\Controllers\SysRightController.cs:行号 125
   在 lambda_method(Closure , ControllerBase , Object[] )
   在 System.Web.Mvc.ActionMethodDispatcher.Execute(ControllerBase controller, Object[] parameters)
   在 System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass42.<BeginInvokeSynchronousActionMethod>b__41()
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass8`1.<BeginSynchronous>b__7(IAsyncResult _)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<>c__DisplayClass39.<BeginInvokeActionMethodWithFilters>b__33()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass4f.<InvokeActionMethodFilterAsynchronously>b__49()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass4f.<InvokeActionMethodFilterAsynchronously>b__49()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeActionMethodWithFilters>b__36(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<>c__DisplayClass2a.<BeginInvokeAction>b__20()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<BeginInvokeAction>b__22(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeAction(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.<>c__DisplayClass1d.<BeginExecuteCore>b__18(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecuteCore(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.<>c__DisplayClass8.<BeginProcessRequest>b__3(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'Int32 SaveChanges()', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82E00FAF4AF AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'201711171532154463439f870ffe885', NULL, N'更新条目时出错。有关详细信息，请参阅内部异常。', N'EntityFramework', N'   在 System.Data.Entity.Internal.InternalContext.SaveChanges()
   在 System.Data.Entity.Internal.LazyInternalContext.SaveChanges()
   在 System.Data.Entity.DbContext.SaveChanges()
   在 App.DAL.SysRightRepository.UpdateRight(SysRightOperateModel model) 位置 f:\tools\project\unitySample-master\App.DAL\SysRightRepository.cs:行号 56
   在 App.BLL.SysRightBLL.UpdateRight(SysRightOperateModel model) 位置 f:\tools\project\unitySample-master\App.BLL\SysRightBLL.cs:行号 21
   在 App.Admin.Controllers.SysRightController.UpdateRight(SysRightOperateModel model) 位置 f:\tools\project\unitySample-master\App.Admin\Controllers\SysRightController.cs:行号 125
   在 lambda_method(Closure , ControllerBase , Object[] )
   在 System.Web.Mvc.ActionMethodDispatcher.Execute(ControllerBase controller, Object[] parameters)
   在 System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass42.<BeginInvokeSynchronousActionMethod>b__41()
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass8`1.<BeginSynchronous>b__7(IAsyncResult _)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<>c__DisplayClass39.<BeginInvokeActionMethodWithFilters>b__33()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass4f.<InvokeActionMethodFilterAsynchronously>b__49()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass4f.<InvokeActionMethodFilterAsynchronously>b__49()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeActionMethodWithFilters>b__36(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<>c__DisplayClass2a.<BeginInvokeAction>b__20()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<BeginInvokeAction>b__22(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeAction(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.<>c__DisplayClass1d.<BeginExecuteCore>b__18(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecuteCore(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.<>c__DisplayClass8.<BeginProcessRequest>b__3(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'Int32 SaveChanges()', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82E01000D5E AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'2017111715373555365299d29a0d64c', NULL, N'更新条目时出错。有关详细信息，请参阅内部异常。', N'EntityFramework', N'   在 System.Data.Entity.Internal.InternalContext.SaveChanges()
   在 System.Data.Entity.Internal.LazyInternalContext.SaveChanges()
   在 System.Data.Entity.DbContext.SaveChanges()
   在 App.DAL.SysRightRepository.UpdateRight(SysRightOperateModel model) 位置 f:\tools\project\unitySample-master\App.DAL\SysRightRepository.cs:行号 56
   在 App.BLL.SysRightBLL.UpdateRight(SysRightOperateModel model) 位置 f:\tools\project\unitySample-master\App.BLL\SysRightBLL.cs:行号 21
   在 App.Admin.Controllers.SysRightController.UpdateRight(SysRightOperateModel model) 位置 f:\tools\project\unitySample-master\App.Admin\Controllers\SysRightController.cs:行号 125
   在 lambda_method(Closure , ControllerBase , Object[] )
   在 System.Web.Mvc.ActionMethodDispatcher.Execute(ControllerBase controller, Object[] parameters)
   在 System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass42.<BeginInvokeSynchronousActionMethod>b__41()
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass8`1.<BeginSynchronous>b__7(IAsyncResult _)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<>c__DisplayClass39.<BeginInvokeActionMethodWithFilters>b__33()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass4f.<InvokeActionMethodFilterAsynchronously>b__49()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass4f.<InvokeActionMethodFilterAsynchronously>b__49()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeActionMethodWithFilters>b__36(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<>c__DisplayClass2a.<BeginInvokeAction>b__20()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<BeginInvokeAction>b__22(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeAction(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.<>c__DisplayClass1d.<BeginExecuteCore>b__18(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecuteCore(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.<>c__DisplayClass8.<BeginProcessRequest>b__3(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'Int32 SaveChanges()', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82E0101847B AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'20171117154603975733001b8af12f5', NULL, N'更新条目时出错。有关详细信息，请参阅内部异常。', N'EntityFramework', N'   在 System.Data.Entity.Internal.InternalContext.SaveChanges()
   在 System.Data.Entity.Internal.LazyInternalContext.SaveChanges()
   在 System.Data.Entity.DbContext.SaveChanges()
   在 App.DAL.SysRightRepository.UpdateRight(SysRightOperateModel model) 位置 f:\tools\project\unitySample-master\App.DAL\SysRightRepository.cs:行号 56
   在 App.BLL.SysRightBLL.UpdateRight(SysRightOperateModel model) 位置 f:\tools\project\unitySample-master\App.BLL\SysRightBLL.cs:行号 21
   在 App.Admin.Controllers.SysRightController.UpdateRight(SysRightOperateModel model) 位置 f:\tools\project\unitySample-master\App.Admin\Controllers\SysRightController.cs:行号 125
   在 lambda_method(Closure , ControllerBase , Object[] )
   在 System.Web.Mvc.ActionMethodDispatcher.Execute(ControllerBase controller, Object[] parameters)
   在 System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass42.<BeginInvokeSynchronousActionMethod>b__41()
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass8`1.<BeginSynchronous>b__7(IAsyncResult _)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<>c__DisplayClass39.<BeginInvokeActionMethodWithFilters>b__33()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass4f.<InvokeActionMethodFilterAsynchronously>b__49()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass4f.<InvokeActionMethodFilterAsynchronously>b__49()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeActionMethodWithFilters>b__36(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<>c__DisplayClass2a.<BeginInvokeAction>b__20()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<BeginInvokeAction>b__22(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeAction(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.<>c__DisplayClass1d.<BeginExecuteCore>b__18(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecuteCore(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.<>c__DisplayClass8.<BeginProcessRequest>b__3(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'Int32 SaveChanges()', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82E0103D849 AS DateTime))
INSERT [dbo].[SysException] ([Id], [HelpLink], [Message], [Source], [StackTrace], [TargetSite], [Data], [CreateTime]) VALUES (N'2017111715474168032140e6725061b', NULL, N'更新条目时出错。有关详细信息，请参阅内部异常。', N'EntityFramework', N'   在 System.Data.Entity.Internal.InternalContext.SaveChanges()
   在 System.Data.Entity.Internal.LazyInternalContext.SaveChanges()
   在 System.Data.Entity.DbContext.SaveChanges()
   在 App.DAL.SysRightRepository.UpdateRight(SysRightOperateModel model) 位置 f:\tools\project\unitySample-master\App.DAL\SysRightRepository.cs:行号 56
   在 App.BLL.SysRightBLL.UpdateRight(SysRightOperateModel model) 位置 f:\tools\project\unitySample-master\App.BLL\SysRightBLL.cs:行号 21
   在 App.Admin.Controllers.SysRightController.UpdateRight(SysRightOperateModel model) 位置 f:\tools\project\unitySample-master\App.Admin\Controllers\SysRightController.cs:行号 125
   在 lambda_method(Closure , ControllerBase , Object[] )
   在 System.Web.Mvc.ActionMethodDispatcher.Execute(ControllerBase controller, Object[] parameters)
   在 System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)
   在 System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass42.<BeginInvokeSynchronousActionMethod>b__41()
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass8`1.<BeginSynchronous>b__7(IAsyncResult _)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<>c__DisplayClass39.<BeginInvokeActionMethodWithFilters>b__33()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass4f.<InvokeActionMethodFilterAsynchronously>b__49()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass4f.<InvokeActionMethodFilterAsynchronously>b__49()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeActionMethodWithFilters>b__36(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<>c__DisplayClass2a.<BeginInvokeAction>b__20()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass25.<BeginInvokeAction>b__22(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeAction(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.<>c__DisplayClass1d.<BeginExecuteCore>b__18(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecuteCore(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.Controller.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.EndExecute(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.<>c__DisplayClass8.<BeginProcessRequest>b__3(IAsyncResult asyncResult)
   在 System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass4.<MakeVoidDelegate>b__3(IAsyncResult ar)
   在 System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   在 System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   在 System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'Int32 SaveChanges()', N'System.Collections.ListDictionaryInternal', CAST(0x0000A82E01044AC9 AS DateTime))
/****** Object:  Table [dbo].[SysRight]    Script Date: 11/17/2017 16:39:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[SysRight](
	[Id] [varchar](200) NOT NULL,
	[ModuleId] [varchar](50) NOT NULL,
	[RoleId] [varchar](50) NOT NULL,
	[Rightflag] [bit] NOT NULL,
 CONSTRAINT [PK_SysRight] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[SysRight] ([Id], [ModuleId], [RoleId], [Rightflag]) VALUES (N'administrator0', N'0', N'administrator', 1)
INSERT [dbo].[SysRight] ([Id], [ModuleId], [RoleId], [Rightflag]) VALUES (N'administratorBaseSample', N'BaseSample', N'administrator', 1)
INSERT [dbo].[SysRight] ([Id], [ModuleId], [RoleId], [Rightflag]) VALUES (N'administratorDocument', N'Document', N'administrator', 0)
INSERT [dbo].[SysRight] ([Id], [ModuleId], [RoleId], [Rightflag]) VALUES (N'administratorInfo', N'Info', N'administrator', 0)
INSERT [dbo].[SysRight] ([Id], [ModuleId], [RoleId], [Rightflag]) VALUES (N'administratorInfoHome', N'InfoHome', N'administrator', 0)
INSERT [dbo].[SysRight] ([Id], [ModuleId], [RoleId], [Rightflag]) VALUES (N'administratorInformation', N'Information', N'administrator', 0)
INSERT [dbo].[SysRight] ([Id], [ModuleId], [RoleId], [Rightflag]) VALUES (N'administratorManageInfo', N'ManageInfo', N'administrator', 0)
INSERT [dbo].[SysRight] ([Id], [ModuleId], [RoleId], [Rightflag]) VALUES (N'administratorModuleSetting', N'ModuleSetting', N'administrator', 1)
INSERT [dbo].[SysRight] ([Id], [ModuleId], [RoleId], [Rightflag]) VALUES (N'administratorMoudleManage', N'MoudleManage', N'administrator', 1)
INSERT [dbo].[SysRight] ([Id], [ModuleId], [RoleId], [Rightflag]) VALUES (N'administratorMyInfo', N'MyInfo', N'administrator', 0)
INSERT [dbo].[SysRight] ([Id], [ModuleId], [RoleId], [Rightflag]) VALUES (N'administratorPersonDocument', N'PersonDocument', N'administrator', 0)
INSERT [dbo].[SysRight] ([Id], [ModuleId], [RoleId], [Rightflag]) VALUES (N'administratorRoleAuthorize', N'RoleAuthorize', N'administrator', 1)
INSERT [dbo].[SysRight] ([Id], [ModuleId], [RoleId], [Rightflag]) VALUES (N'administratorRoleManage', N'RoleManage', N'administrator', 1)
INSERT [dbo].[SysRight] ([Id], [ModuleId], [RoleId], [Rightflag]) VALUES (N'administratorSampleFile', N'SampleFile', N'administrator', 1)
INSERT [dbo].[SysRight] ([Id], [ModuleId], [RoleId], [Rightflag]) VALUES (N'administratorSystemConfig', N'SystemConfig', N'administrator', 1)
INSERT [dbo].[SysRight] ([Id], [ModuleId], [RoleId], [Rightflag]) VALUES (N'administratorSystemExcepiton', N'SystemExcepiton', N'administrator', 1)
INSERT [dbo].[SysRight] ([Id], [ModuleId], [RoleId], [Rightflag]) VALUES (N'administratorSystemJobs', N'SystemJobs', N'administrator', 0)
INSERT [dbo].[SysRight] ([Id], [ModuleId], [RoleId], [Rightflag]) VALUES (N'administratorSystemLog', N'SystemLog', N'administrator', 1)
INSERT [dbo].[SysRight] ([Id], [ModuleId], [RoleId], [Rightflag]) VALUES (N'administratorSystemManage', N'SystemManage', N'administrator', 1)
INSERT [dbo].[SysRight] ([Id], [ModuleId], [RoleId], [Rightflag]) VALUES (N'administratorUserManage', N'UserManage', N'administrator', 1)
INSERT [dbo].[SysRight] ([Id], [ModuleId], [RoleId], [Rightflag]) VALUES (N'adminstratorRightManage', N'RightManage', N'administrator', 1)
/****** Object:  Table [dbo].[SysModuleOperate]    Script Date: 11/17/2017 16:39:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SysModuleOperate](
	[Id] [varchar](200) NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[KeyCode] [varchar](200) NOT NULL,
	[ModuleId] [varchar](50) NOT NULL,
	[IsValid] [bit] NOT NULL,
	[Sort] [int] NOT NULL,
 CONSTRAINT [PK_SysModuleOperate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否要验证' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysModuleOperate', @level2type=N'COLUMN',@level2name=N'IsValid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysModuleOperate', @level2type=N'COLUMN',@level2name=N'Sort'
GO
INSERT [dbo].[SysModuleOperate] ([Id], [Name], [KeyCode], [ModuleId], [IsValid], [Sort]) VALUES (N'BaseSampleCreate', N'创建', N'Create', N'BaseSample', 0, 0)
INSERT [dbo].[SysModuleOperate] ([Id], [Name], [KeyCode], [ModuleId], [IsValid], [Sort]) VALUES (N'BaseSampleDelete', N'删除', N'Delete', N'BaseSample', 0, 0)
INSERT [dbo].[SysModuleOperate] ([Id], [Name], [KeyCode], [ModuleId], [IsValid], [Sort]) VALUES (N'BaseSampleDetails', N'详细', N'Details', N'BaseSample', 0, 0)
INSERT [dbo].[SysModuleOperate] ([Id], [Name], [KeyCode], [ModuleId], [IsValid], [Sort]) VALUES (N'BaseSampleEdit', N'编辑', N'Edit', N'BaseSample', 0, 0)
INSERT [dbo].[SysModuleOperate] ([Id], [Name], [KeyCode], [ModuleId], [IsValid], [Sort]) VALUES (N'BaseSampleExport', N'导出', N'Export', N'BaseSample', 0, 0)
INSERT [dbo].[SysModuleOperate] ([Id], [Name], [KeyCode], [ModuleId], [IsValid], [Sort]) VALUES (N'BaseSampleQuery', N'查询', N'Query', N'BaseSample', 0, 0)
INSERT [dbo].[SysModuleOperate] ([Id], [Name], [KeyCode], [ModuleId], [IsValid], [Sort]) VALUES (N'BaseSampleSave', N'保存', N'Save', N'BaseSample', 0, 0)
INSERT [dbo].[SysModuleOperate] ([Id], [Name], [KeyCode], [ModuleId], [IsValid], [Sort]) VALUES (N'ModuleSettingCreate', N'创建', N'Create', N'ModuleSetting', 0, 0)
INSERT [dbo].[SysModuleOperate] ([Id], [Name], [KeyCode], [ModuleId], [IsValid], [Sort]) VALUES (N'ModuleSettingDelete', N'删除', N'Delete', N'ModuleSetting', 0, 0)
INSERT [dbo].[SysModuleOperate] ([Id], [Name], [KeyCode], [ModuleId], [IsValid], [Sort]) VALUES (N'ModuleSettingEdit', N'编辑', N'Edit', N'ModuleSetting', 0, 0)
INSERT [dbo].[SysModuleOperate] ([Id], [Name], [KeyCode], [ModuleId], [IsValid], [Sort]) VALUES (N'RoleAuthorizeSave', N'保存', N'Save', N'RoleAuthorize', 0, 0)
INSERT [dbo].[SysModuleOperate] ([Id], [Name], [KeyCode], [ModuleId], [IsValid], [Sort]) VALUES (N'RoleManageCreate', N'创建', N'Create', N'RoleManage', 0, 0)
INSERT [dbo].[SysModuleOperate] ([Id], [Name], [KeyCode], [ModuleId], [IsValid], [Sort]) VALUES (N'RoleManageDelete', N'删除', N'Delete', N'RoleManage', 0, 0)
INSERT [dbo].[SysModuleOperate] ([Id], [Name], [KeyCode], [ModuleId], [IsValid], [Sort]) VALUES (N'RoleManageEdit', N'编辑', N'Edit', N'RoleManage', 0, 0)
INSERT [dbo].[SysModuleOperate] ([Id], [Name], [KeyCode], [ModuleId], [IsValid], [Sort]) VALUES (N'RoleManageQuery', N'查询', N'Query', N'RoleManage', 0, 0)
INSERT [dbo].[SysModuleOperate] ([Id], [Name], [KeyCode], [ModuleId], [IsValid], [Sort]) VALUES (N'RoleManageSave', N'保存', N'Save', N'RoleManage', 0, 0)
INSERT [dbo].[SysModuleOperate] ([Id], [Name], [KeyCode], [ModuleId], [IsValid], [Sort]) VALUES (N'SystemConfigQuery', N'查询', N'Query', N'SystemConfig', 0, 0)
INSERT [dbo].[SysModuleOperate] ([Id], [Name], [KeyCode], [ModuleId], [IsValid], [Sort]) VALUES (N'SystemExcepitonQuery', N'查询', N'Query', N'SystemExcepiton', 0, 0)
INSERT [dbo].[SysModuleOperate] ([Id], [Name], [KeyCode], [ModuleId], [IsValid], [Sort]) VALUES (N'SystemLogDelete', N'删除', N'Delete', N'SystemLog', 0, 0)
INSERT [dbo].[SysModuleOperate] ([Id], [Name], [KeyCode], [ModuleId], [IsValid], [Sort]) VALUES (N'SystemLogDetails', N'详细', N'Details', N'SystemLog', 0, 0)
INSERT [dbo].[SysModuleOperate] ([Id], [Name], [KeyCode], [ModuleId], [IsValid], [Sort]) VALUES (N'SystemLogQuery', N'查询', N'Query', N'SystemLog', 0, 0)
INSERT [dbo].[SysModuleOperate] ([Id], [Name], [KeyCode], [ModuleId], [IsValid], [Sort]) VALUES (N'UserManageAllot', N'分配角色', N'Allot', N'UserManage', 0, 0)
INSERT [dbo].[SysModuleOperate] ([Id], [Name], [KeyCode], [ModuleId], [IsValid], [Sort]) VALUES (N'UserManageCreate', N'创建', N'Create', N'UserManage', 0, 0)
INSERT [dbo].[SysModuleOperate] ([Id], [Name], [KeyCode], [ModuleId], [IsValid], [Sort]) VALUES (N'UserManageDelete', N'删除', N'Delete', N'UserManage', 0, 0)
INSERT [dbo].[SysModuleOperate] ([Id], [Name], [KeyCode], [ModuleId], [IsValid], [Sort]) VALUES (N'UserManageEdit', N'编辑', N'Edit', N'UserManage', 0, 0)
INSERT [dbo].[SysModuleOperate] ([Id], [Name], [KeyCode], [ModuleId], [IsValid], [Sort]) VALUES (N'UserManageQuery', N'查询', N'Query', N'UserManage', 0, 0)
INSERT [dbo].[SysModuleOperate] ([Id], [Name], [KeyCode], [ModuleId], [IsValid], [Sort]) VALUES (N'UserManageSave', N'保存', N'Save', N'UserManage', 0, 0)
/****** Object:  Table [dbo].[SysRoleSysUser]    Script Date: 11/17/2017 16:39:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[SysRoleSysUser](
	[SysUserId] [varchar](50) NOT NULL,
	[SysRoleId] [varchar](50) NOT NULL,
 CONSTRAINT [PK_SysRoleSysUser_1] PRIMARY KEY CLUSTERED 
(
	[SysUserId] ASC,
	[SysRoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[SysRoleSysUser] ([SysUserId], [SysRoleId]) VALUES (N'admin', N'administrator')
/****** Object:  Table [dbo].[SysRightOperate]    Script Date: 11/17/2017 16:39:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[SysRightOperate](
	[Id] [varchar](200) NOT NULL,
	[RightId] [varchar](200) NOT NULL,
	[KeyCode] [varchar](200) NOT NULL,
	[IsValid] [bit] NOT NULL,
 CONSTRAINT [PK_SysRightOperate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[SysRightOperate] ([Id], [RightId], [KeyCode], [IsValid]) VALUES (N'administratorBaseSampleCreate', N'administratorBaseSample', N'Create', 1)
INSERT [dbo].[SysRightOperate] ([Id], [RightId], [KeyCode], [IsValid]) VALUES (N'administratorBaseSampleDelete', N'administratorBaseSample', N'Delete', 1)
INSERT [dbo].[SysRightOperate] ([Id], [RightId], [KeyCode], [IsValid]) VALUES (N'administratorBaseSampleDetails', N'administratorBaseSample', N'Details', 1)
INSERT [dbo].[SysRightOperate] ([Id], [RightId], [KeyCode], [IsValid]) VALUES (N'administratorBaseSampleEdit', N'administratorBaseSample', N'Edit', 1)
INSERT [dbo].[SysRightOperate] ([Id], [RightId], [KeyCode], [IsValid]) VALUES (N'administratorBaseSampleExport', N'administratorBaseSample', N'Export', 1)
INSERT [dbo].[SysRightOperate] ([Id], [RightId], [KeyCode], [IsValid]) VALUES (N'administratorBaseSampleQuery', N'administratorBaseSample', N'Query', 1)
INSERT [dbo].[SysRightOperate] ([Id], [RightId], [KeyCode], [IsValid]) VALUES (N'administratorBaseSampleSave', N'administratorBaseSample', N'Save', 1)
INSERT [dbo].[SysRightOperate] ([Id], [RightId], [KeyCode], [IsValid]) VALUES (N'administratorModuleSettingCreate', N'administratorModuleSetting', N'Create', 1)
INSERT [dbo].[SysRightOperate] ([Id], [RightId], [KeyCode], [IsValid]) VALUES (N'administratorModuleSettingDelete', N'administratorModuleSetting', N'Delete', 1)
INSERT [dbo].[SysRightOperate] ([Id], [RightId], [KeyCode], [IsValid]) VALUES (N'administratorModuleSettingEdit', N'administratorModuleSetting', N'Edit', 1)
INSERT [dbo].[SysRightOperate] ([Id], [RightId], [KeyCode], [IsValid]) VALUES (N'administratorRoleAuthorizeSave', N'administratorRoleAuthorize', N'Save', 1)
INSERT [dbo].[SysRightOperate] ([Id], [RightId], [KeyCode], [IsValid]) VALUES (N'administratorRoleManageCreate', N'administratorRoleManage', N'Create', 1)
INSERT [dbo].[SysRightOperate] ([Id], [RightId], [KeyCode], [IsValid]) VALUES (N'administratorRoleManageDelete', N'administratorRoleManage', N'Delete', 1)
INSERT [dbo].[SysRightOperate] ([Id], [RightId], [KeyCode], [IsValid]) VALUES (N'administratorRoleManageEdit', N'administratorRoleManage', N'Edit', 1)
INSERT [dbo].[SysRightOperate] ([Id], [RightId], [KeyCode], [IsValid]) VALUES (N'administratorRoleManageQuery', N'administratorRoleManage', N'Query', 1)
INSERT [dbo].[SysRightOperate] ([Id], [RightId], [KeyCode], [IsValid]) VALUES (N'administratorRoleManageSave', N'administratorRoleManage', N'Save', 1)
INSERT [dbo].[SysRightOperate] ([Id], [RightId], [KeyCode], [IsValid]) VALUES (N'administratorSystemConfigQuery', N'administratorSystemConfig', N'Query', 1)
INSERT [dbo].[SysRightOperate] ([Id], [RightId], [KeyCode], [IsValid]) VALUES (N'administratorSystemExcepitonQuery', N'administratorSystemExcepiton', N'Query', 1)
INSERT [dbo].[SysRightOperate] ([Id], [RightId], [KeyCode], [IsValid]) VALUES (N'administratorSystemLogQuery', N'administratorSystemLog', N'Query', 1)
INSERT [dbo].[SysRightOperate] ([Id], [RightId], [KeyCode], [IsValid]) VALUES (N'administratorUserManageAllot', N'administratorUserManage', N'Allot', 1)
INSERT [dbo].[SysRightOperate] ([Id], [RightId], [KeyCode], [IsValid]) VALUES (N'administratorUserManageCreate', N'administratorUserManage', N'Create', 1)
INSERT [dbo].[SysRightOperate] ([Id], [RightId], [KeyCode], [IsValid]) VALUES (N'administratorUserManageDelete', N'administratorUserManage', N'Delete', 1)
INSERT [dbo].[SysRightOperate] ([Id], [RightId], [KeyCode], [IsValid]) VALUES (N'administratorUserManageEdit', N'administratorUserManage', N'Edit', 1)
INSERT [dbo].[SysRightOperate] ([Id], [RightId], [KeyCode], [IsValid]) VALUES (N'administratorUserManageQuery', N'administratorUserManage', N'Query', 1)
INSERT [dbo].[SysRightOperate] ([Id], [RightId], [KeyCode], [IsValid]) VALUES (N'administratorUserManageSave', N'administratorUserManage', N'Save', 1)
/****** Object:  StoredProcedure [dbo].[P_Sys_UpdateSysRoleSysUser]    Script Date: 11/17/2017 16:39:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<moy>
-- Create date: <2017-11-16>
-- Description:	<插入角色中间表>
-- =============================================
CREATE PROCEDURE [dbo].[P_Sys_UpdateSysRoleSysUser]
@roleId varchar(50),
@userId varchar(50)
AS

BEGIN
	
    insert into SysRoleSysUser(SysRoleId,SysUserId)
        values(@roleId,@userId)
END
GO
/****** Object:  StoredProcedure [dbo].[P_Sys_InsertSysRight]    Script Date: 11/17/2017 16:39:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<moy>
-- Create date: <2017/11/8>
-- Description:	<为角色分配模块>
-- =============================================
Create proc [dbo].[P_Sys_InsertSysRight]
as
--将设置好的模块分配到角色组
    insert into SysRight(Id,ModuleId,RoleId,Rightflag)
        select distinct b.Id+a.Id,a.Id,b.Id,0 from SysModule a,SysRole b
        where a.Id+b.Id not in (select ModuleId+RoleId from SysRight)
GO
/****** Object:  StoredProcedure [dbo].[P_Sys_GetRoleByUserId]    Script Date: 11/17/2017 16:39:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<moy>
-- Create date: <2017-11-16>
-- Description:	<根据用户查询角色>
-- =============================================
CREATE PROCEDURE [dbo].[P_Sys_GetRoleByUserId]
@UserId varchar(50)
as
begin
	--读取用户所包含的角色
	select a.*,ISNULL(b.SysUserId,0) as flag from SysRole a 
	left join SysRoleSysUser b on a.Id = b.SysRoleId
	and b.SysUserId = @UserId 
	order by b.SysUserId desc
end
GO
/****** Object:  StoredProcedure [dbo].[P_Sys_DeleteSysRoleSysUserByUserId]    Script Date: 11/17/2017 16:39:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<moy>
-- Create date: <2017-11-16>
-- Description:	<删除用户所有角色信息>
-- =============================================
CREATE PROCEDURE [dbo].[P_Sys_DeleteSysRoleSysUserByUserId]
@userId varchar(50)
AS

BEGIN
    delete SysRoleSysUser where SysUserId=@userId
END
GO
/****** Object:  StoredProcedure [dbo].[P_Sys_ClearUnusedRightOperate]    Script Date: 11/17/2017 16:39:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<moy>
-- Create date: <2017/11/8>
-- Description:	<清理无用项目>
-- =============================================
Create proc [dbo].[P_Sys_ClearUnusedRightOperate]
as
--清理权限中的无用项目
delete from SysRightOperate where Id not in(
    select a.RoleId+a.ModuleId+b.KeyCode from SysRight a,SysModuleOperate b
        where a.ModuleId = b.ModuleId
)
GO
/****** Object:  StoredProcedure [dbo].[P_Sys_GetRightOperate]    Script Date: 11/17/2017 16:39:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Author:		<moy>
-- Create date: <2017/11/8>
-- Description:	<查询用户可操作权限>
-- =============================================
CREATE PROCEDURE [dbo].[P_Sys_GetRightOperate]
@userId varchar(50),
@url varchar(200)
AS
BEGIN

select distinct KeyCode,IsValid from SysRightOperate where RightId in
(
	select a.Id from SysRight a,SysModule b where RoleId in
	(
	select SysRoleId from SysRoleSysUser where SysUserId =@userId--根据用户查询角色
	) and a.ModuleId = b.Id
	
and b.Url =@url)
and IsValid=1

END
GO
/****** Object:  StoredProcedure [dbo].[P_Sys_GetRightByRoleAndModule]    Script Date: 11/17/2017 16:39:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<moy>
-- Create date: <2017/11/8>
-- Description:	<根据角色权限加载模块>
-- =============================================
Create proc [dbo].[P_Sys_GetRightByRoleAndModule]
@roleId varchar(50),
@moduleId varchar(50)
as
--按选择的角色及模块加载模块的权限项
begin
select a.Id,a.Name,a.KeyCode,a.ModuleId,ISNULL(b.IsValid,0) as isvalid,a.Sort,
@roleId+@moduleId as RightId from SysModuleOperate a
    left outer join(
        select c.Id,a.IsValid from SysRightOperate a,SysRight b, SysModuleOperate c
        where RightId in
        (select Id From SysRight where RoleId =@roleId and ModuleId =@moduleId)
         and a.RightId=b.Id
         and b.ModuleId=c.ModuleId
         and a.KeyCode =c.KeyCode) b
     on a.Id = b.Id
     where a.ModuleId = @moduleId
end
GO
/****** Object:  StoredProcedure [dbo].[P_Sys_UpdateSysRightRightFlag]    Script Date: 11/17/2017 16:39:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<moy>
-- Create date: <2017/11/8>
-- Description:	<根据角色，模块修改状态>
-- =============================================
CREATE proc [dbo].[P_Sys_UpdateSysRightRightFlag]
@moduleId varchar(200),
@roleId varchar(200)
as
begin

--计算上级模块的rightflag标识
declare @count int
--第一层：由操作权限项计算模块权限
select @count=COUNT(*) from SysRightOperate where RightId = @roleId+@moduleId and IsValid=1

if(@count>0)
	begin
		update SysRight set Rightflag = 1 where ModuleId = @moduleId and RoleId = @roleId
	end
else
	begin
		update SysRight set Rightflag = 0 where ModuleId = @moduleId and RoleId = @roleId
	end
--计算下一层
declare @parentId varchar(50)
set @parentId = @moduleId

while(@parentId <> '0')
	begin
		select @parentid = ParentId from SysModule where Id = @parentId
		if (@parentId is null)
			begin
				return
			end
	    
		select @count=COUNT(*) from SysRight where ModuleId in
			(select Id from SysModule where ParentId=@parentId)
			and RoleId = @roleId and Rightflag=1
	    
		if(@count>0)
			begin
				update SysRight set Rightflag=1 where ModuleId=@parentId and RoleId=@roleId
			end
		else
			begin
				update SysRight set Rightflag=0 where ModuleId=@parentId and RoleId=@roleId
			end
	end
		
end
GO
/****** Object:  ForeignKey [FK_SysModule_SysModule]    Script Date: 11/17/2017 16:39:42 ******/
ALTER TABLE [dbo].[SysModule]  WITH NOCHECK ADD  CONSTRAINT [FK_SysModule_SysModule] FOREIGN KEY([ParentId])
REFERENCES [dbo].[SysModule] ([Id])
GO
ALTER TABLE [dbo].[SysModule] NOCHECK CONSTRAINT [FK_SysModule_SysModule]
GO
/****** Object:  ForeignKey [FK_SysModuleOperate_SysModule]    Script Date: 11/17/2017 16:39:42 ******/
ALTER TABLE [dbo].[SysModuleOperate]  WITH CHECK ADD  CONSTRAINT [FK_SysModuleOperate_SysModule] FOREIGN KEY([ModuleId])
REFERENCES [dbo].[SysModule] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SysModuleOperate] CHECK CONSTRAINT [FK_SysModuleOperate_SysModule]
GO
/****** Object:  ForeignKey [FK_SysRight_SysModule]    Script Date: 11/17/2017 16:39:42 ******/
ALTER TABLE [dbo].[SysRight]  WITH CHECK ADD  CONSTRAINT [FK_SysRight_SysModule] FOREIGN KEY([ModuleId])
REFERENCES [dbo].[SysModule] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SysRight] CHECK CONSTRAINT [FK_SysRight_SysModule]
GO
/****** Object:  ForeignKey [FK_SysRight_SysRole]    Script Date: 11/17/2017 16:39:42 ******/
ALTER TABLE [dbo].[SysRight]  WITH CHECK ADD  CONSTRAINT [FK_SysRight_SysRole] FOREIGN KEY([RoleId])
REFERENCES [dbo].[SysRole] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SysRight] CHECK CONSTRAINT [FK_SysRight_SysRole]
GO
/****** Object:  ForeignKey [FK_SysRightOperate_SysRight]    Script Date: 11/17/2017 16:39:42 ******/
ALTER TABLE [dbo].[SysRightOperate]  WITH CHECK ADD  CONSTRAINT [FK_SysRightOperate_SysRight] FOREIGN KEY([RightId])
REFERENCES [dbo].[SysRight] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SysRightOperate] CHECK CONSTRAINT [FK_SysRightOperate_SysRight]
GO
/****** Object:  ForeignKey [FK_SysRoleSysUser_SysRole]    Script Date: 11/17/2017 16:39:42 ******/
ALTER TABLE [dbo].[SysRoleSysUser]  WITH CHECK ADD  CONSTRAINT [FK_SysRoleSysUser_SysRole] FOREIGN KEY([SysRoleId])
REFERENCES [dbo].[SysRole] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SysRoleSysUser] CHECK CONSTRAINT [FK_SysRoleSysUser_SysRole]
GO
/****** Object:  ForeignKey [FK_SysRoleSysUser_SysUser]    Script Date: 11/17/2017 16:39:42 ******/
ALTER TABLE [dbo].[SysRoleSysUser]  WITH CHECK ADD  CONSTRAINT [FK_SysRoleSysUser_SysUser] FOREIGN KEY([SysUserId])
REFERENCES [dbo].[SysUser] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SysRoleSysUser] CHECK CONSTRAINT [FK_SysRoleSysUser_SysUser]
GO
