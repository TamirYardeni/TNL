/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2012 (11.0.2318)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [DBbursuk]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 15/09/2017 12:30:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] NOT NULL IDENTITY(1,1),
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[BirthDate] [datetime] NOT NULL,
	[Email] [varchar](50) NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[IsManager] [bit] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Users] ([FirstName], [LastName], [BirthDate], [Email], [Username], [Password], [IsManager]) VALUES (N'Lavi', N'Bursuk', CAST(N'1995-06-09T00:00:00.000' AS DateTime), N'Lavi95@gmail.com', N'LaviB', N'1234', 1)
INSERT [dbo].[Users] ([FirstName], [LastName], [BirthDate], [Email], [Username], [Password], [IsManager]) VALUES (N'Tamir', N'Yardeni', CAST(N'1995-06-09T00:00:00.000' AS DateTime), NULL, N'Tamir', N'1234', 1)
INSERT [dbo].[Users] ([FirstName], [LastName], [BirthDate], [Email], [Username], [Password], [IsManager]) VALUES (N'Naor', N'Twig', CAST(N'1995-06-09T00:00:00.000' AS DateTime), NULL, N'Naor', N'1234', 1)
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_IsManager]  DEFAULT ((0)) FOR [IsManager]
GO
