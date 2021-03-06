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
/****** Object:  Table [dbo].[Orders]    Script Date: 15/09/2017 12:30:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] NOT NULL IDENTITY(1, 1),
	[MovieId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[ReturnDate] [datetime] NULL
) ON [PRIMARY]
GO
