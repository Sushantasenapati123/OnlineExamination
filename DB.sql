USE [chikun]
GO
/****** Object:  UserDefinedTableType [dbo].[UT_Gold_Tbl]    Script Date: 26-06-2023 11:18:19 ******/
CREATE TYPE [dbo].[UT_Gold_Tbl] AS TABLE(
	[product_id] [int] NULL,
	[making_charges_per_gram] [numeric](6, 2) NULL,
	[gst%] [numeric](6, 2) NULL,
	[discount_on_making_charges%] [numeric](6, 2) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[UT_Gold_Tblll]    Script Date: 26-06-2023 11:18:19 ******/
CREATE TYPE [dbo].[UT_Gold_Tblll] AS TABLE(
	[product_id] [int] NULL,
	[making_charges_per_gram] [numeric](6, 2) NULL,
	[gst%] [numeric](6, 2) NULL,
	[discount_on_making_charges%] [numeric](6, 2) NULL
)
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[adminId] [varchar](50) NOT NULL,
	[pswd] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[adminId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[adminmaster]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adminmaster](
	[adminid] [varchar](20) NOT NULL,
	[password] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[adminid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Block]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Block](
	[BlockID] [int] IDENTITY(1,1) NOT NULL,
	[StateID] [int] NULL,
	[BlockName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Block] PRIMARY KEY CLUSTERED 
(
	[BlockID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[candid]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[candid](
	[cd_id] [int] IDENTITY(1,1) NOT NULL,
	[c_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[candidate]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[candidate](
	[candidateid] [int] IDENTITY(1,1) NOT NULL,
	[citzenid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[candidateid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[catid] [int] IDENTITY(1,1) NOT NULL,
	[catname] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category3]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category3](
	[catid] [int] IDENTITY(1,1) NOT NULL,
	[catname] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chikun]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chikun](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chikun1]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chikun1](
	[id] [varchar](10) NOT NULL,
	[name] [varchar](20) NULL,
	[phone] [varchar](10) NULL,
	[email] [varchar](30) NULL,
	[suject] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chikun123]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chikun123](
	[id] [int] NULL,
	[pass] [varchar](20) NULL,
	[name] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[citizen]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[citizen](
	[citzenid] [int] IDENTITY(1,1) NOT NULL,
	[citzenname] [varchar](10) NULL,
	[citzenphone] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[citzenid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[citizen1]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[citizen1](
	[c_id] [int] IDENTITY(1,1) NOT NULL,
	[nam] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[classmaster]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[classmaster](
	[classid] [int] IDENTITY(1,1) NOT NULL,
	[classname] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Club_Master]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Club_Master](
	[club_Id] [int] IDENTITY(1,1) NOT NULL,
	[club_name] [varchar](45) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CollageInfo]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CollageInfo](
	[Collageid] [int] IDENTITY(1,1) NOT NULL,
	[Collagename] [nvarchar](50) NULL,
	[CollageRank] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Collageid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CoronaStatus]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CoronaStatus](
	[CoronaID] [int] IDENTITY(1,1) NOT NULL,
	[PanchyatID] [int] NULL,
	[CitizenName] [nvarchar](50) NULL,
	[AffectedDate] [date] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_CoronaStatus] PRIMARY KEY CLUSTERED 
(
	[CoronaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[uid] [varchar](50) NOT NULL,
	[uname] [varchar](50) NULL,
	[uadd] [varchar](max) NULL,
	[uphone] [varchar](20) NULL,
	[uemail] [varchar](50) NULL,
	[upaswd] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer_table]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_table](
	[custid] [int] IDENTITY(1,1) NOT NULL,
	[custname] [varchar](50) NULL,
	[mobno] [varchar](12) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer12]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer12](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[age] [int] NOT NULL,
 CONSTRAINT [PK_dbo.customer12] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer1234]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer1234](
	[custid] [int] IDENTITY(1,1) NOT NULL,
	[custname] [varchar](20) NULL,
	[custphone] [varchar](10) NULL,
	[custemail] [varchar](50) NULL,
	[custimage] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[custid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[datee]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datee](
	[itemid] [int] NULL,
	[surdate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[departments]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[departments](
	[did] [int] IDENTITY(1,1) NOT NULL,
	[dname] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dept1]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dept1](
	[deptid] [int] IDENTITY(1,1) NOT NULL,
	[deptname] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[disease_master]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[disease_master](
	[disease_id] [int] IDENTITY(1,1) NOT NULL,
	[disease_name] [varchar](45) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employee]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee](
	[eid] [int] IDENTITY(1,1) NOT NULL,
	[ename] [varchar](20) NULL,
	[did] [int] NULL,
	[gid] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gender]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gender](
	[gid] [int] IDENTITY(1,1) NOT NULL,
	[gender] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GridView]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GridView](
	[rlNo] [int] IDENTITY(1,1) NOT NULL,
	[sname] [varchar](50) NULL,
	[smark] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[rlNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[img]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[img](
	[sl] [int] IDENTITY(100,1) NOT NULL,
	[name] [varchar](20) NULL,
	[dob] [date] NULL,
	[img] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[item]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[item](
	[itemid] [int] NOT NULL,
	[name] [varchar](30) NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[itemid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[item_master]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[item_master](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](20) NULL,
	[quantity] [int] NULL,
	[mrp] [int] NULL,
	[cgst] [int] NULL,
	[sgst] [int] NULL,
	[gst] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemMaster]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemMaster](
	[itemid] [int] IDENTITY(1,1) NOT NULL,
	[itemname] [varchar](50) NULL,
	[qty] [int] NULL,
	[mrp] [numeric](8, 2) NULL,
	[cgst] [numeric](8, 2) NULL,
	[sgst] [numeric](8, 2) NULL,
	[gst] [numeric](8, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[listobject]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[listobject](
	[sl] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](20) NULL,
	[age] [int] NULL,
	[today] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_PL_Slot_Master]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_PL_Slot_Master](
	[SlotID] [int] IDENTITY(1,1) NOT NULL,
	[SlotName] [varchar](100) NULL,
	[HospitalID] [int] NULL,
	[Slot_TimeFrom] [varchar](100) NULL,
	[Slot_TimeTo] [varchar](100) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [varchar](100) NULL,
	[DeletedFlag] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_PL_USER]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_PL_USER](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Address] [varchar](500) NULL,
	[RoleId] [int] NULL,
	[CreatedOn] [date] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedOn] [date] NULL,
	[DeletedFlag] [bit] NULL,
 CONSTRAINT [PK_M_PL_USER] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[master_user]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[master_user](
	[id] [varchar](20) NULL,
	[password] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewDotNet]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewDotNet](
	[ID] [int] NOT NULL,
	[Name] [varchar](100) NULL,
	[Phone] [varchar](12) NULL,
	[Address] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[slno] [int] IDENTITY(1,1) NOT NULL,
	[orderId] [int] NULL,
	[pid] [varchar](50) NULL,
	[qty] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[slno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orderdetails]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderdetails](
	[slno] [int] IDENTITY(1,1) NOT NULL,
	[prodid] [varchar](20) NULL,
	[quantity] [int] NULL,
	[orderid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[slno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderMaster]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderMaster](
	[orderId] [int] IDENTITY(1,1) NOT NULL,
	[uid] [varchar](50) NULL,
	[dateOfOrd] [date] NULL,
	[ostatus] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[orderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Panchyat]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Panchyat](
	[PanchyatID] [int] IDENTITY(1,1) NOT NULL,
	[BlockID] [int] NULL,
	[PanchyatName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Panchyat] PRIMARY KEY CLUSTERED 
(
	[PanchyatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[patient_master]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[patient_master](
	[patient_id] [int] IDENTITY(1,1) NOT NULL,
	[patient_name] [varchar](45) NULL,
	[gender] [char](1) NULL,
	[dob] [date] NULL,
	[phone_no] [varchar](12) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prescription_tbl]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prescription_tbl](
	[prescription_id] [int] IDENTITY(1,1) NOT NULL,
	[doctor_name] [varchar](45) NULL,
	[date_of_visit] [date] NULL,
	[patient_id] [int] NULL,
	[disease_id] [int] NULL,
	[prescription_details] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[price_dtls]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[price_dtls](
	[sl_no] [int] IDENTITY(1,1) NOT NULL,
	[month] [int] NULL,
	[year] [int] NULL,
	[current_gold_rate_per_gram] [varchar](20) NULL,
	[product_id] [int] NULL,
	[making_charges_per_gram] [numeric](6, 2) NOT NULL,
	[gst] [numeric](6, 2) NOT NULL,
	[discount_on_making_charges] [numeric](6, 2) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prod]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prod](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[qty] [int] NULL,
	[name] [varchar](10) NULL,
	[rate] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prodname]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prodname](
	[sl] [int] IDENTITY(1,1) NOT NULL,
	[categoryname] [varchar](20) NULL,
	[subcategoryname] [varchar](20) NULL,
	[today] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prodnamedd]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prodnamedd](
	[sl] [int] IDENTITY(1,1) NOT NULL,
	[categoryname] [varchar](20) NULL,
	[subcategoryname] [varchar](20) NULL,
	[today] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[pid] [varchar](50) NULL,
	[pname] [varchar](50) NULL,
	[pdesc] [varchar](50) NULL,
	[price] [numeric](8, 2) NULL,
	[pqty] [int] NULL,
	[pimage] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_master_xm]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_master_xm](
	[product_id] [int] NOT NULL,
	[producttyoe] [varchar](45) NOT NULL,
	[weight] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_table]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_table](
	[pid] [int] IDENTITY(1,1) NOT NULL,
	[pname] [varchar](50) NULL,
	[pqty] [int] NULL,
	[price] [numeric](8, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Table1]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Table1](
	[pid] [int] IDENTITY(100,1) NOT NULL,
	[catid] [int] NULL,
	[subcatid] [int] NULL,
	[pname] [varchar](50) NULL,
	[pprice] [decimal](8, 2) NULL,
	[pquantity] [int] NULL,
	[pimage] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_tbl]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_tbl](
	[pid] [int] IDENTITY(1,1) NOT NULL,
	[pname] [varchar](20) NULL,
	[price] [numeric](6, 2) NULL,
	[pqty] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product1]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product1](
	[pid] [int] IDENTITY(1,1) NOT NULL,
	[pname] [varchar](50) NULL,
	[pqty] [int] NULL,
	[price] [numeric](8, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product111]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product111](
	[pid] [int] IDENTITY(1,1) NOT NULL,
	[pname] [varchar](50) NULL,
	[price] [numeric](8, 2) NULL,
	[pqty] [int] NULL,
	[photo] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product12]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product12](
	[pid] [int] IDENTITY(1,1) NOT NULL,
	[pname] [varchar](50) NULL,
	[catid] [int] NULL,
	[price] [numeric](8, 2) NULL,
	[pqty] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product3]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product3](
	[pid] [int] IDENTITY(1,1) NOT NULL,
	[pname] [varchar](50) NULL,
	[catid] [int] NULL,
	[subcatid] [int] NULL,
	[price] [numeric](8, 2) NULL,
	[pqty] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productdetails]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productdetails](
	[productid] [varchar](20) NOT NULL,
	[productname] [varchar](20) NULL,
	[productdesc] [varchar](20) NULL,
	[prodprice] [int] NULL,
	[productqty] [int] NULL,
	[productimage] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[productid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[questionmaster]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[questionmaster](
	[qid] [int] IDENTITY(1,1) NOT NULL,
	[tid] [int] NULL,
	[sid] [int] NULL,
	[qst] [varchar](max) NULL,
	[option1] [varchar](max) NULL,
	[option2] [varchar](max) NULL,
	[option3] [varchar](max) NULL,
	[option4] [varchar](max) NULL,
	[answer] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[qid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receive]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receive](
	[slno] [int] IDENTITY(1,1) NOT NULL,
	[dor] [date] NULL,
	[itemid] [int] NULL,
	[vendorid] [int] NULL,
	[qty] [int] NULL,
	[price] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[slno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registration_Details]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration_Details](
	[Registration_Id] [int] IDENTITY(1,1) NOT NULL,
	[Applicant_name] [varchar](45) NULL,
	[Email] [varchar](45) NOT NULL,
	[Mobile_no] [varchar](45) NULL,
	[Gender] [varchar](10) NULL,
	[dob] [date] NULL,
	[image_path] [varchar](30) NULL,
	[club_id] [int] NULL,
	[sport_Id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[resultdetails]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[resultdetails](
	[slno] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int] NULL,
	[doe] [date] NULL,
	[qid] [int] NULL,
	[optchoose] [varchar](100) NULL,
	[rstatus] [varchar](100) NULL,
	[dstatus] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[slno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[salary]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[salary](
	[sl] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](20) NULL,
	[salary] [numeric](8, 2) NULL,
	[dept] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales_master]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales_master](
	[orderid] [int] IDENTITY(1,1) NOT NULL,
	[saledate] [date] NULL,
	[custname] [varchar](50) NULL,
	[totalsamt] [numeric](8, 2) NULL,
	[gst] [numeric](8, 2) NULL,
	[netamt] [numeric](8, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales_slave]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales_slave](
	[slno] [int] IDENTITY(1,1) NOT NULL,
	[orderid] [int] NULL,
	[itemid] [int] NULL,
	[sqty] [int] NULL,
	[mrp] [numeric](8, 2) NULL,
	[totalsamt] [numeric](8, 2) NULL,
	[gst] [numeric](8, 2) NULL,
	[netamt] [numeric](8, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales_table]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales_table](
	[saleid] [int] IDENTITY(1,1) NOT NULL,
	[sdate] [date] NULL,
	[pid] [int] NULL,
	[custid] [int] NULL,
	[sqty] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SchoolType]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchoolType](
	[SchoolTypeID] [int] IDENTITY(1,1) NOT NULL,
	[SchoolTypeName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[SchoolTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sectionmaster]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sectionmaster](
	[sectionid] [int] IDENTITY(1,1) NOT NULL,
	[secname] [varchar](20) NULL,
	[capacity] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[setupmaster]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[setupmaster](
	[noofqst] [int] NULL,
	[timeinminutes] [time](7) NULL,
	[rules] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sports_Master]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sports_Master](
	[sport_Id] [int] IDENTITY(1,1) NOT NULL,
	[sprot_name] [varchar](45) NULL,
	[club_id] [int] NULL,
	[fees] [decimal](8, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[State]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[StateID] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [nvarchar](50) NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[StateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[regdno] [varchar](20) NOT NULL,
	[name] [varchar](20) NULL,
	[classid] [int] NULL,
	[secid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[regdno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student1]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student1](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](20) NULL,
	[phone] [varchar](20) NULL,
	[photo] [varchar](20) NULL,
	[gender] [varchar](20) NULL,
	[deptid] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subcategory]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subcategory](
	[s_id] [int] IDENTITY(1,1) NOT NULL,
	[cat_id] [int] NULL,
	[sub_name] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubCategory3]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategory3](
	[subcatid] [int] IDENTITY(1,1) NOT NULL,
	[catid] [int] NULL,
	[subcatname] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subjectmaster]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subjectmaster](
	[sid] [int] IDENTITY(1,1) NOT NULL,
	[tid] [int] NULL,
	[sname] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_1]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_1](
	[Name] [nchar](10) NULL,
	[Id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_img]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_img](
	[pid] [int] IDENTITY(1,1) NOT NULL,
	[pname] [varchar](20) NULL,
	[price] [numeric](8, 2) NULL,
	[pqty] [int] NULL,
	[image] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_PatientMaster]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_PatientMaster](
	[PatientID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Gender] [nvarchar](50) NULL,
	[AgeYear] [int] NULL,
	[AgeMonth] [int] NULL,
	[AgeDays] [int] NULL,
	[Address] [nvarchar](100) NULL,
	[City] [nvarchar](50) NULL,
	[Pincode] [nvarchar](50) NULL,
	[phoneno] [nvarchar](50) NULL,
	[WhatsAppNo] [nvarchar](50) NULL,
	[ReferByClientId] [int] NULL,
	[EDate] [datetime] NULL,
	[Status] [nvarchar](10) NULL,
	[CreatedOn] [date] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedOn] [date] NULL,
	[DeletedFlag] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_QuestionMaster]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_QuestionMaster](
	[slno] [int] IDENTITY(1,1) NOT NULL,
	[techid] [int] NULL,
	[subid] [int] NULL,
	[question] [varchar](max) NULL,
	[opt1] [varchar](100) NULL,
	[opt2] [varchar](100) NULL,
	[opt3] [varchar](100) NULL,
	[opt4] [varchar](100) NULL,
	[ans] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[slno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ResultDetails]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ResultDetails](
	[slno] [int] IDENTITY(1,1) NOT NULL,
	[userid] [varchar](50) NULL,
	[doe] [date] NULL,
	[qid] [int] NULL,
	[optchoose] [varchar](100) NULL,
	[rstatus] [varchar](50) NULL,
	[dstatus] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[slno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_RoleMaster]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_RoleMaster](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](20) NULL,
	[CreatedOn] [date] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedOn] [date] NULL,
	[DeletedFlag] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_SetupMaster]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_SetupMaster](
	[noofque] [int] NULL,
	[timeinminute] [int] NULL,
	[rules] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_SubjectMaster]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_SubjectMaster](
	[subid] [int] IDENTITY(1,1) NOT NULL,
	[techid] [int] NULL,
	[subname] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[subid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_TechnologyMaster]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_TechnologyMaster](
	[techid] [int] IDENTITY(1,1) NOT NULL,
	[techname] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[techid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_UserMaster]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_UserMaster](
	[userid] [varchar](50) NOT NULL,
	[userpassword] [varchar](50) NULL,
	[username] [varchar](100) NULL,
	[userphone] [varchar](50) NULL,
	[useremail] [varchar](50) NULL,
	[userphoto] [varchar](max) NULL,
	[usertechnology] [int] NULL,
	[usersubject] [int] NULL,
	[userstatus] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblDistrict]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblDistrict](
	[DistrictID] [int] IDENTITY(1,1) NOT NULL,
	[StateID] [int] NULL,
	[DistrictName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[DistrictID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblSchoolRegistration]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblSchoolRegistration](
	[SchoolID] [int] IDENTITY(1,1) NOT NULL,
	[StateID] [int] NULL,
	[DistrictID] [int] NULL,
	[SchoolName] [varchar](100) NULL,
	[SchoolTypeID] [int] NULL,
	[SchoolLevel] [varchar](50) NULL,
	[SchoolPhoto] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[SchoolID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblState]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblState](
	[StateID] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[StateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[technologymaster]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[technologymaster](
	[tid] [int] IDENTITY(1,1) NOT NULL,
	[tname] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tranc]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tranc](
	[sl] [int] IDENTITY(1,1) NOT NULL,
	[today] [date] NULL,
	[p_id] [int] NULL,
	[tqty] [int] NULL,
	[t_amount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserDetails]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[PhoneNo] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_UserDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usermaster]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usermaster](
	[userid] [varchar](40) NOT NULL,
	[passwd] [varchar](20) NULL,
	[username] [varchar](20) NULL,
	[useradd] [varchar](20) NULL,
	[usergen] [varchar](20) NULL,
	[userphone] [varchar](20) NULL,
	[useremail] [varchar](20) NULL,
	[userdob] [date] NULL,
	[userphoto] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usermaster1]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usermaster1](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userid] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[username] [varchar](50) NULL,
	[userphoneno] [varchar](50) NULL,
	[useremail] [varchar](50) NULL,
	[userphoto] [varchar](50) NULL,
	[usertechnology] [int] NULL,
	[usersubject] [int] NULL,
	[status] [varchar](50) NULL,
 CONSTRAINT [PK__usermast__3213E83F8F5C1FB4] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendor]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendor](
	[vendorid] [int] NOT NULL,
	[vendername] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[vendorid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[villagemaster]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[villagemaster](
	[vid] [varchar](20) NULL,
	[vname] [varchar](20) NULL,
	[panchayatname] [varchar](20) NULL,
	[population] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vote]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vote](
	[sl] [int] IDENTITY(1,1) NOT NULL,
	[citzenid] [int] NULL,
	[candid] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vote1]    Script Date: 26-06-2023 11:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vote1](
	[c_id] [int] NULL,
	[cd_id] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([adminId], [pswd]) VALUES (N'admin', N'admin')
GO
INSERT [dbo].[adminmaster] ([adminid], [password]) VALUES (N'admin', N'admin')
GO
SET IDENTITY_INSERT [dbo].[Block] ON 

INSERT [dbo].[Block] ([BlockID], [StateID], [BlockName]) VALUES (1, 1, N'Badasahi')
INSERT [dbo].[Block] ([BlockID], [StateID], [BlockName]) VALUES (2, 1, N'Betnoti')
INSERT [dbo].[Block] ([BlockID], [StateID], [BlockName]) VALUES (3, 2, N'Birpur')
SET IDENTITY_INSERT [dbo].[Block] OFF
GO
SET IDENTITY_INSERT [dbo].[candid] ON 

INSERT [dbo].[candid] ([cd_id], [c_id]) VALUES (1, 1)
INSERT [dbo].[candid] ([cd_id], [c_id]) VALUES (2, 2)
SET IDENTITY_INSERT [dbo].[candid] OFF
GO
SET IDENTITY_INSERT [dbo].[candidate] ON 

INSERT [dbo].[candidate] ([candidateid], [citzenid]) VALUES (1, 8)
INSERT [dbo].[candidate] ([candidateid], [citzenid]) VALUES (2, 9)
INSERT [dbo].[candidate] ([candidateid], [citzenid]) VALUES (3, 3)
SET IDENTITY_INSERT [dbo].[candidate] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([catid], [catname]) VALUES (1, N'Mobile')
INSERT [dbo].[Category] ([catid], [catname]) VALUES (2, N'Electro')
INSERT [dbo].[Category] ([catid], [catname]) VALUES (3, N'plastic')
INSERT [dbo].[Category] ([catid], [catname]) VALUES (4, N'Cosmetics')
INSERT [dbo].[Category] ([catid], [catname]) VALUES (5, N'Lather')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Category3] ON 

INSERT [dbo].[Category3] ([catid], [catname]) VALUES (1, N'Electronic')
INSERT [dbo].[Category3] ([catid], [catname]) VALUES (2, N'Wood')
SET IDENTITY_INSERT [dbo].[Category3] OFF
GO
SET IDENTITY_INSERT [dbo].[chikun] ON 

INSERT [dbo].[chikun] ([id], [name]) VALUES (1, N'Japani')
INSERT [dbo].[chikun] ([id], [name]) VALUES (2, N'Sapani')
SET IDENTITY_INSERT [dbo].[chikun] OFF
GO
INSERT [dbo].[chikun1] ([id], [name], [phone], [email], [suject]) VALUES (N'admin', N'mikun', N'8657068888', N'sushantasenapati718@', N'Math')
INSERT [dbo].[chikun1] ([id], [name], [phone], [email], [suject]) VALUES (N'E001', N'chikum', N'7467367637', N'CharlesSSmith@cuvox.', N'Math')
INSERT [dbo].[chikun1] ([id], [name], [phone], [email], [suject]) VALUES (N'e002', N'chikk', N'8658193889', N'sushantasenapati718@', N'science')
INSERT [dbo].[chikun1] ([id], [name], [phone], [email], [suject]) VALUES (N'e003', N'chikum', N'7467367637', N'CharlesSSmith@cuvox.', N'ADO.pdf')
INSERT [dbo].[chikun1] ([id], [name], [phone], [email], [suject]) VALUES (N'e4437', N'cggg', N'8658193889', N'CharlesSSmith@cuvox.', N'English')
GO
INSERT [dbo].[chikun123] ([id], [pass], [name]) VALUES (1, N'Y2hpa3Vu', N'chikun')
INSERT [dbo].[chikun123] ([id], [pass], [name]) VALUES (1, N'ZTAwMQ==', N'chikun')
INSERT [dbo].[chikun123] ([id], [pass], [name]) VALUES (3, N'cmFt', N'Sriram')
INSERT [dbo].[chikun123] ([id], [pass], [name]) VALUES (10, N'ZTAwMQ==', N'chikun')
INSERT [dbo].[chikun123] ([id], [pass], [name]) VALUES (100, N'UmFt', N'chikun')
GO
SET IDENTITY_INSERT [dbo].[citizen] ON 

INSERT [dbo].[citizen] ([citzenid], [citzenname], [citzenphone]) VALUES (1, N'Aam', N'8478346864')
INSERT [dbo].[citizen] ([citzenid], [citzenname], [citzenphone]) VALUES (2, N'Bam', N'8478346864')
INSERT [dbo].[citizen] ([citzenid], [citzenname], [citzenphone]) VALUES (3, N'Cam', N'8478346864')
INSERT [dbo].[citizen] ([citzenid], [citzenname], [citzenphone]) VALUES (4, N'Dam', N'8478346864')
INSERT [dbo].[citizen] ([citzenid], [citzenname], [citzenphone]) VALUES (5, N'Eam', N'8478346864')
INSERT [dbo].[citizen] ([citzenid], [citzenname], [citzenphone]) VALUES (6, N'Fam', N'8478346864')
INSERT [dbo].[citizen] ([citzenid], [citzenname], [citzenphone]) VALUES (7, N'Gam', N'8478346864')
INSERT [dbo].[citizen] ([citzenid], [citzenname], [citzenphone]) VALUES (8, N'Ham', N'8478346864')
INSERT [dbo].[citizen] ([citzenid], [citzenname], [citzenphone]) VALUES (9, N'Iam', N'8478346864')
INSERT [dbo].[citizen] ([citzenid], [citzenname], [citzenphone]) VALUES (10, N'Jam', N'8478346864')
SET IDENTITY_INSERT [dbo].[citizen] OFF
GO
SET IDENTITY_INSERT [dbo].[citizen1] ON 

INSERT [dbo].[citizen1] ([c_id], [nam]) VALUES (1, N'a')
INSERT [dbo].[citizen1] ([c_id], [nam]) VALUES (2, N'b')
INSERT [dbo].[citizen1] ([c_id], [nam]) VALUES (3, N'c')
INSERT [dbo].[citizen1] ([c_id], [nam]) VALUES (4, N'd')
INSERT [dbo].[citizen1] ([c_id], [nam]) VALUES (5, N'e')
INSERT [dbo].[citizen1] ([c_id], [nam]) VALUES (6, N'f')
SET IDENTITY_INSERT [dbo].[citizen1] OFF
GO
SET IDENTITY_INSERT [dbo].[classmaster] ON 

INSERT [dbo].[classmaster] ([classid], [classname]) VALUES (1, N'class-1')
INSERT [dbo].[classmaster] ([classid], [classname]) VALUES (2, N'class-2')
INSERT [dbo].[classmaster] ([classid], [classname]) VALUES (3, N'class-3')
SET IDENTITY_INSERT [dbo].[classmaster] OFF
GO
SET IDENTITY_INSERT [dbo].[Club_Master] ON 

INSERT [dbo].[Club_Master] ([club_Id], [club_name]) VALUES (1, N'Lion Club')
INSERT [dbo].[Club_Master] ([club_Id], [club_name]) VALUES (2, N'Tiger Club')
SET IDENTITY_INSERT [dbo].[Club_Master] OFF
GO
SET IDENTITY_INSERT [dbo].[CollageInfo] ON 

INSERT [dbo].[CollageInfo] ([Collageid], [Collagename], [CollageRank]) VALUES (4, N'Utkal University', 2.5)
INSERT [dbo].[CollageInfo] ([Collageid], [Collagename], [CollageRank]) VALUES (5, N'NIIS', 2)
INSERT [dbo].[CollageInfo] ([Collageid], [Collagename], [CollageRank]) VALUES (6, N'sdsd', 2)
INSERT [dbo].[CollageInfo] ([Collageid], [Collagename], [CollageRank]) VALUES (7, N'cwdsd', 454)
SET IDENTITY_INSERT [dbo].[CollageInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[CoronaStatus] ON 

INSERT [dbo].[CoronaStatus] ([CoronaID], [PanchyatID], [CitizenName], [AffectedDate], [Status]) VALUES (1, 2, N'chikun', CAST(N'2022-11-29' AS Date), 2)
INSERT [dbo].[CoronaStatus] ([CoronaID], [PanchyatID], [CitizenName], [AffectedDate], [Status]) VALUES (2, 3, N'Makram', CAST(N'2022-11-30' AS Date), 2)
INSERT [dbo].[CoronaStatus] ([CoronaID], [PanchyatID], [CitizenName], [AffectedDate], [Status]) VALUES (3, 1, N'Prasant', CAST(N'2022-11-30' AS Date), 2)
INSERT [dbo].[CoronaStatus] ([CoronaID], [PanchyatID], [CitizenName], [AffectedDate], [Status]) VALUES (4, 1, N'xyx', CAST(N'2022-11-24' AS Date), 1)
INSERT [dbo].[CoronaStatus] ([CoronaID], [PanchyatID], [CitizenName], [AffectedDate], [Status]) VALUES (5, 1, N'chik', CAST(N'2022-11-18' AS Date), 2)
INSERT [dbo].[CoronaStatus] ([CoronaID], [PanchyatID], [CitizenName], [AffectedDate], [Status]) VALUES (6, 1, N'kjh', CAST(N'2022-11-15' AS Date), 1)
SET IDENTITY_INSERT [dbo].[CoronaStatus] OFF
GO
INSERT [dbo].[Customer] ([uid], [uname], [uadd], [uphone], [uemail], [upaswd]) VALUES (N'chikun123', N'chikun', N'Kuliana', N'8658193889', N'su', N'chikun123')
INSERT [dbo].[Customer] ([uid], [uname], [uadd], [uphone], [uemail], [upaswd]) VALUES (N'e001', N'chikun', N'kuliana', N'8658193889', N'sushantasenapati718@gmail.com', N'e001')
INSERT [dbo].[Customer] ([uid], [uname], [uadd], [uphone], [uemail], [upaswd]) VALUES (N'e002', N'Yosh senapati', N'baripada', N'8658193880', N'yoshantasenapati718@gmail.com', N'e002')
INSERT [dbo].[Customer] ([uid], [uname], [uadd], [uphone], [uemail], [upaswd]) VALUES (N'e003', N'Vikram', N'Barhampur', N'7866776777', N'vikram Reddy718@gmail.com', N'e003')
GO
SET IDENTITY_INSERT [dbo].[Customer_table] ON 

INSERT [dbo].[Customer_table] ([custid], [custname], [mobno]) VALUES (1, N'Shyam', N'8144346353')
INSERT [dbo].[Customer_table] ([custid], [custname], [mobno]) VALUES (2, N'Susanta', N'8658193889')
INSERT [dbo].[Customer_table] ([custid], [custname], [mobno]) VALUES (3, N'Bikram', N'7504656313')
INSERT [dbo].[Customer_table] ([custid], [custname], [mobno]) VALUES (4, N'Subha', N'7204828589')
INSERT [dbo].[Customer_table] ([custid], [custname], [mobno]) VALUES (5, N'Adesha', N'9776046728')
SET IDENTITY_INSERT [dbo].[Customer_table] OFF
GO
SET IDENTITY_INSERT [dbo].[customer12] ON 

INSERT [dbo].[customer12] ([cid], [Name], [age]) VALUES (19, N'cgc', 4344)
INSERT [dbo].[customer12] ([cid], [Name], [age]) VALUES (32, N'chikun', 12)
INSERT [dbo].[customer12] ([cid], [Name], [age]) VALUES (33, N'ef', 23)
INSERT [dbo].[customer12] ([cid], [Name], [age]) VALUES (34, N'gsx', 12)
INSERT [dbo].[customer12] ([cid], [Name], [age]) VALUES (35, N'gfd', 12)
INSERT [dbo].[customer12] ([cid], [Name], [age]) VALUES (36, N'tr', 34)
SET IDENTITY_INSERT [dbo].[customer12] OFF
GO
SET IDENTITY_INSERT [dbo].[customer1234] ON 

INSERT [dbo].[customer1234] ([custid], [custname], [custphone], [custemail], [custimage]) VALUES (3, N'chi', N'879777677', N'chii@123', N'Photo/imag 2.jpg')
INSERT [dbo].[customer1234] ([custid], [custname], [custphone], [custemail], [custimage]) VALUES (4, N'chik', N'87878', N'nsjh', N'Photo/phone.jpeg')
INSERT [dbo].[customer1234] ([custid], [custname], [custphone], [custemail], [custimage]) VALUES (5, N'cec', N'454545', N'cd', N'Photo/imag 2.jpg')
SET IDENTITY_INSERT [dbo].[customer1234] OFF
GO
INSERT [dbo].[datee] ([itemid], [surdate]) VALUES (2, CAST(N'2022-11-13' AS Date))
GO
SET IDENTITY_INSERT [dbo].[departments] ON 

INSERT [dbo].[departments] ([did], [dname]) VALUES (1, N'IT')
INSERT [dbo].[departments] ([did], [dname]) VALUES (2, N'HR')
INSERT [dbo].[departments] ([did], [dname]) VALUES (3, N'Payroll')
SET IDENTITY_INSERT [dbo].[departments] OFF
GO
SET IDENTITY_INSERT [dbo].[dept1] ON 

INSERT [dbo].[dept1] ([deptid], [deptname]) VALUES (1, N'science')
INSERT [dbo].[dept1] ([deptid], [deptname]) VALUES (2, N'Arts')
SET IDENTITY_INSERT [dbo].[dept1] OFF
GO
SET IDENTITY_INSERT [dbo].[disease_master] ON 

INSERT [dbo].[disease_master] ([disease_id], [disease_name]) VALUES (1, N'fever')
INSERT [dbo].[disease_master] ([disease_id], [disease_name]) VALUES (2, N'cold')
INSERT [dbo].[disease_master] ([disease_id], [disease_name]) VALUES (3, N'Fileria')
INSERT [dbo].[disease_master] ([disease_id], [disease_name]) VALUES (4, N'Maleria')
INSERT [dbo].[disease_master] ([disease_id], [disease_name]) VALUES (5, N'Aids')
INSERT [dbo].[disease_master] ([disease_id], [disease_name]) VALUES (6, N'tb')
INSERT [dbo].[disease_master] ([disease_id], [disease_name]) VALUES (7, N'jhadabanti')
INSERT [dbo].[disease_master] ([disease_id], [disease_name]) VALUES (8, N'jalantak')
SET IDENTITY_INSERT [dbo].[disease_master] OFF
GO
SET IDENTITY_INSERT [dbo].[employee] ON 

INSERT [dbo].[employee] ([eid], [ename], [did], [gid]) VALUES (1, N'mark', 1, 1)
INSERT [dbo].[employee] ([eid], [ename], [did], [gid]) VALUES (2, N'john', 1, 1)
INSERT [dbo].[employee] ([eid], [ename], [did], [gid]) VALUES (3, N'mike', 2, 1)
INSERT [dbo].[employee] ([eid], [ename], [did], [gid]) VALUES (4, N'mary', 2, 2)
INSERT [dbo].[employee] ([eid], [ename], [did], [gid]) VALUES (5, N'stacy', 3, 2)
INSERT [dbo].[employee] ([eid], [ename], [did], [gid]) VALUES (6, N'valarie', 3, 2)
SET IDENTITY_INSERT [dbo].[employee] OFF
GO
SET IDENTITY_INSERT [dbo].[gender] ON 

INSERT [dbo].[gender] ([gid], [gender]) VALUES (1, N'male')
INSERT [dbo].[gender] ([gid], [gender]) VALUES (2, N'female')
SET IDENTITY_INSERT [dbo].[gender] OFF
GO
SET IDENTITY_INSERT [dbo].[GridView] ON 

INSERT [dbo].[GridView] ([rlNo], [sname], [smark]) VALUES (1, N'chikun', 50)
INSERT [dbo].[GridView] ([rlNo], [sname], [smark]) VALUES (4, N'Sita', 30)
INSERT [dbo].[GridView] ([rlNo], [sname], [smark]) VALUES (6, N'gita', 56)
INSERT [dbo].[GridView] ([rlNo], [sname], [smark]) VALUES (7, N'mikun', 33)
SET IDENTITY_INSERT [dbo].[GridView] OFF
GO
SET IDENTITY_INSERT [dbo].[img] ON 

INSERT [dbo].[img] ([sl], [name], [dob], [img]) VALUES (100, N'chikun', CAST(N'2022-12-15' AS Date), N'photo/imag 2.jpg')
INSERT [dbo].[img] ([sl], [name], [dob], [img]) VALUES (101, N'mikun', CAST(N'1998-05-16' AS Date), N'photo/yellow png.png')
INSERT [dbo].[img] ([sl], [name], [dob], [img]) VALUES (102, N'sita', CAST(N'2022-12-15' AS Date), N'photo/phone.jpeg')
INSERT [dbo].[img] ([sl], [name], [dob], [img]) VALUES (103, N'chikun2', CAST(N'2022-12-15' AS Date), N'photo/Red_Color.jpg')
SET IDENTITY_INSERT [dbo].[img] OFF
GO
INSERT [dbo].[item] ([itemid], [name], [quantity]) VALUES (1, N'pen', 48)
INSERT [dbo].[item] ([itemid], [name], [quantity]) VALUES (2, N'pencil', 10)
INSERT [dbo].[item] ([itemid], [name], [quantity]) VALUES (3, N'pepci', 10)
GO
SET IDENTITY_INSERT [dbo].[item_master] ON 

INSERT [dbo].[item_master] ([id], [name], [quantity], [mrp], [cgst], [sgst], [gst]) VALUES (1, N'pen', 5, 100, 9, 9, 18)
INSERT [dbo].[item_master] ([id], [name], [quantity], [mrp], [cgst], [sgst], [gst]) VALUES (2, N'pencil', 2, 200, 18, 18, 36)
INSERT [dbo].[item_master] ([id], [name], [quantity], [mrp], [cgst], [sgst], [gst]) VALUES (3, N'Ribber', 6, 100, 9, 9, 18)
INSERT [dbo].[item_master] ([id], [name], [quantity], [mrp], [cgst], [sgst], [gst]) VALUES (4, N'Mobile', -2, 100, 9, 9, 18)
INSERT [dbo].[item_master] ([id], [name], [quantity], [mrp], [cgst], [sgst], [gst]) VALUES (5, N'WaterHiter', 5, 100, 9, 9, 18)
INSERT [dbo].[item_master] ([id], [name], [quantity], [mrp], [cgst], [sgst], [gst]) VALUES (6, N'glass', -5, 100, 9, 9, 18)
INSERT [dbo].[item_master] ([id], [name], [quantity], [mrp], [cgst], [sgst], [gst]) VALUES (7, N'bag', 6, 100, 9, 9, 18)
INSERT [dbo].[item_master] ([id], [name], [quantity], [mrp], [cgst], [sgst], [gst]) VALUES (8, N'MobileCover', 8, 100, 9, 9, 18)
SET IDENTITY_INSERT [dbo].[item_master] OFF
GO
SET IDENTITY_INSERT [dbo].[ItemMaster] ON 

INSERT [dbo].[ItemMaster] ([itemid], [itemname], [qty], [mrp], [cgst], [sgst], [gst]) VALUES (1, N'Table', 9, CAST(1500.00 AS Numeric(8, 2)), CAST(135.00 AS Numeric(8, 2)), CAST(135.00 AS Numeric(8, 2)), CAST(270.00 AS Numeric(8, 2)))
INSERT [dbo].[ItemMaster] ([itemid], [itemname], [qty], [mrp], [cgst], [sgst], [gst]) VALUES (2, N'Chair', 1, CAST(2000.00 AS Numeric(8, 2)), CAST(180.00 AS Numeric(8, 2)), CAST(180.00 AS Numeric(8, 2)), CAST(360.00 AS Numeric(8, 2)))
INSERT [dbo].[ItemMaster] ([itemid], [itemname], [qty], [mrp], [cgst], [sgst], [gst]) VALUES (3, N'Window', 4, CAST(1000.00 AS Numeric(8, 2)), CAST(90.00 AS Numeric(8, 2)), CAST(90.00 AS Numeric(8, 2)), CAST(180.00 AS Numeric(8, 2)))
INSERT [dbo].[ItemMaster] ([itemid], [itemname], [qty], [mrp], [cgst], [sgst], [gst]) VALUES (4, N'Door', 10, CAST(2500.00 AS Numeric(8, 2)), CAST(225.00 AS Numeric(8, 2)), CAST(225.00 AS Numeric(8, 2)), CAST(450.00 AS Numeric(8, 2)))
INSERT [dbo].[ItemMaster] ([itemid], [itemname], [qty], [mrp], [cgst], [sgst], [gst]) VALUES (5, N'Desk', 6, CAST(1500.00 AS Numeric(8, 2)), CAST(135.00 AS Numeric(8, 2)), CAST(135.00 AS Numeric(8, 2)), CAST(270.00 AS Numeric(8, 2)))
INSERT [dbo].[ItemMaster] ([itemid], [itemname], [qty], [mrp], [cgst], [sgst], [gst]) VALUES (6, N'Bed', 7, CAST(900.00 AS Numeric(8, 2)), CAST(81.00 AS Numeric(8, 2)), CAST(81.00 AS Numeric(8, 2)), CAST(162.00 AS Numeric(8, 2)))
INSERT [dbo].[ItemMaster] ([itemid], [itemname], [qty], [mrp], [cgst], [sgst], [gst]) VALUES (7, N'Wooden Sofa', 5, CAST(1800.00 AS Numeric(8, 2)), CAST(162.00 AS Numeric(8, 2)), CAST(162.00 AS Numeric(8, 2)), CAST(324.00 AS Numeric(8, 2)))
INSERT [dbo].[ItemMaster] ([itemid], [itemname], [qty], [mrp], [cgst], [sgst], [gst]) VALUES (8, N'Almirah', 9, CAST(1600.00 AS Numeric(8, 2)), CAST(144.00 AS Numeric(8, 2)), CAST(144.00 AS Numeric(8, 2)), CAST(28.00 AS Numeric(8, 2)))
INSERT [dbo].[ItemMaster] ([itemid], [itemname], [qty], [mrp], [cgst], [sgst], [gst]) VALUES (9, N'Dining Table', 3, CAST(2000.00 AS Numeric(8, 2)), CAST(180.00 AS Numeric(8, 2)), CAST(180.00 AS Numeric(8, 2)), CAST(360.00 AS Numeric(8, 2)))
INSERT [dbo].[ItemMaster] ([itemid], [itemname], [qty], [mrp], [cgst], [sgst], [gst]) VALUES (10, N'Dressing Table', 7, CAST(1500.00 AS Numeric(8, 2)), CAST(135.00 AS Numeric(8, 2)), CAST(135.00 AS Numeric(8, 2)), CAST(270.00 AS Numeric(8, 2)))
INSERT [dbo].[ItemMaster] ([itemid], [itemname], [qty], [mrp], [cgst], [sgst], [gst]) VALUES (11, N'Bat', 9, CAST(500.00 AS Numeric(8, 2)), CAST(45.00 AS Numeric(8, 2)), CAST(45.00 AS Numeric(8, 2)), CAST(90.00 AS Numeric(8, 2)))
SET IDENTITY_INSERT [dbo].[ItemMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[M_PL_Slot_Master] ON 

INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (1, N'vd', 2, N'2', N'3', NULL, N'0', NULL, NULL, NULL)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (2, N'vd', 2, N'2', N'3', NULL, N'0', NULL, NULL, NULL)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (3, N'vd', 2, N'2', N'3', NULL, N'0', NULL, NULL, 1)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (4, N'fwf', 1, N'3', N'4', NULL, N'0', NULL, NULL, 0)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (5, N'gc', 2, N'10:04', N'11.80', NULL, N'0', NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[M_PL_Slot_Master] OFF
GO
SET IDENTITY_INSERT [dbo].[M_PL_USER] ON 

INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (1, NULL, N'c3VzaGFudGE=', N'sushanta', N'sushanta', N'9876543', N'Male', N'Basta', 2, CAST(N'2023-01-03' AS Date), 0, NULL, CAST(N'2023-01-03' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (2, N'Chikun', N'Y2hpa3Vu', N'chikun', N'chikun', N'98765432765', N'Male', N'Basta', 1, CAST(N'2023-01-03' AS Date), 0, NULL, CAST(N'2023-01-03' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (3, N'wqxuwqyx', N'c3djeA==', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'+918658193889', N'Female', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-01-03' AS Date), 0, NULL, CAST(N'2023-01-03' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (4, N'chikun', N'c3Vz', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'+918658193889', N'Other', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-01-04' AS Date), 0, NULL, CAST(N'2023-01-04' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (5, N'wqxuwqyx', N'c3djeA==', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'dwdwdd', N'Female', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 1, CAST(N'2023-01-04' AS Date), 0, NULL, CAST(N'2023-01-04' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (6, N'wqxuwqyx', N'ZmQ=', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Male', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 1, CAST(N'2023-01-04' AS Date), 0, NULL, CAST(N'2023-01-04' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (7, N'fef', N'ZndmZg==', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'0', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 0, CAST(N'2023-01-05' AS Date), 0, NULL, CAST(N'2023-01-05' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (8, N'wqxuwqyx', N'c3djeA==', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'0', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 1, CAST(N'2023-01-05' AS Date), 0, NULL, CAST(N'2023-01-05' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (9, N'wqxuwqyx', N'c2E=', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'0', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-01-05' AS Date), 0, NULL, CAST(N'2023-01-05' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (10, N'wqxuwqyx', N'c2E=', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.co', N'8658193889', N'Female', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 1, CAST(N'2023-01-05' AS Date), 0, NULL, CAST(N'2023-01-05' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (11, N'fv', N'ZHM=', N'Sushanta kumar senapati', N'sushantasenapti718@gmail.com', N'8658193889', N'Male', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 1, CAST(N'2023-01-05' AS Date), 0, NULL, CAST(N'2023-01-05' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, CAST(N'2023-01-11' AS Date), 0, NULL, CAST(N'2023-01-11' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, CAST(N'2023-01-12' AS Date), 0, NULL, CAST(N'2023-01-12' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (14, N'chikun123', N'Scwcw@12', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Male', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 1, CAST(N'2023-01-27' AS Date), 0, NULL, CAST(N'2023-01-27' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (15, N'chikun123', N'Scwcw@12', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Other', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-01-27' AS Date), 0, NULL, CAST(N'2023-01-27' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (16, N'chikun123343433', N'Scwcw@12', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Male', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 1, CAST(N'2023-01-27' AS Date), 0, NULL, CAST(N'2023-01-27' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (17, N'chikun12321', N'Scwcw@12', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Female', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-01-27' AS Date), 0, NULL, CAST(N'2023-01-27' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (18, N'Chikun123', N'Scwcw@12', N'NORTH ORISSA UNIVERSITY', N'sushantasenapati718@gmail.com', N'8658193889', N'Male', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-01-27' AS Date), 0, NULL, CAST(N'2023-01-27' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (19, N'Chikun123', N'Scwcw@12', N'NORTH ORISSA UNIVERSITY', N'sushantasenapati718@gmail.com', N'8658193889', N'Male', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-01-27' AS Date), 0, NULL, CAST(N'2023-01-27' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (20, N'Chikun123', N'Scwcw@12', N'NORTH ORISSA UNIVERSITY', N'sushantasenapati718@gmail.com', N'8658193889', N'Male', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-01-27' AS Date), 0, NULL, CAST(N'2023-01-27' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (21, N'Chikun123', N'Scwcw@12', N'NORTH ORISSA UNIVERSITY', N'sushantasenapati718@gmail.com', N'8658193889', N'Male', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-01-27' AS Date), 0, NULL, CAST(N'2023-01-27' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (22, N'Chikun123', N'Scwcw@12', N'NORTH ORISSA UNIVERSITY', N'sushantasenapati718@gmail.com', N'8658193889', N'Male', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-01-27' AS Date), 0, NULL, CAST(N'2023-01-27' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (23, N'Chikun123', N'Scwcw@12', N'NORTH ORISSA UNIVERSITY', N'sushantasenapati718@gmail.com', N'8658193889', N'Male', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-01-27' AS Date), 0, NULL, CAST(N'2023-01-27' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (24, N'Chikun123', N'Scwcw@12', N'NORTH ORISSA UNIVERSITY', N'sushantasenapati718@gmail.com', N'8658193889', N'Male', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-01-27' AS Date), 0, NULL, CAST(N'2023-01-27' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (25, N'Chikun123', N'Scwcw@12', N'NORTH ORISSA UNIVERSITY', N'sushantasenapati718@gmail.com', N'8658193889', N'Male', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-01-27' AS Date), 0, NULL, CAST(N'2023-01-27' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (26, N'Chikun123', N'Scwcw@12', N'NORTH ORISSA UNIVERSITY', N'sushantasenapati718@gmail.com', N'8658193889', N'Male', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-01-27' AS Date), 0, NULL, CAST(N'2023-01-27' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (27, N'Chikun123', N'Scwcw@12', N'NORTH ORISSA UNIVERSITY', N'sushantasenapati718@gmail.com', N'8658193889', N'Male', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-01-27' AS Date), 0, NULL, CAST(N'2023-01-27' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (28, N'chikun123', N'Scwcw@12', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Female', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-01-27' AS Date), 0, NULL, CAST(N'2023-01-27' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (29, N'chikun123', N'Scwcw@12', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Female', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-01-27' AS Date), 0, NULL, CAST(N'2023-01-27' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (30, N'chikun123', N'Scwcw@12', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Female', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-01-27' AS Date), 0, NULL, CAST(N'2023-01-27' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (31, N'chikun123', N'Scwcw@12', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Female', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-01-27' AS Date), 0, NULL, CAST(N'2023-01-27' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (32, N'chikun123', N'Scwcw@12', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Female', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-01-27' AS Date), 0, NULL, CAST(N'2023-01-27' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (33, N'chikun123', N'Scwcw@12', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Female', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-01-27' AS Date), 0, NULL, CAST(N'2023-01-27' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (34, N'chikun123', N'Scwcw@12', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Female', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-01-27' AS Date), 0, NULL, CAST(N'2023-01-27' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (35, N'chikun123', N'Scwcw@12', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Female', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-01-27' AS Date), 0, NULL, CAST(N'2023-01-27' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (36, N'chikun123', N'Scwcw@12', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Female', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-01-27' AS Date), 0, NULL, CAST(N'2023-01-27' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (37, N'chikun123', N'Scwcw@12', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Female', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-01-27' AS Date), 0, NULL, CAST(N'2023-01-27' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (38, N'chikun123', N'Scwcw@12', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Female', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-01-27' AS Date), 0, NULL, CAST(N'2023-01-27' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (39, N'chikun123', N'Scwcw@12', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Female', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-01-27' AS Date), 0, NULL, CAST(N'2023-01-27' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (40, N'chikun123', N'Scwcw@12', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Female', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-01-27' AS Date), 0, NULL, CAST(N'2023-01-27' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (41, N'chikun123', N'Scwcw@12', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Female', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-01-27' AS Date), 0, NULL, CAST(N'2023-01-27' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (42, N'chikun123', N'Scwcw@12', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Female', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-01-27' AS Date), 0, NULL, CAST(N'2023-01-27' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (43, N'chikun123', N'Scwcw@12', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Female', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-01-27' AS Date), 0, NULL, CAST(N'2023-01-27' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (44, N'chikun123', N'Scwcw@12', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Female', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-01-27' AS Date), 0, NULL, CAST(N'2023-01-27' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (45, N'chikun123', N'Scwcw@12', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Female', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-01-27' AS Date), 0, NULL, CAST(N'2023-01-27' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (46, N'wqxuwqyx', N'Scwcw@12', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'7658193889', N'Female', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-01-27' AS Date), 0, NULL, CAST(N'2023-01-27' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (47, N'chikun123', N'Scwcw@12', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Female', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 1, CAST(N'2023-01-30' AS Date), 0, NULL, CAST(N'2023-01-30' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (48, N'chikun123', N'Scwcw@12', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Female', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 1, CAST(N'2023-01-30' AS Date), 0, NULL, CAST(N'2023-01-30' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (49, N'chikun123', N'Scwcw@12', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Male', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-01-30' AS Date), 0, NULL, CAST(N'2023-01-30' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (50, N'chikun123', N'Scwcw@12', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Male', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-01-30' AS Date), 0, NULL, CAST(N'2023-01-30' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (51, N'chikun123', N'Scwcw@12', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Male', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-01-30' AS Date), 0, NULL, CAST(N'2023-01-30' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (52, N'chikun123', N'Scwcw@12', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Male', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-01-30' AS Date), 0, NULL, CAST(N'2023-01-30' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (53, N'chikun123', N'Scwcw@12', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Male', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-01-30' AS Date), 0, NULL, CAST(N'2023-01-30' AS Date), 0)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (54, N'chikun123', N'Scwcw@12', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Male', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-01-30' AS Date), 0, NULL, CAST(N'2023-01-30' AS Date), 1)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (55, N'chikun123', N'Scwcw@12', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Female', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-01-30' AS Date), 0, NULL, CAST(N'2023-01-30' AS Date), 0)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (56, N'chikun123', N'Scwcw@12', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Female', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 1, CAST(N'2023-01-31' AS Date), 0, NULL, CAST(N'2023-01-31' AS Date), 0)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (57, N'chikun123', N'Scwcw@12', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Male', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-02-01' AS Date), 0, NULL, CAST(N'2023-02-01' AS Date), 0)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (58, N'chikun123', N'Scwcw@12', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Male', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-02-01' AS Date), 0, NULL, CAST(N'2023-02-01' AS Date), 0)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (59, N'chikun123', N'Scwcw@12', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Male', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-02-01' AS Date), 0, NULL, CAST(N'2023-02-01' AS Date), 0)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (60, N'chikun123', N'Scwcw@12', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Male', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 1, CAST(N'2023-02-01' AS Date), 0, NULL, CAST(N'2023-02-01' AS Date), 0)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (61, N'wqxuwqyx', N'Scwcw@12', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Male', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', 2, CAST(N'2023-02-01' AS Date), 0, NULL, CAST(N'2023-02-01' AS Date), 0)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (62, N'chgwh', N'chikun123@', N'sush', N'chikunsenapati718@gmail.com', N'8765432877', N'Male', N'liugyftdsz', 1, CAST(N'2023-02-01' AS Date), 0, NULL, CAST(N'2023-02-01' AS Date), 0)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (63, N'chgwh', N'chikun123@', N'sush', N'chikunsenapati718@gmail.com', N'8765432877', N'Male', N'liugyftdsz', 1, CAST(N'2023-02-01' AS Date), 0, NULL, CAST(N'2023-02-01' AS Date), 0)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (64, N'chgwh', N'chikun123@', N'sush', N'chikunsenapati718@gmail.com', N'8765432877', N'Male', N'liugyftdsz', 1, CAST(N'2023-02-01' AS Date), 0, NULL, CAST(N'2023-02-01' AS Date), 0)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (65, N'chgwh', N'chikun123@', N'sush', N'chikunsenapati718@gmail.com', N'8765432877', N'Male', N'liugyftdsz', 1, CAST(N'2023-02-01' AS Date), 0, NULL, CAST(N'2023-02-01' AS Date), 0)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (66, N'chgwh', N'chikun123@', N'sush', N'chikunsenapati718@gmail.com', N'8765432877', N'Male', N'liugyftdsz', 1, CAST(N'2023-02-01' AS Date), 0, NULL, CAST(N'2023-02-01' AS Date), 0)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (67, N'chgwh', N'chikun123@', N'sush', N'chikunsenapati718@gmail.com', N'8765432877', N'Male', N'liugyftdsz', 1, CAST(N'2023-02-01' AS Date), 0, NULL, CAST(N'2023-02-01' AS Date), 0)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [Name], [Email], [Mobile], [Gender], [Address], [RoleId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (68, N'hjgvkhv', N'cfcfgcf', N'cfcfcfcf', N'sushantasenapati718@gmail.com', N'7676767766', N'Male', N'hgfdfx', 1, CAST(N'2023-02-01' AS Date), 0, NULL, CAST(N'2023-02-01' AS Date), 0)
SET IDENTITY_INSERT [dbo].[M_PL_USER] OFF
GO
INSERT [dbo].[master_user] ([id], [password]) VALUES (N'chikun', N'chikun')
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([slno], [orderId], [pid], [qty]) VALUES (1, 1, N'p5', 1)
INSERT [dbo].[OrderDetail] ([slno], [orderId], [pid], [qty]) VALUES (2, 1, N'p7', 1)
INSERT [dbo].[OrderDetail] ([slno], [orderId], [pid], [qty]) VALUES (3, 2, N'p1', 1)
INSERT [dbo].[OrderDetail] ([slno], [orderId], [pid], [qty]) VALUES (4, 2, N'p5', 3)
INSERT [dbo].[OrderDetail] ([slno], [orderId], [pid], [qty]) VALUES (5, 3, N'p5', 1)
INSERT [dbo].[OrderDetail] ([slno], [orderId], [pid], [qty]) VALUES (6, 4, N'p5', 1)
INSERT [dbo].[OrderDetail] ([slno], [orderId], [pid], [qty]) VALUES (7, 4, N'p3', 1)
INSERT [dbo].[OrderDetail] ([slno], [orderId], [pid], [qty]) VALUES (8, 5, N'p1', 1)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderMaster] ON 

INSERT [dbo].[OrderMaster] ([orderId], [uid], [dateOfOrd], [ostatus]) VALUES (1, N'e001', CAST(N'2022-11-07' AS Date), N'dispatch')
INSERT [dbo].[OrderMaster] ([orderId], [uid], [dateOfOrd], [ostatus]) VALUES (2, N'e002', CAST(N'2022-11-07' AS Date), N'dispatch')
INSERT [dbo].[OrderMaster] ([orderId], [uid], [dateOfOrd], [ostatus]) VALUES (3, N'e003', CAST(N'2022-11-07' AS Date), N'on the way')
INSERT [dbo].[OrderMaster] ([orderId], [uid], [dateOfOrd], [ostatus]) VALUES (4, N'e003', CAST(N'2022-11-07' AS Date), N'Under Processing')
INSERT [dbo].[OrderMaster] ([orderId], [uid], [dateOfOrd], [ostatus]) VALUES (5, N'chikun123', CAST(N'2022-11-27' AS Date), N'dispatch')
SET IDENTITY_INSERT [dbo].[OrderMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[Panchyat] ON 

INSERT [dbo].[Panchyat] ([PanchyatID], [BlockID], [PanchyatName]) VALUES (1, 1, N'Kendudiha')
INSERT [dbo].[Panchyat] ([PanchyatID], [BlockID], [PanchyatName]) VALUES (2, 2, N'Sothilo')
INSERT [dbo].[Panchyat] ([PanchyatID], [BlockID], [PanchyatName]) VALUES (3, 3, N'Birpanch')
SET IDENTITY_INSERT [dbo].[Panchyat] OFF
GO
SET IDENTITY_INSERT [dbo].[patient_master] ON 

INSERT [dbo].[patient_master] ([patient_id], [patient_name], [gender], [dob], [phone_no]) VALUES (1, N'sushanta', N'M', CAST(N'1998-05-16' AS Date), N'8658193889')
INSERT [dbo].[patient_master] ([patient_id], [patient_name], [gender], [dob], [phone_no]) VALUES (2, N'shyam', N'M', CAST(N'2022-12-22' AS Date), N'9090909090')
SET IDENTITY_INSERT [dbo].[patient_master] OFF
GO
SET IDENTITY_INSERT [dbo].[prescription_tbl] ON 

INSERT [dbo].[prescription_tbl] ([prescription_id], [doctor_name], [date_of_visit], [patient_id], [disease_id], [prescription_details]) VALUES (4, N'Dr. Amit Singh', CAST(N'2022-11-12' AS Date), 1, 5, N'xsxsxsxsxs')
INSERT [dbo].[prescription_tbl] ([prescription_id], [doctor_name], [date_of_visit], [patient_id], [disease_id], [prescription_details]) VALUES (2, N'Dr. Amit Singh', CAST(N'2022-11-12' AS Date), 2, 3, N'failerioa tabley')
INSERT [dbo].[prescription_tbl] ([prescription_id], [doctor_name], [date_of_visit], [patient_id], [disease_id], [prescription_details]) VALUES (3, N'Dr. Amit Singh', CAST(N'2022-11-12' AS Date), 2, 4, N'Cunien Batika')
INSERT [dbo].[prescription_tbl] ([prescription_id], [doctor_name], [date_of_visit], [patient_id], [disease_id], [prescription_details]) VALUES (6, N'Dr. Amit Singh', CAST(N'2022-11-26' AS Date), 1, 1, N'Paracitamal')
INSERT [dbo].[prescription_tbl] ([prescription_id], [doctor_name], [date_of_visit], [patient_id], [disease_id], [prescription_details]) VALUES (7, N'Dr. Amit Singh', CAST(N'2022-11-26' AS Date), 1, 7, N'O2')
INSERT [dbo].[prescription_tbl] ([prescription_id], [doctor_name], [date_of_visit], [patient_id], [disease_id], [prescription_details]) VALUES (8, N'Dr. Amit Singh', CAST(N'2022-12-04' AS Date), 9, 7, N'Moribu')
INSERT [dbo].[prescription_tbl] ([prescription_id], [doctor_name], [date_of_visit], [patient_id], [disease_id], [prescription_details]) VALUES (9, N'Dr. Amit Singh', CAST(N'2022-12-22' AS Date), 1, 7, N'take more water')
INSERT [dbo].[prescription_tbl] ([prescription_id], [doctor_name], [date_of_visit], [patient_id], [disease_id], [prescription_details]) VALUES (10, N'Dr. Amit Singh', CAST(N'2022-12-22' AS Date), 2, 2, N'pyar_love-mohamatt')
INSERT [dbo].[prescription_tbl] ([prescription_id], [doctor_name], [date_of_visit], [patient_id], [disease_id], [prescription_details]) VALUES (11, N'Dr. Amit Singh', CAST(N'2022-12-22' AS Date), 2, 2, N'pyar_love-mohamatt')
INSERT [dbo].[prescription_tbl] ([prescription_id], [doctor_name], [date_of_visit], [patient_id], [disease_id], [prescription_details]) VALUES (5, N'Dr. Amit Singh', CAST(N'2022-11-12' AS Date), 1, 2, N'cscc')
SET IDENTITY_INSERT [dbo].[prescription_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[prod] ON 

INSERT [dbo].[prod] ([id], [qty], [name], [rate]) VALUES (1, 3, N'pen', 10)
INSERT [dbo].[prod] ([id], [qty], [name], [rate]) VALUES (2, 5, N'pencil', 15)
SET IDENTITY_INSERT [dbo].[prod] OFF
GO
SET IDENTITY_INSERT [dbo].[prodname] ON 

INSERT [dbo].[prodname] ([sl], [categoryname], [subcategoryname], [today]) VALUES (1, N'1', N'vaceline', CAST(N'2012-12-12' AS Date))
INSERT [dbo].[prodname] ([sl], [categoryname], [subcategoryname], [today]) VALUES (2, N'1', N'boro', CAST(N'2012-12-12' AS Date))
INSERT [dbo].[prodname] ([sl], [categoryname], [subcategoryname], [today]) VALUES (3, N'2', N'table', CAST(N'2012-12-12' AS Date))
INSERT [dbo].[prodname] ([sl], [categoryname], [subcategoryname], [today]) VALUES (4, N'1', N'vaceline', CAST(N'2012-12-12' AS Date))
INSERT [dbo].[prodname] ([sl], [categoryname], [subcategoryname], [today]) VALUES (5, N'wood', N'chair', CAST(N'2012-12-12' AS Date))
INSERT [dbo].[prodname] ([sl], [categoryname], [subcategoryname], [today]) VALUES (6, N'wood', N'chair', CAST(N'2012-12-12' AS Date))
INSERT [dbo].[prodname] ([sl], [categoryname], [subcategoryname], [today]) VALUES (7, N'wood', N'chair', CAST(N'2012-12-12' AS Date))
SET IDENTITY_INSERT [dbo].[prodname] OFF
GO
SET IDENTITY_INSERT [dbo].[prodnamedd] ON 

INSERT [dbo].[prodnamedd] ([sl], [categoryname], [subcategoryname], [today]) VALUES (1, N'wood', N'chair', CAST(N'2012-12-12' AS Date))
INSERT [dbo].[prodnamedd] ([sl], [categoryname], [subcategoryname], [today]) VALUES (2, N'wood', N'chair', CAST(N'2012-12-12' AS Date))
INSERT [dbo].[prodnamedd] ([sl], [categoryname], [subcategoryname], [today]) VALUES (3, N'1', N'vaceline', CAST(N'2012-12-12' AS Date))
INSERT [dbo].[prodnamedd] ([sl], [categoryname], [subcategoryname], [today]) VALUES (4, N'cusmetic', N'boro', CAST(N'2012-12-12' AS Date))
INSERT [dbo].[prodnamedd] ([sl], [categoryname], [subcategoryname], [today]) VALUES (5, N'wood', N'table', CAST(N'2022-10-29' AS Date))
INSERT [dbo].[prodnamedd] ([sl], [categoryname], [subcategoryname], [today]) VALUES (6, N'cusmetic', N'boro', CAST(N'2022-10-13' AS Date))
INSERT [dbo].[prodnamedd] ([sl], [categoryname], [subcategoryname], [today]) VALUES (7, N'wood', N'table', CAST(N'2022-10-29' AS Date))
SET IDENTITY_INSERT [dbo].[prodnamedd] OFF
GO
INSERT [dbo].[Product] ([pid], [pname], [pdesc], [price], [pqty], [pimage]) VALUES (N'p1', N'Iphone', N'Mobile', CAST(62000.00 AS Numeric(8, 2)), 4, N'Photo/phone.jpeg')
INSERT [dbo].[Product] ([pid], [pname], [pdesc], [price], [pqty], [pimage]) VALUES (N'p2', N'sumsung', N'sdfg', CAST(34.00 AS Numeric(8, 2)), 34, N'Photo/imag 2.jpg')
GO
INSERT [dbo].[product_master_xm] ([product_id], [producttyoe], [weight]) VALUES (101, N'Chain', CAST(10.00 AS Decimal(10, 2)))
INSERT [dbo].[product_master_xm] ([product_id], [producttyoe], [weight]) VALUES (102, N'Braclet', CAST(15.00 AS Decimal(10, 2)))
INSERT [dbo].[product_master_xm] ([product_id], [producttyoe], [weight]) VALUES (103, N'Ring', CAST(8.00 AS Decimal(10, 2)))
GO
SET IDENTITY_INSERT [dbo].[Product_table] ON 

INSERT [dbo].[Product_table] ([pid], [pname], [pqty], [price]) VALUES (1, N'SurfExcle', 18, CAST(10.00 AS Numeric(8, 2)))
INSERT [dbo].[Product_table] ([pid], [pname], [pqty], [price]) VALUES (2, N'Arel', 30, CAST(20.00 AS Numeric(8, 2)))
INSERT [dbo].[Product_table] ([pid], [pname], [pqty], [price]) VALUES (3, N'Tide', 12, CAST(15.00 AS Numeric(8, 2)))
INSERT [dbo].[Product_table] ([pid], [pname], [pqty], [price]) VALUES (4, N'Nirma', 10, CAST(10.00 AS Numeric(8, 2)))
INSERT [dbo].[Product_table] ([pid], [pname], [pqty], [price]) VALUES (5, N'Rin', 37, CAST(10.00 AS Numeric(8, 2)))
SET IDENTITY_INSERT [dbo].[Product_table] OFF
GO
SET IDENTITY_INSERT [dbo].[Product_Table1] ON 

INSERT [dbo].[Product_Table1] ([pid], [catid], [subcatid], [pname], [pprice], [pquantity], [pimage]) VALUES (101, 1, 1, N'jhgf', CAST(43.00 AS Decimal(8, 2)), 34, N'prodimage/phone.jpeg')
INSERT [dbo].[Product_Table1] ([pid], [catid], [subcatid], [pname], [pprice], [pquantity], [pimage]) VALUES (102, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product_Table1] ([pid], [catid], [subcatid], [pname], [pprice], [pquantity], [pimage]) VALUES (103, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product_Table1] ([pid], [catid], [subcatid], [pname], [pprice], [pquantity], [pimage]) VALUES (104, 2, 0, N'jhgc', CAST(2.00 AS Decimal(8, 2)), 1, N'prodimage/pro1.jpg')
INSERT [dbo].[Product_Table1] ([pid], [catid], [subcatid], [pname], [pprice], [pquantity], [pimage]) VALUES (106, 2, 3, N'p3', CAST(43.00 AS Decimal(8, 2)), 5, N'prodimage/imag 2.jpg')
SET IDENTITY_INSERT [dbo].[Product_Table1] OFF
GO
SET IDENTITY_INSERT [dbo].[product_tbl] ON 

INSERT [dbo].[product_tbl] ([pid], [pname], [price], [pqty]) VALUES (32, N'	Galaxy s7', CAST(555.00 AS Numeric(6, 2)), 5)
INSERT [dbo].[product_tbl] ([pid], [pname], [price], [pqty]) VALUES (33, N'Shyam', CAST(4.00 AS Numeric(6, 2)), 4)
INSERT [dbo].[product_tbl] ([pid], [pname], [price], [pqty]) VALUES (31, N'Gingerr', CAST(65.00 AS Numeric(6, 2)), 77)
INSERT [dbo].[product_tbl] ([pid], [pname], [price], [pqty]) VALUES (30, N'Sapuri', CAST(7.00 AS Numeric(6, 2)), 3)
SET IDENTITY_INSERT [dbo].[product_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[Product111] ON 

INSERT [dbo].[Product111] ([pid], [pname], [price], [pqty], [photo]) VALUES (1, N'apple', CAST(12.00 AS Numeric(8, 2)), 5, N'C:\fakepath\chik.jfif')
INSERT [dbo].[Product111] ([pid], [pname], [price], [pqty], [photo]) VALUES (3, N'Apple', CAST(32.00 AS Numeric(8, 2)), 3, N'ProdUpload/png1.png')
SET IDENTITY_INSERT [dbo].[Product111] OFF
GO
SET IDENTITY_INSERT [dbo].[Product12] ON 

INSERT [dbo].[Product12] ([pid], [pname], [catid], [price], [pqty]) VALUES (6, N'Iphone', 2, CAST(123.00 AS Numeric(8, 2)), 12)
INSERT [dbo].[Product12] ([pid], [pname], [catid], [price], [pqty]) VALUES (7, N'Iphoneee', 3, CAST(123.00 AS Numeric(8, 2)), 12)
INSERT [dbo].[Product12] ([pid], [pname], [catid], [price], [pqty]) VALUES (12, N'Iphone', 1, CAST(12.00 AS Numeric(8, 2)), 1212)
SET IDENTITY_INSERT [dbo].[Product12] OFF
GO
SET IDENTITY_INSERT [dbo].[Product3] ON 

INSERT [dbo].[Product3] ([pid], [pname], [catid], [subcatid], [price], [pqty]) VALUES (17, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Product3] ([pid], [pname], [catid], [subcatid], [price], [pqty]) VALUES (22, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Product3] ([pid], [pname], [catid], [subcatid], [price], [pqty]) VALUES (39, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Product3] ([pid], [pname], [catid], [subcatid], [price], [pqty]) VALUES (68, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Product3] ([pid], [pname], [catid], [subcatid], [price], [pqty]) VALUES (74, N'Galaxy s7', 1, 1, CAST(44.00 AS Numeric(8, 2)), 44)
INSERT [dbo].[Product3] ([pid], [pname], [catid], [subcatid], [price], [pqty]) VALUES (24, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Product3] ([pid], [pname], [catid], [subcatid], [price], [pqty]) VALUES (15, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Product3] ([pid], [pname], [catid], [subcatid], [price], [pqty]) VALUES (25, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Product3] ([pid], [pname], [catid], [subcatid], [price], [pqty]) VALUES (27, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Product3] ([pid], [pname], [catid], [subcatid], [price], [pqty]) VALUES (64, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Product3] ([pid], [pname], [catid], [subcatid], [price], [pqty]) VALUES (30, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Product3] ([pid], [pname], [catid], [subcatid], [price], [pqty]) VALUES (31, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Product3] ([pid], [pname], [catid], [subcatid], [price], [pqty]) VALUES (38, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Product3] ([pid], [pname], [catid], [subcatid], [price], [pqty]) VALUES (43, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Product3] ([pid], [pname], [catid], [subcatid], [price], [pqty]) VALUES (69, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Product3] ([pid], [pname], [catid], [subcatid], [price], [pqty]) VALUES (49, N'Usha4', 0, NULL, CAST(5.00 AS Numeric(8, 2)), 4)
INSERT [dbo].[Product3] ([pid], [pname], [catid], [subcatid], [price], [pqty]) VALUES (70, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Product3] ([pid], [pname], [catid], [subcatid], [price], [pqty]) VALUES (71, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Product3] ([pid], [pname], [catid], [subcatid], [price], [pqty]) VALUES (8, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Product3] ([pid], [pname], [catid], [subcatid], [price], [pqty]) VALUES (19, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Product3] ([pid], [pname], [catid], [subcatid], [price], [pqty]) VALUES (26, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Product3] ([pid], [pname], [catid], [subcatid], [price], [pqty]) VALUES (9, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Product3] ([pid], [pname], [catid], [subcatid], [price], [pqty]) VALUES (11, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Product3] ([pid], [pname], [catid], [subcatid], [price], [pqty]) VALUES (32, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Product3] ([pid], [pname], [catid], [subcatid], [price], [pqty]) VALUES (54, N'Usha', 1, 2, CAST(900.00 AS Numeric(8, 2)), 543)
INSERT [dbo].[Product3] ([pid], [pname], [catid], [subcatid], [price], [pqty]) VALUES (13, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Product3] ([pid], [pname], [catid], [subcatid], [price], [pqty]) VALUES (33, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Product3] ([pid], [pname], [catid], [subcatid], [price], [pqty]) VALUES (21, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Product3] ([pid], [pname], [catid], [subcatid], [price], [pqty]) VALUES (48, N'Usha4', 0, NULL, CAST(5.00 AS Numeric(8, 2)), NULL)
INSERT [dbo].[Product3] ([pid], [pname], [catid], [subcatid], [price], [pqty]) VALUES (36, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Product3] ([pid], [pname], [catid], [subcatid], [price], [pqty]) VALUES (37, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Product3] ([pid], [pname], [catid], [subcatid], [price], [pqty]) VALUES (60, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Product3] ([pid], [pname], [catid], [subcatid], [price], [pqty]) VALUES (41, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Product3] ([pid], [pname], [catid], [subcatid], [price], [pqty]) VALUES (62, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Product3] ([pid], [pname], [catid], [subcatid], [price], [pqty]) VALUES (47, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Product3] ([pid], [pname], [catid], [subcatid], [price], [pqty]) VALUES (45, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Product3] ([pid], [pname], [catid], [subcatid], [price], [pqty]) VALUES (65, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Product3] ([pid], [pname], [catid], [subcatid], [price], [pqty]) VALUES (67, NULL, 0, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Product3] OFF
GO
INSERT [dbo].[productdetails] ([productid], [productname], [productdesc], [prodprice], [productqty], [productimage]) VALUES (N'e002', N'Opporeno', N'electronics', 28000, 5, N'Photo/phone.jpeg')
INSERT [dbo].[productdetails] ([productid], [productname], [productdesc], [prodprice], [productqty], [productimage]) VALUES (N'p1', N'mobile', N'electronics', 12000, 0, N'Photo/image1.jpeg')
GO
SET IDENTITY_INSERT [dbo].[Receive] ON 

INSERT [dbo].[Receive] ([slno], [dor], [itemid], [vendorid], [qty], [price]) VALUES (1, CAST(N'2022-11-05' AS Date), 1, 1, 3, 4)
INSERT [dbo].[Receive] ([slno], [dor], [itemid], [vendorid], [qty], [price]) VALUES (2, CAST(N'2022-11-05' AS Date), 1, 2, 5, 10)
INSERT [dbo].[Receive] ([slno], [dor], [itemid], [vendorid], [qty], [price]) VALUES (3, CAST(N'2022-11-05' AS Date), 1, 2, 5, 10)
INSERT [dbo].[Receive] ([slno], [dor], [itemid], [vendorid], [qty], [price]) VALUES (4, CAST(N'2022-11-05' AS Date), 3, 3, 5, 5)
SET IDENTITY_INSERT [dbo].[Receive] OFF
GO
SET IDENTITY_INSERT [dbo].[Registration_Details] ON 

INSERT [dbo].[Registration_Details] ([Registration_Id], [Applicant_name], [Email], [Mobile_no], [Gender], [dob], [image_path], [club_id], [sport_Id]) VALUES (1, N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Male', CAST(N'1999-02-19' AS Date), N'prodimage/imag 2.jpg', 1, 2)
INSERT [dbo].[Registration_Details] ([Registration_Id], [Applicant_name], [Email], [Mobile_no], [Gender], [dob], [image_path], [club_id], [sport_Id]) VALUES (2, N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Male', CAST(N'1999-02-19' AS Date), N'prodimage/imag 2.jpg', 1, 2)
INSERT [dbo].[Registration_Details] ([Registration_Id], [Applicant_name], [Email], [Mobile_no], [Gender], [dob], [image_path], [club_id], [sport_Id]) VALUES (3, N'Cindy Taylorrr', N'CindyTTaylor@armyspy.com', N'4554455454', N'Male', CAST(N'1999-06-26' AS Date), N'prodimage/png1.png', 1, 1)
INSERT [dbo].[Registration_Details] ([Registration_Id], [Applicant_name], [Email], [Mobile_no], [Gender], [dob], [image_path], [club_id], [sport_Id]) VALUES (4, N'Roumyyy', N'sushantasenapati718@gmail.com', N'8658193889', N'Male', CAST(N'1999-06-09' AS Date), N'prodimage/png1.png', 1, 2)
INSERT [dbo].[Registration_Details] ([Registration_Id], [Applicant_name], [Email], [Mobile_no], [Gender], [dob], [image_path], [club_id], [sport_Id]) VALUES (5, N'NORTH ORISSA UNIVERSITY', N'sushantasenapati718@gmail.com', N'3443343434', N'Male', CAST(N'1999-07-15' AS Date), N'prodimage/png1.png', 2, 3)
INSERT [dbo].[Registration_Details] ([Registration_Id], [Applicant_name], [Email], [Mobile_no], [Gender], [dob], [image_path], [club_id], [sport_Id]) VALUES (7, N'NORTH ORISSA UNIVERSITYYYYY', N'sushantasenapati718@gmail.com', N'5445454545', N'Male', CAST(N'1986-06-03' AS Date), N'prodimage/phone.jpeg', 1, 1)
INSERT [dbo].[Registration_Details] ([Registration_Id], [Applicant_name], [Email], [Mobile_no], [Gender], [dob], [image_path], [club_id], [sport_Id]) VALUES (8, N'Saroj Kumar Mohantyyy', N'Sarojkumarmohanty@gmail.com', N'5566676563', N'Male', CAST(N'1993-12-31' AS Date), N'prodimage/png1.png', 1, 1)
INSERT [dbo].[Registration_Details] ([Registration_Id], [Applicant_name], [Email], [Mobile_no], [Gender], [dob], [image_path], [club_id], [sport_Id]) VALUES (10, N'Charles Smith', N'sushantasenapati718@gmail.com', N'4343434343', N'Male', CAST(N'2002-06-05' AS Date), N'prodimage/png1.png', 1, 1)
INSERT [dbo].[Registration_Details] ([Registration_Id], [Applicant_name], [Email], [Mobile_no], [Gender], [dob], [image_path], [club_id], [sport_Id]) VALUES (11, N'Charles Smith', N'sushantasenapati718@gmail.com', N'4343434343', N'Male', CAST(N'2002-06-05' AS Date), N'prodimage/png1.png', 1, 1)
INSERT [dbo].[Registration_Details] ([Registration_Id], [Applicant_name], [Email], [Mobile_no], [Gender], [dob], [image_path], [club_id], [sport_Id]) VALUES (12, N'Charles Smith', N'sushantasenapati718@gmail.com', N'4343434343', N'Male', CAST(N'2002-06-05' AS Date), N'prodimage/png1.png', 1, 1)
INSERT [dbo].[Registration_Details] ([Registration_Id], [Applicant_name], [Email], [Mobile_no], [Gender], [dob], [image_path], [club_id], [sport_Id]) VALUES (16, N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Female', CAST(N'1990-12-12' AS Date), N'prodimage/phone.jpeg', 1, 1)
INSERT [dbo].[Registration_Details] ([Registration_Id], [Applicant_name], [Email], [Mobile_no], [Gender], [dob], [image_path], [club_id], [sport_Id]) VALUES (17, N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Female', CAST(N'1990-12-12' AS Date), N'prodimage/phone.jpeg', 1, 1)
INSERT [dbo].[Registration_Details] ([Registration_Id], [Applicant_name], [Email], [Mobile_no], [Gender], [dob], [image_path], [club_id], [sport_Id]) VALUES (19, N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Male', CAST(N'1998-12-12' AS Date), N'prodimage/png1.png', 1, 1)
INSERT [dbo].[Registration_Details] ([Registration_Id], [Applicant_name], [Email], [Mobile_no], [Gender], [dob], [image_path], [club_id], [sport_Id]) VALUES (21, N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Male', CAST(N'1998-12-12' AS Date), N'prodimage/png1.png', 1, 1)
INSERT [dbo].[Registration_Details] ([Registration_Id], [Applicant_name], [Email], [Mobile_no], [Gender], [dob], [image_path], [club_id], [sport_Id]) VALUES (22, N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Male', CAST(N'1998-12-12' AS Date), N'prodimage/png1.png', 1, 1)
INSERT [dbo].[Registration_Details] ([Registration_Id], [Applicant_name], [Email], [Mobile_no], [Gender], [dob], [image_path], [club_id], [sport_Id]) VALUES (24, N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Male', CAST(N'1998-12-12' AS Date), N'prodimage/png1.png', 1, 1)
INSERT [dbo].[Registration_Details] ([Registration_Id], [Applicant_name], [Email], [Mobile_no], [Gender], [dob], [image_path], [club_id], [sport_Id]) VALUES (25, N'xxxxxx kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Male', CAST(N'1998-12-12' AS Date), N'prodimage/png1.png', 1, 1)
INSERT [dbo].[Registration_Details] ([Registration_Id], [Applicant_name], [Email], [Mobile_no], [Gender], [dob], [image_path], [club_id], [sport_Id]) VALUES (26, N'Sushanta kumar senapati40', N'sushantasenapati718@gmail.com', N'8658193889', N'Male', CAST(N'1999-06-17' AS Date), N'prodimage/phone.jpeg', 1, 2)
INSERT [dbo].[Registration_Details] ([Registration_Id], [Applicant_name], [Email], [Mobile_no], [Gender], [dob], [image_path], [club_id], [sport_Id]) VALUES (6, N'NORTH ORISSA UNIVERSITYYYYyyyy', N'sushantasenapati718@gmail.com', N'5445454545', N'Male', CAST(N'1986-06-03' AS Date), N'prodimage/phone.jpeg', 1, 1)
INSERT [dbo].[Registration_Details] ([Registration_Id], [Applicant_name], [Email], [Mobile_no], [Gender], [dob], [image_path], [club_id], [sport_Id]) VALUES (9, N'aaaaaabbbbb', N'sushantasenapati718@gmail.com', N'8658193889', N'Male', CAST(N'1998-06-10' AS Date), N'prodimage/grren trafic.png', 1, 1)
INSERT [dbo].[Registration_Details] ([Registration_Id], [Applicant_name], [Email], [Mobile_no], [Gender], [dob], [image_path], [club_id], [sport_Id]) VALUES (13, N'Charles Smith', N'sushantasenapati718@gmail.com', N'4343434343', N'Male', CAST(N'2002-06-05' AS Date), N'prodimage/png1.png', 1, 1)
INSERT [dbo].[Registration_Details] ([Registration_Id], [Applicant_name], [Email], [Mobile_no], [Gender], [dob], [image_path], [club_id], [sport_Id]) VALUES (14, N'Charles Smith', N'sushantasenapati718@gmail.com', N'4343434343', N'Male', CAST(N'2002-06-05' AS Date), N'prodimage/png1.png', 1, 1)
INSERT [dbo].[Registration_Details] ([Registration_Id], [Applicant_name], [Email], [Mobile_no], [Gender], [dob], [image_path], [club_id], [sport_Id]) VALUES (15, N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Female', CAST(N'1990-12-12' AS Date), N'prodimage/phone.jpeg', 1, 1)
INSERT [dbo].[Registration_Details] ([Registration_Id], [Applicant_name], [Email], [Mobile_no], [Gender], [dob], [image_path], [club_id], [sport_Id]) VALUES (18, N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Male', CAST(N'1998-12-12' AS Date), N'prodimage/png1.png', 1, 1)
INSERT [dbo].[Registration_Details] ([Registration_Id], [Applicant_name], [Email], [Mobile_no], [Gender], [dob], [image_path], [club_id], [sport_Id]) VALUES (20, N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Male', CAST(N'1998-12-12' AS Date), N'prodimage/png1.png', 1, 1)
INSERT [dbo].[Registration_Details] ([Registration_Id], [Applicant_name], [Email], [Mobile_no], [Gender], [dob], [image_path], [club_id], [sport_Id]) VALUES (23, N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Male', CAST(N'1998-12-12' AS Date), N'prodimage/png1.png', 1, 1)
SET IDENTITY_INSERT [dbo].[Registration_Details] OFF
GO
SET IDENTITY_INSERT [dbo].[salary] ON 

INSERT [dbo].[salary] ([sl], [name], [salary], [dept]) VALUES (2, N'chikun', CAST(1200.00 AS Numeric(8, 2)), N'sc')
INSERT [dbo].[salary] ([sl], [name], [salary], [dept]) VALUES (3, N'mikun', CAST(1500.00 AS Numeric(8, 2)), N'art')
INSERT [dbo].[salary] ([sl], [name], [salary], [dept]) VALUES (4, N'bapa', CAST(1800.00 AS Numeric(8, 2)), N'sc')
INSERT [dbo].[salary] ([sl], [name], [salary], [dept]) VALUES (5, N'maa', CAST(1000.00 AS Numeric(8, 2)), N'sc')
INSERT [dbo].[salary] ([sl], [name], [salary], [dept]) VALUES (6, N'sachine', CAST(1300.00 AS Numeric(8, 2)), N'comm')
INSERT [dbo].[salary] ([sl], [name], [salary], [dept]) VALUES (7, N'susil', CAST(1600.00 AS Numeric(8, 2)), N'sc')
SET IDENTITY_INSERT [dbo].[salary] OFF
GO
SET IDENTITY_INSERT [dbo].[Sales_master] ON 

INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (1, CAST(N'2022-11-19' AS Date), N'dvd', CAST(10300.00 AS Numeric(8, 2)), CAST(1854.00 AS Numeric(8, 2)), CAST(12154.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (2, CAST(N'2022-11-19' AS Date), N'chikun', CAST(4500.00 AS Numeric(8, 2)), CAST(810.00 AS Numeric(8, 2)), CAST(5310.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (3, CAST(N'2022-11-19' AS Date), N'dddd', CAST(500.00 AS Numeric(8, 2)), CAST(90.00 AS Numeric(8, 2)), CAST(590.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (4, CAST(N'2022-11-19' AS Date), N'dvd', CAST(1000.00 AS Numeric(8, 2)), CAST(180.00 AS Numeric(8, 2)), CAST(1180.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (5, CAST(N'2022-11-19' AS Date), N'chikun', CAST(8000.00 AS Numeric(8, 2)), CAST(1440.00 AS Numeric(8, 2)), CAST(9440.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (6, CAST(N'2022-11-19' AS Date), N'chikun', CAST(2000.00 AS Numeric(8, 2)), CAST(360.00 AS Numeric(8, 2)), CAST(2360.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (11, CAST(N'2022-11-20' AS Date), N'chikun', CAST(3000.00 AS Numeric(8, 2)), CAST(540.00 AS Numeric(8, 2)), CAST(3540.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (12, CAST(N'2022-11-20' AS Date), N'Rama', CAST(16600.00 AS Numeric(8, 2)), CAST(2988.00 AS Numeric(8, 2)), CAST(19588.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (13, CAST(N'2022-11-20' AS Date), N'smita senapati', CAST(2500.00 AS Numeric(8, 2)), CAST(450.00 AS Numeric(8, 2)), CAST(2950.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (18, CAST(N'2022-11-21' AS Date), N'chikun', CAST(2000.00 AS Numeric(8, 2)), CAST(360.00 AS Numeric(8, 2)), CAST(2360.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (19, CAST(N'2022-11-27' AS Date), N'chikun', CAST(5000.00 AS Numeric(8, 2)), CAST(900.00 AS Numeric(8, 2)), CAST(5900.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (20, CAST(N'2022-11-28' AS Date), N'jhg', CAST(2500.00 AS Numeric(8, 2)), CAST(450.00 AS Numeric(8, 2)), CAST(2950.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (21, CAST(N'2022-11-28' AS Date), N'Susil', CAST(22900.00 AS Numeric(8, 2)), CAST(4122.00 AS Numeric(8, 2)), CAST(27022.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (22, CAST(N'2022-11-28' AS Date), N'Susil', CAST(4000.00 AS Numeric(8, 2)), CAST(720.00 AS Numeric(8, 2)), CAST(4720.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (24, CAST(N'2022-11-29' AS Date), N'cg', CAST(4000.00 AS Numeric(8, 2)), CAST(720.00 AS Numeric(8, 2)), CAST(4720.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (25, CAST(N'2022-11-29' AS Date), N'kjkh', CAST(2000.00 AS Numeric(8, 2)), CAST(360.00 AS Numeric(8, 2)), CAST(2360.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (31, CAST(N'2022-11-29' AS Date), N'kjkh', CAST(1000.00 AS Numeric(8, 2)), CAST(180.00 AS Numeric(8, 2)), CAST(1180.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (33, CAST(N'2022-11-29' AS Date), N's', CAST(1500.00 AS Numeric(8, 2)), CAST(270.00 AS Numeric(8, 2)), CAST(1770.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (37, CAST(N'2022-11-29' AS Date), N'chikun', CAST(900.00 AS Numeric(8, 2)), CAST(162.00 AS Numeric(8, 2)), CAST(1062.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (38, CAST(N'2022-11-29' AS Date), N'kjhgf', CAST(900.00 AS Numeric(8, 2)), CAST(162.00 AS Numeric(8, 2)), CAST(1062.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (40, CAST(N'2022-11-29' AS Date), N'chikun', CAST(2000.00 AS Numeric(8, 2)), CAST(360.00 AS Numeric(8, 2)), CAST(2360.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (41, CAST(N'2022-11-29' AS Date), N'chikun', CAST(500.00 AS Numeric(8, 2)), CAST(90.00 AS Numeric(8, 2)), CAST(590.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (43, CAST(N'2022-11-29' AS Date), N'chikun', CAST(3000.00 AS Numeric(8, 2)), CAST(540.00 AS Numeric(8, 2)), CAST(3540.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (44, CAST(N'2022-12-04' AS Date), N'chikun', CAST(3000.00 AS Numeric(8, 2)), CAST(540.00 AS Numeric(8, 2)), CAST(3540.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (45, CAST(N'2023-01-01' AS Date), N'chikun', CAST(2000.00 AS Numeric(8, 2)), CAST(360.00 AS Numeric(8, 2)), CAST(2360.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (46, CAST(N'2023-02-09' AS Date), N'chikun', CAST(4000.00 AS Numeric(8, 2)), CAST(720.00 AS Numeric(8, 2)), CAST(4720.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (47, CAST(N'2023-04-28' AS Date), N'chikun', NULL, NULL, NULL)
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (48, CAST(N'2023-04-28' AS Date), N'chikun', CAST(19000.00 AS Numeric(8, 2)), CAST(3420.00 AS Numeric(8, 2)), CAST(22420.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (7, CAST(N'2022-11-19' AS Date), N'chikun', CAST(3000.00 AS Numeric(8, 2)), CAST(540.00 AS Numeric(8, 2)), CAST(3540.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (8, CAST(N'2022-11-19' AS Date), N'Rama', CAST(2000.00 AS Numeric(8, 2)), CAST(360.00 AS Numeric(8, 2)), CAST(2360.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (9, CAST(N'2022-11-19' AS Date), N'chikun', CAST(2000.00 AS Numeric(8, 2)), CAST(360.00 AS Numeric(8, 2)), CAST(2360.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (10, CAST(N'2022-11-20' AS Date), N'chikun', CAST(5000.00 AS Numeric(8, 2)), CAST(900.00 AS Numeric(8, 2)), CAST(5900.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (14, CAST(N'2022-11-20' AS Date), N'chikun', CAST(5000.00 AS Numeric(8, 2)), CAST(900.00 AS Numeric(8, 2)), CAST(5900.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (15, CAST(N'2022-11-20' AS Date), N'smita', CAST(4500.00 AS Numeric(8, 2)), CAST(810.00 AS Numeric(8, 2)), CAST(5310.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (16, CAST(N'2022-11-20' AS Date), N'smita senapati', CAST(2900.00 AS Numeric(8, 2)), CAST(522.00 AS Numeric(8, 2)), CAST(3422.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (17, CAST(N'2022-11-20' AS Date), N'Alok', CAST(3200.00 AS Numeric(8, 2)), CAST(56.00 AS Numeric(8, 2)), CAST(3256.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (23, CAST(N'2022-11-29' AS Date), N'kjkh', CAST(8500.00 AS Numeric(8, 2)), CAST(1270.00 AS Numeric(8, 2)), CAST(9770.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (26, CAST(N'2022-11-29' AS Date), N'chikun', CAST(2000.00 AS Numeric(8, 2)), CAST(360.00 AS Numeric(8, 2)), CAST(2360.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (27, CAST(N'2022-11-29' AS Date), N'chikun', CAST(2000.00 AS Numeric(8, 2)), CAST(360.00 AS Numeric(8, 2)), CAST(2360.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (28, CAST(N'2022-11-29' AS Date), N'chikun', NULL, NULL, NULL)
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (29, CAST(N'2022-11-29' AS Date), N'chikun', NULL, NULL, NULL)
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (30, CAST(N'2022-11-29' AS Date), N'chikun', NULL, NULL, NULL)
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (32, CAST(N'2022-11-29' AS Date), N'kjhgf', CAST(1500.00 AS Numeric(8, 2)), CAST(270.00 AS Numeric(8, 2)), CAST(1770.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (34, CAST(N'2022-11-29' AS Date), N'chikun', CAST(2000.00 AS Numeric(8, 2)), CAST(360.00 AS Numeric(8, 2)), CAST(2360.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (35, CAST(N'2022-11-29' AS Date), N'chikun', CAST(1500.00 AS Numeric(8, 2)), CAST(270.00 AS Numeric(8, 2)), CAST(1770.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (39, CAST(N'2022-11-29' AS Date), N'kjkh', CAST(2000.00 AS Numeric(8, 2)), CAST(360.00 AS Numeric(8, 2)), CAST(2360.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (36, CAST(N'2022-11-29' AS Date), N'chikun', CAST(1000.00 AS Numeric(8, 2)), CAST(180.00 AS Numeric(8, 2)), CAST(1180.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (42, CAST(N'2022-11-29' AS Date), N'chikun', CAST(2000.00 AS Numeric(8, 2)), CAST(360.00 AS Numeric(8, 2)), CAST(2360.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_master] ([orderid], [saledate], [custname], [totalsamt], [gst], [netamt]) VALUES (49, CAST(N'2023-04-28' AS Date), N'Sushanta', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Sales_master] OFF
GO
SET IDENTITY_INSERT [dbo].[Sales_slave] ON 

INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (1, 21, 11, 1, CAST(500.00 AS Numeric(8, 2)), CAST(500.00 AS Numeric(8, 2)), CAST(90.00 AS Numeric(8, 2)), CAST(590.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (2, 21, 1, 2, CAST(1500.00 AS Numeric(8, 2)), CAST(3000.00 AS Numeric(8, 2)), CAST(540.00 AS Numeric(8, 2)), CAST(3540.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (3, 21, 6, 1, CAST(900.00 AS Numeric(8, 2)), CAST(900.00 AS Numeric(8, 2)), CAST(162.00 AS Numeric(8, 2)), CAST(1062.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (4, 21, 3, 1, CAST(1000.00 AS Numeric(8, 2)), CAST(1000.00 AS Numeric(8, 2)), CAST(180.00 AS Numeric(8, 2)), CAST(1180.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (6, 21, 2, 1, CAST(2000.00 AS Numeric(8, 2)), CAST(2000.00 AS Numeric(8, 2)), CAST(360.00 AS Numeric(8, 2)), CAST(2360.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (8, 21, 9, 1, CAST(2000.00 AS Numeric(8, 2)), CAST(2000.00 AS Numeric(8, 2)), CAST(360.00 AS Numeric(8, 2)), CAST(2360.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (9, 21, 5, 1, CAST(1500.00 AS Numeric(8, 2)), CAST(1500.00 AS Numeric(8, 2)), CAST(270.00 AS Numeric(8, 2)), CAST(1770.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (10, 21, 3, 1, CAST(1000.00 AS Numeric(8, 2)), CAST(1000.00 AS Numeric(8, 2)), CAST(180.00 AS Numeric(8, 2)), CAST(1180.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (12, 21, 9, 1, CAST(2000.00 AS Numeric(8, 2)), CAST(2000.00 AS Numeric(8, 2)), CAST(360.00 AS Numeric(8, 2)), CAST(2360.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (14, 22, 9, 1, CAST(2000.00 AS Numeric(8, 2)), CAST(2000.00 AS Numeric(8, 2)), CAST(360.00 AS Numeric(8, 2)), CAST(2360.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (16, 23, 6, 1, CAST(900.00 AS Numeric(8, 2)), CAST(900.00 AS Numeric(8, 2)), CAST(162.00 AS Numeric(8, 2)), CAST(1062.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (18, 23, 8, 1, CAST(1600.00 AS Numeric(8, 2)), CAST(1600.00 AS Numeric(8, 2)), CAST(28.00 AS Numeric(8, 2)), CAST(1628.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (19, 23, 2, 1, CAST(2000.00 AS Numeric(8, 2)), CAST(2000.00 AS Numeric(8, 2)), CAST(360.00 AS Numeric(8, 2)), CAST(2360.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (20, 24, 2, 1, CAST(2000.00 AS Numeric(8, 2)), CAST(2000.00 AS Numeric(8, 2)), CAST(360.00 AS Numeric(8, 2)), CAST(2360.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (21, 24, 2, 1, CAST(2000.00 AS Numeric(8, 2)), CAST(2000.00 AS Numeric(8, 2)), CAST(360.00 AS Numeric(8, 2)), CAST(2360.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (22, 25, 2, 1, CAST(2000.00 AS Numeric(8, 2)), CAST(2000.00 AS Numeric(8, 2)), CAST(360.00 AS Numeric(8, 2)), CAST(2360.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (25, 31, 3, 1, CAST(1000.00 AS Numeric(8, 2)), CAST(1000.00 AS Numeric(8, 2)), CAST(180.00 AS Numeric(8, 2)), CAST(1180.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (26, 32, 10, 1, CAST(1500.00 AS Numeric(8, 2)), CAST(1500.00 AS Numeric(8, 2)), CAST(270.00 AS Numeric(8, 2)), CAST(1770.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (27, 33, 5, 1, CAST(1500.00 AS Numeric(8, 2)), CAST(1500.00 AS Numeric(8, 2)), CAST(270.00 AS Numeric(8, 2)), CAST(1770.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (29, 35, 10, 1, CAST(1500.00 AS Numeric(8, 2)), CAST(1500.00 AS Numeric(8, 2)), CAST(270.00 AS Numeric(8, 2)), CAST(1770.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (31, 37, 6, 1, CAST(900.00 AS Numeric(8, 2)), CAST(900.00 AS Numeric(8, 2)), CAST(162.00 AS Numeric(8, 2)), CAST(1062.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (32, 38, 6, 1, CAST(900.00 AS Numeric(8, 2)), CAST(900.00 AS Numeric(8, 2)), CAST(162.00 AS Numeric(8, 2)), CAST(1062.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (34, 40, 9, 1, CAST(2000.00 AS Numeric(8, 2)), CAST(2000.00 AS Numeric(8, 2)), CAST(360.00 AS Numeric(8, 2)), CAST(2360.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (37, 43, 1, 1, CAST(1500.00 AS Numeric(8, 2)), CAST(1500.00 AS Numeric(8, 2)), CAST(270.00 AS Numeric(8, 2)), CAST(1770.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (39, 44, 5, 1, CAST(1500.00 AS Numeric(8, 2)), CAST(1500.00 AS Numeric(8, 2)), CAST(270.00 AS Numeric(8, 2)), CAST(1770.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (40, 44, 10, 1, CAST(1500.00 AS Numeric(8, 2)), CAST(1500.00 AS Numeric(8, 2)), CAST(270.00 AS Numeric(8, 2)), CAST(1770.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (41, 45, 2, 1, CAST(2000.00 AS Numeric(8, 2)), CAST(2000.00 AS Numeric(8, 2)), CAST(360.00 AS Numeric(8, 2)), CAST(2360.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (42, 46, 3, 2, CAST(1000.00 AS Numeric(8, 2)), CAST(2000.00 AS Numeric(8, 2)), CAST(360.00 AS Numeric(8, 2)), CAST(2360.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (43, 46, 3, 2, CAST(1000.00 AS Numeric(8, 2)), CAST(2000.00 AS Numeric(8, 2)), CAST(360.00 AS Numeric(8, 2)), CAST(2360.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (44, 48, 7, 5, CAST(1800.00 AS Numeric(8, 2)), CAST(9000.00 AS Numeric(8, 2)), CAST(1620.00 AS Numeric(8, 2)), CAST(10620.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (45, 48, 9, 5, CAST(2000.00 AS Numeric(8, 2)), CAST(10000.00 AS Numeric(8, 2)), CAST(1800.00 AS Numeric(8, 2)), CAST(11800.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (5, 21, 9, 3, CAST(2000.00 AS Numeric(8, 2)), CAST(6000.00 AS Numeric(8, 2)), CAST(1080.00 AS Numeric(8, 2)), CAST(7080.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (7, 21, 2, 1, CAST(2000.00 AS Numeric(8, 2)), CAST(2000.00 AS Numeric(8, 2)), CAST(360.00 AS Numeric(8, 2)), CAST(2360.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (11, 21, 3, 1, CAST(1000.00 AS Numeric(8, 2)), CAST(1000.00 AS Numeric(8, 2)), CAST(180.00 AS Numeric(8, 2)), CAST(1180.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (13, 22, 9, 1, CAST(2000.00 AS Numeric(8, 2)), CAST(2000.00 AS Numeric(8, 2)), CAST(360.00 AS Numeric(8, 2)), CAST(2360.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (15, 23, 4, 1, CAST(2500.00 AS Numeric(8, 2)), CAST(2500.00 AS Numeric(8, 2)), CAST(450.00 AS Numeric(8, 2)), CAST(2950.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (17, 23, 5, 1, CAST(1500.00 AS Numeric(8, 2)), CAST(1500.00 AS Numeric(8, 2)), CAST(270.00 AS Numeric(8, 2)), CAST(1770.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (23, 26, 2, 1, CAST(2000.00 AS Numeric(8, 2)), CAST(2000.00 AS Numeric(8, 2)), CAST(360.00 AS Numeric(8, 2)), CAST(2360.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (28, 34, 9, 1, CAST(2000.00 AS Numeric(8, 2)), CAST(2000.00 AS Numeric(8, 2)), CAST(360.00 AS Numeric(8, 2)), CAST(2360.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (30, 36, 3, 1, CAST(1000.00 AS Numeric(8, 2)), CAST(1000.00 AS Numeric(8, 2)), CAST(180.00 AS Numeric(8, 2)), CAST(1180.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (33, 39, 2, 1, CAST(2000.00 AS Numeric(8, 2)), CAST(2000.00 AS Numeric(8, 2)), CAST(360.00 AS Numeric(8, 2)), CAST(2360.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (35, 41, 11, 1, CAST(500.00 AS Numeric(8, 2)), CAST(500.00 AS Numeric(8, 2)), CAST(90.00 AS Numeric(8, 2)), CAST(590.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (36, 42, 2, 1, CAST(2000.00 AS Numeric(8, 2)), CAST(2000.00 AS Numeric(8, 2)), CAST(360.00 AS Numeric(8, 2)), CAST(2360.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (24, 27, 2, 1, CAST(2000.00 AS Numeric(8, 2)), CAST(2000.00 AS Numeric(8, 2)), CAST(360.00 AS Numeric(8, 2)), CAST(2360.00 AS Numeric(8, 2)))
INSERT [dbo].[Sales_slave] ([slno], [orderid], [itemid], [sqty], [mrp], [totalsamt], [gst], [netamt]) VALUES (38, 43, 5, 1, CAST(1500.00 AS Numeric(8, 2)), CAST(1500.00 AS Numeric(8, 2)), CAST(270.00 AS Numeric(8, 2)), CAST(1770.00 AS Numeric(8, 2)))
SET IDENTITY_INSERT [dbo].[Sales_slave] OFF
GO
SET IDENTITY_INSERT [dbo].[Sales_table] ON 

INSERT [dbo].[Sales_table] ([saleid], [sdate], [pid], [custid], [sqty]) VALUES (1, CAST(N'2022-12-12' AS Date), 1, 1, 1)
INSERT [dbo].[Sales_table] ([saleid], [sdate], [pid], [custid], [sqty]) VALUES (2, CAST(N'2022-12-12' AS Date), 1, 1, 1)
INSERT [dbo].[Sales_table] ([saleid], [sdate], [pid], [custid], [sqty]) VALUES (3, CAST(N'2022-12-12' AS Date), 3, 2, 2)
INSERT [dbo].[Sales_table] ([saleid], [sdate], [pid], [custid], [sqty]) VALUES (4, CAST(N'2022-12-13' AS Date), 3, 4, 1)
INSERT [dbo].[Sales_table] ([saleid], [sdate], [pid], [custid], [sqty]) VALUES (5, CAST(N'2022-12-13' AS Date), 5, 3, 1)
INSERT [dbo].[Sales_table] ([saleid], [sdate], [pid], [custid], [sqty]) VALUES (6, CAST(N'2022-12-13' AS Date), 5, 3, 2)
INSERT [dbo].[Sales_table] ([saleid], [sdate], [pid], [custid], [sqty]) VALUES (7, CAST(N'2022-12-13' AS Date), 3, 3, 5)
INSERT [dbo].[Sales_table] ([saleid], [sdate], [pid], [custid], [sqty]) VALUES (8, CAST(N'2022-12-13' AS Date), 3, 3, 5)
INSERT [dbo].[Sales_table] ([saleid], [sdate], [pid], [custid], [sqty]) VALUES (9, CAST(N'2023-01-01' AS Date), 3, 3, 0)
SET IDENTITY_INSERT [dbo].[Sales_table] OFF
GO
SET IDENTITY_INSERT [dbo].[SchoolType] ON 

INSERT [dbo].[SchoolType] ([SchoolTypeID], [SchoolTypeName]) VALUES (1, N'Goverment')
INSERT [dbo].[SchoolType] ([SchoolTypeID], [SchoolTypeName]) VALUES (2, N'Private')
SET IDENTITY_INSERT [dbo].[SchoolType] OFF
GO
SET IDENTITY_INSERT [dbo].[sectionmaster] ON 

INSERT [dbo].[sectionmaster] ([sectionid], [secname], [capacity]) VALUES (1, N'sec A', 5)
INSERT [dbo].[sectionmaster] ([sectionid], [secname], [capacity]) VALUES (2, N'sec B', 3)
SET IDENTITY_INSERT [dbo].[sectionmaster] OFF
GO
SET IDENTITY_INSERT [dbo].[sports_Master] ON 

INSERT [dbo].[sports_Master] ([sport_Id], [sprot_name], [club_id], [fees]) VALUES (1, N'cricket L', 1, CAST(2000.00 AS Decimal(8, 2)))
INSERT [dbo].[sports_Master] ([sport_Id], [sprot_name], [club_id], [fees]) VALUES (2, N'Football L', 1, CAST(3000.00 AS Decimal(8, 2)))
INSERT [dbo].[sports_Master] ([sport_Id], [sprot_name], [club_id], [fees]) VALUES (3, N'cricket T', 2, CAST(2000.00 AS Decimal(8, 2)))
INSERT [dbo].[sports_Master] ([sport_Id], [sprot_name], [club_id], [fees]) VALUES (4, N'Football T', 2, CAST(3000.00 AS Decimal(8, 2)))
SET IDENTITY_INSERT [dbo].[sports_Master] OFF
GO
SET IDENTITY_INSERT [dbo].[State] ON 

INSERT [dbo].[State] ([StateID], [StateName]) VALUES (1, N'odisha')
INSERT [dbo].[State] ([StateID], [StateName]) VALUES (2, N'Bihar')
SET IDENTITY_INSERT [dbo].[State] OFF
GO
INSERT [dbo].[student] ([regdno], [name], [classid], [secid]) VALUES (N'e001', N'chikun', 1, 2)
INSERT [dbo].[student] ([regdno], [name], [classid], [secid]) VALUES (N'e002', N'chikun', 1, 2)
INSERT [dbo].[student] ([regdno], [name], [classid], [secid]) VALUES (N'e003', N'chikun', 1, 2)
INSERT [dbo].[student] ([regdno], [name], [classid], [secid]) VALUES (N'e005', N'sachin', 2, 1)
INSERT [dbo].[student] ([regdno], [name], [classid], [secid]) VALUES (N'e006', N'gfds', 3, 1)
INSERT [dbo].[student] ([regdno], [name], [classid], [secid]) VALUES (N'e007', N'Radha', 2, 1)
GO
SET IDENTITY_INSERT [dbo].[student1] ON 

INSERT [dbo].[student1] ([id], [name], [phone], [photo], [gender], [deptid]) VALUES (2, N'Sushanta', N'8658193889', N'prodimage/phone.jpeg', N'Male', 1)
INSERT [dbo].[student1] ([id], [name], [phone], [photo], [gender], [deptid]) VALUES (8, NULL, NULL, N'prodimage/png1.png', N'Male', 0)
INSERT [dbo].[student1] ([id], [name], [phone], [photo], [gender], [deptid]) VALUES (6, N'Susil', N'8658193889', N'prodimage/png1.png', N'Male', 1)
INSERT [dbo].[student1] ([id], [name], [phone], [photo], [gender], [deptid]) VALUES (9, NULL, NULL, N'prodimage/png1.png', N'Male', 0)
SET IDENTITY_INSERT [dbo].[student1] OFF
GO
SET IDENTITY_INSERT [dbo].[subcategory] ON 

INSERT [dbo].[subcategory] ([s_id], [cat_id], [sub_name]) VALUES (1, 1, N'boro')
INSERT [dbo].[subcategory] ([s_id], [cat_id], [sub_name]) VALUES (2, 1, N'vaceline')
INSERT [dbo].[subcategory] ([s_id], [cat_id], [sub_name]) VALUES (3, 2, N'table')
INSERT [dbo].[subcategory] ([s_id], [cat_id], [sub_name]) VALUES (4, 2, N'chair')
SET IDENTITY_INSERT [dbo].[subcategory] OFF
GO
SET IDENTITY_INSERT [dbo].[SubCategory3] ON 

INSERT [dbo].[SubCategory3] ([subcatid], [catid], [subcatname]) VALUES (1, 1, N'Torch')
INSERT [dbo].[SubCategory3] ([subcatid], [catid], [subcatname]) VALUES (2, 1, N'Fan')
INSERT [dbo].[SubCategory3] ([subcatid], [catid], [subcatname]) VALUES (3, 1, N'Light')
INSERT [dbo].[SubCategory3] ([subcatid], [catid], [subcatname]) VALUES (4, 2, N'chair')
INSERT [dbo].[SubCategory3] ([subcatid], [catid], [subcatname]) VALUES (5, 2, N'Table')
INSERT [dbo].[SubCategory3] ([subcatid], [catid], [subcatname]) VALUES (6, 2, N'furniture')
SET IDENTITY_INSERT [dbo].[SubCategory3] OFF
GO
INSERT [dbo].[Table_1] ([Name], [Id]) VALUES (N'chikun    ', 9)
INSERT [dbo].[Table_1] ([Name], [Id]) VALUES (N'Mikun     ', 0)
GO
SET IDENTITY_INSERT [dbo].[tbl_PatientMaster] ON 

INSERT [dbo].[tbl_PatientMaster] ([PatientID], [Name], [Gender], [AgeYear], [AgeMonth], [AgeDays], [Address], [City], [Pincode], [phoneno], [WhatsAppNo], [ReferByClientId], [EDate], [Status], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (1, N'Sushanta kumar senapati', N'Male', 4, 4, 4, N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', N'Mayurbhanj', N'757025', N'8658193889', N'8658193889', 1, CAST(N'2023-01-25T00:00:00.000' AS DateTime), N'Active', CAST(N'2023-01-03' AS Date), 0, NULL, CAST(N'2023-01-03' AS Date), 1)
INSERT [dbo].[tbl_PatientMaster] ([PatientID], [Name], [Gender], [AgeYear], [AgeMonth], [AgeDays], [Address], [City], [Pincode], [phoneno], [WhatsAppNo], [ReferByClientId], [EDate], [Status], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (2, N'Sushanta kumar senapati', N'Male', 7, 7, 7, N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', N'Mayurbhanj', N'757025', N'+918658193889', N'+918658193889', 2, CAST(N'2023-01-03T00:00:00.000' AS DateTime), N'Pending', CAST(N'2023-01-03' AS Date), 0, NULL, CAST(N'2023-01-03' AS Date), 1)
INSERT [dbo].[tbl_PatientMaster] ([PatientID], [Name], [Gender], [AgeYear], [AgeMonth], [AgeDays], [Address], [City], [Pincode], [phoneno], [WhatsAppNo], [ReferByClientId], [EDate], [Status], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (3, N'Sushanta kumar senapati', N'Female', 4, 4, 4, N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', N'Mayurbhanj', N'757025', N'+918658193889', N'079 3218 8664', 1, CAST(N'2023-01-24T00:00:00.000' AS DateTime), N'Pending', CAST(N'2023-01-03' AS Date), 0, NULL, CAST(N'2023-01-03' AS Date), 1)
INSERT [dbo].[tbl_PatientMaster] ([PatientID], [Name], [Gender], [AgeYear], [AgeMonth], [AgeDays], [Address], [City], [Pincode], [phoneno], [WhatsAppNo], [ReferByClientId], [EDate], [Status], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (4, N'Sushanta kumar senapati', N'Male', 7, 7, 7, N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', N'Mayurbhanj', N'757025', N'+918658193889', N'+918658193889', 1, CAST(N'2023-01-18T00:00:00.000' AS DateTime), N'0', CAST(N'2023-01-03' AS Date), 0, 4, CAST(N'2023-01-03' AS Date), 1)
INSERT [dbo].[tbl_PatientMaster] ([PatientID], [Name], [Gender], [AgeYear], [AgeMonth], [AgeDays], [Address], [City], [Pincode], [phoneno], [WhatsAppNo], [ReferByClientId], [EDate], [Status], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (5, N'Sushanta kumar senapati', N'Select', 6, 6, 6, N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', N'Mayurbhanj', N'757025', N'+918658193889', N'+918658193889', 1, CAST(N'2023-01-25T00:00:00.000' AS DateTime), N'Active', CAST(N'2023-01-03' AS Date), 0, NULL, CAST(N'2023-01-03' AS Date), 1)
INSERT [dbo].[tbl_PatientMaster] ([PatientID], [Name], [Gender], [AgeYear], [AgeMonth], [AgeDays], [Address], [City], [Pincode], [phoneno], [WhatsAppNo], [ReferByClientId], [EDate], [Status], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (6, N'Sushanta kumar senapati', N'Female', 5, 5, 5, N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', N'Mayurbhanj', N'757025', N'+918658193889', N'+918658193889', 2, CAST(N'2023-01-12T00:00:00.000' AS DateTime), N'Active', CAST(N'2023-01-04' AS Date), 0, NULL, CAST(N'2023-01-04' AS Date), 0)
SET IDENTITY_INSERT [dbo].[tbl_PatientMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_QuestionMaster] ON 

INSERT [dbo].[tbl_QuestionMaster] ([slno], [techid], [subid], [question], [opt1], [opt2], [opt3], [opt4], [ans]) VALUES (1, 1, 10, N'Which of the following technologies are also used with ASP.NET?', N'Css', N'Javascript', N'Ajax', N'All', N'All')
INSERT [dbo].[tbl_QuestionMaster] ([slno], [techid], [subid], [question], [opt1], [opt2], [opt3], [opt4], [ans]) VALUES (2, 1, 10, N'In which form does Postback occur?', N'Win Forms ', N'HTML Forms', N'Web Forms ', N'All', N'HTML Forms')
INSERT [dbo].[tbl_QuestionMaster] ([slno], [techid], [subid], [question], [opt1], [opt2], [opt3], [opt4], [ans]) VALUES (3, 1, 10, N'What is the correct use of the web.config file?
', N'To store global information and variable definitions  ', N'Store information about web browser', N'To configure the domain server', N'To configure to domain client ', N'To store global information and variable definitions')
INSERT [dbo].[tbl_QuestionMaster] ([slno], [techid], [subid], [question], [opt1], [opt2], [opt3], [opt4], [ans]) VALUES (4, 1, 10, N'MVC stands for __.', N'Model Vocal Controller', N'Mode View Controller', N'Model View Controller ', N' Model View Count ', N'Mode View Controller')
INSERT [dbo].[tbl_QuestionMaster] ([slno], [techid], [subid], [question], [opt1], [opt2], [opt3], [opt4], [ans]) VALUES (5, 1, 10, N'Which of the following attribute must be set on a validator control for the validation?', N' ValidateControl  ', N'ControlToValidate', N'ValidateToBind', N'ValidateBind', N'ControlToValidate')
INSERT [dbo].[tbl_QuestionMaster] ([slno], [techid], [subid], [question], [opt1], [opt2], [opt3], [opt4], [ans]) VALUES (6, 1, 10, N'The CSS stands for __.', N' Cascading Simple Sheet', N'Client Style Sheet', N' Cascading Style Sheet', N' Common Style Sheet', N' Cascading Style Sheet')
INSERT [dbo].[tbl_QuestionMaster] ([slno], [techid], [subid], [question], [opt1], [opt2], [opt3], [opt4], [ans]) VALUES (7, 1, 10, N'Which term is used for pages that depend on the Master page?', N'Content Pages', N'Master Pages  ', N'Web Pages', N'None of the above', N'Content Pages')
INSERT [dbo].[tbl_QuestionMaster] ([slno], [techid], [subid], [question], [opt1], [opt2], [opt3], [opt4], [ans]) VALUES (8, 1, 10, N'Which of the following Session Mode Serialization is not required to store the data?', N' SQLServer   ', N'StateServer', N'InProc', N'None', N'InProc')
INSERT [dbo].[tbl_QuestionMaster] ([slno], [techid], [subid], [question], [opt1], [opt2], [opt3], [opt4], [ans]) VALUES (9, 1, 10, N'Which development model(s) is/are supported by ASP.Net?', N'All of the above', N'Asp.Net Web Forms', N' Asp.Net MVC', N' Asp.Net Web Pages ', N'All of the above')
INSERT [dbo].[tbl_QuestionMaster] ([slno], [techid], [subid], [question], [opt1], [opt2], [opt3], [opt4], [ans]) VALUES (10, 1, 10, N'The SessionIDs are stored in __ by ASP.Net?', N' Server  ', N'Cache', N'Database', N'Cookies', N'Cookies')
INSERT [dbo].[tbl_QuestionMaster] ([slno], [techid], [subid], [question], [opt1], [opt2], [opt3], [opt4], [ans]) VALUES (12, 1, 10, N'Which of the following is not an ASP.NET component?', N'LinkCounter   ', N'File Access', N'AdRotator', N'Counter', N'LinkCounter')
INSERT [dbo].[tbl_QuestionMaster] ([slno], [techid], [subid], [question], [opt1], [opt2], [opt3], [opt4], [ans]) VALUES (13, 1, 2, N'Who invented Java Programming?', N'Guido van Rossum ', N'James Gosling', N'Dennis Ritchie', N'Bjarne Stroustrup', N'James Gosling')
INSERT [dbo].[tbl_QuestionMaster] ([slno], [techid], [subid], [question], [opt1], [opt2], [opt3], [opt4], [ans]) VALUES (14, 1, 2, N'Which statement is true about Java?', N' Java is a sequence-dependent programming language ', N'Java is a platform-independent programming language', N'Java is a code dependent programming language', N'Java is a platform-dependent programming language', N'Java is a platform-independent programming language')
INSERT [dbo].[tbl_QuestionMaster] ([slno], [techid], [subid], [question], [opt1], [opt2], [opt3], [opt4], [ans]) VALUES (15, 1, 2, N'Which component is used to compile, debug and execute the java programs?', N'JVM', N'JDK', N' JIT', N' JRE', N' JDK')
SET IDENTITY_INSERT [dbo].[tbl_QuestionMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_ResultDetails] ON 

INSERT [dbo].[tbl_ResultDetails] ([slno], [userid], [doe], [qid], [optchoose], [rstatus], [dstatus]) VALUES (1, N'chikun', CAST(N'2022-12-05' AS Date), 14, N'Java is a platform-independent programming languag', N'False', N'Active')
INSERT [dbo].[tbl_ResultDetails] ([slno], [userid], [doe], [qid], [optchoose], [rstatus], [dstatus]) VALUES (2, N'mak', CAST(N'2022-12-06' AS Date), 13, N'James Gosling', N'True', N'Active')
INSERT [dbo].[tbl_ResultDetails] ([slno], [userid], [doe], [qid], [optchoose], [rstatus], [dstatus]) VALUES (3, N'mak', CAST(N'2022-12-06' AS Date), 13, N'James', N'False', N'Active')
INSERT [dbo].[tbl_ResultDetails] ([slno], [userid], [doe], [qid], [optchoose], [rstatus], [dstatus]) VALUES (4, N'aa', CAST(N'2023-06-26' AS Date), 8, N'InProc', N'True', N'pending')
INSERT [dbo].[tbl_ResultDetails] ([slno], [userid], [doe], [qid], [optchoose], [rstatus], [dstatus]) VALUES (5, N'aa', CAST(N'2023-06-26' AS Date), 10, N'Server', N'False', N'pending')
SET IDENTITY_INSERT [dbo].[tbl_ResultDetails] OFF
GO
INSERT [dbo].[tbl_SetupMaster] ([noofque], [timeinminute], [rules]) VALUES (2, 1, N'plz select all')
GO
SET IDENTITY_INSERT [dbo].[tbl_SubjectMaster] ON 

INSERT [dbo].[tbl_SubjectMaster] ([subid], [techid], [subname]) VALUES (1, 1, N'MVCMVCCC')
INSERT [dbo].[tbl_SubjectMaster] ([subid], [techid], [subname]) VALUES (2, 1, N'core')
INSERT [dbo].[tbl_SubjectMaster] ([subid], [techid], [subname]) VALUES (4, 2, N'Hybernate')
INSERT [dbo].[tbl_SubjectMaster] ([subid], [techid], [subname]) VALUES (6, 5, N'Ornoto')
INSERT [dbo].[tbl_SubjectMaster] ([subid], [techid], [subname]) VALUES (9, 0, NULL)
INSERT [dbo].[tbl_SubjectMaster] ([subid], [techid], [subname]) VALUES (10, 1, N'Asp')
SET IDENTITY_INSERT [dbo].[tbl_SubjectMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_TechnologyMaster] ON 

INSERT [dbo].[tbl_TechnologyMaster] ([techid], [techname]) VALUES (1, N'Dot Net')
INSERT [dbo].[tbl_TechnologyMaster] ([techid], [techname]) VALUES (2, N'Java')
INSERT [dbo].[tbl_TechnologyMaster] ([techid], [techname]) VALUES (5, N'PHp')
SET IDENTITY_INSERT [dbo].[tbl_TechnologyMaster] OFF
GO
INSERT [dbo].[tbl_UserMaster] ([userid], [userpassword], [username], [userphone], [useremail], [userphoto], [usertechnology], [usersubject], [userstatus]) VALUES (N'aa', N'aa', N'aa', N'8789098909', N'sushawentasenapati718@gmail.com', N'', 1, 10, N'Active')
INSERT [dbo].[tbl_UserMaster] ([userid], [userpassword], [username], [userphone], [useremail], [userphoto], [usertechnology], [usersubject], [userstatus]) VALUES (N'Admin', N'Admin', N'Sushanta Kumar senapati', N'8658193889', N'sushantasenapati718@gmail.com', N'admin/photo', 1, 1, N'Active')
INSERT [dbo].[tbl_UserMaster] ([userid], [userpassword], [username], [userphone], [useremail], [userphoto], [usertechnology], [usersubject], [userstatus]) VALUES (N'bikram123', N'bikram@123', N'bikram', N'1234567890', N'bikram@gmail.com', N'', 1, 10, N'Active')
INSERT [dbo].[tbl_UserMaster] ([userid], [userpassword], [username], [userphone], [useremail], [userphoto], [usertechnology], [usersubject], [userstatus]) VALUES (N'chikun', N'chikun', N'chikun', N'8658193889', N'sushantasenapati718@gmail.com', N'', 1, 2, N'Active')
INSERT [dbo].[tbl_UserMaster] ([userid], [userpassword], [username], [userphone], [useremail], [userphoto], [usertechnology], [usersubject], [userstatus]) VALUES (N'Chikunn', N'Chikunn', N'sushanta', N'8989898989', N'sushantasenapati718@gmail.com', N'', 1, 1, N'pending')
INSERT [dbo].[tbl_UserMaster] ([userid], [userpassword], [username], [userphone], [useremail], [userphoto], [usertechnology], [usersubject], [userstatus]) VALUES (N'kk', N'kk', N'kk', N'9999999999', N'CharlesSSmith@cuvox.de', N'', 2, 4, N'Active')
INSERT [dbo].[tbl_UserMaster] ([userid], [userpassword], [username], [userphone], [useremail], [userphoto], [usertechnology], [usersubject], [userstatus]) VALUES (N'km', N'km', N'km', N'9000089709', N'CharlesSSmith@cuvox.des', N'', 1, 1, N'Active')
INSERT [dbo].[tbl_UserMaster] ([userid], [userpassword], [username], [userphone], [useremail], [userphoto], [usertechnology], [usersubject], [userstatus]) VALUES (N'mak', N'mikun', N'arun', N'1234567890', N'mailtomkrun@gmail.com', N'', 1, 2, N'Active')
INSERT [dbo].[tbl_UserMaster] ([userid], [userpassword], [username], [userphone], [useremail], [userphoto], [usertechnology], [usersubject], [userstatus]) VALUES (N'mikun', N'mikun', N'mikun', N'8787894340', N'Yoshsenapati@gmail.com', N'', 1, 1, N'Active')
INSERT [dbo].[tbl_UserMaster] ([userid], [userpassword], [username], [userphone], [useremail], [userphoto], [usertechnology], [usersubject], [userstatus]) VALUES (N'xx', N'xx', N'sushanta senapati', N'9090909090', N'cgfgfg@gmail.com', N'', 5, 6, N'pending')
GO
SET IDENTITY_INSERT [dbo].[TblDistrict] ON 

INSERT [dbo].[TblDistrict] ([DistrictID], [StateID], [DistrictName]) VALUES (1, 1, N'Cuttack')
INSERT [dbo].[TblDistrict] ([DistrictID], [StateID], [DistrictName]) VALUES (2, 1, N'Khurda')
INSERT [dbo].[TblDistrict] ([DistrictID], [StateID], [DistrictName]) VALUES (3, 1, N'Jajpur')
INSERT [dbo].[TblDistrict] ([DistrictID], [StateID], [DistrictName]) VALUES (4, 2, N'Hugil')
INSERT [dbo].[TblDistrict] ([DistrictID], [StateID], [DistrictName]) VALUES (5, 2, N'Malda')
INSERT [dbo].[TblDistrict] ([DistrictID], [StateID], [DistrictName]) VALUES (6, 2, N'Kolkata')
INSERT [dbo].[TblDistrict] ([DistrictID], [StateID], [DistrictName]) VALUES (7, 3, N'Guntur')
INSERT [dbo].[TblDistrict] ([DistrictID], [StateID], [DistrictName]) VALUES (8, 3, N'Vizag')
INSERT [dbo].[TblDistrict] ([DistrictID], [StateID], [DistrictName]) VALUES (9, 3, N'Araku')
INSERT [dbo].[TblDistrict] ([DistrictID], [StateID], [DistrictName]) VALUES (10, 4, N'Bhopal')
INSERT [dbo].[TblDistrict] ([DistrictID], [StateID], [DistrictName]) VALUES (11, 4, N'Umaria')
INSERT [dbo].[TblDistrict] ([DistrictID], [StateID], [DistrictName]) VALUES (12, 5, N'Chapra')
INSERT [dbo].[TblDistrict] ([DistrictID], [StateID], [DistrictName]) VALUES (13, 5, N'Arwal')
INSERT [dbo].[TblDistrict] ([DistrictID], [StateID], [DistrictName]) VALUES (14, 5, N'Bhojpur')
INSERT [dbo].[TblDistrict] ([DistrictID], [StateID], [DistrictName]) VALUES (15, 5, N'Nalanda')
SET IDENTITY_INSERT [dbo].[TblDistrict] OFF
GO
SET IDENTITY_INSERT [dbo].[TblSchoolRegistration] ON 

INSERT [dbo].[TblSchoolRegistration] ([SchoolID], [StateID], [DistrictID], [SchoolName], [SchoolTypeID], [SchoolLevel], [SchoolPhoto]) VALUES (1, 1, 1, N'kuliana', 1, N'10th,12th', N'Photo/pro1.jpg')
SET IDENTITY_INSERT [dbo].[TblSchoolRegistration] OFF
GO
SET IDENTITY_INSERT [dbo].[TblState] ON 

INSERT [dbo].[TblState] ([StateID], [StateName]) VALUES (1, N'Odisha')
INSERT [dbo].[TblState] ([StateID], [StateName]) VALUES (2, N'West Bengal')
INSERT [dbo].[TblState] ([StateID], [StateName]) VALUES (3, N'Andra Pradesh')
INSERT [dbo].[TblState] ([StateID], [StateName]) VALUES (4, N'Madhya Pradesh')
INSERT [dbo].[TblState] ([StateID], [StateName]) VALUES (5, N'Bihar')
SET IDENTITY_INSERT [dbo].[TblState] OFF
GO
SET IDENTITY_INSERT [dbo].[tranc] ON 

INSERT [dbo].[tranc] ([sl], [today], [p_id], [tqty], [t_amount]) VALUES (1, CAST(N'2022-10-28' AS Date), 1, 2, 20)
SET IDENTITY_INSERT [dbo].[tranc] OFF
GO
SET IDENTITY_INSERT [dbo].[UserDetails] ON 

INSERT [dbo].[UserDetails] ([ID], [UserID], [UserName], [Password], [PhoneNo], [Email], [CreateDate]) VALUES (1, N'chikun123', N'sushanta senapati', N'chikun123', N'8658193888', N'sushantasenapati718@gmail.com', CAST(N'2022-11-29T20:28:22.767' AS DateTime))
INSERT [dbo].[UserDetails] ([ID], [UserID], [UserName], [Password], [PhoneNo], [Email], [CreateDate]) VALUES (2, N'Mikun', N'Mikun', N'Mikun', N'8787878787', N'ch@gmail.com', CAST(N'2022-11-30T07:46:34.723' AS DateTime))
INSERT [dbo].[UserDetails] ([ID], [UserID], [UserName], [Password], [PhoneNo], [Email], [CreateDate]) VALUES (3, N'ram', N'Ram', N'ram', N'7676767676', N'gcy2@gmail.com', CAST(N'2022-12-04T18:02:27.130' AS DateTime))
INSERT [dbo].[UserDetails] ([ID], [UserID], [UserName], [Password], [PhoneNo], [Email], [CreateDate]) VALUES (4, N'', N'Ram', N'', N'7676767676', N'gcy2@gmail.com', CAST(N'2022-12-04T18:02:59.977' AS DateTime))
INSERT [dbo].[UserDetails] ([ID], [UserID], [UserName], [Password], [PhoneNo], [Email], [CreateDate]) VALUES (5, N'chikun', N'jhdsdhsgb', N'chikun', N'8778877844', N'dgdgeerw', CAST(N'2022-12-31T15:29:30.100' AS DateTime))
SET IDENTITY_INSERT [dbo].[UserDetails] OFF
GO
INSERT [dbo].[usermaster] ([userid], [passwd], [username], [useradd], [usergen], [userphone], [useremail], [userdob], [userphoto]) VALUES (N'E000', N'chikun', N'Sushanta kumar senap', N'jsfghwefbjkb', N'Male', N'8658193889', N'sushantasenapati718@', CAST(N'2022-12-31' AS Date), N'Userphoto/imag 2.jpg')
INSERT [dbo].[usermaster] ([userid], [passwd], [username], [useradd], [usergen], [userphone], [useremail], [userdob], [userphoto]) VALUES (N'e0001', N'chikun123@', N'Charles Smith', N'10 Hampton Court Rd', N'Female', N'079 3218 8664', N'CharlesSSmith@cuvox.', CAST(N'2012-12-12' AS Date), N'Userphotoyellow png.png')
INSERT [dbo].[usermaster] ([userid], [passwd], [username], [useradd], [usergen], [userphone], [useremail], [userdob], [userphoto]) VALUES (N'E001', N'chikun', N'sushanta', N'kkkk', N'Male', N'+918658193889', N'sushantasenapati718@', CAST(N'2022-10-13' AS Date), N'Userphoto\png1.png')
INSERT [dbo].[usermaster] ([userid], [passwd], [username], [useradd], [usergen], [userphone], [useremail], [userdob], [userphoto]) VALUES (N'E002', N'ciiui', N'rama', N'liohu', N'Female', N'7565656', N'cgftcgt', CAST(N'2012-12-12' AS Date), N'Userphoto\png1.png')
INSERT [dbo].[usermaster] ([userid], [passwd], [username], [useradd], [usergen], [userphone], [useremail], [userdob], [userphoto]) VALUES (N'E005', N'chikun123', N'yoshbanta senapati', N'kuliana B', N'Male', N'8658193889', N'sushanta@gmail.com', CAST(N'2012-12-12' AS Date), N'Userphoto\png1.png')
INSERT [dbo].[usermaster] ([userid], [passwd], [username], [useradd], [usergen], [userphone], [useremail], [userdob], [userphoto]) VALUES (N'e007', N'chikue', N'cckk', N'tdtd', N'Female', N'8658193889', N'CharlesSSmith@cuvox.', CAST(N'2012-12-12' AS Date), N'Userphoto\png1.png')
INSERT [dbo].[usermaster] ([userid], [passwd], [username], [useradd], [usergen], [userphone], [useremail], [userdob], [userphoto]) VALUES (N'e011', N'vikram1', N'vikram Reddy', N'Barha', N'Male', N'9090909090', N'vikram718@gmail.com', CAST(N'1996-12-23' AS Date), N'Userphoto/Red_Color.jpg')
INSERT [dbo].[usermaster] ([userid], [passwd], [username], [useradd], [usergen], [userphone], [useremail], [userdob], [userphoto]) VALUES (N'hffgf', N'fgfgfg', N'fgfgfg', N'fgfgfgf', N'Female', N'fgfgfg', N'fgfgfgf', CAST(N'2012-12-12' AS Date), N'Userphoto\png1.png')
INSERT [dbo].[usermaster] ([userid], [passwd], [username], [useradd], [usergen], [userphone], [useremail], [userdob], [userphoto]) VALUES (N'sushanta', N'chikun123@', N'Sushanta kumar senap', N'AT/po-kuliana,block-', N'Male', N'+918658193889', N'sushantasenapati718@', CAST(N'1998-05-16' AS Date), N'Userphoto\png1.png')
INSERT [dbo].[usermaster] ([userid], [passwd], [username], [useradd], [usergen], [userphone], [useremail], [userdob], [userphoto]) VALUES (N'sushantaxxx', N'chikun123@', N'Sushanta kumar senap', N'AT/po-kuliana,block-', N'Male', N'+918658193889', N'sushantasenapati718@', CAST(N'2012-12-12' AS Date), N'Userphoto')
GO
INSERT [dbo].[Vendor] ([vendorid], [vendername]) VALUES (1, N'chikun')
INSERT [dbo].[Vendor] ([vendorid], [vendername]) VALUES (2, N'Mikun')
INSERT [dbo].[Vendor] ([vendorid], [vendername]) VALUES (3, N'Ajay')
GO
INSERT [dbo].[villagemaster] ([vid], [vname], [panchayatname], [population]) VALUES (N'3333', N'kuliana', N'kuliana', N'1234')
INSERT [dbo].[villagemaster] ([vid], [vname], [panchayatname], [population]) VALUES (N'10', N'Bartana', N'Kkkkkkkkkkkkkkkk', N'2000')
INSERT [dbo].[villagemaster] ([vid], [vname], [panchayatname], [population]) VALUES (N'3', N'Bartana', N'kuliana', N'1000088')
GO
SET IDENTITY_INSERT [dbo].[vote] ON 

INSERT [dbo].[vote] ([sl], [citzenid], [candid]) VALUES (1, 4, 1)
INSERT [dbo].[vote] ([sl], [citzenid], [candid]) VALUES (2, 5, 1)
INSERT [dbo].[vote] ([sl], [citzenid], [candid]) VALUES (3, 8, 1)
INSERT [dbo].[vote] ([sl], [citzenid], [candid]) VALUES (4, 9, 3)
SET IDENTITY_INSERT [dbo].[vote] OFF
GO
INSERT [dbo].[vote1] ([c_id], [cd_id]) VALUES (3, 2)
INSERT [dbo].[vote1] ([c_id], [cd_id]) VALUES (4, 2)
INSERT [dbo].[vote1] ([c_id], [cd_id]) VALUES (5, 2)
INSERT [dbo].[vote1] ([c_id], [cd_id]) VALUES (6, 1)
GO
ALTER TABLE [dbo].[M_PL_Slot_Master] ADD  CONSTRAINT [DF_M_PL_Slot_Master_DeletedFlag]  DEFAULT ((0)) FOR [DeletedFlag]
GO
ALTER TABLE [dbo].[M_PL_USER] ADD  CONSTRAINT [DF_M_PL_USER_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[M_PL_USER] ADD  CONSTRAINT [DF_M_PL_USER_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[M_PL_USER] ADD  CONSTRAINT [DF_M_PL_USER_DeletedFlag]  DEFAULT ((0)) FOR [DeletedFlag]
GO
ALTER TABLE [dbo].[Table_1] ADD  CONSTRAINT [DF_Table_1_Id]  DEFAULT ((0)) FOR [Id]
GO
ALTER TABLE [dbo].[tbl_PatientMaster] ADD  CONSTRAINT [DF_PatientMast1_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[tbl_PatientMaster] ADD  CONSTRAINT [DF_PatientMast1_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[tbl_PatientMaster] ADD  CONSTRAINT [DF_PatientMast1_DeletedFlag]  DEFAULT ((0)) FOR [DeletedFlag]
GO
ALTER TABLE [dbo].[tbl_RoleMaster] ADD  CONSTRAINT [DF_tbl_RoleMaster_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[tbl_RoleMaster] ADD  CONSTRAINT [DF_tbl_RoleMaster_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[tbl_RoleMaster] ADD  CONSTRAINT [DF_tbl_RoleMaster_DeletedFlag]  DEFAULT ((0)) FOR [DeletedFlag]
GO
ALTER TABLE [dbo].[Receive]  WITH CHECK ADD FOREIGN KEY([itemid])
REFERENCES [dbo].[item] ([itemid])
GO
ALTER TABLE [dbo].[Receive]  WITH CHECK ADD FOREIGN KEY([vendorid])
REFERENCES [dbo].[Vendor] ([vendorid])
GO
ALTER TABLE [dbo].[salary]  WITH CHECK ADD  CONSTRAINT [sal_dept_ck] CHECK  (([dept]='comm' OR [dept]='art' OR [dept]='sc'))
GO
ALTER TABLE [dbo].[salary] CHECK CONSTRAINT [sal_dept_ck]
GO
/****** Object:  StoredProcedure [dbo].[chikproc]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[chikproc]
(@action char(1)
)
as
begin
if(@action='A')
select * from chikun
end
GO
/****** Object:  StoredProcedure [dbo].[chikun12]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[chikun12]
(@id varchar(20)=null,
@name varchar(20)=null,
@phone varchar(20)=null,
@email varchar(20)=null,
@suject varchar(20)=null,
@action varchar(10)
)
as
begin
if(@action='I')
insert into chikun1 values(@id,@name,@phone,@email,@suject)
else if (@action='U')
update chikun1 set name=@name,phone=@phone,email=@email,suject=@suject where id=@id
else if(@action='D')
delete from chikun1 where id=@id
else if(@action='A')
select * from chikun1
end
GO
/****** Object:  StoredProcedure [dbo].[CrudOperationsInGridView]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CrudOperationsInGridView]  
@Collageid int = 0,  
@Collagename varchar(50)=null,   
@CollageRank float=0.0,    
@status varchar(50)    
AS    
BEGIN    
IF @status='INSERT'    
INSERT INTO CollageInfo(Collagename,CollageRank) VALUES(@Collagename,@CollageRank)  
ELSE IF @status='SELECT'  
SELECT Collageid,Collagename,CollageRank FROM CollageInfo   
ELSE IF @status='UPDATE'  
UPDATE CollageInfo SET @Collagename=@Collagename,CollageRank=@CollageRank WHERE Collageid=@Collageid  
ELSE IF @status='DELETE'  
DELETE FROM CollageInfo where Collageid=@Collageid  
end
GO
/****** Object:  StoredProcedure [dbo].[customer12345]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[customer12345]
(
@custid int=0,
@custname varchar(20)=null,
@custphone varchar(10)=null,
@custemail varchar(20)=null,
@custimage varchar(20)=null,
@action varchar(20)
)
as
begin
if(@action='insert')
insert into customer1234 values(@custname,@custphone,@custemail,@custimage) 
else if(@action='update')
update customer1234 set custname=@custname,custphone=@custphone,custemail=@custemail,custimage=@custimage where custid=@custid
else if(@action='delete')
delete from customer1234 where custid=@custid
else if(@action='selectone')
select * from customer1234 where custid=@custid
else if(@action='selectall')
select * from customer1234
end
GO
/****** Object:  StoredProcedure [dbo].[img_op]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[img_op]
(@name varchar(20)=null,
@dob date=null,
@img varchar(20)=null,
@action varchar(20)
)
as
begin
if(@action='I')
insert into img values(@name,@dob,@img)
else if(@action='fillgrid')
select * from img
end
GO
/****** Object:  StoredProcedure [dbo].[management]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[management]
(
 @productid varchar(20)=null,
 @productname varchar(20)=null,
 @productdesc varchar(20)=null,
 @prodprice int=0,
 @productqty int=0,
 @productimage varchar(20)=null,
 @userid varchar(20)=null,
 @passward  varchar(20)=null,
 @username varchar(20)=null,
 @useradd varchar(20)=null,
 @userphone varchar(20)=null,
 @useremail varchar(20)=null,
 @orderstatus varchar(10)=null,
 @orderid int=0,


 
 @action varchar(30),
 @res int=0 out
)
as
begin
if(@action='insrtpodct')
	insert into productdetails values(@productid,@productname,@productdesc,@prodprice,@productqty,@productimage)
else if(@action='ckadmin')
select * from adminmaster where  adminid=@userid and password=@passward
else if(@action='ckuser')
select * from customer where  userid=@userid and passward=@passward
else if(@action='ckuserid')
select * from customer where  userid=@userid
else if(@action='userinsert')
insert into customer values(@userid,@username,@useradd,@userphone,@useremail,@passward)
else if(@action='passupdate')   
update customer set passward=@passward where userid=@userid
else if(@action='editprofile')   
update customer set username=@username,useradd=@useradd,userphone=@userphone,useremail=@useremail where userid=@userid
else if(@action='viewproduct')   
select * from productdetails
else if(@action='insertOrderdetail')
begin


	declare @qty int
	select @qty=productqty from productdetails where productid=@productid
	if(@productqty<=@qty)
	begin
			declare @od int
			select top 1 @od=orderid from ordermaster where userid=@userid order by orderid desc
			insert into orderdetails values(@productid,@productqty,@od)
			update productdetails set productqty=@qty-@productqty where productid=@productid
			set @res=1
    end

end
	else if(@action='insertordermaster')
	insert into ordermaster values(@userid,getdate(),'underprocessing')
	else if(@action='vieworderuser')
	begin
	select od.slno,pr.productname,od.quantity,ord.orderstatus,(pr.prodprice*od.quantity) as amount from orderdetails od,productdetails pr,ordermaster ord 
	where ord.orderid=od.orderid and od.prodid=pr.productid
	end
	else if(@action='updatestatus')
	update ordermaster set orderstatus=@orderstatus where orderid=@orderid
	else if(@action='viewordermaster')
	select * from ordermaster
	else if(@action='vieworderuser')
	select * from ordermaster where userid=@userid

end
GO
/****** Object:  StoredProcedure [dbo].[medical]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[medical]
(
@patient_name varchar(20)=null,
@gender varchar(20)=null,
@dob date=null,

@patient_id int=0,
@disease_id int=0,
@prescription_details varchar(250)=null,
@phone_no varchar(12)=null,
@action varchar(10)
)
as
begin
if(@action='insert')
insert into prescription_tbl values('Dr. Amit Singh',getdate(),@patient_id,@disease_id,@prescription_details)
else if(@action='filldis')
select * from disease_master
else if(@action='findphone')
select patient_id,patient_name,gender,format(dob,'dd-M-yyyy') as dob,phone_no from patient_master where phone_no=@phone_no
else if(@action='report')
select patient_name,(Format(getdate(),'yyyy')-Year(a.dob)) as age,gender,date_of_visit,disease_name,prescription_details from 
patient_master a,disease_master b,prescription_tbl c where a.patient_id=c.patient_id and b.disease_id=c.disease_id 
and c.patient_id=@patient_id
else if(@action='regis')
insert into patient_master values(@patient_name,@gender,@dob,@phone_no)


end

select * from patient_master
GO
/****** Object:  StoredProcedure [dbo].[op]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[op]
(@citzenid int=0,
@candid int=0,
@action varchar(15)
)
as
begin
 if(@action='citizenfil')
 select * from citizen  where citzenid not in(select citzenid from candidate)
 else if(@action='candidatefil')
   select c.citzenname,e.candidateid from candidate e,citizen c where e.citzenid=c.citzenid 
  else if(@action='I')
  insert into vote  values(@citzenid,@candid)
   else if(@action='ck')
   select * from vote where citzenid=@citzenid
    else if(@action='filgrid')
   select * from vote where citzenid=@citzenid
   if(@action='filgrd')
   begin
      SELECT candid,count(candid) as no_vote
      FROM vote 
      GROUP BY candid
 end
 end
GO
/****** Object:  StoredProcedure [dbo].[op_admin]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[op_admin]
(@userid varchar(30)=null,
@passward varchar(20)=null,
@username varchar(20)=null,
@phoneno varchar(20)=null,
@email varchar(20)=null,
@photo varchar(20)=null,
@action varchar(10)
)
as
begin
if(@action='admin')
select * from admin where role not in ('Admin')

else if(@action='user')
select * from admin where passward=@passward

else if(@action='I')
insert into admin values(@userid,@passward,@username,@phoneno,@email,@photo,'user')
else if(@action='L')
select * from admin where userid=@userid and passward=@passward

end
GO
/****** Object:  StoredProcedure [dbo].[op_chikun123]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[op_chikun123]
(@id int=0,
@pass varchar(20)=null,
@name varchar(20)=null,
@action varchar(10)
)
as
begin
if(@action='I')
insert into chikun123 values(@id,@pass,@name)
else if(@action='c')
select * from chikun123 where id=@id and pass=@pass
else if(@action='g')
select pass from chikun123 where id=@id
end
GO
/****** Object:  StoredProcedure [dbo].[op_customer]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[op_customer]
(
 @userid varchar(20)=null,
 @passward  varchar(20)=null,
 @username varchar(20)=null,
 @useradd varchar(20)=null,
 @userphone varchar(20)=null,
 @useremail varchar(20)=null,
 @orderstatus varchar(20)=null,
 @orderid int=0,

 @action varchar(20)
 )
 as
 begin
  if(@action='userinsert')
insert into customer values(@userid,@username,@useradd,@userphone,@useremail,@passward)
else if(@action='passupdate')   
update customer set passward=@passward where userid=@userid
else if(@action='ckuser')
select * from customer where  userid=@userid and passward=@passward
else if(@action='editprofile')   
update customer set username=@username,useradd=@useradd,userphone=@userphone,useremail=@useremail where userid=@userid
else if(@action='viewproduct')   
select * from productdetails
else if(@action='ckadmin')
select * from adminmaster where  adminid=@userid and password=@passward
else if(@action='ckuser')
select * from customer where  userid=@userid and passward=@passward
else if(@action='updatestatus')
update ordermaster set orderstatus=@orderstatus where orderid=@orderid
end
GO
/****** Object:  StoredProcedure [dbo].[op_list]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[op_list]
(@sl int=0,
@name varchar(20)=null,
@age int=0,
@action varchar(10)
)
as 
begin
if(@action='I')
insert into listobject values(@age,'@name',getdate())
else if(@action='U')
update listobject set age=@age,name=@name,today=getdate()
else if(@action='D')
delete from listobject where sl=@sl
else if(@action='A')
select * from listobject
else if(@action='one')
select * from listobject where sl=@sl
end
GO
/****** Object:  StoredProcedure [dbo].[op_product]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[op_product]
(
 @userid varchar(20)=null,
 @productid varchar(20)=null,
 @productname varchar(20)=null,
 @productdesc varchar(20)=null,
 @prodprice int=0,
 @productqty int=0,
 @productimage varchar(20)=null,
 @orderid int=0,
 
 @action varchar(20),
  @res int=0 out
 )
 as
begin
if(@action='insrtpodct')
insert into productdetails values(@productid,@productname,@productdesc,@prodprice,@productqty,@productimage)
else if(@action='insertOrderdetail')
begin
declare @qty int
select @qty=productqty from productdetails where productid=@productid
   if(@productqty<=@qty)
   begin
   insert into orderdetails values(@productid,@productqty,@orderid)
   update productdetails set productqty=@qty-@productqty where productid=@productid
   set @res=1
   end

end
else if(@action='insertordermaster')
insert into ordermaster values(@userid,getdate(),'underprocessing')
else if(@action='viewstatus')
begin
select od.slno,pr.productname,od.quantity,ord.orderstatus from orderdetails od,productdetails pr,ordermaster ord 
where ord.orderid=od.orderid and od.prodid=pr.productid
end
end
GO
/****** Object:  StoredProcedure [dbo].[op_product_image]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[op_product_image]
(@pid int=0,
@pname varchar(20)='',
@price numeric(6,2)=0.0,
@image varchar(20)=null,
@pqty int=0
)
as
begin
if(@pid=0)
insert into  tbl_img values(@pname,@price,@pqty,@image)
else 
update tbl_img set pname=@pname,price=@price,pqty=@pqty,image=@image where pid=@pid

end
GO
/****** Object:  StoredProcedure [dbo].[op_product_tbl]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[op_product_tbl]
(@pid int=0,
@pname varchar(20)='',
@price numeric(6,2)=0.0,
@pqty int=0,

@action varchar(20)

)
as
begin

if(@action='D')
delete from  product_tbl where pid=@pid
else if(@action='A')
begin
  if(@pname!='')
     select * from  product_tbl  where pname like '%'+@pname+'%'
   else
   select * from  product_tbl


end

else if(@action='S')
select * from  product_tbl where pid=@pid
else if(@action='I')
insert into  product_tbl values(@pname,@price,@pqty)
else if(@action='U')
update product_tbl set pname=@pname,price=@price,pqty=@pqty where pid=@pid



end
GO
/****** Object:  StoredProcedure [dbo].[op_product_tbl_image]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[op_product_tbl_image]
(@pid int=0,
@pname varchar(20)='',
@price numeric(6,2)=0.0,
@pqty int=0,
@image varchar(20)=null,

@action varchar(20)

)
as
begin

if(@action='D')
delete from  tbl_img where pid=@pid
else if(@action='A')
begin
  if(@pname!='')
     select * from  tbl_img  where pname like '%'+@pname+'%'
   else
   select * from  tbl_img
end

else if(@action='S')
select * from  tbl_img where pid=@pid



end
GO
/****** Object:  StoredProcedure [dbo].[op_product_tbl1]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[op_product_tbl1]
(@pid int=0,
@pname varchar(20)='',
@price numeric(6,2)=0.0,
@pqty int=0
)
as
begin
if(@pid=0)
insert into  product_tbl values(@pname,@price,@pqty)
else 
update product_tbl set pname=@pname,price=@price,pqty=@pqty where pid=@pid

end
GO
/****** Object:  StoredProcedure [dbo].[op_product_tbl1_image]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[op_product_tbl1_image]
(@pid int=0,
@pname varchar(20)='',
@price numeric(6,2)=0.0,
@pqty int=0
)
as
begin
if(@pid=0)
insert into  product_tbl values(@pname,@price,@pqty)
else 
update product_tbl set pname=@pname,price=@price,pqty=@pqty where pid=@pid

end
GO
/****** Object:  StoredProcedure [dbo].[op_select_pr]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[op_select_pr](@pname varchar(20)='')
as
begin
 if(@pname!='')
     select * from  product_tbl  where pname like '%'+@pname+'%'
   else
   select * from  product_tbl

end
GO
/****** Object:  StoredProcedure [dbo].[op_user]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[op_user]
(
@userid varchar(50)=null,
@userpassword varchar(50)='',
@username varchar(100)=null,
@userphone varchar(50)=null,
@useremail varchar(50)=null,
@slno int=0,
@subid int=0,
@optchoose varchar(50)=null,


@usertechnology int=0,
@usersubject int=0,
@userstatus varchar(20)=null,

@action varchar(30)
)
as
begin
if(@action='InsertUser')
insert into tbl_UserMaster values(@userid,@userpassword,@username,@userphone,@useremail,'',@usertechnology,@usersubject,'pending')
else if(@action='updatechange')
begin
        if @userpassword=''
begin
    update tbl_UserMaster set username=@username,userphone=@userphone,useremail=@useremail where userid=@userid 
end
else
-- finally udate password here
update tbl_UserMaster set userpassword=@userpassword where userid=@userid
 
end
else if(@action='login')
select * from tbl_UserMaster where  userid=@userid and userpassword=@userpassword and userstatus='Active'
else if(@action='getbyid')
SELECT dbo.tbl_SubjectMaster.subname, dbo.tbl_TechnologyMaster.techname, dbo.tbl_UserMaster.userid, dbo.tbl_UserMaster.userpassword, dbo.tbl_UserMaster.username, dbo.tbl_UserMaster.userphone, 
dbo.tbl_UserMaster.useremail, dbo.tbl_UserMaster.userphoto, dbo.tbl_UserMaster.usertechnology, dbo.tbl_UserMaster.usersubject, dbo.tbl_UserMaster.userstatus
FROM dbo.tbl_TechnologyMaster INNER JOIN
dbo.tbl_SubjectMaster ON dbo.tbl_TechnologyMaster.techid = dbo.tbl_SubjectMaster.techid INNER JOIN
dbo.tbl_UserMaster ON dbo.tbl_SubjectMaster.subid = dbo.tbl_UserMaster.usersubject and userid=@userid

else if(@action='bindsetup')
select * from tbl_SetupMaster
else if(@action='insertResultdetails')
begin
	declare @ans varchar(100)
	select @ans=ans from tbl_QuestionMaster where slno=@slno
	if(@ans=@optchoose)
	insert into tbl_ResultDetails values(@userid,getdate(),@slno,@optchoose,'True','pending')
	else
	insert into tbl_ResultDetails values(@userid,getdate(),@slno,@optchoose,'False','pending')

end
else if(@action='ViewResultbyId')
select distinct um.username,tm.techname,sm.subname,s.noofque,(select count(rstatus) from tbl_ResultDetails where userid=@userid and rstatus='True') as Mark,
(select count(*) from tbl_ResultDetails where userid=@userid) as Appeared
from tbl_UserMaster um,tbl_TechnologyMaster tm,tbl_SubjectMaster sm,tbl_SetupMaster s,tbl_ResultDetails rd 
where um.userid=rd.userid and um.usertechnology=tm.techid and um.usersubject=sm.subid and um.userid=@userid
else if(@action='bindquestion')
begin
declare @val int
select @val=noofque from tbl_SetupMaster
select top (@val) * from tbl_QuestionMaster where subid=@subid order by newid()
end
else if(@action='ck_tbl_result')
begin
 select top 1 * from tbl_ResultDetails where userid=@userid
end

end
GO
/****** Object:  StoredProcedure [dbo].[Prod_sp1]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Prod_sp1]
(
@pid int=0,
@catid int=0,
@subcatid int=0,
@pname varchar(50)=null,
@pprice decimal(8,2)=0.0,
@pquantity int=0,
@pimage varchar(max)=null,
@action varchar(30)
)
as
begin
if(@action='InsertandUpdate')
begin
if(@pid=0)

  insert into Product_Table1(catid,subcatid,pname,pprice,pquantity,pimage)
  values(@catid,@subcatid,@pname,@pprice,@pquantity,@pimage)
  else
  update Product_Table1 set catid=@catid,subcatid=@subcatid,pname=@pname,pprice=@pprice,pquantity=@pquantity,pimage=@pimage
  where pid=@pid
  end



else if(@action='Delete')
  delete from Product_Table1 where pid=@pid
 
else if (@action='Catfill')
  select * from Category
else if(@action='Subcatfill')
  select * from SubCategory

else if(@action='Subcatfillbyid')
select * from SubCategory where cat_id=@catid

else if(@action='fillgrid')
select p.pid, p.pname, p.pprice,p.pquantity,p.pimage,c.catname,s.sub_name 
from Product_Table1 p inner join Category c on p.catid=c.catid inner join SubCategory s
on p.subcatid=s.s_id
else if(@action='viewbyid')
select * from Product_Table1 where pid=@pid
end
GO
/****** Object:  StoredProcedure [dbo].[Product_Category]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Product_Category]
(
@pid int=0,
@pname varchar(50)=null,
@catid int=0,
@price numeric(8,2)=0.0,
@pqty int=0,
@catname varchar(50)=null,
@action varchar(50)
)
as
begin
if(@action='Insert')
Insert into Product12 values(@pname,@catid,@price,@pqty)
else if(@action='Update')
Update Product12 set pname=@pname,catid=@catid,price=@price,pqty=@pqty where pid=@pid
else if(@action='Delete')
Delete from Product12 where pid=@pid
else if(@action='SelectOne')
select * from Product12 where pid=@pid 
else if(@action='Fillcat')
Select * from Category
else if(@action='FillTable')
Select pid,pname,catname,price,pqty from Product12 p,Category c where p.catid=c.catid
end
GO
/****** Object:  StoredProcedure [dbo].[save_update]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[save_update]
(@pid int=0,
@pname varchar(20)=null,
@price numeric(6,2)=0.0,
@pqty int=0
)
as
begin
if(@pid=0)
 begin
   insert into product_tbl values(@pname,@price,@pqty);
 end
else
 begin
  update product_tbl set pname=@pname,price=price,pqty=@pqty where pid=@pid
 end


end
GO
/****** Object:  StoredProcedure [dbo].[shop_op]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[shop_op]
(@item_id int=0,
@odid int=0,
@quantity int=0,
@name varchar(20)=null,
@action varchar(20)
)
as
begin

 
if(@action='insert_saleslave')
   begin

        declare @od int
		declare @mrp int
		declare @gst int
		declare @qty int
		select @qty=quantity from item_master where id=@item_id
		select @mrp=mrp from item_master where id=@item_id
		select @gst=gst from item_master where id=@item_id
		select @od=count(*) from sales_master
		if(@od<>0)
        select top 1 @od=or_no from sales_master order by or_no desc
		
	       
        insert into sales_slave values(@od+1,@item_id,@quantity,@mrp,@quantity*@mrp,@gst*@quantity,(@quantity*@mrp)+(@gst*@quantity))
		update item_master set quantity=@qty-@quantity where id=@item_id
   end
else if(@action='insert_sales_master')
  begin
        declare @t_sal int
		declare @t_gst int
		declare @net_sale int
		select @od=count(*) from sales_master
		if(@od<>0)
        select top 1 @od=or_no from sales_master order by or_no desc
	    select @t_sal=sum(total_sales_amount), @t_gst=sum(gst_amount),@net_sale=sum(net_sales) from sales_slave where order_no=@od+1
		
        insert into sales_master values(getdate(),@name,@t_sal,@t_gst,@net_sale)
  end
  else if(@action='filitem')
    select * from item_master
   else if(@action='sales_slave')
	begin
	    
	      
		 
        select top 1 @od=or_no from sales_master order by or_no desc
	
	
		  select * from sales_slave where order_no=@od+1 
	
	  
	end

else if(@action='total_bill')
		begin
	    
			  select @od=count(*) from sales_master
			  if(@od<>0)
			  select top 1 @od=or_no from sales_master order by or_no desc
	
			  select * from sales_master where or_no=@od 
	
	  
		end
  else if(@action='final_sales_slave')
	begin
	    
	      
		  declare @odd int
         select top 1 @odd=or_no from sales_master order by or_no desc
	
		  select * from sales_slave where order_no=@odd
	
	  
	end

 
end



   
GO
/****** Object:  StoredProcedure [dbo].[Sp_CoronaDetails]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--select * from UserDetails 
--select * from CoronaStatus 

CREATE procedure [dbo].[Sp_CoronaDetails](@action varchar(10),@ID int=0,@UserID nvarchar(50)='',@UserName nvarchar(50)='',@Password nvarchar(50)='',@PhoneNo nvarchar(50)='',@Email nvarchar(50)='',
@CoronaID int=0,@PanchyatID int=0,@CitizenName nvarchar(50)='',@AffectedDate date=null,@status int=0,@stateID int=0,@BlockID int=0)
as begin
if @action='Uinsert'
	begin
	--search id not find then insert
	if @ID=0
	insert into UserDetails(UserID,UserName,Password,PhoneNo,Email,CreateDate)
	values(@UserID,@UserName,@Password,@PhoneNo,@Email,GETDATE())
	else
	  begin
	  --check password is avaial or not then update details
		if @Password=''
		begin
	    update UserDetails set UserName=@UserName,PhoneNo=@PhoneNo,Email=@Email where ID=@ID 
		end
		else
		begin
		-- finally udate password here
		update UserDetails set Password=@Password where ID=@ID
		end
	  end
	end
else if @action='USelect'
    begin
	if @Password =''
	select * from UserDetails where UserID=@UserID
	else
	select * from UserDetails where UserID=@UserID and Password=@Password 
    end
else if @action= 'Cinsert'
	begin
	insert into CoronaStatus(PanchyatID,CitizenName,AffectedDate,Status)values(@PanchyatID,@CitizenName,@AffectedDate,@status)
	end
else if @action='Ccount'
	begin
	select s.StateName,count(cs.Status) as Affected,(select count(Status)from CoronaStatus as css inner join Panchyat pa on css.PanchyatID=pa.PanchyatID
	inner join Block as bl on pa.BlockID=bl.BlockID inner join State as st on bl.StateID=st.StateID
	where st.StateID=s.StateID and css.Status=1 group by st.StateID) 
	Death from CoronaStatus cs inner join Panchyat p on cs.PanchyatID=p.PanchyatID  
	inner join Block b on p.BlockID=b.BlockID inner join State s on s.StateID=b.StateID group by s.StateName,s.StateID 
	end
else if @action='Sselect'
begin
select * from State
end
else if @action='Bselect'
begin 
select * from Block where StateID=@stateID 
end
else if @action ='Pselect'
begin
select * from Panchyat where BlockID=@BlockID 
end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_customer]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_customer]
(
@userid varchar(50)=null,
@passwd varchar(50)=null,
@uname varchar(50)=null,
@uadd varchar(max)=null,
@uphone varchar(20)=null,
@uemail varchar(50)=null,
@action varchar(50)
)
as begin
If(@action='adminlogin')
select * from Admin where adminId=@userid and pswd=@passwd
else if(@action='registercustomer')
Insert into Customer(uid,uname,uadd,uphone,uemail,upaswd)
values(@userid,@uname,@uadd,@uphone,@uemail,@passwd)
else if(@action='logincustomer')
select * from Customer where uid=@userid and upaswd=@passwd
else if(@action='forgotpaswd')
select * from Customer where uid=@userid
else if(@action='changepaswd')
update Customer set upaswd=@passwd where uid=@userid
else if(@action='editprofile')
update Customer set uname=@uname,uadd=@uadd,uphone=@uphone,uemail=@uemail where uid=@userid
else if(@action='viewuserdetail')
select uid,uname,uadd,uphone,uemail from Customer where uid=@userid

end
GO
/****** Object:  StoredProcedure [dbo].[SP_DotNet]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[SP_DotNet]
(
@ID int = 0,
@Name Varchar(100) = null,
@Phone Varchar(12) = null,
@Address Varchar(250) = null,
@Action Varchar(100)
)
as
begin
if(@Action = 'Insert')
Insert Into NewDotNet values(@ID,@Name,@Phone,@Address)
else if(@Action = 'Update')
Update NewDotNet Set ID=@ID,Name=@Name,Phone=@Phone,Address=@Address Where ID=@ID
else if(@Action='Delete')
delete from  NewDotNet where ID=@ID 
else if(@Action='All')
Select * From NewDotNet
else if(@Action='SelectOne')
select * from NewDotNet where ID=@ID
end
GO
/****** Object:  StoredProcedure [dbo].[sp_gridview]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_gridview]
(
@rlNo int=0,
@sname varchar(50)=null,
@smark int=0,
@action char(1)
)
as begin
if(@action='I')
Insert into GridView(sname,smark) values(@sname,@smark)
else if(@action='U')
Update GridView set sname=@sname where rlNo=@rlNo
else if(@action='D')
Delete from GridView where rlNo=@rlNo
else if(@action='A')
select * from GridView where rlNo=@rlNo
else if(@action='S')
select * from GridView where rlNo=@rlNo
end
GO
/****** Object:  StoredProcedure [dbo].[sp_OnlineExamAdmin]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_OnlineExamAdmin]
(
@userid varchar(50)='',
@userpassword varchar(50)='',
@techid int =0,
@techname varchar(50)='',
@subid int =0,
@subname varchar(50)='',
@noofque int=0 ,
@timeinminute int=0,
@rules varchar(max)='',
@slno int =0,
@question varchar(max)='',
@opt1 varchar(100)='',
@opt2 varchar(100)='',
@opt3 varchar(100)='',
@opt4 varchar(100)='',
@ans varchar(100)='',
@mode varchar(50)
)
as
begin
if(@mode='adminlogin')
select * from tbl_UserMaster where userid='Admin' and userpassword=@userpassword and userstatus='Active'
else if(@mode='bindallusers')
select u.userid,u.username,u.userphone,u.useremail,t.techname,s.subname,u.userstatus from 
tbl_UserMaster u,tbl_TechnologyMaster t,tbl_SubjectMaster s where t.techid=u.usertechnology and s.subid=u.usersubject and u.userstatus='pending'
and userid<>'Admin' order by userstatus desc
else if(@mode='upduserstatus')
update tbl_UserMaster set userstatus='Active' where userid=@userid
else if(@mode='insuptech')
begin
if(@techid=0)
insert into tbl_TechnologyMaster values(@techname)
else
update tbl_TechnologyMaster set techname=@techname where techid=@techid
end
else if(@mode='insupsub')
begin
if(@subid=0)
insert into tbl_SubjectMaster values(@techid,@subname)
else
update tbl_SubjectMaster set techid=@techid,subname=@subname where subid=@subid
end
else if(@mode='deletetech')
delete from tbl_TechnologyMaster where techid=@techid
else if(@mode='deletesub')
delete from tbl_SubjectMaster where subid=@subid
else if(@mode='bindtech')
select * from tbl_TechnologyMaster
else if(@mode='bindtechbyid')
select * from tbl_TechnologyMaster where techid=@techid
else if(@mode='GetSubjectById')
select * from tbl_SubjectMaster where subid=@subid
else if(@mode='bindSub')
select * from tbl_SubjectMaster where techid=@techid
else if(@mode='insquemaster')
begin
	if(@slno='')
		insert into  tbl_QuestionMaster values(@techid,@subid,@question,@opt1,@opt2,@opt3,@opt4,@ans)
	else
		update tbl_QuestionMaster set techid=@techid,subid=@subid,question=@question,opt1=@opt1,opt2=@opt2,opt3=@opt3,opt4=@opt4,ans=@ans where slno=@slno
end
else if(@mode='getQuestionbyid')
Select * from tbl_QuestionMaster where slno=@slno 
else if(@mode='getallquestion')

Select q.slno,t.techname,s.subname,q.question,q.opt1,q.opt2,q.opt3,q.opt4,q.ans 
from tbl_QuestionMaster q,tbl_SubjectMaster s,tbl_TechnologyMaster t
where q.techid=t.techid and q.subid=s.subid

else if(@mode='deletequestion')

Delete from tbl_QuestionMaster where slno=@slno
else if(@mode='fillsubtable')
Select s.subid,t.techname,s.subname from tbl_SubjectMaster s,tbl_TechnologyMaster t where s.techid=t.techid
else if(@mode='ViewAllResult')
	select distinct um.userid, um.username,tm.techname,sm.subname,rd.doe,
	(select count(rstatus) from  tbl_ResultDetails  where rstatus='true' group by userid) as mark
	from tbl_UserMaster um,tbl_TechnologyMaster tm,tbl_SubjectMaster sm,tbl_ResultDetails rd 
	where um.userid=rd.userid and um.usertechnology=tm.techid and um.usersubject=sm.subid and rd.dstatus='pending'
	
	

	
else if(@mode='approvecertificate')
Update tbl_ResultDetails set dstatus='Active' where userid=@userid
else if(@mode='tbl_SetupMaster_insert')
insert into tbl_SetupMaster values(@noofque,@timeinminute,@rules)



end

select * from tbl_ResultDetails
GO
/****** Object:  StoredProcedure [dbo].[sp_onlineexamsystemadmin]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_onlineexamsystemadmin]
(
@id int =0,
@userid varchar(50)='',
@password varchar(50)='',
@username varchar(50)='',
@userphoneno varchar(50)='',
@useremail varchar(50)='',
@usertechnology varchar(50)='',
@usersubject varchar(50)='',
@status varchar(50)='Pending',
@tid int =0,
@tname varchar(50)='',
@sid int=0 ,
@sname varchar(50)='',
@qid int =0,
@qst varchar(max)='',
@option1 varchar(max)='',
@option2 varchar(max)='',
@option3 varchar(max)='',
@option4 varchar(max)='',
@answer varchar(max)='',
@doe date='',
@optchoose varchar(100)='',
@rstatus varchar(100)='',
@dstatus varchar(100)='',
@noofqst int=0,
@timeinminutes time='',
@rules varchar(50)='',
@action varchar(50)
)
as
begin
if(@action='UserInsert')
insert into usermaster1 values
(@userid,@password,@username,@userphoneno,@useremail,'pnh.jpg','Pending',@usertechnology,@usersubject )
else if( @action='UpdateChange')
	begin
	  --check password is avaial or not then update details//userphone
		if @password=''
		begin
	    update usermaster1 set username=@username,userphoneno=@userphoneno,useremail=@useremail where userid=@userid
		end
		else
		begin
		-- finally udate password here
		update usermaster1 set password=@password where userid=@userid
		end
	end
else if (@action='TechnologyInsert')
begin
insert into technologymaster (tname) values(@tname);
end
	else if (@action='TechnologyUpdate')
begin
update technologymaster set tname=@tname where tid=@tid;
end
else if (@action='TechnologySelect')
begin
select * from technologymaster
end
else if (@action='TechnologySelectByTechnologyId')
begin
select * from technologymaster where tid=@tid
end
else if (@action='TechnologyDelete')
begin
delete from technologymaster  where tid=@tid;
end
else if (@action='SubjectSelect')
begin 
select *  from subjectmaster s left join technologymaster t on s.tid=t.tid
end
else if (@action='SubjectSelectBySubjectId')
begin 
select *  from subjectmaster  where sid=@sid
end
else if (@action='SubjectInsert')
begin
insert into subjectmaster (tid,sname) values(@tid,@sname);
end
else if (@action='SubjectUpdate')
begin
update subjectmaster set tid=@tid,sname=@sname where sid=@sid;
end
else if (@action='SubjectDelete')
begin
delete from subjectmaster where sid=@sid;
end
else if (@action='SubjectSelectByTechId')
begin 
select * from subjectmaster where tid=@tid
end
else if (@action='QuestionSelect')
begin 
select *  from questionmaster q join subjectmaster s on q.sid=s.sid join technologymaster t on t.tid=q.tid
end
else if (@action='QuestionSelectByQuestionId')
begin 
select *  from questionmaster q join subjectmaster s on q.sid=s.sid join technologymaster t on t.tid=q.tid where qid=@qid
end
else if (@action='QuestionInsert')
begin
insert into questionmaster(tid, sid, qst, option1, option2, option3, option4, answer)
values(@tid, @sid, @qst, @option1, @option2, @option3, @option4, @answer);
end
else if (@action='QuestionUpdate')
begin
update questionmaster set tid=@tid,sid=@sid,qst=@qst,option1=@option1,option2=@option2,
option3=@option3,option4=@option4,answer=@answer where qid=@qid;
end
else if (@action='QuestionDelete')
begin
delete from questionmaster where qid=@qid;
end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_op]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_op]
(@quantity int=0,
@id int=0,
@action char(1),
@out varchar(30) out
)
as
begin
if(@action='A')
 begin
 
   if(@quantity<(select qty from prod where id=@id))
     begin
		 declare @qqty int
		 declare @rate int
		 declare @tamount int
		 select @qqty=qty,@rate=rate from prod where id=@id
		 set @tamount=@quantity*@rate
		 insert into tranc values(getdate(),@id,@quantity,@tamount)
		 update prod set qty=@qqty-@quantity where id=@id
		 set @out='success'


	 end
	 else
	  set @out='failed'
end
end




GO
/****** Object:  StoredProcedure [dbo].[sp_order]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_order]
(
@orderId int=0,
@uid varchar(50)=null,
@ostatus varchar(50)=null,
@pid varchar(50)=null,
@qty int=0,
@action varchar(50)
)
as
begin
if(@action='insertorder')
Insert into OrderMaster values(@uid,getdate(),'Under Processing')
else if(@action='insertorderdetail')
	begin
		declare @od int
		select @od=count(*) from OrderMaster
		if(@od<>0)
        select top 1 @od=orderId from OrderMaster where uid=@uid order by orderId desc
		Insert into OrderDetail values(@od,@pid,@qty)
		update Product set pqty=pqty-@qty where pid=@pid								
	end
else if(@action='viewordermaster')
Select * from OrderMaster
else if(@action='viewoderuser')
Select * from OrderMaster where orderId=@orderId
else if(@action='updatestatus')
update OrderMaster set ostatus=@ostatus where orderId=@orderId
else if(@action='viewstatus')
select orderid,uid,dateoford,ostatus from OrderMaster where uid=@uid
else if(@action='vieworderdetails')
select a.pname,d.uphone,d.uadd,d.uemail,c.qty,a.price,(a.price*c.qty) as amount,b.dateOfOrd,B.ostatus,d.uname from Product a,OrderMaster b,OrderDetail c,Customer d 
where a.pid=c.pid and b.orderId=c.orderId and b.uid=d.uid and b.orderId=@orderId
else if(@action='ordedrconfirm')
select b.uid,b.orderId,pname,c.qty,a.price,(a.price*c.qty) as amount,b.dateOfOrd,B.ostatus,d.uname from Product a,OrderMaster b,OrderDetail c,Customer d 
where a.pid=c.pid and b.orderId=c.orderId and b.uid=d.uid and b.uid=@uid
end
GO
/****** Object:  StoredProcedure [dbo].[sp_product]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_product]
(
@pid varchar(50)=null,
@pname varchar(50)=null,
@pdesc varchar(50)=null,
@price numeric(8,2)=null,
@pqty int=0,
@pimage varchar(max)=null,
@action varchar(50)
)
as
begin
if(@action='insertproduct')
Insert into Product(pid,pname,pdesc,price,pqty,pimage)
values(@pid,@pname,@pdesc,@price,@pqty,@pimage)
else if(@action='updateproduct')
Update Product set pname=@pname,pdesc=@pdesc,price=@price,pqty=@pqty,pimage=@pimage where pid=@pid
else if(@action='deleteproduct')
Delete from Product where pid=@pid
else if(@action='selectone')
select * from Product where pid=@pid
else if(@action='selectall')
select * from Product
if(@action='checkproduct')
		select * from Product where pname=@pname
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Product111]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_Product111]
(
@pid int=0,
@pname varchar(50)=null,
@price numeric(8,2)=0.0,
@pqty int=0,
@photo varchar(max)=null,
@action varchar(50)
)
as
begin
if(@action='Insertupdate')
begin
	if(@pid=0)
		Insert into Product111 values(@pname,@price,@pqty,@photo)
	else
		Update Product111 set pname=@pname,price=@price,pqty=@pqty,photo=@photo where pid=@pid
end
else if(@action='Delete')
Delete from Product111 where pid=@pid
else if(@action='Selectall')
Select * from Product111
else if(@action='Selectone')
Select * from Product111 where pid=@pid
end
GO
/****** Object:  StoredProcedure [dbo].[sp_psc]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_psc]
(
@pid int=0,
@pname varchar(50)=null,
@catid int=0,
@subcatid int=0,
@price numeric(8,2)=0.0,
@pqty int=0,
@catname varchar(50)=null,
@subcatname varchar(50)=null,
@action varchar(50)
)
as
begin
if(@action='Insert')
 begin
    if(@pid=0)
	   Insert into Product3 values(@pname,@catid,@subcatid,@price,@pqty)
    else
	  Update Product3 set pname=@pname,catid=@catid,subcatid=@subcatid,price=@price,pqty=@pqty where pid=@pid


 end

else if(@action='Delete')
Delete from Product3 where pid=@pid
else if(@action='SelectOne')
Select pid,pname,catname,subcatname,price,pqty,c.catid,s.subcatid from Product3 p,Category3 c,SubCategory3 s 
where p.catid=c.catid and p.subcatid=s.subcatid and pid=@pid

else if(@action='Fillcat')
Select * from Category3
else if(@action='Fillsubcat')
Select * from SubCategory3 where catid=@catid
else if(@action='Fillsubcatall')
Select * from SubCategory3

else if(@action='FillTable')
Select pid,pname,catname,subcatname,price,pqty from Product3 p,Category3 c,SubCategory3 s where p.catid=c.catid and p.subcatid=s.subcatid

end
GO
/****** Object:  StoredProcedure [dbo].[sp_sales]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[sp_sales]
(
@itemid int=0,
@itemname varchar(50)=null,
@custname varchar(50)=null,
@sqty int=0,
@action varchar(50),
@res int=0 out
)
as
begin
if(@action='fillitem')
select * from ItemMaster
else if(@action='insertslave')
begin
	declare @od int
	declare @mrp int
	declare @gst int
	declare @qty int
	select @qty=qty from ItemMaster where itemid=@itemid
	select @mrp=mrp from ItemMaster where itemid=@itemid
	select @gst=gst from ItemMaster where itemid=@itemid
	if(@qty>=@sqty)
	begin
	Select @od=Count(*) from Sales_master
	if(@od<>0)
	select top 1 @od=orderid from Sales_master order by orderid desc

	Insert into Sales_slave values(@od+1,@itemid,@sqty,@mrp,(@sqty*@mrp),(@sqty*@gst),
    ((@sqty*@mrp)+(@sqty*@gst)))
	update ItemMaster set qty=qty-@sqty where itemid=@itemid
	set @res=2
	end
	else
	set @res=3

end
else if(@action='fillgrid')
begin
	Select @od=Count(*) from Sales_master
	if(@od<>0)
		select top 1 @od=orderid from Sales_master order by orderid desc

	select a.*,b.itemname from Sales_slave a,ItemMaster b where a.orderid=@od+1 and a.itemid=b.itemid



end
else if(@action='insertsmaster')
begin
	declare @totalamnt numeric(8,2)
	declare @totalgst numeric(8,2)
	declare @netamnt numeric(8,2)
	select @od=count(*) from Sales_master
	if(@od<>0)
        select top 1 @od=orderid from Sales_master order by orderid desc
		select @totalamnt=sum(totalsamt), @totalgst=sum(gst),@netamnt=sum(netamt) from Sales_slave where orderid=@od+1
  
    insert into Sales_master values(getdate(),@custname,@totalamnt,@totalgst,@netamnt)
end
else if(@action='fillbillsalesslave')
begin
    select @od=count(*) from Sales_master
	if(@od<>0)
        select top 1 @od=orderid from Sales_master order by orderid desc
	select * from Sales_master where orderid=@od
end



else if(@action='fillgrid1')
begin
	Select @od=Count(*) from Sales_master
	if(@od<>0)
		select top 1 @od=orderid from Sales_master order by orderid desc

	select a.*,b.itemname from Sales_slave a,ItemMaster b where a.orderid=@od and a.itemid=b.itemid



end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_salesproduct]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_salesproduct]
(
@custid int=0,
@pid int=0,
@sqty int=0,
@action varchar(50),
@res int=0 out
)
as
begin
if(@action='fillcustomer')
Select * from Customer_table
else if(@action='fillproduct')
Select * from Product_table
else if(@action='insertsale')
begin
	declare @qty int
	select @qty=pqty from Product_table where pid=@pid
	if(@qty>=@sqty)
	begin
		Insert into Sales_table values(getdate(),@pid,@custid,@sqty)
		Update Product_table set pqty=pqty-@sqty where pid=@pid
		set @res=3
	end
	else
		set @res=4
end
else if(@action='showtale')
Select p.pname,s.sqty from Sales_table s,Product_table p where p.pid=s.pid and s.custid=@custid
end
GO
/****** Object:  StoredProcedure [dbo].[SP_SchoolRegistration]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[SP_SchoolRegistration]
(
@SchoolID int = 0,
@SchoolName Varchar(100) = null,
@SchoolTypeID int = 0,
@SchoolLevel Varchar(50) = null,
@SchoolPhoto Varchar(Max) = null,
@StateID int = 0,
@DistrictID int = 0,
@Action varchar(50)
)
As
Begin
If(@Action='FillState')
Select * From TblState
Else if(@Action='FillDistrict')
Select * From TblDistrict Where StateID=@StateID
Else if(@Action='FillTable')
Select A.SchoolID,B.StateName,C.DistrictName,A.SchoolName,D.SchoolTypeName,A.SchoolLevel,A.SchoolPhoto From TblSchoolRegistration A,TblState B, TblDistrict C, SchoolType D Where A.StateID=B.StateID and A.DistrictID=C.DistrictID and A.SchoolTypeID = D.SchoolTypeID
Else if(@Action='SelectOne')
Select * From TblSchoolRegistration Where SchoolID=@SchoolID
Else if(@Action='InsertOrUpdate')
Begin
If(@SchoolID=0)
insert into TblSchoolRegistration values(@StateID,@DistrictID,@SchoolName,@SchoolTypeID,@SchoolLevel,@SchoolPhoto)
Else
Update TblSchoolRegistration set 
StateID=@StateID,DistrictID=@DistrictID,SchoolName=@SchoolName,SchoolTypeID=@SchoolTypeID,SchoolLevel=@SchoolLevel,SchoolPhoto=@SchoolPhoto Where SchoolID=@SchoolID
End
Else if(@Action='Delete')
Delete From TblSchoolRegistration Where SchoolID=@SchoolID
End
GO
/****** Object:  StoredProcedure [dbo].[sp_user_master_op]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_user_master_op]
(
@userid varchar(20)=null,
@passwd varchar(20)=null,
@username varchar(20)=null,
@useradd varchar(20)=null,
@usergen varchar(20)=null,
@userphone varchar(20)=null,
@useremail varchar(20)=null,
@userdob date=null,
@userphoto varchar(max)=null,
@action char(1)
)
as
begin
if(@action='R')
insert into usermaster
values(@userid,@passwd,@username,@useradd,@usergen,@userphone,@useremail,@userdob,@userphoto)
else if(@action='L')
select * from usermaster where userid=@userid and passwd=@passwd
else if(@action='F')
select * from usermaster where userid=@userid
else if(@action='C')
update usermaster set passwd=@passwd where userid=@userid
else if(@action='E')
update usermaster set useradd=@useradd,usergen=@usergen,userphone=@userphone,useremail=@useremail,userdob=@userdob where 
userid=@userid
end
GO
/****** Object:  StoredProcedure [dbo].[spots]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spots]
(

@Registration_Id int=0,
@Applicant_name varchar(30)=null,
@Email varchar(30)=null,
@Mobile_no varchar(30)=null,
@Gender varchar(30)=null,
@dob date=null,
@image_path varchar(30)=null,
@sport_Id int=0,
@club_id int=0,

@mode varchar(100),
@PMSGOUT varchar(100) output

)
as
begin
  if(@mode='IU')
begin
   
   if(@Registration_Id=0)
       begin
	      
			begin
			   declare @age int;
               set @age=DATEDIFF(year, @dob, getdate())
			   if(@age>13)
				   begin
				   insert into Registration_Details( Applicant_name, Email, Mobile_no, Gender, dob, image_path, club_id, sport_Id)
				   values(@Applicant_name,@Email,@Mobile_no,@Gender,@dob,@image_path,@club_id,@sport_Id)
				   set @PMSGOUT='1';
				   end
				else if(@age<13)
					begin
					set @PMSGOUT='5';
					end

		    end
	   end
   else
	   begin
	 
		   begin
		    declare @agee int;
            set @agee=DATEDIFF(year, @dob, getdate())
		   if(@agee>13)
				   begin
				   update Registration_Details set Applicant_name=@Applicant_name,Email=@Email,Mobile_no=@Mobile_no,Gender=@Gender,dob=@dob,image_path=@image_path,club_id=@club_id,sport_Id=@sport_Id where Registration_Id=@Registration_Id
				   set @PMSGOUT='2';
				   end
			else
			begin  if(@agee<13)
				set @PMSGOUT='5';
				end
		   end
		end
end
else if(@mode='BindClub')
   begin
   select club_Id, club_name  from Club_Master 
   end
   else if(@mode='BindSportByClubId')
   begin
    select sport_Id, sprot_name  from sports_Master where club_id=@club_id
   end

 else if(@mode='BindSpotsByClubIdT')
   begin
   select sport_Id, sprot_name  from sports_Master where club_id=2
   end
else if(@mode='Getall')
   begin
   SELECT        
   Registration_Details.Registration_Id, Registration_Details.club_id, Registration_Details.sport_Id, Club_Master.club_name, sports_Master.sprot_name, Registration_Details.Applicant_name, Registration_Details.Email, 
                         Registration_Details.Mobile_no, Registration_Details.Gender, DATEDIFF(year, Registration_Details.dob, getdate()) AS Age, Registration_Details.dob, Registration_Details.image_path, Registration_Details.Registration_Id, Club_Master.club_Id AS Expr1, 
                         sports_Master.sport_Id AS Expr2
FROM            Registration_Details INNER JOIN
                         Club_Master ON Registration_Details.club_id = Club_Master.club_Id INNER JOIN
                         sports_Master ON Registration_Details.sport_Id = sports_Master.sport_Id
   end

else if(@mode='GetById')
   begin
   SELECT        Registration_Details.club_id, Registration_Details.sport_Id, Club_Master.club_name, sports_Master.sprot_name, Registration_Details.Applicant_name, Registration_Details.Email, 
                         Registration_Details.Mobile_no, Registration_Details.Gender, Registration_Details.dob, Registration_Details.image_path,FORMAT (Registration_Details.dob, 'yyyy-MM-dd') as dob, Registration_Details.Registration_Id, Club_Master.club_Id AS Expr1, 
                         sports_Master.sport_Id AS Expr2
FROM            Registration_Details INNER JOIN
                         Club_Master ON Registration_Details.club_id = Club_Master.club_Id INNER JOIN
                         sports_Master ON Registration_Details.sport_Id = sports_Master.sport_Id where Registration_Id=@Registration_Id
   end

end


SELECT CONVERT(date, '2017-08-25');

SELECT FORMAT (getdate(), 'yyyy-MM-dd')









GO
/****** Object:  StoredProcedure [dbo].[st_op]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[st_op]
(
@id int=0,
@name varchar(20)=null,
@phone varchar(20)=null,
@photo varchar(20)=null,
@gender varchar(20)=null,
@deptid int=0,
@action varchar(20)
)
as
begin
if(@action='saveupdate')
begin
	if(@id=0)
	insert into student1 values(@name,@phone,@photo,@gender,@deptid)
	else
    update student1 set name=@name,phone=@phone,photo=@photo,gender=@gender,deptid=@deptid where id=@id
end
else if(@action='delete')
delete from student1 where id=@id
else if(@action='getall')
SELECT        dbo.student1.deptid, dbo.student1.id, dbo.student1.name, dbo.student1.phone, dbo.student1.photo, dbo.student1.gender, dbo.dept1.deptname
FROM            dbo.dept1 INNER JOIN
                         dbo.student1 ON dbo.dept1.deptid = dbo.student1.deptid
else if(@action='getalldept')
select * from dept1 
else if(@action='getbyid')
SELECT        dbo.student1.deptid, dbo.student1.id, dbo.student1.name, dbo.student1.phone, dbo.student1.photo, dbo.student1.gender, dbo.dept1.deptname
FROM            dbo.dept1 INNER JOIN
                         dbo.student1 ON dbo.dept1.deptid = dbo.student1.deptid where id=@id
end
GO
/****** Object:  StoredProcedure [dbo].[student123]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[student123]
(@regdno varchar(20)=null,
@name varchar(20)=null,
@classid int=0,
@secid int=0,
@action varchar(10),
@res int=0 out
)
as
begin
if(@action='I')
insert into student values(@regdno,@name,@classid,@secid)
else if(@action='A')
select * from student
else if(@action='class')
select * from classmaster
else if(@action='fill')
select st.regdno,st.name,c.classname,s.secname from sectionmaster s,classmaster c,student st where s.sectionid=st.secid and st.classid=c.classid
else if(@action='section')
select * from sectionmaster
else if(@action='check')
		begin
		declare @student int
		declare @capacity int
		select @student=count(*) from student where classid=@classid AND secid=@secid
		select @capacity=capacity from sectionmaster where sectionid=@secid
		if(@student<@capacity)
			set @res=3
		end
end
GO
/****** Object:  StoredProcedure [dbo].[USP_Goldsalary_op]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[USP_Goldsalary_op](
@goldimport [UT_Gold_Tblll] READONLY,
@MsgOut int=0 output,
@month int=0,
@year int=0,
@current_gold_rate_per_gram varchar(20)=null,
@Action varchar(10)
)
as begin
if(@Action='insert')
insert into price_dtls( 
month,
year,
current_gold_rate_per_gram,
product_id,
making_charges_per_gram,
gst,
discount_on_making_charges
)
select 
@month,
@year,
@current_gold_rate_per_gram,
product_id,
making_charges_per_gram,
[gst%],
[discount_on_making_charges%]
from 
@goldimport
set @MsgOut=1
if(@Action='price')
BEGIN
select e.product_id,e.producttyoe,s.month,s.year,e.weight,s.current_gold_rate_per_gram,s.making_charges_per_gram,s.gst,s.discount_on_making_charges from price_dtls s join product_master_xm e on  s.product_id =e.product_id
End
end
GO
/****** Object:  StoredProcedure [dbo].[usp_master_login]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc  [dbo].[usp_master_login]
(@id varchar(20),
@password varchar(20),
@action char(10)
)
as
begin
if(@action='login')
select * from master_user where id=@id and password=@password
end
GO
/****** Object:  StoredProcedure [dbo].[USP_MPL_USER]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[USP_MPL_USER]
(
@UserId int=0,
@UserName varchar(50)=NULL,
@Password varchar(50)=NULL,
@Name varchar(50)=NULL,
@Email varchar(50)=NULL,
@Mobile varchar(50)=NULL,
@Gender varchar(50)=NULL,
@Address varchar(500)=NULL,
@RoleId int=0,


@mode varchar(10),
@PMSGOUT varchar(100) output
)
as
begin
if(@mode='IU')
begin
   if(@UserId=0)
   begin
   insert into M_PL_USER(UserName, Password, Name, Email, Mobile, Gender, Address, RoleId, CreatedOn, CreatedBy)
   values(@UserName,@Password,@Name,@Email,@Mobile,@Gender,@Address,@RoleId,getdate(),@UserId)
   set @PMSGOUT='1';
   end
   else
   begin
   update M_PL_USER set UserName=@UserName,Password=@Password,Name=@Name,Email=@Email,Mobile=@Mobile,Gender=@Gender,Address=@Address,RoleId=@RoleId,UpdatedOn=getdate(),UpdatedBy=@UserId where UserId=@UserId
   set @PMSGOUT='2';
   end
end


 else if(@mode='D')
 begin
 update M_PL_USER set DeletedFlag=1  where UserId=@UserId
 set @PMSGOUT='3';
 end
else if(@mode='S')
 select *  from M_PL_USER where UserId=@UserId
 else if(@mode='A')
 select *  from M_PL_USER where DeletedFlag=0
 
 end

 
 

GO
/****** Object:  StoredProcedure [dbo].[USP_PatientMaster]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[USP_PatientMaster]
	(
	@PatientID [int]=0,
	@Name [varchar](100)=NULL,
	@Gender [varchar](50)=NULL,
	@AgeYear [int]=0,
	@AgeMonth [int]=0,
	@AgeDays [int]=0,
	@Address [varchar](100)= NULL,
	@City [varchar](50)= NULL,
	@Pincode [varchar](50)=NULL,
	@phoneno [varchar](50)=NULL,
	@WhatsAppNo [varchar](50) =NULL,
	@ReferByClientId [int]= NULL,
	@EDate [datetime]= NULL,
	@Status [varchar](10)= NULL,
	@PMSGOUT varchar(100) output,
	@mode varchar(10)
	)
	as
	begin
	if(@mode='IU')
			
			  if(@PatientID=0)
					begin
					insert into tbl_PatientMaster(Name, Gender, AgeYear, AgeMonth, AgeDays, Address, City, Pincode, phoneno, WhatsAppNo, ReferByClientId, EDate, Status, CreatedOn, CreatedBy)
					values(@Name,@Gender,@AgeYear,@AgeMonth,@AgeDays,@Address,@City,@Pincode,@phoneno,@WhatsAppNo,@ReferByClientId,@EDate,@Status,getdate(),@PatientID)
					set @PMSGOUT='1';
					end
			  else 
					begin
						update  tbl_PatientMaster set Name=@Name,Gender=@Gender,AgeYear=@AgeYear,AgeMonth=@AgeMonth,AgeDays=@AgeDays,Address=@Address,
						City=@City,Pincode=@Pincode,phoneno=@phoneno,WhatsAppNo=@WhatsAppNo,
						ReferByClientId=@ReferByClientId,EDate=@EDate,Status=@Status,UpdatedOn=getdate(),UpdatedBy=@PatientID  where PatientID=@PatientID
						set @PMSGOUT='2';
					end

			
	else if(@mode='A')
	select * from  tbl_PatientMaster where DeletedFlag=0
	else if(@mode='S')
	select * from  tbl_PatientMaster  where PatientID=@PatientID
	else if(@mode='D')
	begin
	    update tbl_PatientMaster set DeletedFlag=1  where  PatientID=@PatientID
	    set @PMSGOUT='3';
	 end

	end


GO
/****** Object:  StoredProcedure [dbo].[USP_Slot_Master]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[USP_Slot_Master]
(
@SlotID int=0,
@SlotName varchar(30)=null,
@HospitalID int=0,
@Slot_TimeFrom varchar(50)=null,
@Slot_TimeTo varchar(40)=null,
@UpdatedOn date=null,
@UpdatedBy varchar(50)=null,
@mode varchar(30),
@PMSGOUT varchar(100) output
)
as
begin
		if(@mode='IU')
		begin
		   if(@SlotID=0)
			   begin
					IF Exists (Select 1 from M_PL_Slot_Master where DeletedFlag=0 and Slot_TimeFrom=@Slot_TimeFrom and Slot_TimeTo=@Slot_TimeTo and HospitalID=@HospitalID)
						begin
						   SET @PMSGOUT='4'; 
						end
					else
					begin
					   insert into M_PL_Slot_Master(SlotName, HospitalID, Slot_TimeFrom,Slot_TimeTo,CreatedBy)
					   values(@SlotName,@HospitalID,@Slot_TimeFrom,@Slot_TimeTo,@SlotID)
					   set @PMSGOUT='1';
					end
			   end
		   else
			   begin
			   IF Exists (Select 1 from M_PL_Slot_Master where DeletedFlag=0 AND Slot_TimeFrom=@Slot_TimeFrom and Slot_TimeTo=@Slot_TimeTo and SlotID!=@SlotID)
						begin
						   SET @PMSGOUT='4'; 
						end
				   else
				   begin
					   update M_PL_Slot_Master set SlotName=@SlotName,HospitalID=@HospitalID,Slot_TimeFrom=@Slot_TimeFrom,Slot_TimeTo=@Slot_TimeTo,UpdatedOn=getdate(),UpdatedBy=@SlotID where SlotID=@SlotID
					   set @PMSGOUT='2';
				   end
				end
		end
else if(@mode='D')
	 begin
	 update M_PL_Slot_Master set DeletedFlag=1  where SlotID=@SlotID
	 set @PMSGOUT='3';
	 end
else if(@mode='S')
    select *  from M_PL_Slot_Master where SlotID=@SlotID
 else if(@mode='A')
 begin

 select SlotID, SlotName, HospitalID, Slot_TimeFrom, Slot_TimeTo,DeletedFlag
 from M_PL_Slot_Master where DeletedFlag=0 

 end
 --else if(@mode='Bind')
 --  begin
 --  select RoleId, RoleName  from M_PL_RoleMaster where DeletedFlag=0
 --  end

 
 --end

end
GO
/****** Object:  StoredProcedure [dbo].[USP_tbl_RoleMaster]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[USP_tbl_RoleMaster]
(@RoleId int,
@RoleName varchar(20),
@mode varchar(10),
@PMSGOUT varchar(100) output
)
as 
begin
  if(@mode='IU')
    begin
		if(@RoleId=0)
		begin
			insert into tbl_RoleMaster(RoleName,CreatedBy, UpdatedBy)
			values(@RoleName,@RoleId,@RoleId)
			set @PMSGOUT='1';
		 end
		 else
		 begin
			update tbl_RoleMaster set RoleName=@RoleName,UpdatedBy=@RoleId,UpdatedOn=getDate() where RoleId=@RoleId
			  set @PMSGOUT='2';
		 end
	end
	 else if(@mode='D')
		 begin
		 update tbl_RoleMaster set DeletedFlag=1  where RoleId=@RoleId
		 set @PMSGOUT='3';
		 end
    else if(@mode='S')
           select *  from tbl_RoleMaster where RoleId=@RoleId
    else if(@mode='A')
          select *  from tbl_RoleMaster where DeletedFlag=0
 
end
GO
/****** Object:  StoredProcedure [dbo].[vendor_op]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[vendor_op]
(@itemid int=0,
@vendorid int=0,
@qty int=0,
@quantity int=0,
@price int=0,
@fromdate date=null,
@todate date=null,
@curdate date=null,
@action varchar(10)
)
as
begin
if(@action='fillitem')
select * from item
else if(@action='fillvendor')
select * from vendor
else if(@action='fillgrid')
select r.slno,format(r.dor,'dd-M-yyyy') as dor,v.vendername,i.name,r.qty,r.price from item i,vendor v,Receive r where i.itemid=r.itemid and v.vendorid=r.vendorid 
else if(@action='insert')
		begin
		declare @qt int
		Insert into Receive values(getdate(),@itemid,@vendorid,@qty,@price)
		select @qt=quantity from item where itemid=@itemid
		update item set quantity=@qt+@qty where itemid=@itemid
		end
else if(@action='search')
		begin
		select r.slno,format(r.dor,'dd-M-yyyy') as dor,v.vendername,i.name,r.qty,r.price from item i,vendor v,Receive r where i.itemid=r.itemid and v.vendorid=r.vendorid and r.dor 
		between @fromdate and @todate 
		end
else if(@action='date')
 insert into datee values(@itemid,@curdate)
 

end
GO
/****** Object:  StoredProcedure [dbo].[villagemaster123]    Script Date: 26-06-2023 11:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[villagemaster123]
(
@vid varchar(20)=null,
@vname varchar(20)=null,
@panchayatname varchar(20)=null,
@population varchar(20)=null,
@action varchar(20)
)
as
begin
if(@action='insert')
insert into villagemaster values(@vid,@vname,@panchayatname,@population)
else if(@action='update')
update villagemaster set vname=@vname,panchayatname=@panchayatname,population=@population where vid=@vid

else if(@action='delete')
delete from villagemaster where  vid=@vid
else if(@action='fill')
select * from villagemaster 
else if(@action='selectone')
select * from villagemaster where  vid=@vid

end
GO
