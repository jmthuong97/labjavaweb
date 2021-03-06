USE [master]
GO
/****** Object:  Database [J3.L.P0011]    Script Date: 06/22/2018 12:25:39 ******/
CREATE DATABASE [J3.L.P0011] ON  PRIMARY 
( NAME = N'J3.L.P0011', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\J3.L.P0011.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'J3.L.P0011_log', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\J3.L.P0011_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [J3.L.P0011] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [J3.L.P0011].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [J3.L.P0011] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [J3.L.P0011] SET ANSI_NULLS OFF
GO
ALTER DATABASE [J3.L.P0011] SET ANSI_PADDING OFF
GO
ALTER DATABASE [J3.L.P0011] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [J3.L.P0011] SET ARITHABORT OFF
GO
ALTER DATABASE [J3.L.P0011] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [J3.L.P0011] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [J3.L.P0011] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [J3.L.P0011] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [J3.L.P0011] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [J3.L.P0011] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [J3.L.P0011] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [J3.L.P0011] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [J3.L.P0011] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [J3.L.P0011] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [J3.L.P0011] SET  DISABLE_BROKER
GO
ALTER DATABASE [J3.L.P0011] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [J3.L.P0011] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [J3.L.P0011] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [J3.L.P0011] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [J3.L.P0011] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [J3.L.P0011] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [J3.L.P0011] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [J3.L.P0011] SET  READ_WRITE
GO
ALTER DATABASE [J3.L.P0011] SET RECOVERY SIMPLE
GO
ALTER DATABASE [J3.L.P0011] SET  MULTI_USER
GO
ALTER DATABASE [J3.L.P0011] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [J3.L.P0011] SET DB_CHAINING OFF
GO
USE [J3.L.P0011]
GO
/****** Object:  Table [dbo].[Information]    Script Date: 06/22/2018 12:25:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Information](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[content] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Information] ([id], [name], [content]) VALUES (1, N'Vivianne Russell', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. 

Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.')
/****** Object:  Table [dbo].[Home]    Script Date: 06/22/2018 12:25:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Home](
	[id] [int] NOT NULL,
	[type] [nvarchar](50) NOT NULL,
	[title] [nvarchar](50) NOT NULL,
	[imgLink] [nvarchar](50) NULL,
	[shortContent] [nvarchar](max) NULL,
	[fullContent] [nvarchar](max) NULL,
	[author] [nvarchar](50) NULL,
	[createDate] [date] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Home] ([id], [type], [title], [imgLink], [shortContent], [fullContent], [author], [createDate]) VALUES (1, N'pen', N'Essential skills for a happy life!', N'i283445314544979646._szw480h1280_.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. At eam doctus oportere, eam feugait delectus ne. Quo cu vulputate persecuti. Eum ut natum possim comprehensam, habeo dicta scaevola eu nec. Ea adhuc reformidans eam. Pri dolore epicuri eu, ne cum tantas fierent instructior. Pro ridens intellegam ut, sea at graecis scriptorem eloquentiam. Per an labitur lucilius ullamcorper, esse erat ponderum ad vim. Possim laoreet suscipit ex pri, vix numquam eruditi feugait in. Nec maluisset complectitur te, at sea decore semper. Falli numquam perpetua sea et, tibique repudiandae an pro. Ut his solum persius postulant. Soluta nemore debitis ne eos, cum an scripta pericula partiendo.', NULL, CAST(0xAD3A0B00 AS Date))
INSERT [dbo].[Home] ([id], [type], [title], [imgLink], [shortContent], [fullContent], [author], [createDate]) VALUES (2, N'note', N'You ''ve gotta dance', N'i283445314544979646._szw480h1280_.jpg', N'“You''ve gotta dance like there''s nobody watching,
Love like you''ll never be hurt,
Sing like there''s nobody listening,
And live like it''s heaven on earth.”', N'“You''ve gotta dance like there''s nobody watching,
Love like you''ll never be hurt,
Sing like there''s nobody listening,
And live like it''s heaven on earth.”', N'William W. Purkey', CAST(0xAD3A0B00 AS Date))
INSERT [dbo].[Home] ([id], [type], [title], [imgLink], [shortContent], [fullContent], [author], [createDate]) VALUES (3, N'camera', N'Photo', N'i283445314544979644._szw1280h1280_.jpg', NULL, NULL, NULL, CAST(0xAD3A0B00 AS Date))
INSERT [dbo].[Home] ([id], [type], [title], [imgLink], [shortContent], [fullContent], [author], [createDate]) VALUES (4, N'note', N'Make color your life', NULL, N'“You''ve gotta dance like there''s nobody watching,
Love like you''ll never be hurt,
Sing like there''s nobody listening,
And live like it''s heaven on earth.”', N'“You''ve gotta dance like there''s nobody watching,
Love like you''ll never be hurt,
Sing like there''s nobody listening,
And live like it''s heaven on earth.”', N'JM Thuong', CAST(0xAD3A0B00 AS Date))
INSERT [dbo].[Home] ([id], [type], [title], [imgLink], [shortContent], [fullContent], [author], [createDate]) VALUES (5, N'pen', N'Color Team', N'i283445314544979644._szw1280h1280_.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. At eam doctus oportere, eam feugait delectus ne. Quo cu vulputate persecuti. Eum ut natum possim comprehensam, habeo dicta scaevola eu nec. Ea adhuc reformidans eam. Pri dolore epicuri eu, ne cum tantas fierent instructior. Pro ridens intellegam ut, sea at graecis scriptorem eloquentiam. Per an labitur lucilius ullamcorper, esse erat ponderum ad vim. Possim laoreet suscipit ex pri, vix numquam eruditi feugait in. Nec maluisset complectitur te, at sea decore semper. Falli numquam perpetua sea et, tibique repudiandae an pro. Ut his solum persius postulant. Soluta nemore debitis ne eos, cum an scripta pericula partiendo.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. At eam doctus oportere, eam feugait delectus ne. Quo cu vulputate persecuti. Eum ut natum possim comprehensam, habeo dicta scaevola eu nec. Ea adhuc reformidans eam. Pri dolore epicuri eu, ne cum tantas fierent instructior. Pro ridens intellegam ut, sea at graecis scriptorem eloquentiam. Per an labitur lucilius ullamcorper, esse erat ponderum ad vim. Possim laoreet suscipit ex pri, vix numquam eruditi feugait in. Nec maluisset complectitur te, at sea decore semper. Falli numquam perpetua sea et, tibique repudiandae an pro. Ut his solum persius postulant. Soluta nemore debitis ne eos, cum an scripta pericula partiendo.', NULL, CAST(0x623E0B00 AS Date))
INSERT [dbo].[Home] ([id], [type], [title], [imgLink], [shortContent], [fullContent], [author], [createDate]) VALUES (6, N'camera', N'FU Photography', N'i283445314544979644._szw1280h1280_.jpg', NULL, NULL, NULL, CAST(0x623E0B00 AS Date))
INSERT [dbo].[Home] ([id], [type], [title], [imgLink], [shortContent], [fullContent], [author], [createDate]) VALUES (7, N'camera', N'ABCD XYZ xxx', N'i283445314544979646._szw480h1280_.jpg', NULL, NULL, NULL, CAST(0xCB3D0B00 AS Date))
INSERT [dbo].[Home] ([id], [type], [title], [imgLink], [shortContent], [fullContent], [author], [createDate]) VALUES (8, N'pen', N'JM THUONG IS BEST', N'i283445314544979644._szw1280h1280_.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. At eam doctus oportere, eam feugait delectus ne. Quo cu vulputate persecuti. Eum ut natum possim comprehensam, habeo dicta scaevola eu nec. Ea adhuc reformidans eam. Pri dolore epicuri eu, ne cum tantas fierent instructior. Pro ridens intellegam ut, sea at graecis scriptorem eloquentiam. Per an labitur lucilius ullamcorper, esse erat ponderum ad vim. Possim laoreet suscipit ex pri, vix numquam eruditi feugait in. Nec maluisset complectitur te, at sea decore semper. Falli numquam perpetua sea et, tibique repudiandae an pro. Ut his solum persius postulant. Soluta nemore debitis ne eos, cum an scripta pericula partiendo.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. At eam doctus oportere, eam feugait delectus ne. Quo cu vulputate persecuti. Eum ut natum possim comprehensam, habeo dicta scaevola eu nec. Ea adhuc reformidans eam. Pri dolore epicuri eu, ne cum tantas fierent instructior. Pro ridens intellegam ut, sea at graecis scriptorem eloquentiam. Per an labitur lucilius ullamcorper, esse erat ponderum ad vim. Possim laoreet suscipit ex pri, vix numquam eruditi feugait in. Nec maluisset complectitur te, at sea decore semper. Falli numquam perpetua sea et, tibique repudiandae an pro. Ut his solum persius postulant. Soluta nemore debitis ne eos, cum an scripta pericula partiendo.', NULL, CAST(0xCB3D0B00 AS Date))
