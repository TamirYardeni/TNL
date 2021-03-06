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
/****** Object:  Table [dbo].[Movies]    Script Date: 15/09/2017 12:30:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[MovieId] [int] NOT NULL IDENTITY(1,1),
	[Title] [varchar](50) NOT NULL,
	[Description] [varchar](max) NOT NULL,
	[GenreId] [int] NOT NULL,
	[ReleaseDate] [datetime] NOT NULL,
	[Director] [varchar](50) NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[TrailerUrl] [varchar](max) NOT NULL,
	[ArtUrl] [varchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Movies] ([Title], [Description], [GenreId], [ReleaseDate], [Director], [Price], [TrailerUrl], [ArtUrl]) VALUES (N'The Hangover', N'Doug Billings and Tracy Garner are about to get married. Two days before the wedding, Doug and his groomsmen hop into Tracy''s father''s Mercedes for a 24-hour stag party in Las Vegas. The morning after their arrival in Vegas, they awaken in their Caesars Palace hotel suite each with the worst hangove', 2, CAST(N'2009-06-05T00:00:00.000' AS DateTime), N'Todd Phillips', CAST(30 AS Decimal(18, 0)), N'https://www.youtube.com/watch?v=vhFVZsk3XEs', N'../../Uploads/Hangoverposter.jpg')
