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

CREATE TABLE [dbo].[UsersAndCourses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Id] [int] NOT NULL,
	[Course_Id] [int] NOT NULL
	PRIMARY KEY ([Id],[User_Id], [Course_Id]))
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[AspNetUsers](
    [Id] [nvarchar](450) NOT NULL,
    [FirstName] [nvarchar](max) NOT NULL,
    [LastName] [nvarchar](max) NOT NULL,
    [UserName] [nvarchar](256) NULL,
    [NormalizedUserName] [nvarchar](256) NULL,
    [Email] [nvarchar](256) NULL,
    [NormalizedEmail] [nvarchar](256) NULL,
    [EmailConfirmed] [bit] NOT NULL,
    [PasswordHash] [nvarchar](max) NULL,
    [SecurityStamp] [nvarchar](max) NULL,
    [ConcurrencyStamp] [nvarchar](max) NULL,
    [PhoneNumber] [nvarchar](max) NULL,
    [PhoneNumberConfirmed] [bit] NOT NULL,
    [TwoFactorEnabled] [bit] NOT NULL,
    [LockoutEnd] [datetimeoffset](7) NULL,
    [LockoutEnabled] [bit] NOT NULL,
    [AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
    [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

USE [Projekt_ASP_NET]
GO

/** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 14.02.2023 23:43:17 **/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[AspNetUserLogins](
    [LoginProvider] [nvarchar](128) NOT NULL,
    [ProviderKey] [nvarchar](128) NOT NULL,
    [ProviderDisplayName] [nvarchar](max) NULL,
    [UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
    [LoginProvider] ASC,
    [ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUserLogins] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO

ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUserLogins]
GO

USE [Projekt_ASP_NET]
GO

/** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 14.02.2023 23:46:42 **/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[AspNetUserRoles](
    [UserId] [nvarchar](450) NOT NULL,
    [RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
    [UserId] ASC,
    [RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO

ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles]
GO

ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUserRoles] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO

ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUserRoles]
GO

USE [Projekt_ASP_NET]
GO

/** Object:  Table [dbo].[AspNetRoles]    Script Date: 14.02.2023 23:41:50 **/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[AspNetRoles](
    [Id] [nvarchar](450) NOT NULL,
    [Name] [nvarchar](256) NULL,
    [NormalizedName] [nvarchar](256) NULL,
    [ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
    [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

USE [Projekt_ASP_NET]
GO

/** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 14.02.2023 23:40:03 **/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[AspNetRoleClaims](
    [Id] [int] NOT NULL,
    [RoleId] [nvarchar](450) NOT NULL,
    [ClaimType] [nvarchar](max) NULL,
    [ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
    [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO

ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[AspNetUserClaims](
    [Id] [int] NOT NULL,
    [UserId] [nvarchar](450) NOT NULL,
    [ClaimType] [nvarchar](max) NULL,
    [ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
    [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUserClaims] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUserClaims] ([Id])
GO

ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUserClaims]
GO



ALTER TABLE [dbo].[Courses]  WITH CHECK ADD  CONSTRAINT [FK_Courses_Languages] FOREIGN KEY([Language])
REFERENCES [dbo].[Languages] ([Name])
GO

ALTER TABLE [dbo].[Courses] CHECK CONSTRAINT [FK_Courses_Languages]
GO


ALTER TABLE [dbo].[UsersAndCourses]  WITH CHECK ADD  CONSTRAINT [FK_Courses-UsersAndCourses] FOREIGN KEY([Course_Id])
REFERENCES [dbo].[Courses] ([Id])
GO

ALTER TABLE [dbo].[UsersAndCourses] CHECK CONSTRAINT [FK_Courses-UsersAndCourses]
GO


INSERT INTO [dbo].[Languages]
           ([Name])
     VALUES
           ('Polish')
GO
INSERT INTO [dbo].[Languages]
           ([Name])
     VALUES
           ('English')
GO
INSERT INTO [dbo].[Languages]
           ([Name])
     VALUES
           ('German')
GO
INSERT INTO [dbo].[Languages]
           ([Name])
     VALUES
           ('Dutch')
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
           ,'Polish'
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
INSERT INTO [dbo].[Courses]
           ([Name]
           ,[Price]
           ,[Currency]
           ,[Language]
           ,[Level]
           ,[Description])
     VALUES
           ('Javascript course'
           ,'100'
           ,'EUR'
           ,'German'
           ,'8'
           ,'Mid-Advanced course about Javascript')
GO
INSERT INTO [dbo].[Courses]
           ([Name]
           ,[Price]
           ,[Currency]
           ,[Language]
           ,[Level]
           ,[Description])
     VALUES
           ('Cooking Course'
           ,'250'
           ,'EUR'
           ,'Dutch'
           ,'5'
           ,'Semi-Advanced learning of cooking')
GO
GO

INSERT INTO [dbo].[AspNetUsers]
           ([Id]
           ,[FirstName]
           ,[LastName]
           ,[UserName]
           ,[NormalizedUserName]
           ,[Email]
           ,[NormalizedEmail]
           ,[EmailConfirmed]
           ,[PasswordHash]
           ,[SecurityStamp]
           ,[ConcurrencyStamp]
           ,[PhoneNumber]
           ,[PhoneNumberConfirmed]
           ,[TwoFactorEnabled]
           ,[LockoutEnd]
           ,[LockoutEnabled]
           ,[AccessFailedCount])
     VALUES
           ('b5faf9f4-ff85-42fd-86b6-e9a1fdcb559d'
	   ,'Mateusz'
	   ,'Jaro'
	   ,'Mateusz@Jaro.pl'
	   ,'MATEUSZ@JARO.PL'
	   ,'Mateusz@Jaro.pl'
	   ,'MATEUSZ@JARO.PL'
	   ,'True'
	   ,'AQAAAAEAACcQAAAAECO0rP1cGuSzwXdCi5bpmp2Af0jP1VW6xbciyr76BylMo0B89RdCdH0TTCHla+mNfQ=='
	   ,'A27J7XJWL6EU3S35EPQKONR5MZBAZQKA'
	   ,'df43a944-55c0-4782-8340-d58cadb89d56'
	   ,'787787737'
	   ,'False'
	   ,'False'
	   ,'2023-02-17 13:45:30.1234567 -05:00'
	   ,'True'
	   ,'0')
GO
INSERT INTO [dbo].[AspNetUsers]
           ([Id]
           ,[FirstName]
           ,[LastName]
           ,[UserName]
           ,[NormalizedUserName]
           ,[Email]
           ,[NormalizedEmail]
           ,[EmailConfirmed]
           ,[PasswordHash]
           ,[SecurityStamp]
           ,[ConcurrencyStamp]
           ,[PhoneNumber]
           ,[PhoneNumberConfirmed]
           ,[TwoFactorEnabled]
           ,[LockoutEnd]
           ,[LockoutEnabled]
           ,[AccessFailedCount])
     VALUES
           ('b27df8c3-a90d-4520-8e6b-fa05cad16479'
	   ,'Krzysztof'
	   ,'Iwan'
	   ,'Krzysztof@Iwan.pl'
	   ,'KRZYSZTOF@IWAN.PL'
	   ,'Krzysztof@Iwan.pl'
	   ,'KRZYSZTOF@IWAN.PL'
	   ,'True'
	   ,'AQAAAAEAACcQAAAAEE9SzBQdbopcMnKjz3jtXqW13z/mIDaVq8rkPRVpgShtqPJ4BYl+QJ3V9ltu5b8C1Q=='
	   ,'ZFFYYSMZXD7NAHVHP2OZMWK25AAYU2E7'
	   ,'a156674c-138e-4dda-98b1-4a82ae27a43b'
	   ,'787787737'
	   ,'False'
	   ,'False'
	   ,'2023-02-17 13:45:30.1234567 -05:00'
	   ,'True'
	   ,'0')	   
GO
INSERT INTO [dbo].[AspNetUsers]
           ([Id]
           ,[FirstName]
           ,[LastName]
           ,[UserName]
           ,[NormalizedUserName]
           ,[Email]
           ,[NormalizedEmail]
           ,[EmailConfirmed]
           ,[PasswordHash]
           ,[SecurityStamp]
           ,[ConcurrencyStamp]
           ,[PhoneNumber]
           ,[PhoneNumberConfirmed]
           ,[TwoFactorEnabled]
           ,[LockoutEnd]
           ,[LockoutEnabled]
           ,[AccessFailedCount])
     VALUES
           ('258e0302-bee0-4afc-ba34-ba934243a383'
	   ,'Admin'
	   ,'Admin'
	   ,'Admin@CoursPlatform.com'
	   ,'ADMIN@COURSPLATFORM.COM'
	   ,'Admin@CoursPlatform.com'
	   ,'ADMIN@COURSPLATFORM.COM'
	   ,'True'
	   ,'AQAAAAEAACcQAAAAEHyRWoDiI2g/LEoQn70b28zB64MncJWavLIIIFyAsLlibW7F33Z+eE+PXHdbMCnZ6g=='
	   ,'SIGNARVNIQHU6HYUY6MLDJUBYPVJEYSJ'
	   ,'39171983-474f-4a6c-b58b-a50b4fa89f4d'
	   ,'787787737'
	   ,'False'
	   ,'False'
	   ,'2023-02-17 13:45:30.1234567 -05:00'
	   ,'True'
	   ,'0')	   
GO
INSERT INTO [dbo].[AspNetUsers]
           ([Id]
           ,[FirstName]
           ,[LastName]
           ,[UserName]
           ,[NormalizedUserName]
           ,[Email]
           ,[NormalizedEmail]
           ,[EmailConfirmed]
           ,[PasswordHash]
           ,[SecurityStamp]
           ,[ConcurrencyStamp]
           ,[PhoneNumber]
           ,[PhoneNumberConfirmed]
           ,[TwoFactorEnabled]
           ,[LockoutEnd]
           ,[LockoutEnabled]
           ,[AccessFailedCount])
     VALUES
           ('8dc18644-aabe-4f21-bcb8-f09d91043a71'
	   ,'Admin2'
	   ,'Admin2'
	   ,'Admin2@CoursPlatform.com'
	   ,'ADMIN2@COURSPLATFORM.COM'
	   ,'Admin2@CoursPlatform.com'
	   ,'ADMIN2@COURSPLATFORM.COM'
	   ,'True'
	   ,'AQAAAAEAACcQAAAAEL52sTl0qHERsiiV6FFC15oG5QQvNmgQU2GI5Ln85hnI/0P4TW66gIxcMZ3gJD4FWg=='
	   ,'F26YNQCZAU5U7UDAQOC2PWY3AGNZFNEK'
	   ,'b054d967-58f5-4c67-bd79-a974450c605c'
	   ,'787787737'
	   ,'False'
	   ,'False'
	   ,'2023-02-17 13:45:30.1234567 -05:00'
	   ,'True'
	   ,'0')	   
GO
INSERT INTO [dbo].[AspNetRoles]
           ([Id]
           ,[Name]
           ,[NormalizedName]
           ,[ConcurrencyStamp])
     VALUES
           ('1'
	   ,'Common')
GO
INSERT INTO [dbo].[AspNetRoles]
           ([Id]
           ,[Name]
           ,[NormalizedName]
           ,[ConcurrencyStamp])
     VALUES
           ('2'
	   ,'Admin')
GO

INSERT INTO [dbo].[AspNetUserRoles]
           ([UserId]
           ,[RoleId])
     VALUES
           ('258e0302-bee0-4afc-ba34-ba934243a383'
	   ,'2')
GO

INSERT INTO [dbo].[AspNetUserRoles]
           ([UserId]
           ,[RoleId])
     VALUES
     	   ('8dc18644-aabe-4f21-bcb8-f09d91043a71'
	   ,'2')
GO

INSERT INTO [dbo].[AspNetUserRoles]
           ([UserId]
           ,[RoleId])
     VALUES
     	   ('b27df8c3-a90d-4520-8e6b-fa05cad16479'
	   ,'1')
GO

INSERT INTO [dbo].[AspNetUserRoles]
           ([UserId]
           ,[RoleId])
     VALUES
     	   ('b5faf9f4-ff85-42fd-86b6-e9a1fdcb559d'
	   ,'1')
GO
INSERT INTO [dbo].[UsersAndCourses]
           ([User_Id]
           ,[Course_Id])
     VALUES
           ('b5faf9f4-ff85-42fd-86b6-e9a1fdcb559d'
	   ,'1')
GO
INSERT INTO [dbo].[UsersAndCourses]
           ([User_Id]
           ,[Course_Id])
     VALUES
           ('b5faf9f4-ff85-42fd-86b6-e9a1fdcb559d'
	   ,'3')
GO
INSERT INTO [dbo].[UsersAndCourses]
           ([User_Id]
           ,[Course_Id])
     VALUES
           ('b27df8c3-a90d-4520-8e6b-fa05cad16479'
	   ,'2')
GO
INSERT INTO [dbo].[UsersAndCourses]
           ([User_Id]
           ,[Course_Id])
     VALUES
           ('b27df8c3-a90d-4520-8e6b-fa05cad16479'
	   ,'4')
