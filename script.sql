USE [BAS_Demand_Dashboard]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 5/8/2016 4:12:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 5/8/2016 4:12:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 5/8/2016 4:12:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 5/8/2016 4:12:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 5/8/2016 4:12:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 5/8/2016 4:12:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Audits]    Script Date: 5/8/2016 4:12:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Audits](
	[AuditID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[IPAddress] [nvarchar](max) NULL,
	[AreaAccessed] [nvarchar](max) NULL,
	[Timestamp] [datetime] NULL,
	[TimeAccessed] [datetime] NULL,
 CONSTRAINT [PK_dbo.Audits] PRIMARY KEY CLUSTERED 
(
	[AuditID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cities]    Script Date: 5/8/2016 4:12:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[country_id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Cities] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClosedSR_Column_List]    Script Date: 5/8/2016 4:12:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClosedSR_Column_List](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Column_Name] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_dbo.ClosedSR_Column_List] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClosedSRData]    Script Date: 5/8/2016 4:12:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClosedSRData](
	[Serial No.] [nvarchar](255) NULL,
	[Requistion No] [nvarchar](255) NULL,
	[initiator] [nvarchar](255) NULL,
	[Today] [nvarchar](255) NULL,
	[L1 Name] [nvarchar](255) NULL,
	[L2 Name] [nvarchar](255) NULL,
	[L3 Name] [nvarchar](255) NULL,
	[L4 Name] [nvarchar](255) NULL,
	[Initiator L1 Name] [nvarchar](255) NULL,
	[Initiator L2 Name] [nvarchar](255) NULL,
	[Initiator L3 Name] [nvarchar](255) NULL,
	[Initiator L4 Name] [nvarchar](255) NULL,
	[status] [nvarchar](255) NULL,
	[pending with] [nvarchar](255) NULL,
	[skills] [nvarchar](255) NULL,
	[Customer Name] [nvarchar](255) NULL,
	[Project Name] [nvarchar](255) NULL,
	[Project L1] [nvarchar](255) NULL,
	[Project L4] [nvarchar](255) NULL,
	[Project Archetype] [nvarchar](255) NULL,
	[Employee Band] [nvarchar](255) NULL,
	[Employee Group] [nvarchar](255) NULL,
	[designation] [nvarchar](255) NULL,
	[experience] [nvarchar](255) NULL,
	[Rating] [nvarchar](255) NULL,
	[job family] [nvarchar](255) NULL,
	[Job] [nvarchar](255) NULL,
	[Job Description] [nvarchar](255) NULL,
	[tag executive] [nvarchar](255) NULL,
	[country] [nvarchar](255) NULL,
	[Personal Area] [nvarchar](255) NULL,
	[Personal Sub Area] [nvarchar](255) NULL,
	[Expected Closure] [nvarchar](255) NULL,
	[Requisition Date] [nvarchar](255) NULL,
	[Final Approval] [nvarchar](255) NULL,
	[Requisition Source] [nvarchar](255) NULL,
	[billing type] [nvarchar](255) NULL,
	[Billing Start Date] [nvarchar](255) NULL,
	[TPG To TAG] [nvarchar](255) NULL,
	[TAG Manager To Executive] [nvarchar](255) NULL,
	[Request Resubmission Date] [nvarchar](255) NULL,
	[Request Closed] [nvarchar](255) NULL,
	[CloseReasons] [nvarchar](255) NULL,
	[closure_remarks] [nvarchar](255) NULL,
	[Closed By] [nvarchar](255) NULL,
	[age] [nvarchar](255) NULL,
	[vacancy] [nvarchar](255) NULL,
	[Internal Filled] [nvarchar](255) NULL,
	[External Offered] [nvarchar](255) NULL,
	[External Joined] [nvarchar](255) NULL,
	[Balance Postions] [nvarchar](255) NULL,
	[Offer Declined] [nvarchar](255) NULL,
	[TPEmpCode] [nvarchar](255) NULL,
	[TPEmpName] [nvarchar](255) NULL,
	[Position End Date] [nvarchar](255) NULL,
	[Valid Till Date] [nvarchar](255) NULL,
	[Actionable Position] [nvarchar](255) NULL,
	[bservsource] [nvarchar](255) NULL,
	[initialdemand] [nvarchar](255) NULL,
	[DroppedPos] [nvarchar](255) NULL,
	[ReasonCodeforL4JobFamily] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClosedSRFiles]    Script Date: 5/8/2016 4:12:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClosedSRFiles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FileName] [nvarchar](500) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[IP] [nvarchar](max) NULL,
	[ForwardIP] [nvarchar](500) NULL,
	[SheetName] [nvarchar](max) NULL,
	[InsertedDt] [datetime] NULL,
	[UpdatedDt] [datetime] NULL,
 CONSTRAINT [PK_dbo.ClosedSRFiles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClosedSRRawData]    Script Date: 5/8/2016 4:13:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClosedSRRawData](
	[Serial No.] [nvarchar](255) NULL,
	[Requistion No] [nvarchar](255) NULL,
	[initiator] [nvarchar](255) NULL,
	[Today] [nvarchar](255) NULL,
	[L1 Name] [nvarchar](255) NULL,
	[L2 Name] [nvarchar](255) NULL,
	[L3 Name] [nvarchar](255) NULL,
	[L4 Name] [nvarchar](255) NULL,
	[Initiator L1 Name] [nvarchar](255) NULL,
	[Initiator L2 Name] [nvarchar](255) NULL,
	[Initiator L3 Name] [nvarchar](255) NULL,
	[Initiator L4 Name] [nvarchar](255) NULL,
	[status] [nvarchar](255) NULL,
	[pending with] [nvarchar](255) NULL,
	[skills] [nvarchar](255) NULL,
	[Customer Name] [nvarchar](255) NULL,
	[Project Name] [nvarchar](255) NULL,
	[Project L1] [nvarchar](255) NULL,
	[Project L4] [nvarchar](255) NULL,
	[Project Archetype] [nvarchar](255) NULL,
	[Employee Band] [nvarchar](255) NULL,
	[Employee Group] [nvarchar](255) NULL,
	[designation] [nvarchar](255) NULL,
	[experience] [nvarchar](255) NULL,
	[Rating] [nvarchar](255) NULL,
	[job family] [nvarchar](255) NULL,
	[Job] [nvarchar](255) NULL,
	[Job Description] [nvarchar](255) NULL,
	[tag executive] [nvarchar](255) NULL,
	[country] [nvarchar](255) NULL,
	[Personal Area] [nvarchar](255) NULL,
	[Personal Sub Area] [nvarchar](255) NULL,
	[Expected Closure] [nvarchar](255) NULL,
	[Requisition Date] [nvarchar](255) NULL,
	[Final Approval] [nvarchar](255) NULL,
	[Requisition Source] [nvarchar](255) NULL,
	[billing type] [nvarchar](255) NULL,
	[Billing Start Date] [nvarchar](255) NULL,
	[TPG To TAG] [nvarchar](255) NULL,
	[TAG Manager To Executive] [nvarchar](255) NULL,
	[Request Resubmission Date] [nvarchar](255) NULL,
	[Request Closed] [nvarchar](255) NULL,
	[CloseReasons] [nvarchar](255) NULL,
	[closure_remarks] [nvarchar](255) NULL,
	[Closed By] [nvarchar](255) NULL,
	[age] [nvarchar](255) NULL,
	[vacancy] [nvarchar](255) NULL,
	[Internal Filled] [nvarchar](255) NULL,
	[External Offered] [nvarchar](255) NULL,
	[External Joined] [nvarchar](255) NULL,
	[Balance Postions] [nvarchar](255) NULL,
	[Offer Declined] [nvarchar](255) NULL,
	[TPEmpCode] [nvarchar](255) NULL,
	[TPEmpName] [nvarchar](255) NULL,
	[Position End Date] [nvarchar](255) NULL,
	[Valid Till Date] [nvarchar](255) NULL,
	[Actionable Position] [nvarchar](255) NULL,
	[bservsource] [nvarchar](255) NULL,
	[initialdemand] [nvarchar](255) NULL,
	[DroppedPos] [nvarchar](255) NULL,
	[ReasonCodeforL4JobFamily] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Countries]    Script Date: 5/8/2016 4:13:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[geo_id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Countries] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Demand_Column_List]    Script Date: 5/8/2016 4:13:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Demand_Column_List](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Column_Name] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Demand_DataImport]    Script Date: 5/8/2016 4:13:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Demand_DataImport](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Demand_File_ID] [int] NOT NULL,
	[SheetName] [nvarchar](200) NOT NULL,
	[InsertedDt] [datetime] NULL,
	[UpdatedDt] [datetime] NULL,
 CONSTRAINT [PK_dbo.Demand_DataImport] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Demand_Historical_Column_List]    Script Date: 5/8/2016 4:13:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Demand_Historical_Column_List](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Column_Name] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_dbo.Demand_Historical_Column_List] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Demand_History_Column_List]    Script Date: 5/8/2016 4:13:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Demand_History_Column_List](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Column_Name] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_dbo.Demand_Column_List] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DemandFiles]    Script Date: 5/8/2016 4:13:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemandFiles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[IP] [nvarchar](max) NULL,
	[ForwardIP] [nvarchar](500) NULL,
	[InsertedDt] [datetime] NULL,
	[UpdatedDt] [datetime] NULL,
	[FileName] [nvarchar](500) NOT NULL,
	[SheetName] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.DemandFiles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DemandHistoricalFiles]    Script Date: 5/8/2016 4:13:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemandHistoricalFiles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FileName] [nvarchar](500) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[IP] [nvarchar](max) NULL,
	[ForwardIP] [nvarchar](500) NULL,
	[SheetName] [nvarchar](max) NULL,
	[InsertedDt] [datetime] NULL,
	[UpdatedDt] [datetime] NULL,
	[Month] [nvarchar](max) NULL,
	[Year] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.DemandHistoricalFiles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DemandHistoricalRawData]    Script Date: 5/8/2016 4:13:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemandHistoricalRawData](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MonthKey] [int] NULL,
	[ReqNo] [nvarchar](500) NULL,
	[Joining Level 1] [nvarchar](500) NULL,
	[Joining Level 2] [nvarchar](500) NULL,
	[Joining Level 3] [nvarchar](500) NULL,
	[Joining Level 4] [nvarchar](500) NULL,
	[Initiator] [nvarchar](500) NULL,
	[Status] [nvarchar](500) NULL,
	[Pending with] [nvarchar](500) NULL,
	[Primary Skills] [nvarchar](500) NULL,
	[Secondary Skills] [nvarchar](500) NULL,
	[Primary Skill Category] [nvarchar](500) NULL,
	[Primary Skill Area] [nvarchar](500) NULL,
	[Customer] [nvarchar](500) NULL,
	[Project] [nvarchar](500) NULL,
	[Project Code] [nvarchar](500) NULL,
	[Project L1] [nvarchar](500) NULL,
	[Project L4] [nvarchar](500) NULL,
	[Band] [nvarchar](500) NULL,
	[Sub band] [nvarchar](500) NULL,
	[Designation] [nvarchar](500) NULL,
	[Experience] [nvarchar](500) NULL,
	[TRating] [nvarchar](500) NULL,
	[WPC/TAG Name] [nvarchar](500) NULL,
	[Job Family] [nvarchar](500) NULL,
	[Job] [nvarchar](500) NULL,
	[Job Description] [nvarchar](500) NULL,
	[country] [nvarchar](500) NULL,
	[Personal Area] [nvarchar](500) NULL,
	[Personal SubArea] [nvarchar](500) NULL,
	[On Boarding Date] [nvarchar](500) NULL,
	[Req Date] [nvarchar](500) NULL,
	[Approval Date] [nvarchar](500) NULL,
	[Requisition Source] [nvarchar](500) NULL,
	[Employee Group] [nvarchar](500) NULL,
	[Billing Type] [nvarchar](500) NULL,
	[Billing Start Date] [nvarchar](500) NULL,
	[age] [nvarchar](500) NULL,
	[Vacancy] [nvarchar](500) NULL,
	[Internal_Filled] [nvarchar](500) NULL,
	[External_Offered] [nvarchar](500) NULL,
	[External_Joined] [nvarchar](500) NULL,
	[TPG_To_TAG_Assign_dt] [nvarchar](500) NULL,
	[TAG_Exe_Assign_dt] [nvarchar](500) NULL,
	[Initiator Level 1] [nvarchar](500) NULL,
	[Initiator Level 2] [nvarchar](500) NULL,
	[Initiator Level 3] [nvarchar](500) NULL,
	[Initiator Level 4] [nvarchar](500) NULL,
	[Req_Close_dt] [nvarchar](500) NULL,
	[Closure_Remarks] [nvarchar](500) NULL,
	[Closed_By] [nvarchar](500) NULL,
	[Req_Resubmission_dt] [nvarchar](500) NULL,
	[Balance_Postions] [nvarchar](500) NULL,
	[Offer_Declined] [nvarchar](500) NULL,
	[Total Attached] [nvarchar](500) NULL,
	[Total forwarded] [nvarchar](500) NULL,
	[Total Blocked] [nvarchar](500) NULL,
	[Total Rejected] [nvarchar](500) NULL,
	[Total Shortlisted] [nvarchar](500) NULL,
	[Total Final Select] [nvarchar](500) NULL,
	[Internal Filled SAP Codes] [nvarchar](500) NULL,
	[Position End Date] [nvarchar](500) NULL,
	[Internal Filled SAP Codes1] [nvarchar](500) NULL,
	[Actionable Position] [nvarchar](500) NULL,
	[Valid Till Date] [nvarchar](500) NULL,
	[InitialSourceByFinalApprover] [nvarchar](500) NULL,
	[BservSource] [nvarchar](500) NULL,
	[InitialDemand] [nvarchar](500) NULL,
	[DroppedPos] [nvarchar](500) NULL,
	[Names of Reosources ] [nvarchar](500) NULL,
	[BUCKETIZATION] [nvarchar](500) NULL,
	[REMARKS] [nvarchar](500) NULL,
	[Pipeline] [nvarchar](500) NULL,
	[Net Gap] [nvarchar](500) NULL,
	[On/Off] [nvarchar](500) NULL,
	[GEO] [nvarchar](500) NULL,
	[Pending with?] [nvarchar](500) NULL,
	[Today] [nvarchar](500) NULL,
	[PENDING WITH EXE] [nvarchar](500) NULL,
	[DUE MONTH BEGIN] [nvarchar](500) NULL,
	[DUE MONTH END] [nvarchar](500) NULL,
	[NBL Date] [nvarchar](500) NULL,
	[Already Overdue ] [nvarchar](500) NULL,
	[Due this Month] [nvarchar](500) NULL,
	[Due Cat for NBL] [nvarchar](500) NULL,
	[NBL Days] [nvarchar](500) NULL,
	[OVER DUE MONTHS] [nvarchar](500) NULL,
	[REALIZATION RATE (NBL)] [nvarchar](500) NULL,
	[Notional Billing Loss] [nvarchar](500) NULL,
	[NBL (Yes Or No)] [nvarchar](500) NULL,
	[NBL Groups] [nvarchar](500) NULL,
	[AD Aging] [nvarchar](500) NULL,
	[SR Date] [nvarchar](500) NULL,
	[SR Aging] [nvarchar](500) NULL,
	[SR Aging Group] [nvarchar](500) NULL,
	[SR TREND] [nvarchar](500) NULL,
	[Week] [nvarchar](500) NULL,
	[Healthcare] [nvarchar](500) NULL,
	[BSD] [nvarchar](500) NULL,
	[FFD] [nvarchar](500) NULL,
 CONSTRAINT [PK_DemandHistoricalRawData] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DemandHistoricalRawData_delete]    Script Date: 5/8/2016 4:13:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemandHistoricalRawData_delete](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MonthKey] [int] NULL,
	[ReqNo] [nvarchar](500) NULL,
	[Joining Level 1] [nvarchar](500) NULL,
	[Joining Level 2] [nvarchar](500) NULL,
	[Joining Level 3] [nvarchar](500) NULL,
	[Joining Level 4] [nvarchar](500) NULL,
	[Initiator] [nvarchar](500) NULL,
	[Status] [nvarchar](500) NULL,
	[Pending with] [nvarchar](500) NULL,
	[Primary Skills] [nvarchar](500) NULL,
	[Secondary Skills] [nvarchar](500) NULL,
	[Primary Skill Category] [nvarchar](500) NULL,
	[Primary Skill Area] [nvarchar](500) NULL,
	[Customer] [nvarchar](500) NULL,
	[Project] [nvarchar](500) NULL,
	[Project Code] [nvarchar](500) NULL,
	[Project L1] [nvarchar](500) NULL,
	[Project L4] [nvarchar](500) NULL,
	[Band] [nvarchar](500) NULL,
	[Sub band] [nvarchar](500) NULL,
	[Designation] [nvarchar](500) NULL,
	[Experience] [nvarchar](500) NULL,
	[TRating] [nvarchar](500) NULL,
	[WPC/TAG Name] [nvarchar](500) NULL,
	[Job Family] [nvarchar](500) NULL,
	[Job] [nvarchar](500) NULL,
	[Job Description] [nvarchar](500) NULL,
	[country] [nvarchar](500) NULL,
	[Personal Area] [nvarchar](500) NULL,
	[Personal SubArea] [nvarchar](500) NULL,
	[On Boarding Date] [nvarchar](500) NULL,
	[Req Date] [nvarchar](500) NULL,
	[Approval Date] [nvarchar](500) NULL,
	[Requisition Source] [nvarchar](500) NULL,
	[Employee Group] [nvarchar](500) NULL,
	[Billing Type] [nvarchar](500) NULL,
	[Billing Start Date] [nvarchar](500) NULL,
	[age] [nvarchar](500) NULL,
	[Vacancy] [nvarchar](500) NULL,
	[Internal_Filled] [nvarchar](500) NULL,
	[External_Offered] [nvarchar](500) NULL,
	[External_Joined] [nvarchar](500) NULL,
	[TPG_To_TAG_Assign_dt] [nvarchar](500) NULL,
	[TAG_Exe_Assign_dt] [nvarchar](500) NULL,
	[Initiator Level 1] [nvarchar](500) NULL,
	[Initiator Level 2] [nvarchar](500) NULL,
	[Initiator Level 3] [nvarchar](500) NULL,
	[Initiator Level 4] [nvarchar](500) NULL,
	[Req_Close_dt] [nvarchar](500) NULL,
	[Closure_Remarks] [nvarchar](500) NULL,
	[Closed_By] [nvarchar](500) NULL,
	[Req_Resubmission_dt] [nvarchar](500) NULL,
	[Balance_Postions] [nvarchar](500) NULL,
	[Offer_Declined] [nvarchar](500) NULL,
	[Total Attached] [nvarchar](500) NULL,
	[Total forwarded] [nvarchar](500) NULL,
	[Total Blocked] [nvarchar](500) NULL,
	[Total Rejected] [nvarchar](500) NULL,
	[Total Shortlisted] [nvarchar](500) NULL,
	[Total Final Select] [nvarchar](500) NULL,
	[Internal Filled SAP Codes] [nvarchar](500) NULL,
	[Position End Date] [nvarchar](500) NULL,
	[Internal Filled SAP Codes1] [nvarchar](500) NULL,
	[Actionable Position] [nvarchar](500) NULL,
	[Valid Till Date] [nvarchar](500) NULL,
	[InitialSourceByFinalApprover] [nvarchar](500) NULL,
	[BservSource] [nvarchar](500) NULL,
	[InitialDemand] [nvarchar](500) NULL,
	[DroppedPos] [nvarchar](500) NULL,
	[Names of Reosources ] [nvarchar](500) NULL,
	[BUCKETIZATION] [nvarchar](500) NULL,
	[REMARKS] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DemandPostExec]    Script Date: 5/8/2016 4:13:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemandPostExec](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IsRunning] [int] NULL,
	[IsQueue] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DemandRawData]    Script Date: 5/8/2016 4:13:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemandRawData](
	[ReqNo] [nvarchar](500) NULL,
	[Joining Level 1] [nvarchar](500) NULL,
	[Joining Level 2] [nvarchar](500) NULL,
	[Joining Level 3] [nvarchar](500) NULL,
	[Joining Level 4] [nvarchar](500) NULL,
	[Initiator] [nvarchar](500) NULL,
	[Status] [nvarchar](500) NULL,
	[Pending with] [nvarchar](500) NULL,
	[Primary Skills] [nvarchar](500) NULL,
	[Secondary Skills] [nvarchar](500) NULL,
	[Primary Skill Category] [nvarchar](500) NULL,
	[Primary Skill Area] [nvarchar](500) NULL,
	[Customer] [nvarchar](500) NULL,
	[Project] [nvarchar](500) NULL,
	[Project Code] [nvarchar](500) NULL,
	[Project L1] [nvarchar](500) NULL,
	[Project L4] [nvarchar](500) NULL,
	[Band] [nvarchar](500) NULL,
	[Sub band] [nvarchar](500) NULL,
	[Designation] [nvarchar](500) NULL,
	[Experience] [nvarchar](500) NULL,
	[TRating] [nvarchar](500) NULL,
	[WPC/TAG Name] [nvarchar](500) NULL,
	[Job Family] [nvarchar](500) NULL,
	[Job] [nvarchar](500) NULL,
	[Job Description] [nvarchar](500) NULL,
	[country] [nvarchar](500) NULL,
	[Personal Area] [nvarchar](500) NULL,
	[Personal SubArea] [nvarchar](500) NULL,
	[On Boarding Date] [nvarchar](500) NULL,
	[Req Date] [nvarchar](500) NULL,
	[Approval Date] [nvarchar](500) NULL,
	[Requisition Source] [nvarchar](500) NULL,
	[Employee Group] [nvarchar](500) NULL,
	[Billing Type] [nvarchar](500) NULL,
	[Billing Start Date] [nvarchar](500) NULL,
	[age] [nvarchar](500) NULL,
	[Vacancy] [nvarchar](500) NULL,
	[Internal_Filled] [nvarchar](500) NULL,
	[External_Offered] [nvarchar](500) NULL,
	[External_Joined] [nvarchar](500) NULL,
	[TPG_To_TAG_Assign_dt] [nvarchar](500) NULL,
	[TAG_Exe_Assign_dt] [nvarchar](500) NULL,
	[Initiator Level 1] [nvarchar](500) NULL,
	[Initiator Level 2] [nvarchar](500) NULL,
	[Initiator Level 3] [nvarchar](500) NULL,
	[Initiator Level 4] [nvarchar](500) NULL,
	[Req_Close_dt] [nvarchar](500) NULL,
	[Closure_Remarks] [nvarchar](500) NULL,
	[Closed_By] [nvarchar](500) NULL,
	[Req_Resubmission_dt] [nvarchar](500) NULL,
	[Balance_Postions] [nvarchar](500) NULL,
	[Offer_Declined] [nvarchar](500) NULL,
	[Total Attached] [nvarchar](500) NULL,
	[Total forwarded] [nvarchar](500) NULL,
	[Total Blocked] [nvarchar](500) NULL,
	[Total Rejected] [nvarchar](500) NULL,
	[Total Shortlisted] [nvarchar](500) NULL,
	[Total Final Select] [nvarchar](500) NULL,
	[Internal Filled SAP Codes] [nvarchar](500) NULL,
	[Position End Date] [nvarchar](500) NULL,
	[Internal Filled SAP Codes1] [nvarchar](500) NULL,
	[Actionable Position] [nvarchar](500) NULL,
	[Valid Till Date] [nvarchar](500) NULL,
	[InitialSourceByFinalApprover] [nvarchar](500) NULL,
	[BservSource] [nvarchar](500) NULL,
	[InitialDemand] [nvarchar](500) NULL,
	[DroppedPos] [nvarchar](500) NULL,
	[Names of Reosources ] [nvarchar](500) NULL,
	[BUCKETIZATION] [nvarchar](500) NULL,
	[REMARKS] [nvarchar](500) NULL,
	[Pipeline] [nvarchar](500) NULL,
	[Net Gap] [nvarchar](500) NULL,
	[On/Off] [nvarchar](500) NULL,
	[GEO] [nvarchar](500) NULL,
	[Pending with?] [nvarchar](500) NULL,
	[Today] [nvarchar](500) NULL,
	[PENDING WITH EXE] [nvarchar](500) NULL,
	[DUE MONTH BEGIN] [nvarchar](500) NULL,
	[DUE MONTH END] [nvarchar](500) NULL,
	[NBL Date] [nvarchar](500) NULL,
	[Already Overdue ] [nvarchar](500) NULL,
	[Due this Month] [nvarchar](500) NULL,
	[Due Cat for NBL] [nvarchar](500) NULL,
	[NBL Days] [nvarchar](500) NULL,
	[OVER DUE MONTHS] [nvarchar](500) NULL,
	[REALIZATION RATE (NBL)] [nvarchar](500) NULL,
	[Notional Billing Loss] [nvarchar](500) NULL,
	[NBL (Yes Or No)] [nvarchar](500) NULL,
	[NBL Groups] [nvarchar](500) NULL,
	[AD Aging] [nvarchar](500) NULL,
	[SR Date] [nvarchar](500) NULL,
	[SR Aging] [nvarchar](500) NULL,
	[SR Aging Group] [nvarchar](500) NULL,
	[SR TREND] [nvarchar](500) NULL,
	[Week] [nvarchar](500) NULL,
	[Healthcare] [nvarchar](500) NULL,
	[BSD] [nvarchar](500) NULL,
	[FFD] [nvarchar](500) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DimDate]    Script Date: 5/8/2016 4:13:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimDate](
	[CalendarYearMonth] [int] NOT NULL,
	[MonthName] [nvarchar](255) NULL,
	[MonthOfYear] [float] NULL,
	[IsLastDayOfMonth] [nvarchar](255) NULL,
	[CalendarQuarter] [float] NULL,
	[CalendarYear] [float] NULL,
	[CalendarYearQtr] [nvarchar](255) NULL,
	[FiscalMonthOfYear] [float] NULL,
	[FiscalQuarter] [float] NULL,
	[FiscalYear] [float] NULL,
	[FiscalYearMonth] [nvarchar](255) NULL,
	[FiscalYearQtr] [nvarchar](255) NULL,
 CONSTRAINT [PK_DimDate] PRIMARY KEY CLUSTERED 
(
	[CalendarYearMonth] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DroppedSR_Column_List]    Script Date: 5/8/2016 4:13:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DroppedSR_Column_List](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Column_Name] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_dbo.DroppedSR_Column_List] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DroppedSRData]    Script Date: 5/8/2016 4:13:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DroppedSRData](
	[Serial No.] [nvarchar](255) NULL,
	[Requistion No] [nvarchar](50) NULL,
	[initiator] [nvarchar](255) NULL,
	[Today] [datetime] NULL,
	[L1 Name] [nvarchar](255) NULL,
	[L2 Name] [nvarchar](255) NULL,
	[L3 Name] [nvarchar](255) NULL,
	[L4 Name] [nvarchar](255) NULL,
	[Initiator L1 Name] [nvarchar](255) NULL,
	[Initiator L2 Name] [nvarchar](255) NULL,
	[Initiator L3 Name] [nvarchar](255) NULL,
	[Initiator L4 Name] [nvarchar](255) NULL,
	[status] [nvarchar](255) NULL,
	[pending with] [nvarchar](255) NULL,
	[skills] [nvarchar](255) NULL,
	[Customer Name] [nvarchar](255) NULL,
	[Project Name] [nvarchar](255) NULL,
	[Project L1] [nvarchar](255) NULL,
	[Project L4] [nvarchar](255) NULL,
	[Project Archetype] [nvarchar](255) NULL,
	[Employee Band] [nvarchar](255) NULL,
	[Employee Group] [nvarchar](255) NULL,
	[designation] [nvarchar](255) NULL,
	[experience] [nvarchar](255) NULL,
	[Rating] [nvarchar](255) NULL,
	[job family] [nvarchar](255) NULL,
	[job] [nvarchar](255) NULL,
	[Job Description] [nvarchar](255) NULL,
	[tag executive] [nvarchar](255) NULL,
	[country] [nvarchar](255) NULL,
	[Personal Area] [nvarchar](255) NULL,
	[Personal Sub Area] [nvarchar](255) NULL,
	[Expected Closure] [nvarchar](255) NULL,
	[Requisition Date] [nvarchar](255) NULL,
	[Final Approval] [nvarchar](255) NULL,
	[Requisition Source] [nvarchar](255) NULL,
	[billing type] [nvarchar](255) NULL,
	[Billing Start Date] [nvarchar](255) NULL,
	[TPG To TAG] [nvarchar](255) NULL,
	[TAG Manager To Executive] [nvarchar](255) NULL,
	[Request Resubmission Date] [nvarchar](255) NULL,
	[Updated By] [nvarchar](255) NULL,
	[age] [nvarchar](255) NULL,
	[vacancy] [nvarchar](255) NULL,
	[Internal Filled] [nvarchar](255) NULL,
	[External Offered] [nvarchar](255) NULL,
	[External Joined] [nvarchar](255) NULL,
	[Balance Postions] [nvarchar](255) NULL,
	[Offer Declined] [nvarchar](255) NULL,
	[Original Vacancy] [nvarchar](255) NULL,
	[No. of Positions Dropped] [nvarchar](255) NULL,
	[Position Dropped date] [nvarchar](255) NULL,
	[Position dropped comments] [nvarchar](255) NULL,
	[Position End Date] [nvarchar](255) NULL,
	[Valid Till Date] [nvarchar](255) NULL,
	[Actionable Position] [nvarchar](255) NULL,
	[bservsource] [nvarchar](255) NULL,
	[Reason] [nvarchar](255) NULL,
	[Drop Reason] [nvarchar](255) NULL,
	[ReasonCodeforL4JobFamily] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DroppedSRFiles]    Script Date: 5/8/2016 4:13:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DroppedSRFiles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FileName] [nvarchar](500) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[IP] [nvarchar](max) NULL,
	[ForwardIP] [nvarchar](500) NULL,
	[SheetName] [nvarchar](max) NULL,
	[InsertedDt] [datetime] NULL,
	[UpdatedDt] [datetime] NULL,
 CONSTRAINT [PK_dbo.DroppedSRFiles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DroppedSRRawData]    Script Date: 5/8/2016 4:13:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DroppedSRRawData](
	[Serial No.] [nvarchar](255) NULL,
	[Requistion No] [nvarchar](50) NULL,
	[initiator] [nvarchar](255) NULL,
	[Today] [datetime] NULL,
	[L1 Name] [nvarchar](255) NULL,
	[L2 Name] [nvarchar](255) NULL,
	[L3 Name] [nvarchar](255) NULL,
	[L4 Name] [nvarchar](255) NULL,
	[Initiator L1 Name] [nvarchar](255) NULL,
	[Initiator L2 Name] [nvarchar](255) NULL,
	[Initiator L3 Name] [nvarchar](255) NULL,
	[Initiator L4 Name] [nvarchar](255) NULL,
	[status] [nvarchar](255) NULL,
	[pending with] [nvarchar](255) NULL,
	[skills] [nvarchar](255) NULL,
	[Customer Name] [nvarchar](255) NULL,
	[Project Name] [nvarchar](255) NULL,
	[Project L1] [nvarchar](255) NULL,
	[Project L4] [nvarchar](255) NULL,
	[Project Archetype] [nvarchar](255) NULL,
	[Employee Band] [nvarchar](255) NULL,
	[Employee Group] [nvarchar](255) NULL,
	[designation] [nvarchar](255) NULL,
	[experience] [nvarchar](255) NULL,
	[Rating] [nvarchar](255) NULL,
	[job family] [nvarchar](255) NULL,
	[job] [nvarchar](255) NULL,
	[Job Description] [nvarchar](255) NULL,
	[tag executive] [nvarchar](255) NULL,
	[country] [nvarchar](255) NULL,
	[Personal Area] [nvarchar](255) NULL,
	[Personal Sub Area] [nvarchar](255) NULL,
	[Expected Closure] [nvarchar](255) NULL,
	[Requisition Date] [nvarchar](255) NULL,
	[Final Approval] [nvarchar](255) NULL,
	[Requisition Source] [nvarchar](255) NULL,
	[billing type] [nvarchar](255) NULL,
	[Billing Start Date] [nvarchar](255) NULL,
	[TPG To TAG] [nvarchar](255) NULL,
	[TAG Manager To Executive] [nvarchar](255) NULL,
	[Request Resubmission Date] [nvarchar](255) NULL,
	[Updated By] [nvarchar](255) NULL,
	[age] [nvarchar](255) NULL,
	[vacancy] [nvarchar](255) NULL,
	[Internal Filled] [nvarchar](255) NULL,
	[External Offered] [nvarchar](255) NULL,
	[External Joined] [nvarchar](255) NULL,
	[Balance Postions] [nvarchar](255) NULL,
	[Offer Declined] [nvarchar](255) NULL,
	[Original Vacancy] [nvarchar](255) NULL,
	[No. of Positions Dropped] [nvarchar](255) NULL,
	[Position Dropped date] [nvarchar](255) NULL,
	[Position dropped comments] [nvarchar](255) NULL,
	[Position End Date] [nvarchar](255) NULL,
	[Valid Till Date] [nvarchar](255) NULL,
	[Actionable Position] [nvarchar](255) NULL,
	[bservsource] [nvarchar](255) NULL,
	[Reason] [nvarchar](255) NULL,
	[Drop Reason] [nvarchar](255) NULL,
	[ReasonCodeforL4JobFamily] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[External_Column_List]    Script Date: 5/8/2016 4:13:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[External_Column_List](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Column_Name] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_dbo.External_Column_List] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExternalFiles]    Script Date: 5/8/2016 4:13:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExternalFiles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FileName] [nvarchar](500) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[IP] [nvarchar](max) NULL,
	[ForwardIP] [nvarchar](500) NULL,
	[SheetName] [nvarchar](max) NULL,
	[InsertedDt] [datetime] NULL,
	[UpdatedDt] [datetime] NULL,
 CONSTRAINT [PK_dbo.ExternalFiles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExternalFulfillmentData]    Script Date: 5/8/2016 4:13:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExternalFulfillmentData](
	[Serial No.] [nvarchar](255) NULL,
	[Requisition No] [nvarchar](50) NULL,
	[initiator] [nvarchar](255) NULL,
	[L1 Name] [nvarchar](255) NULL,
	[L2 Name] [nvarchar](255) NULL,
	[L3 Name] [nvarchar](255) NULL,
	[L4 Name] [nvarchar](255) NULL,
	[Today] [datetime] NULL,
	[status] [nvarchar](255) NULL,
	[pending with] [nvarchar](255) NULL,
	[experience] [nvarchar](255) NULL,
	[Rating] [nvarchar](255) NULL,
	[skills] [nvarchar](255) NULL,
	[SourceName] [nvarchar](255) NULL,
	[vEmailID] [nvarchar](255) NULL,
	[vCurrentDesignation] [nvarchar](255) NULL,
	[CV Source Detail] [nvarchar](255) NULL,
	[dtUpdatedOn] [nvarchar](255) NULL,
	[job family] [nvarchar](255) NULL,
	[Job] [nvarchar](255) NULL,
	[Job Description] [nvarchar](255) NULL,
	[Customer Name] [nvarchar](255) NULL,
	[CustomerCode] [nvarchar](255) NULL,
	[Project Name] [nvarchar](255) NULL,
	[Project Code] [nvarchar](255) NULL,
	[ProjectCategory] [nvarchar](255) NULL,
	[ProjectCode] [nvarchar](255) NULL,
	[project_l1] [nvarchar](255) NULL,
	[project_l4] [nvarchar](255) NULL,
	[Project Archetype] [nvarchar](255) NULL,
	[Requisition Source] [nvarchar](255) NULL,
	[Employee Band] [nvarchar](255) NULL,
	[Employee Group] [nvarchar](255) NULL,
	[country] [nvarchar](255) NULL,
	[Personal Area] [nvarchar](255) NULL,
	[Personal Sub Area] [nvarchar](255) NULL,
	[Requisition Date] [nvarchar](255) NULL,
	[1st Approval] [nvarchar](255) NULL,
	[2nd Approval] [nvarchar](255) NULL,
	[3rd Approval] [nvarchar](255) NULL,
	[Final Approval] [nvarchar](255) NULL,
	[Expected Closure] [nvarchar](255) NULL,
	[billing type] [nvarchar](255) NULL,
	[Billing Start Date] [nvarchar](255) NULL,
	[Closed Date] [nvarchar](255) NULL,
	[TPG Manager To Executive] [nvarchar](255) NULL,
	[TPG To TAG] [nvarchar](255) NULL,
	[TAG Manager To Executive] [nvarchar](255) NULL,
	[Pending with Name and ID] [nvarchar](255) NULL,
	[Joining Date] [nvarchar](255) NULL,
	[Offer Made] [nvarchar](255) NULL,
	[Offer Accepted] [nvarchar](255) NULL,
	[Employee Code] [nvarchar](255) NULL,
	[Employee Name] [nvarchar](255) NULL,
	[age] [nvarchar](255) NULL,
	[vacancy] [nvarchar](255) NULL,
	[Internal Filled] [nvarchar](255) NULL,
	[External Offered] [nvarchar](255) NULL,
	[External Joined] [nvarchar](255) NULL,
	[Employee Sub-Band] [nvarchar](255) NULL,
	[SR Band] [nvarchar](255) NULL,
	[SR Sub-Band] [nvarchar](255) NULL,
	[Position End Date] [nvarchar](255) NULL,
	[Valid Till Date] [nvarchar](255) NULL,
	[Actionable Position] [nvarchar](255) NULL,
	[bservsource] [nvarchar](255) NULL,
	[initialdemand] [nvarchar](255) NULL,
	[DroppedPos] [nvarchar](255) NULL,
	[referbackcount] [nvarchar](255) NULL,
	[latestreferbackremarks] [nvarchar](255) NULL,
	[First_ReferBack_DT] [nvarchar](255) NULL,
	[Last_ReferBack_DT] [nvarchar](255) NULL,
	[First_BSD_DT] [nvarchar](255) NULL,
	[Last_BSD_DT] [nvarchar](255) NULL,
	[First_Resubmission_dt] [nvarchar](255) NULL,
	[Last_Resubmission_dt] [nvarchar](255) NULL,
	[latestreferbackby] [nvarchar](255) NULL,
	[approver1] [nvarchar](255) NULL,
	[approver2] [nvarchar](255) NULL,
	[approver3] [nvarchar](255) NULL,
	[iEmpGroupType] [nvarchar](255) NULL,
	[TPAllowed] [nvarchar](255) NULL,
	[ReasonCodeforL4JobFamily] [nvarchar](255) NULL,
	[Bill Date] [nvarchar](255) NULL,
	[Valid Date] [nvarchar](255) NULL,
	[Position Date] [nvarchar](255) NULL,
	[vAdditionalRemarks] [nvarchar](255) NULL,
	[PullbackBy] [nvarchar](255) NULL,
	[PullbackReason] [nvarchar](255) NULL,
	[PullbackRemarks] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExternalFulfillmentRawData]    Script Date: 5/8/2016 4:13:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExternalFulfillmentRawData](
	[Serial No.] [nvarchar](255) NULL,
	[Requisition No] [nvarchar](50) NULL,
	[initiator] [nvarchar](255) NULL,
	[L1 Name] [nvarchar](255) NULL,
	[L2 Name] [nvarchar](255) NULL,
	[L3 Name] [nvarchar](255) NULL,
	[L4 Name] [nvarchar](255) NULL,
	[Today] [datetime] NULL,
	[status] [nvarchar](255) NULL,
	[pending with] [nvarchar](255) NULL,
	[experience] [nvarchar](255) NULL,
	[Rating] [nvarchar](255) NULL,
	[skills] [nvarchar](255) NULL,
	[SourceName] [nvarchar](255) NULL,
	[vEmailID] [nvarchar](255) NULL,
	[vCurrentDesignation] [nvarchar](255) NULL,
	[CV Source Detail] [nvarchar](255) NULL,
	[dtUpdatedOn] [nvarchar](255) NULL,
	[job family] [nvarchar](255) NULL,
	[Job] [nvarchar](255) NULL,
	[Job Description] [nvarchar](255) NULL,
	[Customer Name] [nvarchar](255) NULL,
	[CustomerCode] [nvarchar](255) NULL,
	[Project Name] [nvarchar](255) NULL,
	[Project Code] [nvarchar](255) NULL,
	[ProjectCategory] [nvarchar](255) NULL,
	[ProjectCode] [nvarchar](255) NULL,
	[project_l1] [nvarchar](255) NULL,
	[project_l4] [nvarchar](255) NULL,
	[Project Archetype] [nvarchar](255) NULL,
	[Requisition Source] [nvarchar](255) NULL,
	[Employee Band] [nvarchar](255) NULL,
	[Employee Group] [nvarchar](255) NULL,
	[country] [nvarchar](255) NULL,
	[Personal Area] [nvarchar](255) NULL,
	[Personal Sub Area] [nvarchar](255) NULL,
	[Requisition Date] [nvarchar](255) NULL,
	[1st Approval] [nvarchar](255) NULL,
	[2nd Approval] [nvarchar](255) NULL,
	[3rd Approval] [nvarchar](255) NULL,
	[Final Approval] [nvarchar](255) NULL,
	[Expected Closure] [nvarchar](255) NULL,
	[billing type] [nvarchar](255) NULL,
	[Billing Start Date] [nvarchar](255) NULL,
	[Closed Date] [nvarchar](255) NULL,
	[TPG Manager To Executive] [nvarchar](255) NULL,
	[TPG To TAG] [nvarchar](255) NULL,
	[TAG Manager To Executive] [nvarchar](255) NULL,
	[Pending with Name and ID] [nvarchar](255) NULL,
	[Joining Date] [nvarchar](255) NULL,
	[Offer Made] [nvarchar](255) NULL,
	[Offer Accepted] [nvarchar](255) NULL,
	[Employee Code] [nvarchar](255) NULL,
	[Employee Name] [nvarchar](255) NULL,
	[age] [nvarchar](255) NULL,
	[vacancy] [nvarchar](255) NULL,
	[Internal Filled] [nvarchar](255) NULL,
	[External Offered] [nvarchar](255) NULL,
	[External Joined] [nvarchar](255) NULL,
	[Employee Sub-Band] [nvarchar](255) NULL,
	[SR Band] [nvarchar](255) NULL,
	[SR Sub-Band] [nvarchar](255) NULL,
	[Position End Date] [nvarchar](255) NULL,
	[Valid Till Date] [nvarchar](255) NULL,
	[Actionable Position] [nvarchar](255) NULL,
	[bservsource] [nvarchar](255) NULL,
	[initialdemand] [nvarchar](255) NULL,
	[DroppedPos] [nvarchar](255) NULL,
	[referbackcount] [nvarchar](255) NULL,
	[latestreferbackremarks] [nvarchar](255) NULL,
	[First_ReferBack_DT] [nvarchar](255) NULL,
	[Last_ReferBack_DT] [nvarchar](255) NULL,
	[First_BSD_DT] [nvarchar](255) NULL,
	[Last_BSD_DT] [nvarchar](255) NULL,
	[First_Resubmission_dt] [nvarchar](255) NULL,
	[Last_Resubmission_dt] [nvarchar](255) NULL,
	[latestreferbackby] [nvarchar](255) NULL,
	[approver1] [nvarchar](255) NULL,
	[approver2] [nvarchar](255) NULL,
	[approver3] [nvarchar](255) NULL,
	[iEmpGroupType] [nvarchar](255) NULL,
	[TPAllowed] [nvarchar](255) NULL,
	[ReasonCodeforL4JobFamily] [nvarchar](255) NULL,
	[Bill Date] [nvarchar](255) NULL,
	[Valid Date] [nvarchar](255) NULL,
	[Position Date] [nvarchar](255) NULL,
	[vAdditionalRemarks] [nvarchar](255) NULL,
	[PullbackBy] [nvarchar](255) NULL,
	[PullbackReason] [nvarchar](255) NULL,
	[PullbackRemarks] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Geos]    Script Date: 5/8/2016 4:13:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Geos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Off_On_Shore] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Geos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Internal_Column_List]    Script Date: 5/8/2016 4:13:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Internal_Column_List](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Column_Name] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_dbo.Internal_Column_List] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InternalFiles]    Script Date: 5/8/2016 4:13:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InternalFiles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FileName] [nvarchar](500) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[IP] [nvarchar](max) NULL,
	[ForwardIP] [nvarchar](500) NULL,
	[SheetName] [nvarchar](max) NULL,
	[InsertedDt] [datetime] NULL,
	[UpdatedDt] [datetime] NULL,
 CONSTRAINT [PK_dbo.InternalFiles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InternalFulfillmentData]    Script Date: 5/8/2016 4:13:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InternalFulfillmentData](
	[Serial No.] [nvarchar](255) NULL,
	[Requistion No] [nvarchar](50) NULL,
	[initiator] [nvarchar](255) NULL,
	[L1 Name] [nvarchar](255) NULL,
	[L2 Name] [nvarchar](255) NULL,
	[L3 Name] [nvarchar](255) NULL,
	[L4 Name] [nvarchar](255) NULL,
	[Today] [datetime] NULL,
	[status] [nvarchar](255) NULL,
	[pending with] [nvarchar](255) NULL,
	[experience] [nvarchar](255) NULL,
	[Rating] [nvarchar](255) NULL,
	[skills] [nvarchar](255) NULL,
	[job family] [nvarchar](255) NULL,
	[Job] [nvarchar](255) NULL,
	[Job Description] [nvarchar](255) NULL,
	[Customer Name] [nvarchar](255) NULL,
	[CustomerCode] [nvarchar](255) NULL,
	[Project Name] [nvarchar](255) NULL,
	[Project Code] [nvarchar](255) NULL,
	[ProjectCategory] [nvarchar](255) NULL,
	[ProjectCode] [nvarchar](255) NULL,
	[project_l1] [nvarchar](255) NULL,
	[project_l4] [nvarchar](255) NULL,
	[Project Archetype] [nvarchar](255) NULL,
	[Requisition Source] [nvarchar](255) NULL,
	[Employee Band] [nvarchar](255) NULL,
	[Employee Group] [nvarchar](255) NULL,
	[designation] [nvarchar](255) NULL,
	[country] [nvarchar](255) NULL,
	[Personal Area] [nvarchar](255) NULL,
	[Personal Sub Area] [nvarchar](255) NULL,
	[Requisition Date] [nvarchar](255) NULL,
	[1st Approval] [nvarchar](255) NULL,
	[2nd Approval] [nvarchar](255) NULL,
	[3rd Approval] [nvarchar](255) NULL,
	[Final Approval] [nvarchar](255) NULL,
	[Expected Closure] [nvarchar](255) NULL,
	[billing type] [nvarchar](255) NULL,
	[Billing Start Date] [nvarchar](255) NULL,
	[Closed Date] [nvarchar](255) NULL,
	[TPG Executive] [nvarchar](255) NULL,
	[TPG Manager To Executive] [nvarchar](255) NULL,
	[TPG To TAG] [nvarchar](255) NULL,
	[TAG Manager To Executive] [nvarchar](255) NULL,
	[Pending with Name and ID] [nvarchar](255) NULL,
	[TPG Executive Comments] [nvarchar](255) NULL,
	[Joining Date] [nvarchar](255) NULL,
	[Employee Code] [nvarchar](255) NULL,
	[Employee Name] [nvarchar](255) NULL,
	[age] [nvarchar](255) NULL,
	[vacancy] [nvarchar](255) NULL,
	[Internal Filled] [nvarchar](255) NULL,
	[External Offered] [nvarchar](255) NULL,
	[External Joined] [nvarchar](255) NULL,
	[Employee Sub-Band] [nvarchar](255) NULL,
	[SR Band] [nvarchar](255) NULL,
	[SR Sub-Band] [nvarchar](255) NULL,
	[TPEmpCode] [nvarchar](255) NULL,
	[TPEmpName] [nvarchar](255) NULL,
	[Position End Date] [nvarchar](255) NULL,
	[Valid Till Date] [nvarchar](255) NULL,
	[Actionable Position] [nvarchar](255) NULL,
	[FullfillmentSource] [nvarchar](255) NULL,
	[bservsource] [nvarchar](255) NULL,
	[initialdemand] [nvarchar](255) NULL,
	[DroppedPos] [nvarchar](255) NULL,
	[referbackcount] [nvarchar](255) NULL,
	[latestreferbackremarks] [nvarchar](255) NULL,
	[First_ReferBack_DT] [nvarchar](255) NULL,
	[Last_ReferBack_DT] [nvarchar](255) NULL,
	[First_BSD_DT] [nvarchar](255) NULL,
	[Last_BSD_DT] [nvarchar](255) NULL,
	[First_Resubmission_dt] [nvarchar](255) NULL,
	[Last_Resubmission_dt] [nvarchar](255) NULL,
	[latestreferbackby] [nvarchar](255) NULL,
	[approver1] [nvarchar](255) NULL,
	[approver2] [nvarchar](255) NULL,
	[approver3] [nvarchar](255) NULL,
	[Resource Availability Date] [nvarchar](255) NULL,
	[Resource Project Allocation Date] [nvarchar](255) NULL,
	[Resource Project Allocation Code] [nvarchar](255) NULL,
	[ReasonCodeforL4JobFamily] [nvarchar](255) NULL,
	[Bill Date] [nvarchar](255) NULL,
	[Valid Date] [nvarchar](255) NULL,
	[Position Date] [nvarchar](255) NULL,
	[TP1] [nvarchar](255) NULL,
	[TP2] [nvarchar](255) NULL,
	[Actual TP1/TP2] [nvarchar](255) NULL,
	[vAdditionalRemarks] [nvarchar](255) NULL,
	[PullbackBy] [nvarchar](255) NULL,
	[PullbackReason] [nvarchar](255) NULL,
	[PullbackRemarks] [nvarchar](255) NULL,
	[ReportingManager] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InternalFulfillmentRawData]    Script Date: 5/8/2016 4:13:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InternalFulfillmentRawData](
	[Serial No.] [nvarchar](255) NULL,
	[Requistion No] [nvarchar](50) NULL,
	[initiator] [nvarchar](255) NULL,
	[L1 Name] [nvarchar](255) NULL,
	[L2 Name] [nvarchar](255) NULL,
	[L3 Name] [nvarchar](255) NULL,
	[L4 Name] [nvarchar](255) NULL,
	[Today] [datetime] NULL,
	[status] [nvarchar](255) NULL,
	[pending with] [nvarchar](255) NULL,
	[experience] [nvarchar](255) NULL,
	[Rating] [nvarchar](255) NULL,
	[skills] [nvarchar](255) NULL,
	[job family] [nvarchar](255) NULL,
	[Job] [nvarchar](255) NULL,
	[Job Description] [nvarchar](255) NULL,
	[Customer Name] [nvarchar](255) NULL,
	[CustomerCode] [nvarchar](255) NULL,
	[Project Name] [nvarchar](255) NULL,
	[Project Code] [nvarchar](255) NULL,
	[ProjectCategory] [nvarchar](255) NULL,
	[ProjectCode] [nvarchar](255) NULL,
	[project_l1] [nvarchar](255) NULL,
	[project_l4] [nvarchar](255) NULL,
	[Project Archetype] [nvarchar](255) NULL,
	[Requisition Source] [nvarchar](255) NULL,
	[Employee Band] [nvarchar](255) NULL,
	[Employee Group] [nvarchar](255) NULL,
	[designation] [nvarchar](255) NULL,
	[country] [nvarchar](255) NULL,
	[Personal Area] [nvarchar](255) NULL,
	[Personal Sub Area] [nvarchar](255) NULL,
	[Requisition Date] [nvarchar](255) NULL,
	[1st Approval] [nvarchar](255) NULL,
	[2nd Approval] [nvarchar](255) NULL,
	[3rd Approval] [nvarchar](255) NULL,
	[Final Approval] [nvarchar](255) NULL,
	[Expected Closure] [nvarchar](255) NULL,
	[billing type] [nvarchar](255) NULL,
	[Billing Start Date] [nvarchar](255) NULL,
	[Closed Date] [nvarchar](255) NULL,
	[TPG Executive] [nvarchar](255) NULL,
	[TPG Manager To Executive] [nvarchar](255) NULL,
	[TPG To TAG] [nvarchar](255) NULL,
	[TAG Manager To Executive] [nvarchar](255) NULL,
	[Pending with Name and ID] [nvarchar](255) NULL,
	[TPG Executive Comments] [nvarchar](255) NULL,
	[Joining Date] [nvarchar](255) NULL,
	[Employee Code] [nvarchar](255) NULL,
	[Employee Name] [nvarchar](255) NULL,
	[age] [nvarchar](255) NULL,
	[vacancy] [nvarchar](255) NULL,
	[Internal Filled] [nvarchar](255) NULL,
	[External Offered] [nvarchar](255) NULL,
	[External Joined] [nvarchar](255) NULL,
	[Employee Sub-Band] [nvarchar](255) NULL,
	[SR Band] [nvarchar](255) NULL,
	[SR Sub-Band] [nvarchar](255) NULL,
	[TPEmpCode] [nvarchar](255) NULL,
	[TPEmpName] [nvarchar](255) NULL,
	[Position End Date] [nvarchar](255) NULL,
	[Valid Till Date] [nvarchar](255) NULL,
	[Actionable Position] [nvarchar](255) NULL,
	[FullfillmentSource] [nvarchar](255) NULL,
	[bservsource] [nvarchar](255) NULL,
	[initialdemand] [nvarchar](255) NULL,
	[DroppedPos] [nvarchar](255) NULL,
	[referbackcount] [nvarchar](255) NULL,
	[latestreferbackremarks] [nvarchar](255) NULL,
	[First_ReferBack_DT] [nvarchar](255) NULL,
	[Last_ReferBack_DT] [nvarchar](255) NULL,
	[First_BSD_DT] [nvarchar](255) NULL,
	[Last_BSD_DT] [nvarchar](255) NULL,
	[First_Resubmission_dt] [nvarchar](255) NULL,
	[Last_Resubmission_dt] [nvarchar](255) NULL,
	[latestreferbackby] [nvarchar](255) NULL,
	[approver1] [nvarchar](255) NULL,
	[approver2] [nvarchar](255) NULL,
	[approver3] [nvarchar](255) NULL,
	[Resource Availability Date] [nvarchar](255) NULL,
	[Resource Project Allocation Date] [nvarchar](255) NULL,
	[Resource Project Allocation Code] [nvarchar](255) NULL,
	[ReasonCodeforL4JobFamily] [nvarchar](255) NULL,
	[Bill Date] [nvarchar](255) NULL,
	[Valid Date] [nvarchar](255) NULL,
	[Position Date] [nvarchar](255) NULL,
	[TP1] [nvarchar](255) NULL,
	[TP2] [nvarchar](255) NULL,
	[Actual TP1/TP2] [nvarchar](255) NULL,
	[vAdditionalRemarks] [nvarchar](255) NULL,
	[PullbackBy] [nvarchar](255) NULL,
	[PullbackReason] [nvarchar](255) NULL,
	[PullbackRemarks] [nvarchar](255) NULL,
	[ReportingManager] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Skills]    Script Date: 5/8/2016 4:13:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Skills](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Primary Skills] [varchar](500) NULL,
	[Skill] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SR_Column_List]    Script Date: 5/8/2016 4:13:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SR_Column_List](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Column_Name] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_dbo.SR_Column_List] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SR_Column_List_old]    Script Date: 5/8/2016 4:13:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SR_Column_List_old](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Column_Name] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SRFiles]    Script Date: 5/8/2016 4:13:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SRFiles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FileName] [nvarchar](500) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[IP] [nvarchar](max) NULL,
	[ForwardIP] [nvarchar](500) NULL,
	[SheetName] [nvarchar](max) NULL,
	[InsertedDt] [datetime] NULL,
	[UpdatedDt] [datetime] NULL,
 CONSTRAINT [PK_dbo.SRFiles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SRRawData]    Script Date: 5/8/2016 4:13:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SRRawData](
	[ReqNo] [nvarchar](255) NULL,
	[Joining Level 1] [nvarchar](255) NULL,
	[Joining Level 2] [nvarchar](255) NULL,
	[Joining Level 3] [nvarchar](255) NULL,
	[Joining Level 4] [nvarchar](255) NULL,
	[Today] [datetime] NULL,
	[Initiator] [nvarchar](255) NULL,
	[Status] [nvarchar](255) NULL,
	[Reason] [nvarchar](255) NULL,
	[Pending with] [nvarchar](255) NULL,
	[Primary Skills] [nvarchar](255) NULL,
	[Secondary Skills] [nvarchar](255) NULL,
	[Primary Skill Category] [nvarchar](255) NULL,
	[Primary Skill Area] [nvarchar](255) NULL,
	[Customer] [nvarchar](255) NULL,
	[Customer Code] [nvarchar](255) NULL,
	[Project Category] [nvarchar](255) NULL,
	[Project] [nvarchar](255) NULL,
	[Project Code] [nvarchar](255) NULL,
	[Project L1] [nvarchar](255) NULL,
	[Project L4] [nvarchar](255) NULL,
	[Project Archetype] [nvarchar](255) NULL,
	[Band] [nvarchar](255) NULL,
	[Sub band] [nvarchar](255) NULL,
	[Designation] [nvarchar](255) NULL,
	[Experience] [nvarchar](255) NULL,
	[TRating] [nvarchar](255) NULL,
	[Pending with Name and ID] [nvarchar](255) NULL,
	[Job Family] [nvarchar](255) NULL,
	[Job] [nvarchar](255) NULL,
	[JobDescription] [nvarchar](255) NULL,
	[country] [nvarchar](255) NULL,
	[Personal Area] [nvarchar](255) NULL,
	[Personal SubArea] [nvarchar](255) NULL,
	[On Boarding Date] [nvarchar](255) NULL,
	[Req Date] [nvarchar](255) NULL,
	[Approval Date] [nvarchar](255) NULL,
	[Requisition Source] [nvarchar](255) NULL,
	[Employee Group] [nvarchar](255) NULL,
	[Billing Type] [nvarchar](255) NULL,
	[Billing Start Date] [nvarchar](255) NULL,
	[age] [nvarchar](255) NULL,
	[Vacancy] [nvarchar](255) NULL,
	[Internal_Filled] [nvarchar](255) NULL,
	[External_Offered] [nvarchar](255) NULL,
	[External_Joined] [nvarchar](255) NULL,
	[TPG_To_TAG_Assign_dt] [nvarchar](255) NULL,
	[TAG_Exe_Assign_dt] [nvarchar](255) NULL,
	[Initiator Level 1] [nvarchar](255) NULL,
	[Initiator Level 2] [nvarchar](255) NULL,
	[Initiator Level 3] [nvarchar](255) NULL,
	[Initiator Level 4] [nvarchar](255) NULL,
	[Req_Close_dt] [nvarchar](255) NULL,
	[Closure_Remarks] [nvarchar](255) NULL,
	[Closed_By] [nvarchar](255) NULL,
	[Req_Resubmission_dt] [nvarchar](255) NULL,
	[Balance_Postions] [nvarchar](255) NULL,
	[Offer_Declined] [nvarchar](255) NULL,
	[Total Attached] [nvarchar](255) NULL,
	[Total forwarded] [nvarchar](255) NULL,
	[Total Blocked] [nvarchar](255) NULL,
	[Total Rejected] [nvarchar](255) NULL,
	[Total Shortlisted] [nvarchar](255) NULL,
	[Total Final Select] [nvarchar](255) NULL,
	[Internal Filled SAP Codes] [nvarchar](255) NULL,
	[Position End Date] [nvarchar](255) NULL,
	[Internal Filled SAP Codes1] [nvarchar](255) NULL,
	[Actionable Position] [nvarchar](255) NULL,
	[Valid Till Date] [nvarchar](255) NULL,
	[InitialSourceByFinalApprover] [nvarchar](255) NULL,
	[BservSource] [nvarchar](255) NULL,
	[InitialDemand] [nvarchar](255) NULL,
	[DroppedPos] [nvarchar](255) NULL,
	[Client_Interview] [nvarchar](255) NULL,
	[BGV] [nvarchar](255) NULL,
	[TP1] [nvarchar](255) NULL,
	[TP2] [nvarchar](255) NULL,
	[ProjectArchetype] [nvarchar](255) NULL,
	[ReferBackCount] [nvarchar](255) NULL,
	[LatestReferBackRemarks] [nvarchar](255) NULL,
	[First_ReferBack_DT] [nvarchar](255) NULL,
	[Last_ReferBack_DT] [nvarchar](255) NULL,
	[First_BSD_DT] [nvarchar](255) NULL,
	[Last_BSD_DT] [nvarchar](255) NULL,
	[First_Resubmission_dt] [nvarchar](255) NULL,
	[Last_Resubmission_dt] [nvarchar](255) NULL,
	[LatestReferBackBy] [nvarchar](255) NULL,
	[Approver1] [nvarchar](255) NULL,
	[Approved1_By] [nvarchar](255) NULL,
	[Approver1_dt] [nvarchar](255) NULL,
	[Approver2] [nvarchar](255) NULL,
	[Approved2_By] [nvarchar](255) NULL,
	[Approver2_dt] [nvarchar](255) NULL,
	[Approver3] [nvarchar](255) NULL,
	[Approver3_dt] [nvarchar](255) NULL,
	[TPAllowed] [nvarchar](255) NULL,
	[ForceFull_Final_Select] [nvarchar](255) NULL,
	[Final_Select_After_ShortList] [nvarchar](255) NULL,
	[ReasonCodeforL4JobFamily] [nvarchar](255) NULL,
	[OldBilling Start Date] [nvarchar](255) NULL,
	[OldPosition End Date] [nvarchar](255) NULL,
	[OldValid Till Date] [nvarchar](255) NULL,
	[TotalExtCandAttached] [nvarchar](255) NULL,
	[vAdditionalRemarks] [nvarchar](255) NULL,
	[ActionTakenBy] [nvarchar](255) NULL,
	[PullbackBy] [nvarchar](255) NULL,
	[PullbackReason] [nvarchar](255) NULL,
	[PullbackRemarks] [nvarchar](255) NULL,
	[ActualTP1TP2] [nvarchar](255) NULL,
	[ReportingManager] [nvarchar](255) NULL,
	[ReferBackAgeing(<=2 days)] [nvarchar](255) NULL,
	[ReferBackAgeing(>2 days)] [nvarchar](255) NULL,
	[Target Deviation] [nvarchar](255) NULL,
	[Exceptionally Approved] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SRSnapshotData]    Script Date: 5/8/2016 4:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SRSnapshotData](
	[ReqNo] [nvarchar](50) NULL,
	[Joining Level 1] [nvarchar](255) NULL,
	[Joining Level 2] [nvarchar](255) NULL,
	[Joining Level 3] [nvarchar](255) NULL,
	[Joining Level 4] [nvarchar](255) NULL,
	[Today] [datetime] NULL,
	[Initiator] [nvarchar](255) NULL,
	[Status] [nvarchar](255) NULL,
	[Reason] [nvarchar](255) NULL,
	[Pending with] [nvarchar](255) NULL,
	[Primary Skills] [nvarchar](255) NULL,
	[Secondary Skills] [nvarchar](255) NULL,
	[Primary Skill Category] [nvarchar](255) NULL,
	[Primary Skill Area] [nvarchar](255) NULL,
	[Customer] [nvarchar](255) NULL,
	[Customer Code] [nvarchar](255) NULL,
	[Project Category] [nvarchar](255) NULL,
	[Project] [nvarchar](255) NULL,
	[Project Code] [nvarchar](255) NULL,
	[Project L1] [nvarchar](255) NULL,
	[Project L4] [nvarchar](255) NULL,
	[Project Archetype] [nvarchar](255) NULL,
	[Band] [nvarchar](255) NULL,
	[Sub band] [nvarchar](255) NULL,
	[Designation] [nvarchar](255) NULL,
	[Experience] [nvarchar](255) NULL,
	[TRating] [nvarchar](255) NULL,
	[Pending with Name and ID] [nvarchar](255) NULL,
	[Job Family] [nvarchar](255) NULL,
	[Job] [nvarchar](255) NULL,
	[JobDescription] [nvarchar](255) NULL,
	[country] [nvarchar](255) NULL,
	[Personal Area] [nvarchar](255) NULL,
	[Personal SubArea] [nvarchar](255) NULL,
	[On Boarding Date] [nvarchar](255) NULL,
	[Req Date] [nvarchar](255) NULL,
	[Approval Date] [nvarchar](255) NULL,
	[Requisition Source] [nvarchar](255) NULL,
	[Employee Group] [nvarchar](255) NULL,
	[Billing Type] [nvarchar](255) NULL,
	[Billing Start Date] [nvarchar](255) NULL,
	[age] [nvarchar](255) NULL,
	[Vacancy] [nvarchar](255) NULL,
	[Internal_Filled] [nvarchar](255) NULL,
	[External_Offered] [nvarchar](255) NULL,
	[External_Joined] [nvarchar](255) NULL,
	[TPG_To_TAG_Assign_dt] [nvarchar](255) NULL,
	[TAG_Exe_Assign_dt] [nvarchar](255) NULL,
	[Initiator Level 1] [nvarchar](255) NULL,
	[Initiator Level 2] [nvarchar](255) NULL,
	[Initiator Level 3] [nvarchar](255) NULL,
	[Initiator Level 4] [nvarchar](255) NULL,
	[Req_Close_dt] [nvarchar](255) NULL,
	[Closure_Remarks] [nvarchar](255) NULL,
	[Closed_By] [nvarchar](255) NULL,
	[Req_Resubmission_dt] [nvarchar](255) NULL,
	[Balance_Postions] [nvarchar](255) NULL,
	[Offer_Declined] [nvarchar](255) NULL,
	[Total Attached] [nvarchar](255) NULL,
	[Total forwarded] [nvarchar](255) NULL,
	[Total Blocked] [nvarchar](255) NULL,
	[Total Rejected] [nvarchar](255) NULL,
	[Total Shortlisted] [nvarchar](255) NULL,
	[Total Final Select] [nvarchar](255) NULL,
	[Internal Filled SAP Codes] [nvarchar](255) NULL,
	[Position End Date] [nvarchar](255) NULL,
	[Internal Filled SAP Codes1] [nvarchar](255) NULL,
	[Actionable Position] [nvarchar](255) NULL,
	[Valid Till Date] [nvarchar](255) NULL,
	[InitialSourceByFinalApprover] [nvarchar](255) NULL,
	[BservSource] [nvarchar](255) NULL,
	[InitialDemand] [nvarchar](255) NULL,
	[DroppedPos] [nvarchar](255) NULL,
	[Client_Interview] [nvarchar](255) NULL,
	[BGV] [nvarchar](255) NULL,
	[TP1] [nvarchar](255) NULL,
	[TP2] [nvarchar](255) NULL,
	[ProjectArchetype] [nvarchar](255) NULL,
	[ReferBackCount] [nvarchar](255) NULL,
	[LatestReferBackRemarks] [nvarchar](255) NULL,
	[First_ReferBack_DT] [nvarchar](255) NULL,
	[Last_ReferBack_DT] [nvarchar](255) NULL,
	[First_BSD_DT] [nvarchar](255) NULL,
	[Last_BSD_DT] [nvarchar](255) NULL,
	[First_Resubmission_dt] [nvarchar](255) NULL,
	[Last_Resubmission_dt] [nvarchar](255) NULL,
	[LatestReferBackBy] [nvarchar](255) NULL,
	[Approver1] [nvarchar](255) NULL,
	[Approved1_By] [nvarchar](255) NULL,
	[Approver1_dt] [nvarchar](255) NULL,
	[Approver2] [nvarchar](255) NULL,
	[Approved2_By] [nvarchar](255) NULL,
	[Approver2_dt] [nvarchar](255) NULL,
	[Approver3] [nvarchar](255) NULL,
	[Approver3_dt] [nvarchar](255) NULL,
	[TPAllowed] [nvarchar](255) NULL,
	[ForceFull_Final_Select] [nvarchar](255) NULL,
	[Final_Select_After_ShortList] [nvarchar](255) NULL,
	[ReasonCodeforL4JobFamily] [nvarchar](255) NULL,
	[OldBilling Start Date] [nvarchar](255) NULL,
	[OldPosition End Date] [nvarchar](255) NULL,
	[OldValid Till Date] [nvarchar](255) NULL,
	[TotalExtCandAttached] [nvarchar](255) NULL,
	[vAdditionalRemarks] [nvarchar](255) NULL,
	[ActionTakenBy] [nvarchar](255) NULL,
	[PullbackBy] [nvarchar](255) NULL,
	[PullbackReason] [nvarchar](255) NULL,
	[PullbackRemarks] [nvarchar](255) NULL,
	[ActualTP1TP2] [nvarchar](255) NULL,
	[ReportingManager] [nvarchar](255) NULL,
	[ReferBackAgeing(<=2 days)] [nvarchar](255) NULL,
	[ReferBackAgeing(>2 days)] [nvarchar](255) NULL,
	[Target Deviation] [nvarchar](255) NULL,
	[Exceptionally Approved] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Supply_Column_List]    Script Date: 5/8/2016 4:13:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supply_Column_List](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Column_Name] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_dbo.Supply_Column_List] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Supply_Onsite_Column_List]    Script Date: 5/8/2016 4:13:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supply_Onsite_Column_List](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Column_Name] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_dbo.Supply_Onsite_Column_List] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SupplyFiles]    Script Date: 5/8/2016 4:13:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplyFiles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FileName] [nvarchar](500) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[IP] [nvarchar](max) NULL,
	[ForwardIP] [nvarchar](500) NULL,
	[SheetName] [nvarchar](max) NULL,
	[InsertedDt] [datetime] NULL,
	[UpdatedDt] [datetime] NULL,
 CONSTRAINT [PK_dbo.SupplyFiles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SupplyOnsiteRawData]    Script Date: 5/8/2016 4:13:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplyOnsiteRawData](
	[Comp] [nvarchar](500) NULL,
	[Employee Code] [nvarchar](500) NULL,
	[Pernr] [nvarchar](500) NULL,
	[Employee Name] [nvarchar](500) NULL,
	[Band] [nvarchar](500) NULL,
	[Sub Band] [nvarchar](500) NULL,
	[Manager Code] [nvarchar](500) NULL,
	[Reporting Manager] [nvarchar](500) NULL,
	[Employee Location] [nvarchar](500) NULL,
	[Joining Date] [nvarchar](500) NULL,
	[Reason] [nvarchar](500) NULL,
	[Project Code] [nvarchar](500) NULL,
	[Project Name] [nvarchar](500) NULL,
	[Last Project Code] [nvarchar](500) NULL,
	[Last Project Name] [nvarchar](500) NULL,
	[Customer Code] [nvarchar](500) NULL,
	[Customer] [nvarchar](500) NULL,
	[Project Component] [nvarchar](500) NULL,
	[Assign From Date] [nvarchar](500) NULL,
	[Assign To Date] [nvarchar](500) NULL,
	[Allocation] [nvarchar](500) NULL,
	[FTE] [nvarchar](500) NULL,
	[STATUS] [nvarchar](500) NULL,
	[L0 Code] [nvarchar](500) NULL,
	[L0 Description] [nvarchar](500) NULL,
	[L1 Code] [nvarchar](500) NULL,
	[L1 Description] [nvarchar](500) NULL,
	[L2 Code] [nvarchar](500) NULL,
	[L2 Description] [nvarchar](500) NULL,
	[L3 Code] [nvarchar](500) NULL,
	[L3 Description] [nvarchar](500) NULL,
	[HR L0Code] [nvarchar](500) NULL,
	[HR L0Description] [nvarchar](500) NULL,
	[HR L1Code] [nvarchar](500) NULL,
	[HR L1Description] [nvarchar](500) NULL,
	[HR L2Code] [nvarchar](500) NULL,
	[HR L2Description] [nvarchar](500) NULL,
	[HR L3Code] [nvarchar](500) NULL,
	[HR L3Description] [nvarchar](500) NULL,
	[Expected Billing Date] [nvarchar](500) NULL,
	[LASTBILLED] [nvarchar](500) NULL,
	[LASTBILLED_AMT] [nvarchar](500) NULL,
	[BILLED_YTD] [nvarchar](500) NULL,
	[System Status] [nvarchar](500) NULL,
	[Relevent_Exp_Year] [nvarchar](500) NULL,
	[Relevent_Exp_Month] [nvarchar](500) NULL,
	[Ageing] [nvarchar](500) NULL,
	[IFD Extension] [nvarchar](500) NULL,
	[Extension Reason] [nvarchar](500) NULL,
	[Rebaged/Local/Landed] [nvarchar](500) NULL,
	[TP] [nvarchar](500) NULL,
	[Plob] [nvarchar](500) NULL,
	[LOB1] [nvarchar](500) NULL,
	[LOB2] [nvarchar](500) NULL,
	[Location] [nvarchar](500) NULL,
	[Status-3] [nvarchar](500) NULL,
	[Ageing###46] [nvarchar](500) NULL,
	[Primary skill] [nvarchar](500) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SupplyRawData]    Script Date: 5/8/2016 4:13:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplyRawData](
	[S. No] [nvarchar](500) NULL,
	[HBU Desc] [nvarchar](500) NULL,
	[Employee Code] [nvarchar](500) NULL,
	[Employee Name] [nvarchar](500) NULL,
	[Sub Band] [nvarchar](500) NULL,
	[Mapping] [nvarchar](500) NULL,
	[SR Number] [nvarchar](500) NULL,
	[Status] [nvarchar](500) NULL,
	[Status1] [nvarchar](500) NULL,
	[TEX] [nvarchar](500) NULL,
	[REX] [nvarchar](500) NULL,
	[Date of Joining] [nvarchar](500) NULL,
	[OFF/On] [nvarchar](500) NULL,
	[Location] [nvarchar](500) NULL,
	[Project Name] [nvarchar](500) NULL,
	[AFD Source] [nvarchar](500) NULL,
	[Bench Assignation Strt Date] [nvarchar](500) NULL,
	[Availability Date] [nvarchar](500) NULL,
	[Availability Month] [nvarchar](500) NULL,
	[AFD Ageing] [nvarchar](500) NULL,
	[AFD Bracket] [nvarchar](500) NULL,
	[Final Status] [nvarchar](500) NULL,
	[Remarks] [nvarchar](500) NULL,
	[WTM Remarks] [nvarchar](500) NULL,
	[Visa Details] [nvarchar](500) NULL,
	[Skill Cateogary] [nvarchar](500) NULL,
	[Primary Skill] [nvarchar](500) NULL,
	[Secondary Skill] [nvarchar](500) NULL,
	[RAS Status (Updated Weekly)] [nvarchar](500) NULL,
	[Relocation Option 1] [nvarchar](500) NULL,
	[Relocation Option 2] [nvarchar](500) NULL,
	[Additional Skills] [nvarchar](500) NULL,
	[Performance Feedback] [nvarchar](500) NULL,
	[Created By] [nvarchar](500) NULL,
	[Modified By] [nvarchar](500) NULL,
	[Modified] [nvarchar](500) NULL,
	[Created] [nvarchar](500) NULL,
	[Item Type] [nvarchar](500) NULL,
	[Path] [nvarchar](500) NULL
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[BASDemand]    Script Date: 5/8/2016 4:13:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE VIEW [dbo].[BASDemand]
AS
SELECT        
 [ReqNo]
      ,[Joining Level 1]
      ,[Joining Level 2]
      ,[Joining Level 3]
      ,[Joining Level 4]
      ,[Initiator]
      ,[Status]
      ,[Pending with]
      ,[Primary Skills]
      ,[Secondary Skills]
      ,[Primary Skill Category]
      ,[Primary Skill Area]
      ,[Customer]
      ,[Project]
      ,[Project Code]
      ,[Project L1]
      ,[Project L4]
      ,[Band]
      ,[Sub band]
      ,[Designation]
      ,[Experience]
      ,[TRating]
      ,[WPC/TAG Name]
      ,[Job Family]
      ,[Job]
      ,[Job Description]
    
      ,[Personal Area]
      ,[Personal SubArea]
      ,[On Boarding Date]
      ,[Req Date]
      ,[Approval Date]
      ,[Requisition Source]
      ,[Employee Group]
      ,[Billing Type]
      ,[Billing Start Date]
      ,[age]
      ,[Vacancy]
      ,[Internal_Filled]
      ,[External_Offered]
      ,[External_Joined]
      ,[TPG_To_TAG_Assign_dt]
      ,[TAG_Exe_Assign_dt]
      ,[Initiator Level 1]
      ,[Initiator Level 2]
      ,[Initiator Level 3]
      ,[Initiator Level 4]
      ,[Req_Close_dt]
      ,[Closure_Remarks]
      ,[Closed_By]
      ,[Req_Resubmission_dt]
      ,[Balance_Postions]
      ,[Offer_Declined]
      ,[Total Attached]
      ,[Total forwarded]
      ,[Total Blocked]
      ,[Total Rejected]
      ,[Total Shortlisted]
      ,[Total Final Select]
      ,[Internal Filled SAP Codes]
      ,[Position End Date]
      ,[Internal Filled SAP Codes1]
      ,[Actionable Position]
      ,[Valid Till Date]
      ,[InitialSourceByFinalApprover]
      ,[BservSource]
      ,[InitialDemand]
      ,[DroppedPos]
      ,[Names of Reosources ]
      ,[BUCKETIZATION]
      ,[REMARKS]
      ,[Pipeline]
      ,[Net Gap]
      ,[On/Off]
      
      ,[Pending with?]
      ,[Today]
      ,[PENDING WITH EXE]
      ,[DUE MONTH BEGIN]
      ,[DUE MONTH END]
      ,[NBL Date]
      ,[Already Overdue ]
      ,[Due this Month]
      ,[Due Cat for NBL]
      ,[NBL Days]
      ,[OVER DUE MONTHS]
      ,[REALIZATION RATE (NBL)]
      ,[Notional Billing Loss]
      ,[NBL (Yes Or No)]
      ,[NBL Groups]
      ,[AD Aging]
      ,[SR Date]
      ,[SR Aging]
      ,[SR Aging Group]
      ,[SR TREND]
      ,[Week]
      ,[Healthcare]
      ,[BSD]
      ,[FFD]
, '' AS Proactive_Flag
FROM            dbo.DemandRawData


where [Joining Level 2] = 'ES-BAS'
and not([Joining Level 4] Like '%SAP%')
and not ([Project Code] like 'O%' and [Project Code] like 'I%' and [Project Code] like 'Z%')




GO
/****** Object:  View [dbo].[v_BASDemand]    Script Date: 5/8/2016 4:13:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[v_BASDemand]
AS
SELECT        
 [ReqNo]
      ,[Joining Level 1]
      ,[Joining Level 2]
      ,[Joining Level 3]
      ,[Joining Level 4]
      ,[Initiator]
      ,[Status]
      ,[Pending with]
      ,[Primary Skills]
      ,[Secondary Skills]
      ,[Primary Skill Category]
      ,[Primary Skill Area]
      ,[Customer]
      ,[Project]
      ,[Project Code]
      ,[Project L1]
      ,[Project L4]
      ,[Band]
      ,[Sub band]
      ,[Designation]
      ,[Experience]
      ,[TRating]
      ,[WPC/TAG Name]
      ,[Job Family]
      ,[Job]
      ,[Job Description]
    
      ,[Personal Area]
      ,[Personal SubArea]
      ,[On Boarding Date]
      ,[Req Date]
      ,[Approval Date]
      ,[Requisition Source]
      ,[Employee Group]
      ,[Billing Type]
      ,[Billing Start Date]
      ,[age]
      ,[Vacancy]
      ,[Internal_Filled]
      ,[External_Offered]
      ,[External_Joined]
      ,[TPG_To_TAG_Assign_dt]
      ,[TAG_Exe_Assign_dt]
      ,[Initiator Level 1]
      ,[Initiator Level 2]
      ,[Initiator Level 3]
      ,[Initiator Level 4]
      ,[Req_Close_dt]
      ,[Closure_Remarks]
      ,[Closed_By]
      ,[Req_Resubmission_dt]
      ,[Balance_Postions]
      ,[Offer_Declined]
      ,[Total Attached]
      ,[Total forwarded]
      ,[Total Blocked]
      ,[Total Rejected]
      ,[Total Shortlisted]
      ,[Total Final Select]
      ,[Internal Filled SAP Codes]
      ,[Position End Date]
      ,[Internal Filled SAP Codes1]
      ,[Actionable Position]
      ,[Valid Till Date]
      ,[InitialSourceByFinalApprover]
      ,[BservSource]
      ,[InitialDemand]
      ,[DroppedPos]
      ,[Names of Reosources ]
      ,[BUCKETIZATION]
      ,[REMARKS]
      ,[Pipeline]
      ,[Net Gap]
      ,[On/Off]
      
      ,[Pending with?]
      ,[Today]
      ,[PENDING WITH EXE]
      ,[DUE MONTH BEGIN]
      ,[DUE MONTH END]
      ,[NBL Date]
      ,[Already Overdue ]
      ,[Due this Month]
      ,[Due Cat for NBL]
      ,[NBL Days]
      ,[OVER DUE MONTHS]
      ,[REALIZATION RATE (NBL)]
      ,[Notional Billing Loss]
      ,[NBL (Yes Or No)]
      ,[NBL Groups]
      ,[AD Aging]
      ,[SR Date]
      ,[SR Aging]
      ,[SR Aging Group]
      ,[SR TREND]
      ,[Week]
      ,[Healthcare]
      ,[BSD]
      ,[FFD]
, '' AS Proactive_Flag
FROM            dbo.DemandRawData



where [Joining Level 2] = 'ES-BAS'
and not([Joining Level 4] Like '%SAP%')
and not ([Project Code] like 'O%' and [Project Code] like 'I%' and [Project Code] like 'Z%')






GO
/****** Object:  View [dbo].[v_BASDemandHistorical]    Script Date: 5/8/2016 4:13:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[v_BASDemandHistorical]
AS
SELECT        
MonthKey
 , [ReqNo]
      ,[Joining Level 1]
      ,[Joining Level 2]
      ,[Joining Level 3]
      ,[Joining Level 4]
      ,[Initiator]
      ,[Status]
      ,[Pending with]
      ,[Primary Skills]
      ,[Secondary Skills]
      ,[Primary Skill Category]
      ,[Primary Skill Area]
      ,[Customer]
      ,[Project]
      ,[Project Code]
      ,[Project L1]
      ,[Project L4]
      ,[Band]
      ,[Sub band]
      ,[Designation]
      ,[Experience]
      ,[TRating]
      ,[WPC/TAG Name]
      ,[Job Family]
      ,[Job]
      ,[Job Description]
    
      ,[Personal Area]
      ,[Personal SubArea]
      ,[On Boarding Date]
      ,[Req Date]
      ,[Approval Date]
      ,[Requisition Source]
      ,[Employee Group]
      ,[Billing Type]
      ,[Billing Start Date]
      ,[age]
      ,[Vacancy]
      ,[Internal_Filled]
      ,[External_Offered]
      ,[External_Joined]
      ,[TPG_To_TAG_Assign_dt]
      ,[TAG_Exe_Assign_dt]
      ,[Initiator Level 1]
      ,[Initiator Level 2]
      ,[Initiator Level 3]
      ,[Initiator Level 4]
      ,[Req_Close_dt]
      ,[Closure_Remarks]
      ,[Closed_By]
      ,[Req_Resubmission_dt]
      ,[Balance_Postions]
      ,[Offer_Declined]
      ,[Total Attached]
      ,[Total forwarded]
      ,[Total Blocked]
      ,[Total Rejected]
      ,[Total Shortlisted]
      ,[Total Final Select]
      ,[Internal Filled SAP Codes]
      ,[Position End Date]
      ,[Internal Filled SAP Codes1]
      ,[Actionable Position]
      ,[Valid Till Date]
      ,[InitialSourceByFinalApprover]
      ,[BservSource]
      ,[InitialDemand]
      ,[DroppedPos]
      ,[Names of Reosources ]
      ,[BUCKETIZATION]
      ,[REMARKS]
      ,[Pipeline]
      ,[Net Gap]
      ,[On/Off]
      
      ,[Pending with?]
      ,[Today]
      ,[PENDING WITH EXE]
      ,[DUE MONTH BEGIN]
      ,[DUE MONTH END]
      ,[NBL Date]
      ,[Already Overdue ]
      ,[Due this Month]
      ,[Due Cat for NBL]
      ,[NBL Days]
      ,[OVER DUE MONTHS]
      ,[REALIZATION RATE (NBL)]
      ,[Notional Billing Loss]
      ,[NBL (Yes Or No)]
      ,[NBL Groups]
      ,[AD Aging]
      ,[SR Date]
      ,[SR Aging]
      ,[SR Aging Group]
      ,[SR TREND]
      ,[Week]
      ,[Healthcare]
      ,[BSD]
      ,[FFD]
, '' AS Proactive_Flag
FROM            dbo.DemandHistoricalRawData


where [Joining Level 2] = 'ES-BAS'
and not([Joining Level 4] Like '%SAP%')
and not ([Project Code] like 'O%' and [Project Code] like 'I%' and [Project Code] like 'Z%')






GO
/****** Object:  View [dbo].[v_BASSupply]    Script Date: 5/8/2016 4:13:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE View [dbo].[v_BASSupply]
as
(

SELECT [S. No]
      ,[HBU Desc]
      ,[Employee Code]
      ,[Employee Name]
      ,[Sub Band]
      ,[Mapping]
      ,[SR Number]
      ,[Status]
      ,[Status1]
      ,[TEX]
      ,[REX]
      ,[Date of Joining]
      ,[OFF/On]
      ,[Location]
      ,[Project Name]
      ,[AFD Source]
      ,[Bench Assignation Strt Date]
      ,[Availability Date]
      ,[Availability Month]
      ,[AFD Ageing]
      ,[AFD Bracket]
      ,[Final Status]
      ,[Remarks]
      ,[WTM Remarks]
      ,[Visa Details]
      ,[Skill Cateogary]
      ,[Primary Skill]
      ,[Secondary Skill]
      ,[RAS Status (Updated Weekly)]
      ,[Relocation Option 1]
      ,[Relocation Option 2]
      ,[Additional Skills]
      ,[Performance Feedback]
      ,[Created By]
      ,[Modified By]
      ,[Modified]
      ,[Created]
      ,[Item Type]
      ,[Path]
  FROM [dbo].[SupplyRawData]

Union all

SELECT Null as [S. No]
      ,'ES-BAS' as [HBU Desc]
      ,  [Employee Code]
      ,  [Employee Name]
      ,  [Sub Band]
      , Reason as [Mapping]
      , Null as [SR Number]
      , STATUS as [Status]
      , STATUS as [Status1]
      , Relevent_Exp_Year  as [TEX]
      , Relevent_Exp_Year  as [REX]
      ,  [Joining Date] as [Date of Joining]
      ,  'Onsite' as [OFF/On]
      , [Employee Location] as [Location]
      ,  [Project Name]
      , [Reason] as [AFD Source]
      , [Assign From Date] as [Bench Assignation Strt Date]
      , [Assign From Date] as [Availability Date]
      , Null as [Availability Month]
      , Null as [AFD Ageing]
      , Null as [AFD Bracket]
      , Reason as [Final Status]
      , Null as [Remarks]
      , Null as [WTM Remarks]
      , Null as [Visa Details]
      , Null as [Skill Cateogary]
      , [Primary skill] as [Primary Skill]
      , [Primary skill] as [Secondary Skill]
      , Null as [RAS Status (Updated Weekly)]
      , Null as [Relocation Option 1]
      , Null as [Relocation Option 2]
      , Null as [Additional Skills]
      , Null as [Performance Feedback]
      , Null as [Created By]
      , Null as [Modified By]
      , Null as [Modified]
      , Null as [Created]
      , Null as [Item Type]
      , Null as [Path]
  FROM [dbo].SupplyOnsiteRawData

)

GO
/****** Object:  View [dbo].[v_Date]    Script Date: 5/8/2016 4:13:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create view [dbo].[v_Date]
  as
  (

SELECT [CalendarYearMonth] as MonthKey
      ,[MonthName]
      ,[MonthOfYear]
      ,[IsLastDayOfMonth]
      ,[CalendarQuarter]
      ,[CalendarYear]
      ,[CalendarYearQtr]
      ,[FiscalMonthOfYear]
      ,[FiscalQuarter]
      ,[FiscalYear]
      ,[FiscalYearMonth]
      ,[FiscalYearQtr]
  FROM [dbo].[DimDate]

  )
GO
/****** Object:  View [dbo].[v_Geo]    Script Date: 5/8/2016 4:13:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [dbo].[v_Geo]
as
(
select g.Name as Geo, c.Name as Country from Countries c inner join Geos g
on c.geo_id = g.ID
)
GO
/****** Object:  View [dbo].[v_Location]    Script Date: 5/8/2016 4:13:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE View [dbo].[v_Location]
as
(
select t.Name as Location, g.Off_On_Shore as [OFF/On], c.Name as Country from Countries c inner join Geos g
on c.geo_id = g.ID inner join Cities t on c.ID = t.country_id
)
GO
/****** Object:  View [dbo].[v_Skill]    Script Date: 5/8/2016 4:13:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

  CREATE View [dbo].[v_Skill]
  as
  (
  select distinct ISNULL(d.[Primary Skills], S.[Primary Skills]) as [Primary Skills]
  , ISNULL( s.skill , d.[Primary Skills]) as Skill
  from skills s
  Full outer join DemandRawData d
  on s.[primary skills] = d.[Primary Skills]
  where not(s.skill = '' and d.[Primary Skills] = '')
  )
GO
ALTER TABLE [dbo].[Audits] ADD  CONSTRAINT [DF_Audits_Timestamp]  DEFAULT (getdate()) FOR [Timestamp]
GO
ALTER TABLE [dbo].[DemandFiles] ADD  DEFAULT ('') FOR [FileName]
GO
ALTER TABLE [dbo].[DemandPostExec] ADD  DEFAULT ((0)) FOR [IsRunning]
GO
ALTER TABLE [dbo].[DemandPostExec] ADD  DEFAULT ((0)) FOR [IsQueue]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Cities]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Cities_dbo.Countries_country_id] FOREIGN KEY([country_id])
REFERENCES [dbo].[Countries] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cities] CHECK CONSTRAINT [FK_dbo.Cities_dbo.Countries_country_id]
GO
ALTER TABLE [dbo].[Countries]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Countries_dbo.Geos_geo_id] FOREIGN KEY([geo_id])
REFERENCES [dbo].[Geos] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Countries] CHECK CONSTRAINT [FK_dbo.Countries_dbo.Geos_geo_id]
GO
/****** Object:  StoredProcedure [dbo].[DemandPostFileUpload]    Script Date: 5/8/2016 4:13:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[DemandPostFileUpload]
as begin
--pre-check
if not exists (select * from sys.tables where name = 'DemandPostExec')
begin
create table DemandPostExec (id int identity primary key, IsRunning int default 0, IsQueue int default 0)
insert into DemandPostExec values (0 , 0)
end
--Set running status
		if exists (select 1 from DemandPostExec where IsRunning = 1)
			begin
				update DemandPostExec
				set IsQueue = 1
			end
		else
			begin
				update DemandPostExec
				set IsRunning = 1, IsQueue = 0;

				select * from DemandPostExec

				
				--Re-Set running status
				update DemandPostExec
				set IsRunning = 0;
				--Re-Check for any open request
				if exists (select 1 from DemandPostExec where IsQueue = 1)
				begin
					exec DemandPostFileUpload
				end
			end
		end
GO
