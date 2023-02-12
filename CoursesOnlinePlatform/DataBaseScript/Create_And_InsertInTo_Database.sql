USE [master]
GO

CREATE DATABASE [Projekt_ASP_NET]
GO

USE [Projekt_ASP_NET]
GO

CREATE TABLE [dbo].[Courses](
	[Id] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Price] [decimal](18, 0)NOT NULL,
	[Currency] [varchar](3)NOT NULL,
	[Language] [varchar](20)NOT NULL,
	[Level] [varchar](30)NOT NULL,
	[Description] [varchar](200)NOT NULL,)
GO

CREATE TABLE [dbo].[Languages](
	[Name] [varchar](20) PRIMARY KEY  not NULL)
GO

CREATE TABLE [dbo].[Rules](
	[Access] [varchar](30) PRIMARY KEY  NOT NULL)
GO

CREATE TABLE [dbo].[Users](
	[Id] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](100) NOT NULL,
	[LastName] [varchar](100) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Password][varchar](100) NOT NULL,
	[DateOfBirth] [datetime] NOT NULL,
	[Access] [varchar](30) NOT NULL,
)
GO

CREATE TABLE [dbo].[UsersAndCourses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Id] [int] NOT NULL,
	[Course_Id] [int] NOT NULL
	PRIMARY KEY ([Id],[User_Id], [Course_Id]))
GO

ALTER TABLE [dbo].[Courses]  WITH CHECK ADD  CONSTRAINT [FK_Courses_Languages] FOREIGN KEY([Language])
REFERENCES [dbo].[Languages] ([Name])
GO

ALTER TABLE [dbo].[Courses] CHECK CONSTRAINT [FK_Courses_Languages]
GO

ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users-Rules] FOREIGN KEY([Access])
REFERENCES [dbo].[Rules] ([Access])
GO

ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users-Rules]
GO

ALTER TABLE [dbo].[UsersAndCourses]  WITH CHECK ADD  CONSTRAINT [FK_Courses-UsersAndCourses] FOREIGN KEY([Course_Id])
REFERENCES [dbo].[Courses] ([Id])
GO

ALTER TABLE [dbo].[UsersAndCourses] CHECK CONSTRAINT [FK_Courses-UsersAndCourses]
GO

ALTER TABLE [dbo].[UsersAndCourses]  WITH CHECK ADD  CONSTRAINT [FK_Users-UsersAndCourses] FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
GO

ALTER TABLE [dbo].[UsersAndCourses] CHECK CONSTRAINT [FK_Users-UsersAndCourses]
GO

INSERT INTO Rules (Access) VALUES ('Admin')
GO
INSERT INTO Rules (Access) VALUES ('Common')
GO

INSERT INTO [dbo].[Languages]
           ([Name])
     VALUES
           ('Polski')
GO
INSERT INTO [dbo].[Languages]
           ([Name])
     VALUES
           ('English')
GO

INSERT INTO [dbo].[Courses]
           ([Name]
           ,[Price]
           ,[Currency]
           ,[Language]
           ,[Level]
           ,[Description])
     VALUES
           ('Programowanie C#'
           ,'500'
           ,'PLN'
           ,'Polski'
           ,'1'
           ,'Szybka nauka programowania w jezyku C#')
GO
INSERT INTO [dbo].[Courses]
           ([Name]
           ,[Price]
           ,[Currency]
           ,[Language]
           ,[Level]
           ,[Description])
     VALUES
           ('Turkish Language'
           ,'69'
           ,'EUR'
           ,'English'
           ,'10'
           ,'Advanced learning of the Turkish language')
GO

INSERT INTO [dbo].[Users]
           ([FirstName]
           ,[LastName]
           ,[Email]
       ,[Password]
           ,[DateOfBirth]
           ,[Access])
     VALUES
           ('Jan'
           ,'Marchwicki'
           ,'jan.marchwicki@gmail.com'
       ,'hotbird1'
           ,1998-07-08 
           ,'Common')
GO
INSERT INTO [dbo].[Users]
           ([FirstName]
           ,[LastName]
           ,[Email]
       ,[Password]
           ,[DateOfBirth]
           ,[Access])
     VALUES
           ('Tadeusz'
           ,'Zieba'
           ,'tadeusz.zieba@onet.pl'
       ,'tadeuszkox01'
           ,2001-04-21
           ,'Common')
GO
INSERT INTO [dbo].[Users]
           ([FirstName]
           ,[LastName]
           ,[Email]
       ,[Password]
           ,[DateOfBirth]
           ,[Access])
     VALUES
           ('Amadeusz'
           ,'Dziebacz'
           ,'amadeusz.dziebacz@gmail.com'
       ,'zaq1@WSX'
           ,1989-11-24
           ,'Admin')
GO

INSERT INTO [dbo].[UsersAndCourses]
		([Course_Id],
		[User_Id])
		VALUES
		(1,1)
	go

INSERT INTO [dbo].[UsersAndCourses]
		([Course_Id],
		[User_Id])
		VALUES
		(2,2)
	go
