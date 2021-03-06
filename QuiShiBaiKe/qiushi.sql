USE [QSBKDB]
GO
/****** Object:  Table [dbo].[MessageComments]    Script Date: 2015/11/11 16:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MessageComments](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[MessageId] [bigint] NOT NULL,
	[CreateDateTime] [datetime] NOT NULL,
	[UserId] [bigint] NOT NULL,
	[Comment] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_MessageComments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Messages]    Script Date: 2015/11/11 16:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Msg] [nvarchar](300) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[IsAnonymous] [bit] NOT NULL,
	[ImageUrl] [nvarchar](250) NULL,
	[CreateDateTime] [datetime] NOT NULL,
	[SupportedNum] [bigint] NOT NULL,
	[OpposedNum] [bigint] NOT NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 2015/11/11 16:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[PassWordHash] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[MessageComments]  WITH CHECK ADD  CONSTRAINT [FK_MessageComments_Messages] FOREIGN KEY([MessageId])
REFERENCES [dbo].[Messages] ([Id])
GO
ALTER TABLE [dbo].[MessageComments] CHECK CONSTRAINT [FK_MessageComments_Messages]
GO
ALTER TABLE [dbo].[MessageComments]  WITH CHECK ADD  CONSTRAINT [FK_MessageComments_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[MessageComments] CHECK CONSTRAINT [FK_MessageComments_Users]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_Users]
GO
