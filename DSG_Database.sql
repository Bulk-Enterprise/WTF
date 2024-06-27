USE [master]
GO
/****** Object:  Database [DSG]    Script Date: 6/27/2024 1:11:38 PM ******/
CREATE DATABASE [DSG]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DSG', FILENAME = N'S:\SQI01\UserData\DSG.mdf' , SIZE = 88616960KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DSG_log', FILENAME = N'S:\SQI01\UserLog\DSG_log.ldf' , SIZE = 10795392KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DSG] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DSG].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DSG] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DSG] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DSG] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DSG] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DSG] SET ARITHABORT OFF 
GO
ALTER DATABASE [DSG] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DSG] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DSG] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DSG] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DSG] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DSG] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DSG] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DSG] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DSG] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DSG] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DSG] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DSG] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DSG] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DSG] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DSG] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DSG] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DSG] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DSG] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DSG] SET  MULTI_USER 
GO
ALTER DATABASE [DSG] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DSG] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DSG] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DSG] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DSG] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DSG] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DSG] SET QUERY_STORE = OFF
GO
USE [DSG]
GO
/****** Object:  User [svcPInfoConnector]    Script Date: 6/27/2024 1:11:39 PM ******/
CREATE USER [svcPInfoConnector] FOR LOGIN [svcPInfoConnector] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [svcpDue2ShipDev]    Script Date: 6/27/2024 1:11:39 PM ******/
CREATE USER [svcpDue2ShipDev] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [svcpDue2Ship]    Script Date: 6/27/2024 1:11:39 PM ******/
CREATE USER [svcpDue2Ship] FOR LOGIN [svcpDue2Ship] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [svcdDue2Ship]    Script Date: 6/27/2024 1:11:39 PM ******/
CREATE USER [svcdDue2Ship] FOR LOGIN [svcdDue2Ship] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ndx\vtan]    Script Date: 6/27/2024 1:11:39 PM ******/
CREATE USER [ndx\vtan] FOR LOGIN [ndx\vtan] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [NDX\SQL-MNEPRSSQL07-ReadWrite]    Script Date: 6/27/2024 1:11:39 PM ******/
CREATE USER [NDX\SQL-MNEPRSSQL07-ReadWrite] FOR LOGIN [NDX\SQL-MNEPRSSQL07-ReadWrite]
GO
/****** Object:  User [NDX\SQL-MNEPRSSQL07-ReadOnly]    Script Date: 6/27/2024 1:11:39 PM ******/
CREATE USER [NDX\SQL-MNEPRSSQL07-ReadOnly] FOR LOGIN [NDX\SQL-MNEPRSSQL07-ReadOnly]
GO
/****** Object:  User [NDX\RElderadmin]    Script Date: 6/27/2024 1:11:39 PM ******/
CREATE USER [NDX\RElderadmin] FOR LOGIN [NDX\RElderadmin] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ndx\LSaund]    Script Date: 6/27/2024 1:11:39 PM ******/
CREATE USER [ndx\LSaund] FOR LOGIN [ndx\LSaund] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ndx\ffetrat]    Script Date: 6/27/2024 1:11:39 PM ******/
CREATE USER [ndx\ffetrat] FOR LOGIN [ndx\ffetrat] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ndx\aqi]    Script Date: 6/27/2024 1:11:39 PM ******/
CREATE USER [ndx\aqi] FOR LOGIN [ndx\aqi] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [LinkUserTSQL40]    Script Date: 6/27/2024 1:11:39 PM ******/
CREATE USER [LinkUserTSQL40] FOR LOGIN [LinkUserTSQL40] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [LinkUserPSQL03]    Script Date: 6/27/2024 1:11:39 PM ******/
CREATE USER [LinkUserPSQL03] FOR LOGIN [LinkUserPSQL03] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [LinkUserDSQL42]    Script Date: 6/27/2024 1:11:39 PM ******/
CREATE USER [LinkUserDSQL42] FOR LOGIN [LinkUserDSQL42] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [LinkUserDSQL03]    Script Date: 6/27/2024 1:11:39 PM ******/
CREATE USER [LinkUserDSQL03] FOR LOGIN [LinkUserDSQL03] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [LinkUserDSGSQL04]    Script Date: 6/27/2024 1:11:39 PM ******/
CREATE USER [LinkUserDSGSQL04] FOR LOGIN [LinkUserDSGSQL04] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [CrossServerRW]    Script Date: 6/27/2024 1:11:39 PM ******/
CREATE USER [CrossServerRW] FOR LOGIN [CrossServerRW] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_datareader] ADD MEMBER [svcPInfoConnector]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [svcPInfoConnector]
GO
ALTER ROLE [db_datareader] ADD MEMBER [svcpDue2ShipDev]
GO
ALTER ROLE [db_datareader] ADD MEMBER [svcpDue2Ship]
GO
ALTER ROLE [db_datareader] ADD MEMBER [svcdDue2Ship]
GO
ALTER ROLE [db_datareader] ADD MEMBER [ndx\vtan]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [ndx\vtan]
GO
ALTER ROLE [db_datareader] ADD MEMBER [NDX\SQL-MNEPRSSQL07-ReadWrite]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [NDX\SQL-MNEPRSSQL07-ReadWrite]
GO
ALTER ROLE [db_datareader] ADD MEMBER [NDX\SQL-MNEPRSSQL07-ReadOnly]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [NDX\SQL-MNEPRSSQL07-ReadOnly]
GO
ALTER ROLE [db_datareader] ADD MEMBER [NDX\RElderadmin]
GO
ALTER ROLE [db_datareader] ADD MEMBER [ndx\LSaund]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [ndx\LSaund]
GO
ALTER ROLE [db_datareader] ADD MEMBER [ndx\ffetrat]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [ndx\ffetrat]
GO
ALTER ROLE [db_datareader] ADD MEMBER [ndx\aqi]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [ndx\aqi]
GO
ALTER ROLE [db_datareader] ADD MEMBER [LinkUserTSQL40]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [LinkUserTSQL40]
GO
ALTER ROLE [db_datareader] ADD MEMBER [LinkUserPSQL03]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [LinkUserPSQL03]
GO
ALTER ROLE [db_datareader] ADD MEMBER [LinkUserDSQL42]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [LinkUserDSQL42]
GO
ALTER ROLE [db_datareader] ADD MEMBER [LinkUserDSQL03]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [LinkUserDSQL03]
GO
ALTER ROLE [db_datareader] ADD MEMBER [LinkUserDSGSQL04]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [CrossServerRW]
GO
ALTER ROLE [db_datareader] ADD MEMBER [CrossServerRW]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [CrossServerRW]
GO
/****** Object:  Table [dbo].[USERDEFINEDFIELDDATA]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERDEFINEDFIELDDATA](
	[USERDEFINEDFIELDDATAID] [int] NULL,
	[USERDEFINEDFIELDID] [int] NULL,
	[KEYFIELDDATA] [varchar](20) NULL,
	[DATA] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOCTORS]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOCTORS](
	[DOCTORID] [varchar](20) NULL,
	[LICENSE] [varchar](20) NULL,
	[FIRSTNAME] [varchar](40) NULL,
	[LASTNAME] [varchar](40) NULL,
	[ADDRESS1] [varchar](40) NULL,
	[ADDRESS2] [varchar](40) NULL,
	[CITY] [varchar](30) NULL,
	[COUNTY] [varchar](30) NULL,
	[STATE] [varchar](10) NULL,
	[ZIPCODE] [char](10) NULL,
	[COUNTRY] [varchar](30) NULL,
	[WORKPHONE] [char](20) NULL,
	[PRIVATEPHONE] [char](20) NULL,
	[FAXPHONE] [char](20) NULL,
	[OTHERPHONE] [char](20) NULL,
	[DELIVERYMETHOD] [varchar](40) NULL,
	[ROUTE] [varchar](20) NULL,
	[TERRITORYID] [varchar](20) NULL,
	[SALESPERSONID] [varchar](20) NULL,
	[COMMISSIONLEVEL] [int] NULL,
	[DATEOFFIRSTCASE] [datetime] NULL,
	[DATEOFLASTCASE] [datetime] NULL,
	[ACCOUNTNUMBER] [varchar](20) NULL,
	[PREVIOUSLYEXPORTED] [decimal](19, 4) NULL,
	[BILLTO] [varchar](20) NULL,
	[BILLPERIOD] [int] NULL,
	[PRINTONINVOICE] [varchar](40) NULL,
	[PRICELISTID] [varchar](20) NULL,
	[CREDITLIMIT] [decimal](19, 4) NULL,
	[SERVICECHARGE] [numeric](5, 2) NULL,
	[PROMPTDISCOUNT] [numeric](5, 2) NULL,
	[CODONLY] [int] NULL,
	[ACTIVE] [int] NULL,
	[CREDITCARDFREQUENCY] [int] NULL,
	[CREDITCARDBILLDAY] [int] NULL,
	[DISCOUNTID] [varchar](20) NULL,
	[LASTPAYMENTID] [int] NULL,
	[LASTPAYMENTDATE] [datetime] NULL,
	[LASTPAYMENTAMOUNT] [decimal](19, 4) NULL,
	[NEWINVOICES] [decimal](19, 4) NULL,
	[NEWTAXES] [decimal](19, 4) NULL,
	[NEWPAYMENTS] [decimal](19, 4) NULL,
	[NEWCREDITS] [decimal](19, 4) NULL,
	[NEWDEBITS] [decimal](19, 4) NULL,
	[CURRENTCHARGES] [decimal](19, 4) NULL,
	[PASTDUE30] [decimal](19, 4) NULL,
	[PASTDUE60] [decimal](19, 4) NULL,
	[PASTDUE90] [decimal](19, 4) NULL,
	[PASTDUE120] [decimal](19, 4) NULL,
	[PASTDUE150] [decimal](19, 4) NULL,
	[PASTDUE180] [decimal](19, 4) NULL,
	[LASTMODIFIEDBY] [varchar](30) NULL,
	[LASTMODIFIEDTIME] [datetime] NULL,
	[MARKETINGID] [int] NULL,
	[ADDRESS3] [varchar](40) NULL,
	[BILLADDRESS1] [varchar](40) NULL,
	[BILLADDRESS2] [varchar](40) NULL,
	[BILLADDRESS3] [varchar](40) NULL,
	[BILLCITY] [varchar](30) NULL,
	[BILLSTATE] [varchar](10) NULL,
	[BILLZIPCODE] [char](10) NULL,
	[BILLCOUNTRY] [varchar](30) NULL,
	[COMMENTS] [text] NULL,
	[CYCLECODE] [varchar](10) NULL,
	[ISBILLTO] [int] NULL,
	[FACILITYID] [varchar](20) NULL,
	[WHOENTERED] [varchar](30) NULL,
	[NEVERONCOD] [int] NULL,
	[PLACEDONCODDATETIME] [datetime] NULL,
	[CODREMARKS] [varchar](50) NULL,
	[EMAIL] [varchar](100) NULL,
	[PRACTICENAME] [varchar](60) NULL,
	[CARRIERID] [varchar](20) NULL,
	[SKILLLEVEL] [int] NULL,
	[CUSTOMERTYPEID] [varchar](20) NULL,
	[NOCASEENTRY] [int] NULL,
	[PRACTICEGROUPID] [int] NULL,
	[WHENENTERED] [datetime] NULL,
	[UNAPPLIED] [decimal](19, 4) NULL,
	[PAYMENTMETHOD] [int] NULL,
	[TEAMID] [varchar](20) NULL,
	[USEINTERNATIONALPHONENUMBERS] [int] NULL,
	[SCHOOLGRADUATED] [varchar](30) NULL,
	[DATEGRADUATED] [datetime] NULL,
	[PREPTYPEID] [varchar](20) NULL,
	[CAMPAIGNID] [int] NULL,
	[CASEHISTORYTYPEID] [varchar](20) NULL,
	[DATECONTACTED] [datetime] NULL,
	[DATEEXPIRED] [datetime] NULL,
	[CONTACT] [varchar](30) NULL,
	[OFFICEHOURS] [varchar](20) NULL,
	[SPECIALITYTYPEID] [varchar](20) NULL,
	[PROSPECTID] [int] NULL,
	[NOOFASSISTANTS] [int] NULL,
	[NOOFOPERATORIES] [int] NULL,
	[NOOFFRONTOFFICES] [int] NULL,
	[NOOFHYGIENISTS] [int] NULL,
	[NOOFFLOATERS] [int] NULL,
	[RECEIVABLESCOMMENTS] [text] NULL,
	[MARKETINGCOMMENTS] [text] NULL,
	[PRODUCTIONCOMMENTS] [text] NULL,
	[MANAGERSCOMMENTS] [text] NULL,
	[KEEPLEDGERFORSUBACCOUNT] [int] NULL,
	[NOPREPAIDSHIPPING] [int] NULL,
	[NEWCHARGES] [decimal](19, 4) NULL,
	[CURRENCYID] [int] NULL,
	[PROSPECT] [int] NULL,
	[CREDITHOLD] [int] NULL,
	[NOTIFICATIONPREFERENCE] [int] NULL,
	[PASSWORD] [varchar](20) NULL,
	[VOLUMEDISCOUNTID] [int] NULL,
	[TAXEXEMPT] [int] NULL,
	[RECID] [int] NULL,
	[EIN] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[v_dCustomerSales_Source]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_dCustomerSales_Source] AS

SELECT
	[DoctorID]		= d.DoctorID,
	[Source]			= udfs.Data,
	[SourceName]	= udfn.Data
FROM dbo.Doctors	d
JOIN dbo.UserDefinedFieldData	udfs ON udfs.keyFieldData = d.DoctorID AND udfs.UserDefinedFieldID = 15
JOIN dbo.UserDefinedFieldData	udfn ON udfn.keyFieldData = d.DoctorID AND udfn.UserDefinedFieldID = 16
GO
/****** Object:  Table [dbo].[V4PRICELIST]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[V4PRICELIST](
	[ID] [int] NULL,
	[KEY] [nvarchar](255) NULL,
	[NAME] [nvarchar](255) NULL,
	[DESCRIPTION] [ntext] NULL,
	[GUID] [char](36) NULL,
	[CREATED] [datetime] NULL,
	[CREATEDBY] [int] NULL,
	[MODIFIED] [datetime] NULL,
	[MODIFIEDBY] [int] NULL,
	[TIMESTAMP] [binary](8) NULL,
	[FACILITYID] [int] NULL,
	[LISTORDER] [nvarchar](50) NULL,
	[PRICEGROUPID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[V4PRICELISTSET]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[V4PRICELISTSET](
	[ID] [int] NULL,
	[PRICELISTID] [int] NULL,
	[ACTIVE] [int] NULL,
	[EFFECTIVEDATEUTC] [datetime] NULL,
	[DISCONTINUEDDATEUTC] [datetime] NULL,
	[CREATED] [datetime] NULL,
	[CREATEDBY] [int] NULL,
	[MODIFIED] [datetime] NULL,
	[MODIFIEDBY] [int] NULL,
	[TIMESTAMP] [binary](8) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[V4PRICELISTSETITEM]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[V4PRICELISTSETITEM](
	[ID] [int] NULL,
	[PRICELISTSETID] [int] NULL,
	[PRODUCTID] [int] NULL,
	[PRICE] [decimal](19, 4) NULL,
	[OVERRIDEOBJECTTYPE] [int] NULL,
	[OVERRIDEOBJECTID] [int] NULL,
	[CREATED] [datetime] NULL,
	[CREATEDBY] [int] NULL,
	[MODIFIED] [datetime] NULL,
	[MODIFIEDBY] [int] NULL,
	[TIMESTAMP] [binary](8) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[V4LEGACYPRODUCT]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[V4LEGACYPRODUCT](
	[ID] [int] NULL,
	[KEY] [varchar](20) NULL,
	[PRODUCTID] [varchar](20) NULL,
	[DESCRIPTION] [varchar](40) NULL,
	[TICKETDESCRIPTION] [varchar](40) NULL,
	[OLDPRODUCTID] [varchar](20) NULL,
	[PRODUCTTYPEID] [varchar](20) NULL,
	[MAJORGROUPID] [varchar](20) NULL,
	[MINORGROUPID] [varchar](20) NULL,
	[DEPARTMENTID] [varchar](20) NULL,
	[SUBDEPARTMENTID] [varchar](20) NULL,
	[UNITGROUPID] [varchar](20) NULL,
	[UNITVALUE] [float] NULL,
	[ROYALTYID] [varchar](20) NULL,
	[ACCOUNTINGCATEGORY] [varchar](10) NULL,
	[PREVIOUSLYEXPORTED] [decimal](19, 4) NULL,
	[METAL] [int] NULL,
	[VARIABLEPRICE] [int] NULL,
	[ANALYZE] [int] NULL,
	[DISCOUNTABLE] [int] NULL,
	[REMAKEDISCOUNT] [int] NULL,
	[SPLIT] [int] NULL,
	[DISCONTINUED] [int] NULL,
	[TAXABLE] [int] NULL,
	[SPLITDOLLARS] [decimal](19, 4) NULL,
	[COST] [decimal](19, 4) NULL,
	[MARKUP] [numeric](5, 2) NULL,
	[LASTTASK] [varchar](20) NULL,
	[LASTMODIFIEDBY] [varchar](30) NULL,
	[LASTMODIFIEDTIME] [datetime] NULL,
	[ZEROPRICED] [int] NULL,
	[ISSHIPPROD] [int] NULL,
	[LABORPERCENT] [numeric](5, 2) NULL,
	[MATERIALSPERCENT] [numeric](5, 2) NULL,
	[INVOICENOTES] [text] NULL,
	[DATEDISCONTINUED] [datetime] NULL,
	[WHODISCONTINUED] [varchar](30) NULL,
	[ADAPRODUCTID] [varchar](20) NULL,
	[ADADESCRIPTION] [varchar](40) NULL,
	[RECID] [int] NULL,
	[DONTSHOWONWT] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[fPriceChangeCatalog]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE VIEW [dbo].[fPriceChangeCatalog]
AS

/**********************************************************************************************
View Name: dbo.fPriceChangeCatalog
Created Date: 01/19/2022
Created By: Jeff Showalter
Modified Date: 02/14/2022
Modified By: Jeff Showalter

Testing
Select * from dbo.fPriceChangeCatalog
where PriceListName =  '15_LIST113NEW'
and ProductID = 'AARGEBOND80'-- This is where you would enter the Price List name (in between ' ')and P.ProductID = 'CBPOST'  --Looking at a single product.
order by ProductID, UpdateDate, UpdateType, SetID

Select PriceListID, ProductID, count(*) from dbo.fPriceChangeCatalog
group by PriceListID, ProductID
having count(*) = 1

Notes:
01/19/2022 - View created for ease of use with mapping into dPriceList and dPriceListProduct
01/24/2022 - Modified view to match MT setup for both first and last updates to a product
02/14/2022 - Removed date filter left in testing for 12/01/2021 from insert portion.
02/18/2022 - Removed Insert portion to return 1 result per product

**********************************************************************************************/

With CTE AS
(SELECT PriceListID = pl.Id,  PriceListName = PL.Name, PriceListKey = pl.[Key]
, PriceListDescription = pl.Description, pl.ListOrder, SetID = S.Id, CAST(S.EFFECTIVEDATEUTC as datetime) as EffectiveDateUTC
, CAST(S.DiscontinuedDateUTC as Datetime) as DiscontinuedDateUTC, P.ProductID, P.Description, I.Price, P.Discontinued
, Date = CONVERT(CHAR(10),EffectiveDateUTC, 101)+ ' To ' + CONVERT(CHAR(10),DiscontinuedDateUTC, 101)
FROM V4PriceList pl
JOIN V4PriceListSet S ON PL.Id = S.PriceListId
JOIN V4PriceListSetItem I ON S.Id = I.PriceListSetId
JOIN V4LegacyProduct P ON I.ProductID = P.Id
/*For Testing*/
--Where CAST(EFFECTIVEDATEUTC as date) >= '2021-12-01' -- '12/31/2021' < DISCONTINUEDDATEUTC
--where PL.Name =  '15_LIST113NEW'  -- This is where you would enter the Price List name (in between ' ')
--and P.ProductID = 'AARGEBOND80'  --Looking at a single product.
)

/*
SELECT  pl.Id as PriceListID 
, PL.Name as PriceListName 
, pl.[Key] as PriceListKey 
, PriceListDescription = CAST(pl.Description as varchar(max))
, pl.ListOrder
, S.Id as SetID 
, S.EffectiveDateUTC as UpdateDate
--, S.DiscontinuedDateUTC
, P.ProductID
, P.Description as ProductDescription 
, I.Price
, P.Discontinued
,'Insert' as UpdateType
--, RangedDate = CONVERT(CHAR(10),EffectiveDateUTC, 101)+ ' To ' + CONVERT(CHAR(10),DiscontinuedDateUTC, 101)

FROM V4PriceList pl
JOIN V4PriceListSet S ON PL.Id = S.PriceListId
JOIN V4PriceListSetItem I ON S.Id = I.PriceListSetId
JOIN V4LegacyProduct P ON I.ProductID = P.Id
JOIN (Select PriceListID, PriceListName, PriceListKey, Min(SetID) as SetID, MIN(EffectiveDateUTC)as UpdateDate, ProductID
		FROM CTE GROUP BY PriceListID, PriceListName, PriceListKey,ProductID)as SEL 
			ON pl.Id = SEL.PriceListID 
			and PL.Name = SEL.PriceListName and  pl.[Key] = SEL.PriceListKey 
			and S.Id = SEL.SetID and P.ProductID = SEL.ProductID
			and S.EffectiveDateUTC = SEL.UpdateDate

UNION all
*/

SELECT  pl.Id as PriceListID 
, PL.Name as PriceListName 
, pl.[Key] as PriceListKey 
, PriceListDescription = CAST(pl.Description as varchar(max))
, pl.ListOrder
, S.Id as SetID 
, S.EffectiveDateUTC as UpdateDate
--, S.DiscontinuedDateUTC
, P.ProductID
, P.Description as ProductDescription 
, I.Price
, P.Discontinued
,'Update = ' + Cast(I.PRICE as varchar(50)) as UpdateType
--, RangedDate = CONVERT(CHAR(10),EffectiveDateUTC, 101)+ ' To ' + CONVERT(CHAR(10),DiscontinuedDateUTC, 101)

FROM V4PriceList pl
JOIN V4PriceListSet S ON PL.Id = S.PriceListId
JOIN V4PriceListSetItem I ON S.Id = I.PriceListSetId
JOIN V4LegacyProduct P ON I.ProductID = P.Id
JOIN (Select PriceListID, PriceListName, PriceListKey, Max(SetID) as SetID, Max(EffectiveDateUTC)as UpdateDate, ProductID
		FROM CTE GROUP BY PriceListID, PriceListName, PriceListKey,ProductID)as SEL 
			ON pl.Id = SEL.PriceListID 
			and PL.Name = SEL.PriceListName and  pl.[Key] = SEL.PriceListKey 
			and S.Id = SEL.SetID and P.ProductID = SEL.ProductID
			and S.EffectiveDateUTC = SEL.UpdateDate

			/*For Testing*/
--order by 2,3, 8,9,7, 12, 6
GO
/****** Object:  Table [dbo].[CASES]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CASES](
	[CASEID] [int] NULL,
	[DOCTORID] [varchar](20) NULL,
	[DATAYEAR] [int] NULL,
	[OLDCASEID] [int] NULL,
	[PATIENTFIRST] [varchar](40) NULL,
	[PATIENTLAST] [varchar](40) NULL,
	[PATIENTAGE] [int] NULL,
	[PATIENTSEX] [char](1) NULL,
	[REMAKEOF] [int] NULL,
	[SHIPDATE] [datetime] NULL,
	[DATEIN] [datetime] NULL,
	[TRYINDATE] [datetime] NULL,
	[DUEDATE] [datetime] NULL,
	[CURRENTTASK] [varchar](20) NULL,
	[CURRENTTASKORDER] [int] NULL,
	[PANNUMBER] [varchar](50) NULL,
	[SHADE] [varchar](255) NULL,
	[PRESCRIPTION] [varchar](30) NULL,
	[MOULD] [varchar](20) NULL,
	[CASESTATUSREASON] [varchar](255) NULL,
	[FINISH] [int] NULL,
	[ROUTE] [varchar](20) NULL,
	[DRIVER] [varchar](20) NULL,
	[TIMEOFDELIVERY] [varchar](20) NULL,
	[DATETIMECASELEFT] [datetime] NULL,
	[TIMETWO] [varchar](20) NULL,
	[BILLTO] [varchar](20) NULL,
	[BILLPERIOD] [int] NULL,
	[DATEINVOICED] [datetime] NULL,
	[DATEBILLED] [datetime] NULL,
	[DISCOUNTID] [varchar](20) NULL,
	[DISCOUNTPERCENT] [numeric](5, 2) NULL,
	[FULLCHARGE] [decimal](19, 4) NULL,
	[DISCOUNTGIVEN] [decimal](19, 4) NULL,
	[REMAKEDISCOUNTGIVEN] [decimal](19, 4) NULL,
	[TOTALCHARGE] [decimal](19, 4) NULL,
	[TOTALTAX] [decimal](19, 4) NULL,
	[WHOENTERED] [varchar](30) NULL,
	[WHENENTERED] [datetime] NULL,
	[WHOINVOICED] [varchar](30) NULL,
	[LASTMODIFIEDBY] [varchar](30) NULL,
	[LASTMODIFIEDTIME] [datetime] NULL,
	[TYPE] [int] NULL,
	[PAID] [int] NULL,
	[COMMENTS] [text] NULL,
	[INVOICENOTES] [text] NULL,
	[CASECONTACTS] [text] NULL,
	[LINKTO] [int] NULL,
	[SSN] [varchar](50) NULL,
	[RUSH] [int] NULL,
	[DELIVERYMETHOD] [varchar](40) NULL,
	[WEIGHT] [float] NULL,
	[CHARGE] [decimal](19, 4) NULL,
	[TRACKINGNUM] [varchar](100) NULL,
	[DOCSHIPADDRID] [int] NULL,
	[ARTICULATOR] [varchar](20) NULL,
	[CASELOCATION] [varchar](255) NULL,
	[ORIGINFACILITY] [varchar](20) NULL,
	[REMAKEID] [varchar](20) NULL,
	[INVOICENOTE] [varchar](20) NULL,
	[LOCK] [int] NULL,
	[BEENINGLEXPORT] [int] NULL,
	[INSTRUCTIONS] [text] NULL,
	[CARRIERID] [varchar](20) NULL,
	[RESCHEDULECASE] [int] NULL,
	[CASESTATUSID] [int] NULL,
	[SURCHARGEID] [varchar](20) NULL,
	[SURCHARGEADDED] [decimal](19, 4) NULL,
	[PAIDINFULL] [int] NULL,
	[TEAMID] [varchar](20) NULL,
	[SKILLLEVEL] [int] NULL,
	[CAMPAIGNID] [int] NULL,
	[DOCTORCAMPAIGNID] [int] NULL,
	[REASONID] [int] NULL,
	[USEREMAKEPERCENT] [int] NULL,
	[USEDISCOUNTPERCENT] [int] NULL,
	[USESURCHARGEPERCENT] [int] NULL,
	[ISSPECIALREMAKE] [int] NULL,
	[ISSPECIALDISCOUNT] [int] NULL,
	[ISSPECIALSURCHARGE] [int] NULL,
	[REMAKEPERCENT] [numeric](5, 2) NULL,
	[SURCHARGEPERCENT] [numeric](5, 2) NULL,
	[WASANESTIMATE] [int] NULL,
	[SPECIALACTIONID] [int] NULL,
	[SCHEDULINGTYPE] [int] NULL,
	[RUSHID] [int] NULL,
	[SHIPADDRESSLINE1] [varchar](40) NULL,
	[SHIPADDRESSLINE2] [varchar](40) NULL,
	[SHIPADDRESSCITY] [varchar](50) NULL,
	[SHIPADDRESSSTATE] [varchar](50) NULL,
	[SHIPADDRESSZIPCODE] [char](10) NULL,
	[SHIPADDRESSCOUNTRY] [varchar](50) NULL,
	[CARRIERROUTECODE] [varchar](20) NULL,
	[ALTERNATECASEID] [int] NULL,
	[REMOTECASEID] [int] NULL,
	[NOCREDITINVOICING] [int] NULL,
	[PREPAIDSHIPMENTNUMBERID] [int] NULL,
	[WASTYPE] [int] NULL,
	[ASSOCIATEDOCTORID] [int] NULL,
	[SHIPPINGFACILITYID] [varchar](20) NULL,
	[EXCHANGERATEID] [int] NULL,
	[RECEIVABLETRANSACTIONID] [int] NULL,
	[AUTOSHIPMENT] [int] NULL,
	[SYNCID] [char](36) NULL,
	[ONHOLD] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CASEPRODUCTS]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CASEPRODUCTS](
	[CASEID] [int] NULL,
	[LISTORDER] [int] NULL,
	[PRODUCTID] [varchar](20) NULL,
	[UNITPRICE] [decimal](19, 4) NULL,
	[QUANTITY] [numeric](11, 5) NULL,
	[REMAKEID] [varchar](20) NULL,
	[TEETH] [int] NULL,
	[TOOTHSTR] [varchar](100) NULL,
	[DISCOUNTGIVEN] [decimal](19, 4) NULL,
	[REMAKEDISCOUNTGIVEN] [decimal](19, 4) NULL,
	[PROD_FAC] [varchar](20) NULL,
	[TEETHUPPERDESIGN] [varchar](70) NULL,
	[TEETHLOWERDESIGN] [varchar](70) NULL,
	[DISCOUNTID] [varchar](20) NULL,
	[ISSPECIALDISCOUNTED] [int] NULL,
	[ORIGINFACILITY] [varchar](20) NULL,
	[ISSPECIALPRICED] [int] NULL,
	[TAGALONGSTATUS] [int] NULL,
	[TAGALONGLISTORDER] [int] NULL,
	[CASEPRODUCTID] [int] NULL,
	[CASEPANID] [int] NULL,
	[SURCHARGEID] [varchar](20) NULL,
	[SURCHARGEADDED] [decimal](19, 4) NULL,
	[LINKTO] [int] NULL,
	[TOTALCHARGE] [decimal](19, 4) NULL,
	[REASONID] [int] NULL,
	[USEREMAKEPERCENT] [int] NULL,
	[USEDISCOUNTPERCENT] [int] NULL,
	[USESURCHARGEPERCENT] [int] NULL,
	[ISSPECIALREMAKE] [int] NULL,
	[ISSPECIALDISCOUNT] [int] NULL,
	[ISSPECIALSURCHARGE] [int] NULL,
	[REMAKEPERCENT] [decimal](19, 4) NULL,
	[DISCOUNTPERCENT] [decimal](19, 4) NULL,
	[SURCHARGEPERCENT] [decimal](19, 4) NULL,
	[PRODUCTSCHEDULETYPEID] [int] NULL,
	[WHENENTERED] [datetime] NULL,
	[CURRENCYID] [int] NULL,
	[FOREIGNCURRENCYUNITPRICE] [decimal](19, 4) NULL,
	[FOREIGNCURRENCYREMAKEPERCENT] [decimal](19, 4) NULL,
	[FOREIGNCURRENCYDISCOUNTPERCENT] [decimal](19, 4) NULL,
	[FOREIGNCURRENCYSURCHARGEPERCENT] [decimal](19, 4) NULL,
	[PRICELISTID] [nvarchar](255) NULL,
	[PRICELISTUNITPRICE] [decimal](19, 4) NULL,
	[ISVARIABLEPRICED] [int] NULL,
	[ISBRIDGE] [int] NULL,
	[TOTALTAX] [decimal](19, 4) NULL,
	[CREDITINVOICEAMOUNT] [decimal](19, 4) NULL,
	[CREDITINVOICEQUANTITY] [numeric](11, 5) NULL,
	[RESTORATIONDATAID] [int] NULL,
	[SHADE] [varchar](255) NULL,
	[ADJUSTEDQUANTITY] [numeric](11, 5) NULL,
	[METALBAND] [varchar](255) NULL,
	[PRODUCTDESCRIPTION] [varchar](255) NULL,
	[LASTCHECKSUM] [int] NULL,
	[TAGALONGID] [int] NULL,
	[WHOENTERED] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[CP_DigitalScanner]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE view  [dbo].[CP_DigitalScanner] as


SELECT
	c.CaseID,
	ds.NDXScannerValue
FROM DSG.dbo.Cases								c
JOIN DSG.dbo.CaseProducts						cp ON c.CaseID = cp.CaseID
JOIN ETL_SUPPORT.dbo.map_DSG_DigitalScanning	ds ON cp.ProductID = ds.DSGScannerValue
WHERE	c.DateInvoiced IS NULL
		OR YEAR(c.DateInvoiced) * 100 + MONTH(c.DateInvoiced) >= 201901


--SELECT
--CaseID,
--NDXScannerValue
--FROM dsg.dbo.ProductSalesHistory psh
--JOIN ETL_SUPPORT.dbo.map_DSG_DigitalScanning ds ON psh.PRODUCTID = ds.DSGScannerValue
--WHERE InvoiceDate IS NULL
--OR YEAR(InvoiceDate) * 100 + MONTH(InvoiceDate) >= 201901
GO
/****** Object:  View [dbo].[vf_PL_Product_Catalog]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE View [dbo].[vf_PL_Product_Catalog]

AS
/*
Name: vf_PL_Product_Catalog
Created on: 10/27/23
Created by: Jeff Showalter
Modified on: 10/27/23
Modified by: Jeff Showalter

Test
Select * from dbo.vf_PL_Product_Catalog

10/27/23: Created new view for defining dPriceList and dPriceListProduct items in NDX_DSG_EDW, as there's no static table there.

*/


SELECT PriceListID = pl.Id,  PriceListName = PL.Name, PriceListKey = pl.[Key]
, PriceListDescription = pl.Description, pl.ListOrder, SetID = S.Id, CAST(S.EFFECTIVEDATEUTC as datetime) as EffectiveDateUTC
, CAST(S.DiscontinuedDateUTC as Datetime) as DiscontinuedDateUTC, P.ProductID, P.Description, I.Price, P.Discontinued
, Date = CONVERT(CHAR(10),EffectiveDateUTC, 101)+ ' To ' + CONVERT(CHAR(10),DiscontinuedDateUTC, 101)
,7 as keySource
FROM V4PriceList pl
JOIN V4PriceListSet S ON PL.Id = S.PriceListId
JOIN V4PriceListSetItem I ON S.Id = I.PriceListSetId
JOIN V4LegacyProduct P ON I.ProductID = P.Id
GO
/****** Object:  View [dbo].[PSH_DigitalScanner]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE view  [dbo].[PSH_DigitalScanner] as


SELECT
	c.CaseID,
	ds.NDXScannerValue
FROM DSG.dbo.Cases								c
JOIN DSG.dbo.CaseProducts						cp ON c.CaseID = cp.CaseID
JOIN ETL_SUPPORT.dbo.map_DSG_DigitalScanning	ds ON cp.ProductID = ds.DSGScannerValue
WHERE	c.DateInvoiced IS NULL
		OR YEAR(c.DateInvoiced) * 100 + MONTH(c.DateInvoiced) >= 201901


--SELECT
--CaseID,
--NDXScannerValue
--FROM dsg.dbo.ProductSalesHistory psh
--JOIN ETL_SUPPORT.dbo.map_DSG_DigitalScanning ds ON psh.PRODUCTID = ds.DSGScannerValue
--WHERE InvoiceDate IS NULL
--OR YEAR(InvoiceDate) * 100 + MONTH(InvoiceDate) >= 201901
GO
/****** Object:  Table [dbo].[ASSOCIATEDOCTORS]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ASSOCIATEDOCTORS](
	[ASSOCIATEDOCTORID] [int] NULL,
	[DOCTORID] [varchar](20) NULL,
	[ASSOCIATENAME] [varchar](100) NULL,
	[LISTORDER] [int] NULL,
	[LICENSE] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CASEMATERIALS]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CASEMATERIALS](
	[CASEID] [int] NULL,
	[LISTORDER] [int] NULL,
	[QUANTITY] [numeric](10, 4) NULL,
	[MATERIALID] [varchar](20) NULL,
	[NOTES] [varchar](255) NULL,
	[CASEMATERIALID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caseproducts_20210511]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caseproducts_20210511](
	[CASEID] [int] NULL,
	[LISTORDER] [int] NULL,
	[PRODUCTID] [varchar](20) NULL,
	[UNITPRICE] [decimal](19, 4) NULL,
	[QUANTITY] [numeric](11, 5) NULL,
	[REMAKEID] [varchar](20) NULL,
	[TEETH] [int] NULL,
	[TOOTHSTR] [varchar](100) NULL,
	[DISCOUNTGIVEN] [decimal](19, 4) NULL,
	[REMAKEDISCOUNTGIVEN] [decimal](19, 4) NULL,
	[PROD_FAC] [varchar](20) NULL,
	[TEETHUPPERDESIGN] [varchar](70) NULL,
	[TEETHLOWERDESIGN] [varchar](70) NULL,
	[DISCOUNTID] [varchar](20) NULL,
	[ISSPECIALDISCOUNTED] [int] NULL,
	[ORIGINFACILITY] [varchar](20) NULL,
	[ISSPECIALPRICED] [int] NULL,
	[TAGALONGSTATUS] [int] NULL,
	[TAGALONGLISTORDER] [int] NULL,
	[CASEPRODUCTID] [int] NULL,
	[CASEPANID] [int] NULL,
	[SURCHARGEID] [varchar](20) NULL,
	[SURCHARGEADDED] [decimal](19, 4) NULL,
	[LINKTO] [int] NULL,
	[TOTALCHARGE] [decimal](19, 4) NULL,
	[REASONID] [int] NULL,
	[USEREMAKEPERCENT] [int] NULL,
	[USEDISCOUNTPERCENT] [int] NULL,
	[USESURCHARGEPERCENT] [int] NULL,
	[ISSPECIALREMAKE] [int] NULL,
	[ISSPECIALDISCOUNT] [int] NULL,
	[ISSPECIALSURCHARGE] [int] NULL,
	[REMAKEPERCENT] [decimal](19, 4) NULL,
	[DISCOUNTPERCENT] [decimal](19, 4) NULL,
	[SURCHARGEPERCENT] [decimal](19, 4) NULL,
	[PRODUCTSCHEDULETYPEID] [int] NULL,
	[WHENENTERED] [datetime] NULL,
	[CURRENCYID] [int] NULL,
	[FOREIGNCURRENCYUNITPRICE] [decimal](19, 4) NULL,
	[FOREIGNCURRENCYREMAKEPERCENT] [decimal](19, 4) NULL,
	[FOREIGNCURRENCYDISCOUNTPERCENT] [decimal](19, 4) NULL,
	[FOREIGNCURRENCYSURCHARGEPERCENT] [decimal](19, 4) NULL,
	[PRICELISTID] [nvarchar](255) NULL,
	[PRICELISTUNITPRICE] [decimal](19, 4) NULL,
	[ISVARIABLEPRICED] [int] NULL,
	[ISBRIDGE] [int] NULL,
	[TOTALTAX] [decimal](19, 4) NULL,
	[CREDITINVOICEAMOUNT] [decimal](19, 4) NULL,
	[CREDITINVOICEQUANTITY] [numeric](11, 5) NULL,
	[RESTORATIONDATAID] [int] NULL,
	[SHADE] [varchar](255) NULL,
	[ADJUSTEDQUANTITY] [numeric](11, 5) NULL,
	[METALBAND] [varchar](255) NULL,
	[PRODUCTDESCRIPTION] [varchar](255) NULL,
	[LASTCHECKSUM] [int] NULL,
	[TAGALONGID] [int] NULL,
	[WHOENTERED] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cases_20210511]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cases_20210511](
	[CASEID] [int] NULL,
	[DOCTORID] [varchar](20) NULL,
	[DATAYEAR] [int] NULL,
	[OLDCASEID] [int] NULL,
	[PATIENTFIRST] [varchar](40) NULL,
	[PATIENTLAST] [varchar](40) NULL,
	[PATIENTAGE] [int] NULL,
	[PATIENTSEX] [char](1) NULL,
	[REMAKEOF] [int] NULL,
	[SHIPDATE] [datetime] NULL,
	[DATEIN] [datetime] NULL,
	[TRYINDATE] [datetime] NULL,
	[DUEDATE] [datetime] NULL,
	[CURRENTTASK] [varchar](20) NULL,
	[CURRENTTASKORDER] [int] NULL,
	[PANNUMBER] [varchar](50) NULL,
	[SHADE] [varchar](255) NULL,
	[PRESCRIPTION] [varchar](30) NULL,
	[MOULD] [varchar](20) NULL,
	[CASESTATUSREASON] [varchar](255) NULL,
	[FINISH] [int] NULL,
	[ROUTE] [varchar](20) NULL,
	[DRIVER] [varchar](20) NULL,
	[TIMEOFDELIVERY] [varchar](20) NULL,
	[DATETIMECASELEFT] [datetime] NULL,
	[TIMETWO] [varchar](20) NULL,
	[BILLTO] [varchar](20) NULL,
	[BILLPERIOD] [int] NULL,
	[DATEINVOICED] [datetime] NULL,
	[DATEBILLED] [datetime] NULL,
	[DISCOUNTID] [varchar](20) NULL,
	[DISCOUNTPERCENT] [numeric](5, 2) NULL,
	[FULLCHARGE] [decimal](19, 4) NULL,
	[DISCOUNTGIVEN] [decimal](19, 4) NULL,
	[REMAKEDISCOUNTGIVEN] [decimal](19, 4) NULL,
	[TOTALCHARGE] [decimal](19, 4) NULL,
	[TOTALTAX] [decimal](19, 4) NULL,
	[WHOENTERED] [varchar](30) NULL,
	[WHENENTERED] [datetime] NULL,
	[WHOINVOICED] [varchar](30) NULL,
	[LASTMODIFIEDBY] [varchar](30) NULL,
	[LASTMODIFIEDTIME] [datetime] NULL,
	[TYPE] [int] NULL,
	[PAID] [int] NULL,
	[COMMENTS] [text] NULL,
	[INVOICENOTES] [text] NULL,
	[CASECONTACTS] [text] NULL,
	[LINKTO] [int] NULL,
	[SSN] [varchar](50) NULL,
	[RUSH] [int] NULL,
	[DELIVERYMETHOD] [varchar](40) NULL,
	[WEIGHT] [float] NULL,
	[CHARGE] [decimal](19, 4) NULL,
	[TRACKINGNUM] [varchar](100) NULL,
	[DOCSHIPADDRID] [int] NULL,
	[ARTICULATOR] [varchar](20) NULL,
	[CASELOCATION] [varchar](255) NULL,
	[ORIGINFACILITY] [varchar](20) NULL,
	[REMAKEID] [varchar](20) NULL,
	[INVOICENOTE] [varchar](20) NULL,
	[LOCK] [int] NULL,
	[BEENINGLEXPORT] [int] NULL,
	[INSTRUCTIONS] [text] NULL,
	[CARRIERID] [varchar](20) NULL,
	[RESCHEDULECASE] [int] NULL,
	[CASESTATUSID] [int] NULL,
	[SURCHARGEID] [varchar](20) NULL,
	[SURCHARGEADDED] [decimal](19, 4) NULL,
	[PAIDINFULL] [int] NULL,
	[TEAMID] [varchar](20) NULL,
	[SKILLLEVEL] [int] NULL,
	[CAMPAIGNID] [int] NULL,
	[DOCTORCAMPAIGNID] [int] NULL,
	[REASONID] [int] NULL,
	[USEREMAKEPERCENT] [int] NULL,
	[USEDISCOUNTPERCENT] [int] NULL,
	[USESURCHARGEPERCENT] [int] NULL,
	[ISSPECIALREMAKE] [int] NULL,
	[ISSPECIALDISCOUNT] [int] NULL,
	[ISSPECIALSURCHARGE] [int] NULL,
	[REMAKEPERCENT] [numeric](5, 2) NULL,
	[SURCHARGEPERCENT] [numeric](5, 2) NULL,
	[WASANESTIMATE] [int] NULL,
	[SPECIALACTIONID] [int] NULL,
	[SCHEDULINGTYPE] [int] NULL,
	[RUSHID] [int] NULL,
	[SHIPADDRESSLINE1] [varchar](40) NULL,
	[SHIPADDRESSLINE2] [varchar](40) NULL,
	[SHIPADDRESSCITY] [varchar](50) NULL,
	[SHIPADDRESSSTATE] [varchar](50) NULL,
	[SHIPADDRESSZIPCODE] [char](10) NULL,
	[SHIPADDRESSCOUNTRY] [varchar](50) NULL,
	[CARRIERROUTECODE] [varchar](20) NULL,
	[ALTERNATECASEID] [int] NULL,
	[REMOTECASEID] [int] NULL,
	[NOCREDITINVOICING] [int] NULL,
	[PREPAIDSHIPMENTNUMBERID] [int] NULL,
	[WASTYPE] [int] NULL,
	[ASSOCIATEDOCTORID] [int] NULL,
	[SHIPPINGFACILITYID] [varchar](20) NULL,
	[EXCHANGERATEID] [int] NULL,
	[RECEIVABLETRANSACTIONID] [int] NULL,
	[AUTOSHIPMENT] [int] NULL,
	[SYNCID] [char](36) NULL,
	[ONHOLD] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CASESTATUS]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CASESTATUS](
	[CASESTATUSID] [int] NULL,
	[DESCRIPTION] [varchar](40) NULL,
	[NOINVOICING] [int] NULL,
	[NOSCHEDULING] [int] NULL,
	[LISTORDER] [int] NULL,
	[SYSTEMENTRY] [int] NULL,
	[REUSEPANS] [int] NULL,
	[RED] [int] NULL,
	[GREEN] [int] NULL,
	[BLUE] [int] NULL,
	[INCLUDEINCASEREPORTS] [int] NULL,
	[KEY] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CASETASKS]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CASETASKS](
	[CASEID] [int] NULL,
	[PRODFAC] [varchar](20) NULL,
	[TASKID] [varchar](20) NULL,
	[SCHEDULEORDER] [int] NULL,
	[DATETIMEDUE] [datetime] NULL,
	[UNITS] [numeric](10, 4) NULL,
	[SCHEDULINGUNITS] [real] NULL,
	[EMPLOYEEID] [varchar](20) NULL,
	[DATETIMECOMPLETED] [datetime] NULL,
	[PAYLEVEL] [int] NULL,
	[DOLLARSCREDITED] [decimal](19, 4) NULL,
	[ORIGINALDUEDATE] [datetime] NULL,
	[LISTORDER] [int] NULL,
	[NUMBEROFTIMEBLOCKS] [int] NULL,
	[CASETASKID] [int] NULL,
	[CASETASKTYPEID] [int] NULL,
	[CASEPRODUCTID] [int] NULL,
	[CASEPANID] [int] NULL,
	[PRODUCTID] [varchar](20) NULL,
	[PAYPERUNIT] [decimal](19, 4) NULL,
	[ORIGINFACILITY] [varchar](20) NULL,
	[CHECKOUTEMPLOYEEID] [varchar](20) NULL,
	[CHECKOUTTIME] [datetime] NULL,
	[QUANTITY] [numeric](10, 4) NULL,
	[IDEALDUEDATE] [datetime] NULL,
	[ROWSTAMP] [binary](8) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CASETASKSLOG]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CASETASKSLOG](
	[CASETASKSLOGID] [int] NULL,
	[CASEID] [int] NULL,
	[TASKID] [varchar](20) NULL,
	[FACILITYID] [varchar](20) NULL,
	[DATETIMEDUE] [datetime] NULL,
	[DATETIMECOMPLETED] [datetime] NULL,
	[EMPLOYEEID] [varchar](20) NULL,
	[PAYLEVEL] [int] NULL,
	[UNITS] [numeric](10, 4) NULL,
	[DOLLARSCREDITED] [decimal](19, 4) NULL,
	[ERRORCODE] [varchar](20) NULL,
	[WHOENTERED] [varchar](30) NULL,
	[WHENENTERED] [datetime] NULL,
	[LASTMODIFIEDBY] [varchar](30) NULL,
	[LASTMODIFIEDTIME] [datetime] NULL,
	[CASETASKSLOGTYPEID] [int] NULL,
	[CASETASKTYPEID] [int] NULL,
	[CASEPRODUCTID] [int] NULL,
	[CASEPANID] [int] NULL,
	[SCHEDULINGUNITS] [real] NULL,
	[PRODUCTID] [varchar](20) NULL,
	[PAYPERUNIT] [decimal](19, 4) NULL,
	[ORIGINFACILITY] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CASETASKSLOGTYPES]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CASETASKSLOGTYPES](
	[CASETASKSLOGTYPEID] [int] NULL,
	[DESCRIPTION] [varchar](40) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CASETASKTYPES]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CASETASKTYPES](
	[CASETASKTYPEID] [int] NULL,
	[DESCRIPTION] [varchar](40) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CUSTOMERTYPES]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUSTOMERTYPES](
	[CUSTOMERTYPEID] [varchar](20) NULL,
	[DESCRIPTION] [varchar](40) NULL,
	[LISTORDER] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DISCOUNTS]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DISCOUNTS](
	[DISCOUNTID] [varchar](20) NULL,
	[PERCENTAGE] [numeric](5, 2) NULL,
	[REASONID] [int] NULL,
	[LISTORDER] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOCLAB]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOCLAB](
	[DOCTORID] [varchar](20) NULL,
	[FACILITYID] [varchar](20) NULL,
	[PRICELISTID] [varchar](20) NULL,
	[ROUTEID] [varchar](20) NULL,
	[CARRIERID] [varchar](20) NULL,
	[INACTIVE] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DSG_BillTrustNightlyData]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSG_BillTrustNightlyData](
	[OpenBal_InvoiceNumber] [int] NULL,
	[OpenBal_InvoiceSuffix] [varchar](3) NULL,
	[OpenBal_OpenBalance] [decimal](19, 2) NULL,
	[OpenBal_AccountNumber] [varchar](10) NULL,
	[OpenBal_ShipTo] [varchar](70) NULL,
	[OpenBal_SequenceNumber] [varchar](3) NULL,
	[OpenBal_PONumber] [varchar](3) NULL,
	[OpenBal_TotalDue] [decimal](19, 2) NULL,
	[OpenBal_DiscountAmount] [varchar](3) NULL,
	[OpenBal_InvoiceDate] [varchar](10) NULL,
	[OpenBal_DueDate] [varchar](10) NULL,
	[OpenBal_FabricatedRecord] [varchar](1) NULL,
	[OpenBal_BranchName] [varchar](10) NULL,
	[OpenBal_CustomerName] [varchar](50) NULL,
	[OpenBal_DiscountDate] [varchar](3) NULL,
	[OpenBal_UDP1] [varchar](50) NULL,
	[OpenBal_UDP2] [varchar](50) NULL,
	[OpenBal_UDP3] [varchar](50) NULL,
	[OpenBal_UDP4] [int] NULL,
	[OpenBal_UDP5] [int] NULL,
	[CashApp_InvoiceNumber] [varchar](20) NULL,
	[CashApp_InvoiceAmount] [decimal](19, 2) NULL,
	[CashApp_OpenAmount] [decimal](19, 2) NULL,
	[CashApp_DiscountAmount] [decimal](19, 2) NULL,
	[CashApp_FreightAmount] [decimal](19, 2) NULL,
	[CashApp_TaxAmount] [decimal](19, 2) NULL,
	[CashApp_InvoiceDate] [varchar](10) NULL,
	[CashApp_PONumber] [varchar](10) NULL,
	[CashApp_StatementNumber] [varchar](10) NULL,
	[CashApp_StatementAmount] [varchar](10) NULL,
	[CashApp_ParentCustomerNumber] [varchar](15) NULL,
	[CashApp_CustomerNumber] [varchar](10) NULL,
	[CashApp_CustomerName] [varchar](50) NULL,
	[CashApp_CustomerAddress1] [varchar](40) NULL,
	[CashApp_CustomerAddress2] [varchar](40) NULL,
	[CashApp_CustomerCity] [varchar](30) NULL,
	[CashApp_CustomerState] [varchar](10) NULL,
	[CashApp_CustomerZip] [varchar](10) NULL,
	[CashApp_CustomMoney1] [varchar](50) NULL,
	[CashApp_CustomMoney2] [varchar](50) NULL,
	[CashApp_CustomField1] [varchar](50) NULL,
	[CashApp_CustomField2] [varchar](50) NULL,
	[CashApp_CustomField3] [varchar](50) NULL,
	[CashApp_CustomField4] [varchar](50) NULL,
	[CashApp_CustomField5] [varchar](50) NULL,
	[CashApp_CustomField6] [varchar](50) NULL,
	[CashApp_CustomField7] [varchar](50) NULL,
	[CashApp_CustomField8] [varchar](50) NULL,
	[CashApp_CustomField9] [varchar](50) NULL,
	[CashApp_CustomField10] [varchar](50) NULL,
	[CashApp_CustomField11] [varchar](50) NULL,
	[CashApp_CustomField12] [varchar](50) NULL,
	[CashApp_CustomField13] [varchar](50) NULL,
	[CashApp_CustomField14] [varchar](50) NULL,
	[CashApp_CustomField15] [varchar](50) NULL,
	[CashApp_CustomField16] [varchar](50) NULL,
	[CashApp_CustomField17] [varchar](50) NULL,
	[CashApp_CustomField18] [varchar](50) NULL,
	[CashApp_CustomField19] [varchar](50) NULL,
	[CashApp_CustomField20] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DSG_DOCTORDPMSITE]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSG_DOCTORDPMSITE](
	[DOCTORID] [varchar](20) NULL,
	[SNAME] [varchar](25) NULL,
	[WEBPORTAL] [int] NULL,
	[PRACTICEGROUPID] [int] NULL,
	[REGIONID] [varchar](25) NULL,
	[MARKETID] [varchar](25) NULL,
	[MARKETNAME_LONG] [varchar](70) NULL,
	[MARKETNAME_SHORT] [varchar](50) NULL,
	[SITECODE] [varchar](25) NULL,
	[SITENAME_LONG] [varchar](70) NULL,
	[SITENAME_SHORT] [varchar](70) NULL,
	[SITEGLCODE] [varchar](12) NULL,
	[SITEADD1] [varchar](60) NULL,
	[SITEADD2] [varchar](60) NULL,
	[SITECITY] [varchar](50) NULL,
	[SITESTATE] [varchar](5) NULL,
	[SITEZIP] [varchar](12) NULL,
	[SITEPHONE] [varchar](12) NULL,
	[SITEFAX] [varchar](12) NULL,
	[SITEEMAIL] [varchar](128) NULL,
	[MGR1TITLE] [varchar](50) NULL,
	[MGR1NAME] [varchar](50) NULL,
	[MGR1PHONE] [varchar](12) NULL,
	[MGR1FAX] [varchar](12) NULL,
	[MGR1EMAIL] [varchar](100) NULL,
	[MGR2TITLE] [varchar](50) NULL,
	[MGR2NAME] [varchar](50) NULL,
	[MGR2PHONE] [varchar](12) NULL,
	[MGR2FAX] [varchar](12) NULL,
	[MGR2EMAIL] [varchar](100) NULL,
	[OPTIN_CASENOTIFY] [int] NULL,
	[STARTDT] [datetime] NULL,
	[ENDDT] [datetime] NULL,
	[SALESPERSONID] [varchar](20) NULL,
	[COMMISSIONLEVEL] [int] NULL,
	[EXTRA1] [varchar](500) NULL,
	[EXTRA2] [varchar](500) NULL,
	[LATITUDE] [varchar](20) NULL,
	[LONGITUDE] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DSG_DPMSITES]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSG_DPMSITES](
	[PRACTICEGROUPID] [int] NULL,
	[REGIONID] [varchar](25) NULL,
	[MARKETID] [varchar](25) NULL,
	[MARKETNAME_LONG] [varchar](70) NULL,
	[MARKETNAME_SHORT] [varchar](50) NULL,
	[SITECODE] [varchar](25) NULL,
	[SITENAME_LONG] [varchar](70) NULL,
	[SITENAME_SHORT] [varchar](70) NULL,
	[SITEGLCODE] [varchar](12) NULL,
	[SITEADD1] [varchar](60) NULL,
	[SITEADD2] [varchar](60) NULL,
	[SITECITY] [varchar](50) NULL,
	[SITESTATE] [varchar](5) NULL,
	[SITEZIP] [varchar](12) NULL,
	[SITEPHONE] [varchar](12) NULL,
	[SITEFAX] [varchar](12) NULL,
	[SITEEMAIL] [varchar](128) NULL,
	[MGR1TITLE] [varchar](50) NULL,
	[MGR1NAME] [varchar](50) NULL,
	[MGR1PHONE] [varchar](12) NULL,
	[MGR1FAX] [varchar](12) NULL,
	[MGR1EMAIL] [varchar](100) NULL,
	[MGR2TITLE] [varchar](50) NULL,
	[MGR2NAME] [varchar](50) NULL,
	[MGR2PHONE] [varchar](12) NULL,
	[MGR2FAX] [varchar](12) NULL,
	[MGR2EMAIL] [varchar](100) NULL,
	[OPTIN_CASENOTIFY] [int] NULL,
	[STARTDT] [datetime] NULL,
	[ENDDT] [datetime] NULL,
	[SALESPERSONID] [varchar](20) NULL,
	[COMMISSIONLEVEL] [int] NULL,
	[EXTRA1] [varchar](500) NULL,
	[EXTRA2] [varchar](500) NULL,
	[LATITUDE] [varchar](20) NULL,
	[LONGITUDE] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DSG_NDXPRODUCTMAPPING]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSG_NDXPRODUCTMAPPING](
	[DB] [varchar](3) NULL,
	[PRODUCTID] [varchar](20) NULL,
	[PRODUCTIONLINE] [varchar](20) NULL,
	[MTTYPE] [varchar](20) NULL,
	[MTGROUP] [varchar](40) NULL,
	[ORACLECATEGORY] [varchar](10) NULL,
	[ORACLEDEPARTMENT] [int] NULL,
	[ORACLEACCOUNT] [int] NULL,
	[ORACLEPRODUCT] [int] NULL,
	[ORACLEUNIT] [int] NULL,
	[TAXTYPE] [varchar](20) NULL,
	[TAXGROUP] [varchar](40) NULL,
	[TAXCATEGORY] [varchar](10) NULL,
	[MTDEPART] [varchar](25) NULL,
	[TAXDEPARTMENT] [varchar](25) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DSG04_CASES]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSG04_CASES](
	[CASEID] [int] NULL,
	[DOCTORID] [varchar](20) NULL,
	[DATAYEAR] [int] NULL,
	[OLDCASEID] [int] NULL,
	[PATIENTFIRST] [varchar](40) NULL,
	[PATIENTLAST] [varchar](40) NULL,
	[PATIENTAGE] [int] NULL,
	[PATIENTSEX] [char](1) NULL,
	[REMAKEOF] [int] NULL,
	[SHIPDATE] [datetime] NULL,
	[DATEIN] [datetime] NULL,
	[TRYINDATE] [datetime] NULL,
	[DUEDATE] [datetime] NULL,
	[CURRENTTASK] [varchar](20) NULL,
	[CURRENTTASKORDER] [int] NULL,
	[PANNUMBER] [varchar](50) NULL,
	[SHADE] [varchar](255) NULL,
	[PRESCRIPTION] [varchar](30) NULL,
	[MOULD] [varchar](20) NULL,
	[CASESTATUSREASON] [varchar](255) NULL,
	[FINISH] [int] NULL,
	[ROUTE] [varchar](20) NULL,
	[DRIVER] [varchar](20) NULL,
	[TIMEOFDELIVERY] [varchar](20) NULL,
	[DATETIMECASELEFT] [datetime] NULL,
	[TIMETWO] [varchar](20) NULL,
	[BILLTO] [varchar](20) NULL,
	[BILLPERIOD] [int] NULL,
	[DATEINVOICED] [datetime] NULL,
	[DATEBILLED] [datetime] NULL,
	[DISCOUNTID] [varchar](20) NULL,
	[DISCOUNTPERCENT] [numeric](5, 2) NULL,
	[FULLCHARGE] [decimal](19, 4) NULL,
	[DISCOUNTGIVEN] [decimal](19, 4) NULL,
	[REMAKEDISCOUNTGIVEN] [decimal](19, 4) NULL,
	[TOTALCHARGE] [decimal](19, 4) NULL,
	[TOTALTAX] [decimal](19, 4) NULL,
	[WHOENTERED] [varchar](30) NULL,
	[WHENENTERED] [datetime] NULL,
	[WHOINVOICED] [varchar](30) NULL,
	[LASTMODIFIEDBY] [varchar](30) NULL,
	[LASTMODIFIEDTIME] [datetime] NULL,
	[TYPE] [int] NULL,
	[PAID] [int] NULL,
	[COMMENTS] [text] NULL,
	[INVOICENOTES] [text] NULL,
	[CASECONTACTS] [text] NULL,
	[LINKTO] [int] NULL,
	[SSN] [varchar](50) NULL,
	[RUSH] [int] NULL,
	[DELIVERYMETHOD] [varchar](40) NULL,
	[WEIGHT] [float] NULL,
	[CHARGE] [decimal](19, 4) NULL,
	[TRACKINGNUM] [varchar](100) NULL,
	[DOCSHIPADDRID] [int] NULL,
	[ARTICULATOR] [varchar](20) NULL,
	[CASELOCATION] [varchar](255) NULL,
	[ORIGINFACILITY] [varchar](20) NULL,
	[REMAKEID] [varchar](20) NULL,
	[INVOICENOTE] [varchar](20) NULL,
	[LOCK] [int] NULL,
	[BEENINGLEXPORT] [int] NULL,
	[INSTRUCTIONS] [text] NULL,
	[CARRIERID] [varchar](20) NULL,
	[RESCHEDULECASE] [int] NULL,
	[CASESTATUSID] [int] NULL,
	[SURCHARGEID] [varchar](20) NULL,
	[SURCHARGEADDED] [decimal](19, 4) NULL,
	[PAIDINFULL] [int] NULL,
	[TEAMID] [varchar](20) NULL,
	[SKILLLEVEL] [int] NULL,
	[CAMPAIGNID] [int] NULL,
	[DOCTORCAMPAIGNID] [int] NULL,
	[REASONID] [int] NULL,
	[USEREMAKEPERCENT] [int] NULL,
	[USEDISCOUNTPERCENT] [int] NULL,
	[USESURCHARGEPERCENT] [int] NULL,
	[ISSPECIALREMAKE] [int] NULL,
	[ISSPECIALDISCOUNT] [int] NULL,
	[ISSPECIALSURCHARGE] [int] NULL,
	[REMAKEPERCENT] [numeric](5, 2) NULL,
	[SURCHARGEPERCENT] [numeric](5, 2) NULL,
	[WASANESTIMATE] [int] NULL,
	[SPECIALACTIONID] [int] NULL,
	[SCHEDULINGTYPE] [int] NULL,
	[RUSHID] [int] NULL,
	[SHIPADDRESSLINE1] [varchar](40) NULL,
	[SHIPADDRESSLINE2] [varchar](40) NULL,
	[SHIPADDRESSCITY] [varchar](50) NULL,
	[SHIPADDRESSSTATE] [varchar](50) NULL,
	[SHIPADDRESSZIPCODE] [char](10) NULL,
	[SHIPADDRESSCOUNTRY] [varchar](50) NULL,
	[CARRIERROUTECODE] [varchar](20) NULL,
	[ALTERNATECASEID] [int] NULL,
	[REMOTECASEID] [int] NULL,
	[NOCREDITINVOICING] [int] NULL,
	[PREPAIDSHIPMENTNUMBERID] [int] NULL,
	[WASTYPE] [int] NULL,
	[ASSOCIATEDOCTORID] [int] NULL,
	[SHIPPINGFACILITYID] [varchar](20) NULL,
	[EXCHANGERATEID] [int] NULL,
	[RECEIVABLETRANSACTIONID] [int] NULL,
	[AUTOSHIPMENT] [int] NULL,
	[SYNCID] [char](36) NULL,
	[ONHOLD] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DSG04_CASETASKS]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSG04_CASETASKS](
	[CASEID] [int] NULL,
	[PRODFAC] [varchar](20) NULL,
	[TASKID] [varchar](20) NULL,
	[SCHEDULEORDER] [int] NULL,
	[DATETIMEDUE] [datetime] NULL,
	[UNITS] [numeric](10, 4) NULL,
	[SCHEDULINGUNITS] [real] NULL,
	[EMPLOYEEID] [varchar](20) NULL,
	[DATETIMECOMPLETED] [datetime] NULL,
	[PAYLEVEL] [int] NULL,
	[DOLLARSCREDITED] [decimal](19, 4) NULL,
	[ORIGINALDUEDATE] [datetime] NULL,
	[LISTORDER] [int] NULL,
	[NUMBEROFTIMEBLOCKS] [int] NULL,
	[CASETASKID] [int] NULL,
	[CASETASKTYPEID] [int] NULL,
	[CASEPRODUCTID] [int] NULL,
	[CASEPANID] [int] NULL,
	[PRODUCTID] [varchar](20) NULL,
	[PAYPERUNIT] [decimal](19, 4) NULL,
	[ORIGINFACILITY] [varchar](20) NULL,
	[CHECKOUTEMPLOYEEID] [varchar](20) NULL,
	[CHECKOUTTIME] [datetime] NULL,
	[QUANTITY] [numeric](10, 4) NULL,
	[IDEALDUEDATE] [datetime] NULL,
	[ROWSTAMP] [binary](8) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DSG04_EMPLOYEES]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSG04_EMPLOYEES](
	[EMPLOYEEID] [varchar](20) NULL,
	[LASTNAME] [varchar](40) NULL,
	[FIRSTNAME] [varchar](40) NULL,
	[ADDRESS] [varchar](40) NULL,
	[CITY] [varchar](30) NULL,
	[STATE] [varchar](10) NULL,
	[ZIPCODE] [char](10) NULL,
	[PHONE] [char](20) NULL,
	[TEAMID] [varchar](20) NULL,
	[PRINTBARCODE] [int] NULL,
	[LASTMODIFIEDBY] [varchar](30) NULL,
	[LASTMODIFIEDTIME] [datetime] NULL,
	[ACTIVE] [int] NULL,
	[HIREDATE] [datetime] NULL,
	[DEPARTMENT] [varchar](20) NULL,
	[PAYRATE] [float] NULL,
	[PAYTYPE] [varchar](40) NULL,
	[LASTRAISEAMOUNT] [float] NULL,
	[LASTREVIEW] [datetime] NULL,
	[POSITION] [varchar](50) NULL,
	[TERMINATIONDATE] [datetime] NULL,
	[TERMINATIONREASON] [text] NULL,
	[TECHPAY] [int] NULL,
	[FACILITYID] [varchar](20) NULL,
	[PAYROLLDEPT] [varchar](20) NULL,
	[SUBDEPARTMENTID] [varchar](20) NULL,
	[STARTTIME] [datetime] NULL,
	[PAYROLLDEPARTMENTID] [varchar](20) NULL,
	[MINUNITS] [int] NULL,
	[MAXUNITS] [int] NULL,
	[DAILYHOURS] [numeric](10, 4) NULL,
	[EMPLOYEESCHEDULETYPEID] [int] NULL,
	[DLPLUSTOUCHPASSWORD] [varchar](20) NULL,
	[PASSWORDLASTCHANGED] [datetime] NULL,
	[HRISID] [varchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DSG04_EMPLOYEETASKS]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSG04_EMPLOYEETASKS](
	[EMPLOYEEID] [varchar](20) NULL,
	[TASKID] [varchar](20) NULL,
	[SKILLLEVEL] [int] NULL,
	[PAYLEVEL] [int] NULL,
	[EXCLUDEFROMSCHEDULING] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DSG05_CASETASKS]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSG05_CASETASKS](
	[CASEID] [int] NULL,
	[PRODFAC] [varchar](20) NULL,
	[TASKID] [varchar](20) NULL,
	[SCHEDULEORDER] [int] NULL,
	[DATETIMEDUE] [datetime] NULL,
	[UNITS] [numeric](10, 4) NULL,
	[SCHEDULINGUNITS] [real] NULL,
	[EMPLOYEEID] [varchar](20) NULL,
	[DATETIMECOMPLETED] [datetime] NULL,
	[PAYLEVEL] [int] NULL,
	[DOLLARSCREDITED] [decimal](19, 4) NULL,
	[ORIGINALDUEDATE] [datetime] NULL,
	[LISTORDER] [int] NULL,
	[NUMBEROFTIMEBLOCKS] [int] NULL,
	[CASETASKID] [int] NULL,
	[CASETASKTYPEID] [int] NULL,
	[CASEPRODUCTID] [int] NULL,
	[CASEPANID] [int] NULL,
	[PRODUCTID] [varchar](20) NULL,
	[PAYPERUNIT] [decimal](19, 4) NULL,
	[ORIGINFACILITY] [varchar](20) NULL,
	[CHECKOUTEMPLOYEEID] [varchar](20) NULL,
	[CHECKOUTTIME] [datetime] NULL,
	[QUANTITY] [numeric](10, 4) NULL,
	[IDEALDUEDATE] [datetime] NULL,
	[ROWSTAMP] [binary](8) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DSG05_EMPLOYEES]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSG05_EMPLOYEES](
	[EMPLOYEEID] [varchar](20) NULL,
	[LASTNAME] [varchar](40) NULL,
	[FIRSTNAME] [varchar](40) NULL,
	[ADDRESS] [varchar](40) NULL,
	[CITY] [varchar](30) NULL,
	[STATE] [varchar](10) NULL,
	[ZIPCODE] [char](10) NULL,
	[PHONE] [char](20) NULL,
	[TEAMID] [varchar](20) NULL,
	[PRINTBARCODE] [int] NULL,
	[LASTMODIFIEDBY] [varchar](30) NULL,
	[LASTMODIFIEDTIME] [datetime] NULL,
	[ACTIVE] [int] NULL,
	[HIREDATE] [datetime] NULL,
	[DEPARTMENT] [varchar](20) NULL,
	[PAYRATE] [float] NULL,
	[PAYTYPE] [varchar](40) NULL,
	[LASTRAISEAMOUNT] [float] NULL,
	[LASTREVIEW] [datetime] NULL,
	[POSITION] [varchar](50) NULL,
	[TERMINATIONDATE] [datetime] NULL,
	[TERMINATIONREASON] [text] NULL,
	[TECHPAY] [int] NULL,
	[FACILITYID] [varchar](20) NULL,
	[PAYROLLDEPT] [varchar](20) NULL,
	[SUBDEPARTMENTID] [varchar](20) NULL,
	[STARTTIME] [datetime] NULL,
	[PAYROLLDEPARTMENTID] [varchar](20) NULL,
	[MINUNITS] [int] NULL,
	[MAXUNITS] [int] NULL,
	[DAILYHOURS] [numeric](10, 4) NULL,
	[EMPLOYEESCHEDULETYPEID] [int] NULL,
	[DLPLUSTOUCHPASSWORD] [varchar](20) NULL,
	[PASSWORDLASTCHANGED] [datetime] NULL,
	[HRISID] [varchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DSG05_EMPLOYEETASKS]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSG05_EMPLOYEETASKS](
	[EMPLOYEEID] [varchar](20) NULL,
	[TASKID] [varchar](20) NULL,
	[SKILLLEVEL] [int] NULL,
	[PAYLEVEL] [int] NULL,
	[EXCLUDEFROMSCHEDULING] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DSGCASEDUEDATELOG]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSGCASEDUEDATELOG](
	[CASEID] [int] NULL,
	[WHENENTERED] [datetime] NULL,
	[ORIGINALDATEIN] [datetime] NULL,
	[LASTDATEIN] [datetime] NULL,
	[ORIGINALDUEDATE] [datetime] NULL,
	[LASTDUEDATE] [datetime] NULL,
	[DATEINVOICED] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DSGCASELINK]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSGCASELINK](
	[CASELINKID] [int] NULL,
	[PRODUCTIONFACILITY] [varchar](10) NULL,
	[PRODUCTIONCASEID] [int] NULL,
	[PRODUCTIONPATIENTNAME] [varchar](50) NULL,
	[ORIGINFACILITY] [varchar](10) NULL,
	[ORIGINCASEID] [int] NULL,
	[WHENENTERED] [datetime] NULL,
	[ORIGINPATIENTNAME] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DSGCONSOLIDATEDCOMMUNICATIONS]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSGCONSOLIDATEDCOMMUNICATIONS](
	[DB] [varchar](3) NULL,
	[SOURCE] [varchar](3) NULL,
	[DOCTORCOMMENTID] [int] NULL,
	[WHOENTERED] [varchar](30) NULL,
	[WHENENTERED] [datetime] NULL,
	[LASTMODIFIEDBY] [varchar](30) NULL,
	[LASTMODIFIEDTIME] [datetime] NULL,
	[DOCTORID] [varchar](25) NULL,
	[PRACTICEGROUPID] [int] NULL,
	[ABBVNAME] [varchar](5) NULL,
	[SITECODE] [varchar](25) NULL,
	[SUBJECT] [varchar](100) NULL,
	[MESSAGETEXT] [text] NULL,
	[COMMENTTYPE] [varchar](10) NULL,
	[ISDELETED] [int] NULL,
	[TAG] [varchar](max) NULL,
	[SUBTAG] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DSGCUSTOMERTYPES]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSGCUSTOMERTYPES](
	[CUSTOMERTYPEID] [varchar](20) NULL,
	[COMMISSIONTYPE] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DSGDoctorCommentSubTags]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSGDoctorCommentSubTags](
	[SubTagID] [int] NOT NULL,
	[SubTag] [varchar](30) NOT NULL,
	[Tag] [varchar](30) NOT NULL,
	[Description] [varchar](70) NOT NULL,
	[StartDate] [smalldatetime] NULL,
	[EndDate] [smalldatetime] NULL,
	[ListOrder] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DSGDoctorCommentTags]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSGDoctorCommentTags](
	[Tag] [nvarchar](30) NULL,
	[ListOrder] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DSGDOCTORCONTACTS]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSGDOCTORCONTACTS](
	[DOCTORCONTACTID] [int] NULL,
	[DOCTORID] [varchar](20) NULL,
	[CONTACTROLEID] [varchar](20) NULL,
	[NAME] [varchar](50) NULL,
	[ADDRESS1] [varchar](40) NULL,
	[ADDRESS2] [varchar](40) NULL,
	[ADDRESS3] [varchar](40) NULL,
	[CITY] [varchar](30) NULL,
	[STATE] [varchar](10) NULL,
	[ZIPCODE] [varchar](10) NULL,
	[COUNTRY] [varchar](30) NULL,
	[DIRECTPHONE] [varchar](20) NULL,
	[DIRECTFAX] [varchar](20) NULL,
	[EMAIL] [varchar](255) NULL,
	[OPTOUTALL] [int] NULL,
	[OPTINEMAILCASESRECEIVED] [int] NULL,
	[OPTINEMAILCASESTATUS] [int] NULL,
	[OPTINEMAILCASESSHIPPED] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DSGEXCHANGERATES]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSGEXCHANGERATES](
	[BILLPERIOD] [varchar](6) NULL,
	[COUNTRY] [varchar](3) NULL,
	[CAD2US] [varchar](8) NULL,
	[US2CAD] [varchar](8) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DSGFacilityInfo]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSGFacilityInfo](
	[FacilityID] [varchar](50) NOT NULL,
	[LabName] [varchar](50) NULL,
	[StreetAdd1] [varchar](500) NULL,
	[StreetAdd2] [varchar](500) NULL,
	[StreetCity] [varchar](50) NULL,
	[StreetState] [varchar](50) NULL,
	[StreetZip] [varchar](50) NULL,
	[CaseAdd1] [varchar](50) NULL,
	[CaseAdd2] [varchar](50) NULL,
	[CaseCity] [varchar](50) NULL,
	[CaseState] [varchar](50) NULL,
	[CaseZip] [varchar](50) NULL,
	[RemitToAdd1] [varchar](500) NULL,
	[RemitToAdd2] [varchar](500) NULL,
	[RemitToCity] [varchar](50) NULL,
	[RemitToState] [varchar](50) NULL,
	[RemitToZip] [varchar](50) NULL,
	[LabLocalPhone] [varchar](50) NULL,
	[LabFaxPhone] [varchar](50) NULL,
	[LabTollFree] [varchar](50) NULL,
	[CDL] [varchar](50) NULL,
	[DAMAS] [varchar](50) NULL,
	[LogoImage] [varchar](100) NULL,
	[InfoPanelImage] [varchar](100) NULL,
	[BRMImage] [varchar](100) NULL,
	[GMemail] [varchar](50) NULL,
	[AVPemail] [varchar](50) NULL,
	[RVPemail] [varchar](50) NULL,
	[ProdStartTime] [varchar](10) NULL,
	[ProdEndTime] [varchar](10) NULL,
	[TimeOffset] [smallint] NULL,
	[ShortLabName] [varchar](20) NULL,
	[TaxFacility] [smallint] NULL,
	[Latitude] [varchar](20) NULL,
	[Longitude] [varchar](20) NULL,
	[GMname] [varchar](70) NULL,
	[AVPname] [varchar](70) NULL,
	[RVPname] [varchar](70) NULL,
	[ACQdate] [datetime] NULL,
	[DLPlivedate] [datetime] NULL,
	[DateClosed] [datetime] NULL,
	[WebFacility] [smallint] NULL,
	[CommissionStartBP] [int] NULL,
	[WebRecordID] [int] NULL,
	[LabSegment] [varchar](20) NULL,
	[Geocode] [varchar](50) NULL,
	[CXemail] [varchar](50) NULL,
	[CXname] [varchar](70) NULL,
	[PowerMarket] [varchar](20) NULL,
	[AdminEmail] [varchar](50) NULL,
	[AdminName] [varchar](70) NULL,
	[CaseFeedbackQR] [int] NOT NULL,
	[DueDateWT] [int] NOT NULL,
	[LabAdvocateEmail] [varchar](50) NULL,
	[LabAdvocateName] [varchar](70) NULL,
	[PurchaserEmail] [varchar](100) NULL,
	[Purchasername] [varchar](100) NULL,
	[Labcategory] [varchar](50) NULL,
	[NDXFacilityID] [varchar](50) NULL,
	[NDXOracleID] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DSGHOLDLOG]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSGHOLDLOG](
	[HOLDLOGID] [int] NULL,
	[CASEID] [int] NULL,
	[WHENENTERED] [datetime] NULL,
	[ONHOLDREASON] [varchar](255) NULL,
	[OFFHOLDTIMESTAMP] [datetime] NULL,
	[OFFHOLDREASON] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DSGHSCONTACTS]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSGHSCONTACTS](
	[HS_OBJECT_ID] [int] NULL,
	[ACCOUNT_NO] [varchar](4095) NULL,
	[ADDRESS2] [varchar](4095) NULL,
	[AGD_NO] [varchar](4095) NULL,
	[ATTENTION] [varchar](4095) NULL,
	[CALLBACK] [varchar](4095) NULL,
	[CASE_COMMENT] [varchar](4095) NULL,
	[CASE_FEEDBACK_BAD] [varchar](4095) NULL,
	[CASE_FEEDBACK_GOOD] [varchar](4095) NULL,
	[CASE_FEEDBACK_TYPE] [varchar](4095) NULL,
	[CASE_SOURCE] [varchar](4095) NULL,
	[CE_ATTENDENCE] [varchar](4095) NULL,
	[CHAIRS] [bigint] NULL,
	[COMPANY_SIZE] [varchar](4095) NULL,
	[CONTACT] [varchar](4095) NULL,
	[CONTACT_EMAIL] [varchar](4095) NULL,
	[CONTACT_NAME] [varchar](4095) NULL,
	[COUNTRY_LIST] [varchar](4095) NULL,
	[COUPON] [varchar](4095) NULL,
	[CUSTOMER_CLASS] [varchar](4095) NULL,
	[CUSTOMER_TYPE_ID] [varchar](4095) NULL,
	[CUSTOMERCLASS] [varchar](4095) NULL,
	[CX_EMAIL] [varchar](4095) NULL,
	[CX_NAME] [varchar](4095) NULL,
	[DATE_OF_BIRTH] [varchar](4095) NULL,
	[DAYS_TO_CLOSE] [bigint] NULL,
	[DEGREE] [varchar](4095) NULL,
	[DELETE_LIST] [varchar](4095) NULL,
	[DENTAL_LICENSE_STATE] [varchar](4095) NULL,
	[DOCTOR_ID] [varchar](4095) NULL,
	[EMAIL_STATUS] [varchar](4095) NULL,
	[FIELD_OF_STUDY] [varchar](4095) NULL,
	[FIRST_CONVERSION_DATE] [datetime] NULL,
	[FIRST_CONVERSION_EVENT_NAME] [varchar](4095) NULL,
	[FIRST_DEAL_CREATED_DATE] [datetime] NULL,
	[GDPR] [varchar](4095) NULL,
	[GDPR_CHKBX] [varchar](4095) NULL,
	[GENDER] [varchar](4095) NULL,
	[GRADUATION_DATE] [varchar](4095) NULL,
	[HS_ADDITIONAL_EMAILS] [varchar](4095) NULL,
	[HS_ALL_ASSIGNED_BUSINESS_UNIT_IDS] [varchar](4095) NULL,
	[HS_ALL_CONTACT_VIDS] [varchar](4095) NULL,
	[HS_ANALYTICS_FIRST_TOUCH_CONVERTING_CAMPAIGN] [varchar](4095) NULL,
	[HS_ANALYTICS_LAST_TOUCH_CONVERTING_CAMPAIGN] [varchar](4095) NULL,
	[HS_AVATAR_FILEMANAGER_KEY] [varchar](4095) NULL,
	[HS_BUYING_ROLE] [varchar](4095) NULL,
	[HS_CALCULATED_FORM_SUBMISSIONS] [varchar](4095) NULL,
	[HS_CALCULATED_MERGED_VIDS] [varchar](4095) NULL,
	[HS_CALCULATED_MOBILE_NUMBER] [varchar](4095) NULL,
	[HS_CALCULATED_PHONE_NUMBER] [varchar](4095) NULL,
	[HS_CALCULATED_PHONE_NUMBER_AREA_CODE] [varchar](4095) NULL,
	[HS_CALCULATED_PHONE_NUMBER_COUNTRY_CODE] [varchar](4095) NULL,
	[HS_CALCULATED_PHONE_NUMBER_REGION_CODE] [varchar](4095) NULL,
	[HS_CONTENT_MEMBERSHIP_EMAIL_CONFIRMED] [int] NULL,
	[HS_CONTENT_MEMBERSHIP_NOTES] [varchar](4095) NULL,
	[HS_CONTENT_MEMBERSHIP_REGISTERED_AT] [datetime] NULL,
	[HS_CONTENT_MEMBERSHIP_REGISTRATION_DOMAIN_SENT_TO] [varchar](4095) NULL,
	[HS_CONTENT_MEMBERSHIP_REGISTRATION_EMAIL_SENT_AT] [datetime] NULL,
	[HS_CONTENT_MEMBERSHIP_STATUS] [varchar](4095) NULL,
	[HS_CONVERSATIONS_VISITOR_EMAIL] [varchar](4095) NULL,
	[HS_COUNT_IS_UNWORKED] [bigint] NULL,
	[HS_COUNT_IS_WORKED] [bigint] NULL,
	[HS_CREATED_BY_CONVERSATIONS] [int] NULL,
	[HS_CREATED_BY_USER_ID] [bigint] NULL,
	[HS_CREATEDATE] [datetime] NULL,
	[HS_DOCUMENT_LAST_REVISITED] [datetime] NULL,
	[HS_EMAIL_BAD_ADDRESS] [int] NULL,
	[HS_EMAIL_CUSTOMER_QUARANTINED_REASON] [varchar](4095) NULL,
	[HS_EMAIL_DOMAIN] [varchar](4095) NULL,
	[HS_EMAIL_HARD_BOUNCE_REASON] [varchar](4095) NULL,
	[HS_EMAIL_HARD_BOUNCE_REASON_ENUM] [varchar](4095) NULL,
	[HS_EMAIL_QUARANTINED] [int] NULL,
	[HS_EMAIL_QUARANTINED_REASON] [varchar](4095) NULL,
	[HS_EMAIL_RECIPIENT_FATIGUE_RECOVERY_TIME] [datetime] NULL,
	[HS_EMAIL_SENDS_SINCE_LAST_ENGAGEMENT] [bigint] NULL,
	[HS_EMAILCONFIRMATIONSTATUS] [varchar](4095) NULL,
	[HS_FACEBOOK_AD_CLICKED] [int] NULL,
	[HS_FACEBOOK_CLICK_ID] [varchar](4095) NULL,
	[HS_FACEBOOKID] [varchar](4095) NULL,
	[HS_FEEDBACK_LAST_NPS_FOLLOW_UP] [varchar](4095) NULL,
	[HS_FEEDBACK_LAST_NPS_RATING] [varchar](4095) NULL,
	[HS_FEEDBACK_LAST_SURVEY_DATE] [datetime] NULL,
	[HS_FEEDBACK_SHOW_NPS_WEB_SURVEY] [int] NULL,
	[HS_FIRST_ENGAGEMENT_OBJECT_ID] [bigint] NULL,
	[HS_GOOGLE_CLICK_ID] [varchar](4095) NULL,
	[HS_GOOGLEPLUSID] [varchar](4095) NULL,
	[HS_IP_TIMEZONE] [varchar](4095) NULL,
	[HS_IS_CONTACT] [int] NULL,
	[HS_IS_UNWORKED] [int] NULL,
	[HS_LAST_SALES_ACTIVITY_DATE] [datetime] NULL,
	[HS_LAST_SALES_ACTIVITY_TIMESTAMP] [datetime] NULL,
	[HS_LASTMODIFIEDDATE] [datetime] NULL,
	[HS_LATEST_SEQUENCE_ENDED_DATE] [datetime] NULL,
	[HS_LATEST_SEQUENCE_ENROLLED] [bigint] NULL,
	[HS_LATEST_SEQUENCE_ENROLLED_DATE] [datetime] NULL,
	[HS_LATEST_SEQUENCE_FINISHED_DATE] [datetime] NULL,
	[HS_LATEST_SEQUENCE_UNENROLLED_DATE] [datetime] NULL,
	[HS_LEAD_STATUS] [varchar](4095) NULL,
	[HS_LEGAL_BASIS] [varchar](4095) NULL,
	[HS_LINKEDINID] [varchar](4095) NULL,
	[HS_MARKETABLE_REASON_ID] [varchar](4095) NULL,
	[HS_MARKETABLE_REASON_TYPE] [varchar](4095) NULL,
	[HS_MARKETABLE_STATUS] [varchar](4095) NULL,
	[HS_MARKETABLE_UNTIL_RENEWAL] [varchar](4095) NULL,
	[HS_MERGED_OBJECT_IDS] [varchar](4095) NULL,
	[HS_PREDICTIVECONTACTSCORE_V2] [bigint] NULL,
	[HS_PREDICTIVESCORINGTIER] [varchar](4095) NULL,
	[HS_SA_FIRST_ENGAGEMENT_DATE] [datetime] NULL,
	[HS_SA_FIRST_ENGAGEMENT_DESCR] [varchar](4095) NULL,
	[HS_SA_FIRST_ENGAGEMENT_OBJECT_TYPE] [varchar](4095) NULL,
	[HS_SALES_EMAIL_LAST_CLICKED] [datetime] NULL,
	[HS_SALES_EMAIL_LAST_OPENED] [datetime] NULL,
	[HS_SEARCHABLE_CALCULATED_INTERNATIONAL_MOBILE_NUMBER] [varchar](255) NULL,
	[HS_SEARCHABLE_CALCULATED_INTERNATIONAL_PHONE_NUMBER] [varchar](255) NULL,
	[HS_SEARCHABLE_CALCULATED_MOBILE_NUMBER] [varchar](255) NULL,
	[HS_SEARCHABLE_CALCULATED_PHONE_NUMBER] [varchar](255) NULL,
	[HS_SEQUENCES_ENROLLED_COUNT] [bigint] NULL,
	[HS_SEQUENCES_IS_ENROLLED] [int] NULL,
	[HS_TESTPURGE] [varchar](4095) NULL,
	[HS_TESTROLLBACK] [varchar](4095) NULL,
	[HS_TIME_BETWEEN_CONTACT_CREATION_AND_DEAL_CLOSE] [bigint] NULL,
	[HS_TIME_BETWEEN_CONTACT_CREATION_AND_DEAL_CREATION] [bigint] NULL,
	[HS_TIME_TO_FIRST_ENGAGEMENT] [bigint] NULL,
	[HS_TIME_TO_MOVE_FROM_LEAD_TO_CUSTOMER] [bigint] NULL,
	[HS_TIME_TO_MOVE_FROM_MARKETINGQUALIFIEDLEAD_TO_CUSTOMER] [bigint] NULL,
	[HS_TIME_TO_MOVE_FROM_OPPORTUNITY_TO_CUSTOMER] [bigint] NULL,
	[HS_TIME_TO_MOVE_FROM_SALESQUALIFIEDLEAD_TO_CUSTOMER] [bigint] NULL,
	[HS_TIME_TO_MOVE_FROM_SUBSCRIBER_TO_CUSTOMER] [bigint] NULL,
	[HS_TWITTERID] [varchar](4095) NULL,
	[HS_UNIQUE_CREATION_KEY] [varchar](4095) NULL,
	[HS_UPDATED_BY_USER_ID] [bigint] NULL,
	[HS_USER_IDS_OF_ALL_OWNERS] [varchar](4095) NULL,
	[HUBSPOT_OWNER_ASSIGNEDDATE] [datetime] NULL,
	[IP_CITY] [varchar](4095) NULL,
	[IP_COUNTRY] [varchar](4095) NULL,
	[IP_COUNTRY_CODE] [varchar](4095) NULL,
	[IP_LATLON] [varchar](4095) NULL,
	[IP_STATE] [varchar](4095) NULL,
	[IP_STATE_CODE] [varchar](4095) NULL,
	[IP_ZIPCODE] [varchar](4095) NULL,
	[JOB_FUNCTION] [varchar](4095) NULL,
	[LAST_INVOICE_DATE] [datetime] NULL,
	[LASTMODIFIEDDATE] [datetime] NULL,
	[LEAD_SOURCE] [varchar](4095) NULL,
	[MARITAL_STATUS] [varchar](4095) NULL,
	[MILITARY_STATUS] [varchar](4095) NULL,
	[MOST_USED_LAB] [varchar](4095) NULL,
	[NEW_CUSTOMER] [varchar](4095) NULL,
	[NEW_DR_DATE] [datetime] NULL,
	[NO_OF_CHAIRS] [varchar](4095) NULL,
	[NPI] [varchar](4095) NULL,
	[NUM_ASSOCIATED_DEALS] [bigint] NULL,
	[NUM_CONVERSION_EVENTS] [bigint] NULL,
	[NUM_UNIQUE_CONVERSION_EVENTS] [bigint] NULL,
	[PERSONALIZED_INVITE_LINK] [varchar](4095) NULL,
	[PRACTICE_GROUP_NAME] [varchar](4095) NULL,
	[PRACTICE_NAME] [varchar](4095) NULL,
	[PROSPECT] [varchar](4095) NULL,
	[REC_ID] [bigint] NULL,
	[RECENT_CONVERSION_DATE] [datetime] NULL,
	[RECENT_CONVERSION_EVENT_NAME] [varchar](4095) NULL,
	[RECENT_DEAL_AMOUNT] [bigint] NULL,
	[RECENT_DEAL_CLOSE_DATE] [datetime] NULL,
	[RELATIONSHIP_STATUS] [varchar](4095) NULL,
	[SALES6MO_CB_ALLCERA] [bigint] NULL,
	[SALES6MO_CB_METAL] [bigint] NULL,
	[SALES6MO_CB_ZIRC] [bigint] NULL,
	[SALES6MO_IMP] [bigint] NULL,
	[SALES6MO_ORTHO] [bigint] NULL,
	[SALES6MO_REM] [bigint] NULL,
	[SALES6MO_SLEEP] [bigint] NULL,
	[SALES6MO_SPLINT] [bigint] NULL,
	[SCHOOL] [varchar](4095) NULL,
	[SENIORITY] [varchar](4095) NULL,
	[SHIPPING_OPTIONS] [varchar](4095) NULL,
	[SIZE_OF_PRACTICE] [bigint] NULL,
	[SLIPPAGE_CHECK] [varchar](4095) NULL,
	[SOURCE] [varchar](4095) NULL,
	[START_DATE] [varchar](4095) NULL,
	[STATE_LIST] [varchar](4095) NULL,
	[TEST_CASE_SOURCE_MULTI] [varchar](4095) NULL,
	[TEST_INVOICE_DATE] [datetime] NULL,
	[TESTFDBACK] [varchar](4095) NULL,
	[TITLE] [varchar](4095) NULL,
	[TOTAL_REVENUE] [bigint] NULL,
	[USER_NAME__TEST_] [varchar](4095) NULL,
	[WORK_EMAIL] [varchar](4095) NULL,
	[ZOOM_WEBINAR_ATTENDANCE_AVERAGE_DURATION] [bigint] NULL,
	[ZOOM_WEBINAR_ATTENDANCE_COUNT] [bigint] NULL,
	[ZOOM_WEBINAR_JOINLINK] [varchar](4095) NULL,
	[ZOOM_WEBINAR_REGISTRATION_COUNT] [bigint] NULL,
	[FIRSTNAME] [varchar](4095) NULL,
	[HS_ANALYTICS_FIRST_URL] [varchar](4095) NULL,
	[HS_EMAIL_DELIVERED] [bigint] NULL,
	[HS_EMAIL_OPTOUT_10297881] [varchar](4095) NULL,
	[HS_EMAIL_OPTOUT_10602975] [varchar](4095) NULL,
	[HS_EMAIL_OPTOUT_10603168] [varchar](4095) NULL,
	[HS_EMAIL_OPTOUT_10727467] [varchar](4095) NULL,
	[HS_EMAIL_OPTOUT_10990453] [varchar](4095) NULL,
	[TWITTERHANDLE] [varchar](4095) NULL,
	[CURRENTLYINWORKFLOW] [varchar](4095) NULL,
	[FOLLOWERCOUNT] [bigint] NULL,
	[HS_ANALYTICS_LAST_URL] [varchar](4095) NULL,
	[HS_EMAIL_OPEN] [bigint] NULL,
	[LASTNAME] [varchar](4095) NULL,
	[HS_ANALYTICS_NUM_PAGE_VIEWS] [bigint] NULL,
	[HS_EMAIL_CLICK] [bigint] NULL,
	[SALUTATION] [varchar](4095) NULL,
	[TWITTERPROFILEPHOTO] [varchar](4095) NULL,
	[EMAIL] [varchar](4095) NULL,
	[HS_ANALYTICS_NUM_VISITS] [bigint] NULL,
	[HS_EMAIL_BOUNCE] [bigint] NULL,
	[HS_PERSONA] [varchar](4095) NULL,
	[HS_SOCIAL_LAST_ENGAGEMENT] [datetime] NULL,
	[HS_ANALYTICS_NUM_EVENT_COMPLETIONS] [bigint] NULL,
	[HS_EMAIL_OPTOUT] [int] NULL,
	[HS_SOCIAL_TWITTER_CLICKS] [bigint] NULL,
	[MOBILEPHONE] [varchar](4095) NULL,
	[PHONE] [varchar](4095) NULL,
	[FAX] [varchar](4095) NULL,
	[HS_ANALYTICS_FIRST_TIMESTAMP] [datetime] NULL,
	[HS_EMAIL_LAST_EMAIL_NAME] [varchar](4095) NULL,
	[HS_EMAIL_LAST_SEND_DATE] [datetime] NULL,
	[HS_SOCIAL_FACEBOOK_CLICKS] [bigint] NULL,
	[ADDRESS] [varchar](4095) NULL,
	[ENGAGEMENTS_LAST_MEETING_BOOKED] [datetime] NULL,
	[ENGAGEMENTS_LAST_MEETING_BOOKED_CAMPAIGN] [varchar](4095) NULL,
	[ENGAGEMENTS_LAST_MEETING_BOOKED_MEDIUM] [varchar](4095) NULL,
	[ENGAGEMENTS_LAST_MEETING_BOOKED_SOURCE] [varchar](4095) NULL,
	[HS_ANALYTICS_FIRST_VISIT_TIMESTAMP] [datetime] NULL,
	[HS_EMAIL_LAST_OPEN_DATE] [datetime] NULL,
	[HS_LATEST_MEETING_ACTIVITY] [datetime] NULL,
	[HS_SALES_EMAIL_LAST_REPLIED] [datetime] NULL,
	[HS_SOCIAL_LINKEDIN_CLICKS] [bigint] NULL,
	[HUBSPOT_OWNER_ID] [varchar](4095) NULL,
	[NOTES_LAST_CONTACTED] [datetime] NULL,
	[NOTES_LAST_UPDATED] [datetime] NULL,
	[NOTES_NEXT_ACTIVITY_DATE] [datetime] NULL,
	[NUM_CONTACTED_NOTES] [bigint] NULL,
	[NUM_NOTES] [bigint] NULL,
	[OWNEREMAIL] [varchar](4095) NULL,
	[OWNERNAME] [varchar](4095) NULL,
	[SURVEYMONKEYEVENTLASTUPDATED] [bigint] NULL,
	[WEBINAREVENTLASTUPDATED] [bigint] NULL,
	[CITY] [varchar](4095) NULL,
	[HS_ANALYTICS_LAST_TIMESTAMP] [datetime] NULL,
	[HS_EMAIL_LAST_CLICK_DATE] [datetime] NULL,
	[HS_SOCIAL_GOOGLE_PLUS_CLICKS] [bigint] NULL,
	[HUBSPOT_TEAM_ID] [varchar](4095) NULL,
	[LINKEDINBIO] [varchar](4095) NULL,
	[TWITTERBIO] [varchar](4095) NULL,
	[HS_ALL_OWNER_IDS] [varchar](4095) NULL,
	[HS_ANALYTICS_LAST_VISIT_TIMESTAMP] [datetime] NULL,
	[HS_EMAIL_FIRST_SEND_DATE] [datetime] NULL,
	[HS_SOCIAL_NUM_BROADCAST_CLICKS] [bigint] NULL,
	[STATE] [varchar](4095) NULL,
	[HS_ALL_TEAM_IDS] [varchar](4095) NULL,
	[HS_ANALYTICS_SOURCE] [varchar](4095) NULL,
	[HS_EMAIL_FIRST_OPEN_DATE] [datetime] NULL,
	[ZIP] [varchar](4095) NULL,
	[COUNTRY] [varchar](4095) NULL,
	[HS_ALL_ACCESSIBLE_TEAM_IDS] [varchar](4095) NULL,
	[HS_ANALYTICS_SOURCE_DATA_1] [varchar](4095) NULL,
	[HS_EMAIL_FIRST_CLICK_DATE] [datetime] NULL,
	[LINKEDINCONNECTIONS] [bigint] NULL,
	[HS_ANALYTICS_SOURCE_DATA_2] [varchar](4095) NULL,
	[HS_EMAIL_IS_INELIGIBLE] [int] NULL,
	[HS_LANGUAGE] [varchar](4095) NULL,
	[KLOUTSCOREGENERAL] [bigint] NULL,
	[HS_ANALYTICS_FIRST_REFERRER] [varchar](4095) NULL,
	[HS_EMAIL_FIRST_REPLY_DATE] [datetime] NULL,
	[JOBTITLE] [varchar](4095) NULL,
	[PHOTO] [varchar](4095) NULL,
	[HS_ANALYTICS_LAST_REFERRER] [varchar](4095) NULL,
	[HS_EMAIL_LAST_REPLY_DATE] [datetime] NULL,
	[MESSAGE] [varchar](4095) NULL,
	[CLOSEDATE] [datetime] NULL,
	[HS_ANALYTICS_AVERAGE_PAGE_VIEWS] [bigint] NULL,
	[HS_EMAIL_REPLIED] [bigint] NULL,
	[HS_ANALYTICS_REVENUE] [bigint] NULL,
	[HS_LIFECYCLESTAGE_LEAD_DATE] [datetime] NULL,
	[HS_LIFECYCLESTAGE_MARKETINGQUALIFIEDLEAD_DATE] [datetime] NULL,
	[HS_LIFECYCLESTAGE_OPPORTUNITY_DATE] [datetime] NULL,
	[LIFECYCLESTAGE] [varchar](4095) NULL,
	[HS_LIFECYCLESTAGE_SALESQUALIFIEDLEAD_DATE] [datetime] NULL,
	[CREATEDATE] [datetime] NULL,
	[HS_LIFECYCLESTAGE_EVANGELIST_DATE] [datetime] NULL,
	[HS_LIFECYCLESTAGE_CUSTOMER_DATE] [datetime] NULL,
	[HUBSPOTSCORE] [bigint] NULL,
	[COMPANY] [varchar](4095) NULL,
	[HS_LIFECYCLESTAGE_SUBSCRIBER_DATE] [datetime] NULL,
	[HS_LIFECYCLESTAGE_OTHER_DATE] [datetime] NULL,
	[WEBSITE] [varchar](4095) NULL,
	[NUMEMPLOYEES] [varchar](4095) NULL,
	[ANNUALREVENUE] [varchar](4095) NULL,
	[INDUSTRY] [varchar](4095) NULL,
	[ASSOCIATEDCOMPANYID] [bigint] NULL,
	[ASSOCIATEDCOMPANYLASTUPDATED] [bigint] NULL,
	[HS_PREDICTIVECONTACTSCOREBUCKET] [varchar](4095) NULL,
	[HS_PREDICTIVECONTACTSCORE] [bigint] NULL,
	[ALUMNI_DEPARTURE_DETAIL] [varchar](4095) NULL,
	[ALUMNI_STATS] [varchar](4095) NULL,
	[ALUMNI_STATUS] [varchar](4095) NULL,
	[NEWCUST_INTERESTS] [varchar](4095) NULL,
	[NEWCUST_REASON] [varchar](4095) NULL,
	[HS_USER_IDS_OF_ALL_NOTIFICATION_FOLLOWERS] [varchar](4095) NULL,
	[HS_USER_IDS_OF_ALL_NOTIFICATION_UNFOLLOWERS] [varchar](4095) NULL,
	[SLIPPAGE_LAST_SENT_DATE] [datetime] NULL,
	[HS_PIPELINE] [varchar](4095) NULL,
	[CONTACT_REASON] [varchar](4095) NULL,
	[HS_TIMEZONE] [varchar](4095) NULL,
	[HS_DATE_ENTERED_CUSTOMER] [datetime] NULL,
	[HS_DATE_ENTERED_EVANGELIST] [datetime] NULL,
	[HS_DATE_ENTERED_LEAD] [datetime] NULL,
	[HS_DATE_ENTERED_MARKETINGQUALIFIEDLEAD] [datetime] NULL,
	[HS_DATE_ENTERED_OPPORTUNITY] [datetime] NULL,
	[HS_DATE_ENTERED_OTHER] [datetime] NULL,
	[HS_DATE_ENTERED_SALESQUALIFIEDLEAD] [datetime] NULL,
	[HS_DATE_ENTERED_SUBSCRIBER] [datetime] NULL,
	[HS_DATE_EXITED_CUSTOMER] [datetime] NULL,
	[HS_DATE_EXITED_EVANGELIST] [datetime] NULL,
	[HS_DATE_EXITED_LEAD] [datetime] NULL,
	[HS_DATE_EXITED_MARKETINGQUALIFIEDLEAD] [datetime] NULL,
	[HS_DATE_EXITED_OPPORTUNITY] [datetime] NULL,
	[HS_DATE_EXITED_OTHER] [datetime] NULL,
	[HS_DATE_EXITED_SALESQUALIFIEDLEAD] [datetime] NULL,
	[HS_DATE_EXITED_SUBSCRIBER] [datetime] NULL,
	[HS_TIME_IN_CUSTOMER] [bigint] NULL,
	[HS_TIME_IN_EVANGELIST] [bigint] NULL,
	[HS_TIME_IN_LEAD] [bigint] NULL,
	[HS_TIME_IN_MARKETINGQUALIFIEDLEAD] [bigint] NULL,
	[HS_TIME_IN_OPPORTUNITY] [bigint] NULL,
	[HS_TIME_IN_OTHER] [bigint] NULL,
	[HS_TIME_IN_SALESQUALIFIEDLEAD] [bigint] NULL,
	[HS_TIME_IN_SUBSCRIBER] [bigint] NULL,
	[HS_SEQUENCES_ACTIVELY_ENROLLED_COUNT] [bigint] NULL,
	[HS_LATEST_SOURCE] [varchar](4095) NULL,
	[HS_LATEST_SOURCE_DATA_1] [varchar](4095) NULL,
	[HS_LATEST_SOURCE_DATA_2] [varchar](4095) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DSGHSPROPERTY]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSGHSPROPERTY](
	[PROPERTYID] [int] NULL,
	[OBJECT] [varchar](50) NULL,
	[NAME] [varchar](100) NULL,
	[TYPE] [varchar](50) NULL,
	[LABEL] [varchar](100) NULL,
	[DESCRIPTION] [varchar](255) NULL,
	[GROUPNAME] [varchar](50) NULL,
	[DISPLAYORDER] [int] NULL,
	[CALCULATED] [int] NULL,
	[READONLYVALUE] [int] NULL,
	[PRIMARY_KEY] [int] NULL,
	[DELETED] [int] NULL,
	[HSTYPE] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DSGPRACTICEGROUPINFO]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSGPRACTICEGROUPINFO](
	[PRACTICEGROUPID] [int] NULL,
	[ABBVNAME] [varchar](5) NULL,
	[CUSTOMERTYPEID] [varchar](20) NULL,
	[NAM] [int] NULL,
	[ANNUALSPEND] [decimal](19, 4) NULL,
	[NUMBERSITES] [int] NULL,
	[PRIMARYCONTACT] [varchar](40) NULL,
	[PRIMARYCONTACTPHONE] [varchar](20) NULL,
	[PRIMARYCONTACTCELL] [varchar](20) NULL,
	[PRIMARYCONTACTEMAIL] [varchar](50) NULL,
	[CORPADDRESS1] [varchar](40) NULL,
	[CORPADDRESS2] [varchar](40) NULL,
	[CORPCITY] [varchar](30) NULL,
	[CORPSTATE] [varchar](10) NULL,
	[CORPZIPCODE] [varchar](10) NULL,
	[CORPCOUNTRY] [varchar](30) NULL,
	[WEBPORTAL] [int] NULL,
	[VALIDEMAILDOMAINS] [varchar](200) NULL,
	[DSOTOCORE] [int] NULL,
	[COMMISSIONLEVEL] [int] NULL,
	[DSOTOCOREBP] [int] NULL,
	[NAMREGIONMGR] [varchar](20) NULL,
	[DOCTORPOTENTIAL] [int] NULL,
	[CONTRACTSTART] [datetime] NULL,
	[PGPR] [int] NULL,
	[STATEMENTDELIVERY] [char](1) NULL,
	[RESOURCESURL] [varchar](500) NULL,
	[PLAYBOOKURL] [varchar](500) NULL,
	[WATERMARKWT] [int] NULL,
	[INVOICEDOCTYPE] [int] NULL,
	[CASEFEEDBACKQR] [int] NULL,
	[KAMREGIONMGR] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DSGUNITGROUPS]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSGUNITGROUPS](
	[UNITGROUPID] [varchar](20) NULL,
	[XSELLCATEGORY] [varchar](13) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dummy_table]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dummy_table](
	[Column1] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMPLOYEES]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLOYEES](
	[EMPLOYEEID] [varchar](20) NULL,
	[LASTNAME] [varchar](40) NULL,
	[FIRSTNAME] [varchar](40) NULL,
	[ADDRESS] [varchar](40) NULL,
	[CITY] [varchar](30) NULL,
	[STATE] [varchar](10) NULL,
	[ZIPCODE] [char](10) NULL,
	[PHONE] [char](20) NULL,
	[TEAMID] [varchar](20) NULL,
	[PRINTBARCODE] [int] NULL,
	[LASTMODIFIEDBY] [varchar](30) NULL,
	[LASTMODIFIEDTIME] [datetime] NULL,
	[ACTIVE] [int] NULL,
	[HIREDATE] [datetime] NULL,
	[DEPARTMENT] [varchar](20) NULL,
	[PAYRATE] [float] NULL,
	[PAYTYPE] [varchar](40) NULL,
	[LASTRAISEAMOUNT] [float] NULL,
	[LASTREVIEW] [datetime] NULL,
	[POSITION] [varchar](50) NULL,
	[TERMINATIONDATE] [datetime] NULL,
	[TERMINATIONREASON] [text] NULL,
	[TECHPAY] [int] NULL,
	[FACILITYID] [varchar](20) NULL,
	[PAYROLLDEPT] [varchar](20) NULL,
	[SUBDEPARTMENTID] [varchar](20) NULL,
	[STARTTIME] [datetime] NULL,
	[PAYROLLDEPARTMENTID] [varchar](20) NULL,
	[MINUNITS] [int] NULL,
	[MAXUNITS] [int] NULL,
	[DAILYHOURS] [numeric](10, 4) NULL,
	[EMPLOYEESCHEDULETYPEID] [int] NULL,
	[DLPLUSTOUCHPASSWORD] [varchar](20) NULL,
	[PASSWORDLASTCHANGED] [datetime] NULL,
	[HRISID] [varchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMPLOYEETASKS]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLOYEETASKS](
	[EMPLOYEEID] [varchar](20) NULL,
	[TASKID] [varchar](20) NULL,
	[SKILLLEVEL] [int] NULL,
	[PAYLEVEL] [int] NULL,
	[EXCLUDEFROMSCHEDULING] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GLOBALSETTINGS]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GLOBALSETTINGS](
	[LABNAME] [varchar](40) NULL,
	[LABADDRESS1] [varchar](40) NULL,
	[LABADDRESS2] [varchar](40) NULL,
	[LABCITY] [varchar](30) NULL,
	[LABSTATE] [varchar](10) NULL,
	[LABZIPCODE] [char](10) NULL,
	[LABPHONE] [char](20) NULL,
	[LABFAX] [char](20) NULL,
	[CURRENTYEAR] [int] NULL,
	[INVOICEFORMFNAME] [varchar](255) NULL,
	[STATEMENTFORMFNAME] [varchar](255) NULL,
	[WORKTICKETFORMFNAME] [varchar](255) NULL,
	[RECEIVABLEFORMFNAME] [varchar](255) NULL,
	[DATASTRUCTUREVERSION] [int] NULL,
	[FORCESHIPDATE] [int] NULL,
	[FORCEDUEDATE] [int] NULL,
	[CHECKMATERIALSONINVOICE] [int] NULL,
	[SETDATEDUETODATESCANNED] [int] NULL,
	[CREDITBYPERCENT] [int] NULL,
	[EXPORTSTART] [int] NULL,
	[EXPORTBYDOCTOR] [int] NULL,
	[MISCPRODUCTACCOUNT] [varchar](10) NULL,
	[SERVICECHARGEACCOUNT] [varchar](10) NULL,
	[PAYMENTACCOUNT] [varchar](10) NULL,
	[RECEIVABLESACCOUNT] [varchar](10) NULL,
	[PREVIOUSSC] [decimal](19, 4) NULL,
	[PREVIOUSMISC] [decimal](19, 4) NULL,
	[PREVIOUSPAYMENT] [decimal](19, 4) NULL,
	[PREVIOUSRECEIVABLES] [decimal](19, 4) NULL,
	[WEEKLYBILLINGDAY] [int] NULL,
	[SEMIMONTHLYBILLINGDAY1] [int] NULL,
	[SEMIMONTHLYBILLINGDAY2] [int] NULL,
	[MONTHLYBILLINGDAY] [int] NULL,
	[FACILITYID] [varchar](20) NULL,
	[DEFAULTPRODFAC] [varchar](20) NULL,
	[RETAINEDSALES] [float] NULL,
	[CUTOFFDAYS] [int] NULL,
	[KEYIDLETIMEOUT] [int] NULL,
	[USINGCYCLECODES] [int] NULL,
	[CLERK] [varchar](20) NULL,
	[MAXTRYNUM] [int] NULL,
	[REQUESTDIR] [varchar](100) NULL,
	[ERRORLOG] [varchar](100) NULL,
	[ESTIMATEFORMFNAME] [varchar](250) NULL,
	[SERVERLOCATION] [varchar](250) NULL,
	[SOSPLIT] [float] NULL,
	[PFSPLIT] [float] NULL,
	[SALESACCT] [varchar](4) NULL,
	[CREDITACCT] [varchar](4) NULL,
	[RECIEVEACCT] [varchar](4) NULL,
	[TAXACCT] [varchar](4) NULL,
	[SHIPACCT] [varchar](4) NULL,
	[DIVISION] [varchar](2) NULL,
	[CODPRODUCT] [varchar](20) NULL,
	[BULKMAILPERMIT] [varchar](40) NULL,
	[PRODIN] [int] NULL,
	[DEPTIN] [int] NULL,
	[DEFAULTPRODUCTIONFACILITY] [varchar](20) NULL,
	[TIMEDIFFERENCE] [int] NULL,
	[ORIGINFACILITYBYDOCTOR] [int] NULL,
	[CHOOSEORIGINFACILITY] [int] NULL,
	[LABCOUNTRY] [varchar](30) NULL,
	[CLOCKOUTONMAXHOURS] [int] NULL,
	[MAXHOURSONCLOCK] [int] NULL,
	[AUTOMATICDOCACCNUMS] [int] NULL,
	[CODPRICE] [decimal](19, 4) NULL,
	[USESTOOTHCHART] [int] NULL,
	[USESPRODUCTTASKSSALESPERCENT] [int] NULL,
	[CALLACTION] [int] NULL,
	[SHOWCASEALERTSONSAVE] [int] NULL,
	[SCHEDULINGTYPE] [int] NULL,
	[CODPRODUCTID] [varchar](20) NULL,
	[CARRIERID] [varchar](20) NULL,
	[FORMATCASEINSTRUCTIONS] [int] NULL,
	[MULTIPLYPAYLEVELBYUNITS] [int] NULL,
	[SCHEDULECUTOFFDAYS] [int] NULL,
	[DUPLICATEACCOUNTNUMBERS] [int] NULL,
	[USECUTOFFTIMEFORSCHEDULE] [int] NULL,
	[SCHEDULECUTOFFTIME] [datetime] NULL,
	[VALIDATEDUEDATEONCASES] [int] NULL,
	[INACTIVE] [int] NULL,
	[ADDSCANSFORADDITIONALUNITS] [int] NULL,
	[REJECTSCANSFORREMOVEDUNITS] [int] NULL,
	[MOVESCANSTONEWPRODUCT] [int] NULL,
	[REJECTSCANSFOROLDPRODUCT] [int] NULL,
	[SHOWINSTRUCTIONSSCREEN] [int] NULL,
	[STATEMENTNOTES] [text] NULL,
	[CALCMIDMONTHSERVICECHARGE] [int] NULL,
	[NOWTPASTDUEDATE] [int] NULL,
	[LISTORDER] [int] NULL,
	[SCHEDULEPROMPTONPRODUCTCHANGE] [int] NULL,
	[AREACODE] [varchar](3) NULL,
	[HIDEEMPLOYEEIDS] [int] NULL,
	[NOREMAKECREDIT] [int] NULL,
	[COPYLINKTOCASECOMMENTS] [int] NULL,
	[SCHEDULESTARTTIME] [datetime] NULL,
	[SCHEDULEENDTIME] [datetime] NULL,
	[LOADBALANCINGTIME] [datetime] NULL,
	[SCHEDULETIMEBLOCK] [int] NULL,
	[USEINTERNATIONALPHONENUMBERS] [int] NULL,
	[CHECKFORPANUSAGE] [int] NULL,
	[IGNOREMAXUNITS] [int] NULL,
	[NORESCHEDULEWHENEDITINGTASKS] [int] NULL,
	[COUNTMETALSFORPRODUCTSTATS] [int] NULL,
	[NOCASESOVERCREDITLIMIT] [int] NULL,
	[CREDITCASEFROMSAMELEDGERFIELD] [int] NULL,
	[PANNUMBERISREADONLY] [int] NULL,
	[USEPURCHASEORDERS] [int] NULL,
	[CASEIDINALTERNATECASEID] [int] NULL,
	[CASEENTRYTASKID] [varchar](20) NULL,
	[CASEUPDATETASKID] [varchar](20) NULL,
	[CASEINVOICETASKID] [varchar](20) NULL,
	[CASEUNINVOICETASKID] [varchar](20) NULL,
	[PREFERENCESINCASEINSTRUCTION] [int] NULL,
	[FILESERVERLOCATION] [varchar](255) NULL,
	[PRODUCTQUANTITYFROMTOOTHSTR] [int] NULL,
	[UPDATESHIPDATEONINVOICING] [int] NULL,
	[PRINTERPROFILE] [text] NULL,
	[RUSHAFFECTSSHIPDATE] [int] NULL,
	[BACKWARDSSCHEDULEFROMSHIPDATE] [int] NULL,
	[PAYMENTFORMFNAME] [varchar](255) NULL,
	[PURCHASEORDERFORMFNAME] [varchar](255) NULL,
	[CYCLECODEPRINTERPROFILE] [text] NULL,
	[ALLOWADDINGTOREASONSLIST] [int] NULL,
	[COPYREMAKECASEPANNUMBER] [int] NULL,
	[CASEDATEINISREADONLY] [int] NULL,
	[NEGATIVEQUANTITYFORCASES] [int] NULL,
	[VALIDATETOOTHSTRING] [int] NULL,
	[UNPOSTRECEIVABLESATUNINVOICING] [int] NULL,
	[CONFIRMMETALATINVOICING] [int] NULL,
	[PASSWORDEXPIRATIONDAYS] [int] NULL,
	[LOCKCOMMENTSATINVOICING] [int] NULL,
	[ALLOWBLANKPASSWORDS] [int] NULL,
	[PASSWORDLENGTH] [int] NULL,
	[PASSWORDNUMBERS] [int] NULL,
	[PASSWORDLETTERS] [int] NULL,
	[PASSWORDSPECIALCHARS] [int] NULL,
	[INVOICENOTES] [text] NULL,
	[WTFROMORIGINFACILITY] [int] NULL,
	[ALLOWADDTOSPECIALACTIONSLIST] [int] NULL,
	[PRODUCTIONFACILITYBYCASE] [int] NULL,
	[REQUIREITEMCHECKOUTFORINVOICE] [int] NULL,
	[AUTOSHIPPINGACCOUNTNUMBER] [varchar](50) NULL,
	[FEDEXACCTNUM] [varchar](50) NULL,
	[REQUIREREMAKEREASON] [int] NULL,
	[EIN] [varchar](15) NULL,
	[UPSACCTNUM] [varchar](10) NULL,
	[PRODMINVAL] [int] NULL,
	[PRODMAXVAL] [int] NULL,
	[ALLDOCALERTS] [int] NULL,
	[USEMAXSCHEDUNITS] [int] NULL,
	[DEFAULTCASEDUEDATEHOUR] [int] NULL,
	[REQUIRECASEDUEDATE] [int] NULL,
	[FORCEZEROTIMEBLOCKTOENDOFDAY] [int] NULL,
	[AUTOMATICALLYADDIFAFTERCUTOFF] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MANUALCASEPRODUCTS]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MANUALCASEPRODUCTS](
	[CASEID] [int] NULL,
	[LISTORDER] [int] NULL,
	[DESCRIPTION] [varchar](40) NULL,
	[UNITPRICE] [decimal](19, 4) NULL,
	[QUANTITY] [numeric](11, 5) NULL,
	[TAXABLEPORTION] [numeric](5, 2) NULL,
	[DEPARTMENTID] [varchar](20) NULL,
	[TAXID] [varchar](20) NULL,
	[DISCOUNTID] [varchar](20) NULL,
	[DISCOUNTGIVEN] [decimal](19, 4) NULL,
	[ORIGINFACILITY] [varchar](20) NULL,
	[PRODUCTIONFACILITY] [varchar](20) NULL,
	[SURCHARGEID] [varchar](20) NULL,
	[SURCHARGEADDED] [decimal](19, 4) NULL,
	[MANUALCASEPRODUCTID] [int] NULL,
	[LINKTO] [int] NULL,
	[TOTALCHARGE] [decimal](19, 4) NULL,
	[USEDISCOUNTPERCENT] [int] NULL,
	[USESURCHARGEPERCENT] [int] NULL,
	[ISSPECIALDISCOUNT] [int] NULL,
	[ISSPECIALSURCHARGE] [int] NULL,
	[DISCOUNTPERCENT] [decimal](19, 4) NULL,
	[SURCHARGEPERCENT] [decimal](19, 4) NULL,
	[CREDITINVOICEAMOUNT] [decimal](19, 4) NULL,
	[CREDITINVOICEQUANTITY] [numeric](11, 5) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MATERIALS]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MATERIALS](
	[MATERIALID] [varchar](20) NULL,
	[DESCRIPTION] [varchar](40) NULL,
	[LISTORDER] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentTypes]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentTypes](
	[PaymentTypeID] [nvarchar](20) NULL,
	[Description] [nvarchar](40) NULL,
	[ListOrder] [int] NULL,
	[SystemEntry] [smallint] NULL,
	[GLAccountNumber] [int] NULL,
	[GLDivision] [int] NULL,
	[GLDepartment] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRACTICEGROUPS]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRACTICEGROUPS](
	[PRACTICEGROUPID] [int] NULL,
	[PRACTICENAME] [varchar](60) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRICELISTS]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRICELISTS](
	[PRICELISTID] [varchar](20) NULL,
	[DESCRIPTION] [varchar](40) NULL,
	[LISTORDER] [int] NULL,
	[CURRENCYID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRICELISTS_06212023]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRICELISTS_06212023](
	[PRICELISTID] [varchar](20) NULL,
	[DESCRIPTION] [varchar](40) NULL,
	[LISTORDER] [int] NULL,
	[CURRENCYID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCTS]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCTS](
	[PRODUCTID] [varchar](20) NULL,
	[DESCRIPTION] [varchar](255) NULL,
	[TICKETDESCRIPTION] [varchar](255) NULL,
	[OLDPRODUCTID] [varchar](20) NULL,
	[PRODUCTTYPEID] [varchar](20) NULL,
	[MAJORGROUPID] [varchar](20) NULL,
	[MINORGROUPID] [varchar](20) NULL,
	[DEPARTMENTID] [varchar](20) NULL,
	[SUBDEPARTMENTID] [varchar](20) NULL,
	[UNITGROUPID] [varchar](20) NULL,
	[UNITVALUE] [float] NULL,
	[ROYALTYID] [varchar](20) NULL,
	[ACCOUNTINGCATEGORY] [varchar](10) NULL,
	[PREVIOUSLYEXPORTED] [decimal](19, 4) NULL,
	[METAL] [int] NULL,
	[VARIABLEPRICE] [int] NULL,
	[ANALYZE] [int] NULL,
	[DISCOUNTABLE] [int] NULL,
	[REMAKEDISCOUNT] [int] NULL,
	[SPLIT] [int] NULL,
	[DISCONTINUED] [int] NULL,
	[TAXABLE] [int] NULL,
	[SPLITDOLLARS] [decimal](19, 4) NULL,
	[COST] [decimal](19, 4) NULL,
	[MARKUP] [numeric](5, 2) NULL,
	[LASTTASK] [varchar](20) NULL,
	[LASTMODIFIEDBY] [varchar](30) NULL,
	[LASTMODIFIEDTIME] [datetime] NULL,
	[ZEROPRICED] [int] NULL,
	[ISSHIPPROD] [int] NULL,
	[LABORPERCENT] [numeric](5, 2) NULL,
	[MATERIALSPERCENT] [numeric](5, 2) NULL,
	[INVOICENOTES] [text] NULL,
	[DATEDISCONTINUED] [datetime] NULL,
	[WHODISCONTINUED] [varchar](30) NULL,
	[ADAPRODUCTID] [varchar](20) NULL,
	[ADADESCRIPTION] [varchar](40) NULL,
	[RECID] [int] NULL,
	[DONTSHOWONWT] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCTSALESHISTORY]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCTSALESHISTORY](
	[PRODUCTSALESHISTORYID] [int] NULL,
	[CASEID] [int] NULL,
	[BILLPERIOD] [int] NULL,
	[DOCTORID] [varchar](20) NULL,
	[BILLTO] [varchar](20) NULL,
	[INVOICEDATE] [datetime] NULL,
	[SALESPERSONID] [varchar](20) NULL,
	[COMMISSIONRATE] [numeric](5, 2) NULL,
	[COMMISSION] [decimal](19, 4) NULL,
	[ORIGINFACILITY] [varchar](20) NULL,
	[PRODUCTIONFACILITY] [varchar](20) NULL,
	[PRODUCTID] [varchar](40) NULL,
	[DEPARTMENTID] [varchar](20) NULL,
	[PERCENTAGE] [numeric](5, 2) NULL,
	[DOLLARSSOLD] [decimal](19, 4) NULL,
	[REMAKEDOLLARS] [decimal](19, 4) NULL,
	[TOTALTAX] [decimal](19, 4) NULL,
	[UNITS] [numeric](10, 4) NULL,
	[REMAKEID] [varchar](20) NULL,
	[REMAKEREASONID] [int] NULL,
	[REMAKES] [numeric](10, 4) NULL,
	[ISSPLIT] [int] NULL,
	[ISDEDUCTION] [int] NULL,
	[ISMANUAL] [int] NULL,
	[ISINVENTORYITEM] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productsaleshistory_20210511]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productsaleshistory_20210511](
	[PRODUCTSALESHISTORYID] [int] NULL,
	[CASEID] [int] NULL,
	[BILLPERIOD] [int] NULL,
	[DOCTORID] [varchar](20) NULL,
	[BILLTO] [varchar](20) NULL,
	[INVOICEDATE] [datetime] NULL,
	[SALESPERSONID] [varchar](20) NULL,
	[COMMISSIONRATE] [numeric](5, 2) NULL,
	[COMMISSION] [decimal](19, 4) NULL,
	[ORIGINFACILITY] [varchar](20) NULL,
	[PRODUCTIONFACILITY] [varchar](20) NULL,
	[PRODUCTID] [varchar](40) NULL,
	[DEPARTMENTID] [varchar](20) NULL,
	[PERCENTAGE] [numeric](5, 2) NULL,
	[DOLLARSSOLD] [decimal](19, 4) NULL,
	[REMAKEDOLLARS] [decimal](19, 4) NULL,
	[TOTALTAX] [decimal](19, 4) NULL,
	[UNITS] [numeric](10, 4) NULL,
	[REMAKEID] [varchar](20) NULL,
	[REMAKEREASONID] [int] NULL,
	[REMAKES] [numeric](10, 4) NULL,
	[ISSPLIT] [int] NULL,
	[ISDEDUCTION] [int] NULL,
	[ISMANUAL] [int] NULL,
	[ISINVENTORYITEM] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[REASONS]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REASONS](
	[REASONID] [int] NULL,
	[REASON] [varchar](255) NULL,
	[ISFORREMAKE] [int] NULL,
	[ISFORCREDITINVOICE] [int] NULL,
	[ISFORDISCOUNT] [int] NULL,
	[ISFORSURCHARGE] [int] NULL,
	[LISTORDER] [int] NULL,
	[ISFORPAYMENTDEBIT] [int] NULL,
	[ISFORREMAKEERRORCODE] [int] NULL,
	[ISFORINVENTORY] [int] NULL,
	[ISFOROFFHOLD] [int] NULL,
	[ISFORONHOLD] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RECEIVABLES]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RECEIVABLES](
	[RECEIVABLEID] [int] NULL,
	[DOCTORID] [varchar](20) NULL,
	[SUBACCOUNTDOCTORID] [varchar](20) NULL,
	[KEEPLEDGERFORSUBACCOUNT] [int] NULL,
	[KIND] [int] NULL,
	[METHOD] [int] NULL,
	[DATEPOSTED] [datetime] NULL,
	[DATEBILLED] [datetime] NULL,
	[BILLPERIOD] [int] NULL,
	[AMOUNT] [decimal](19, 4) NULL,
	[DISCOUNTAMOUNT] [decimal](19, 4) NULL,
	[AMOUNTFROMNEGATIVEDETAIL] [decimal](19, 4) NULL,
	[UNAPPLIEDAMOUNT] [decimal](19, 4) NULL,
	[REFERENCE] [varchar](20) NULL,
	[COMMENTS] [varchar](255) NULL,
	[PAYMENTTYPEID] [varchar](20) NULL,
	[CREDITCARDTRANSACTIONID] [int] NULL,
	[CASEID] [int] NULL,
	[LINKTO] [int] NULL,
	[REASONID] [int] NULL,
	[ISREVERSED] [int] NULL,
	[ISREVERSAL] [int] NULL,
	[ISPAYABLE] [int] NULL,
	[ENTEREDBYSETBILLTOPROCESS] [int] NULL,
	[GLACCOUNTNUMBER] [int] NULL,
	[GLDIVISION] [int] NULL,
	[GLDEPARTMENT] [int] NULL,
	[BEENINGLEXPORT] [int] NULL,
	[LASTMODIFIEDBY] [varchar](30) NULL,
	[LASTMODIFIEDTIME] [datetime] NULL,
	[WHOENTERED] [varchar](30) NULL,
	[WHENENTERED] [datetime] NULL,
	[OLDRECEIVABLEID] [int] NULL,
	[EXCHANGERATEID] [int] NULL,
	[CURRENCYID] [int] NULL,
	[FOREIGNCURRENCYAMOUNT] [decimal](19, 4) NULL,
	[FOREIGNCURRENCYDISCOUNTAMOUNT] [decimal](19, 4) NULL,
	[FOREIGNCURRENCYAMOUNTFROMNEGATIVEDETAIL] [decimal](19, 4) NULL,
	[FOREIGNCURRENCYUNAPPLIEDAMOUNT] [decimal](19, 4) NULL,
	[NEEDSTOBEFIXED] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RECEIVABLETRANSACTIONS]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RECEIVABLETRANSACTIONS](
	[RECEIVABLETRANSACTIONID] [int] NULL,
	[DOCTORID] [varchar](20) NULL,
	[SUBACCOUNTDOCTORID] [varchar](20) NULL,
	[RECEIVABLEID] [int] NULL,
	[CASEID] [int] NULL,
	[AMOUNT] [decimal](19, 4) NULL,
	[DATEBILLED] [datetime] NULL,
	[BEENINGLEXPORT] [int] NULL,
	[BILLPERIOD] [int] NULL,
	[LINKTO] [int] NULL,
	[APPLIED] [int] NULL,
	[EXCHANGERATEID] [int] NULL,
	[CREATED] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[REMAKEERRORCODES]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REMAKEERRORCODES](
	[ERRORCODE] [varchar](20) NULL,
	[SYSTEMENTRY] [int] NULL,
	[LISTORDER] [int] NULL,
	[REASONID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[REMAKES]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REMAKES](
	[REMAKEID] [varchar](20) NULL,
	[PERCENTAGE] [numeric](5, 2) NULL,
	[REASONID] [int] NULL,
	[LISTORDER] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TASKS]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TASKS](
	[TASKID] [varchar](20) NULL,
	[DESCRIPTION] [varchar](40) NULL,
	[TASKCLASSID] [varchar](20) NULL,
	[DEPARTMENTID] [varchar](20) NULL,
	[SCHEDULEORDER] [int] NULL,
	[NUMBEROFTIMEBLOCKS] [int] NULL,
	[SCHEDULINGUNITSPER] [real] NULL,
	[SCANAFTERINVOICE] [int] NULL,
	[ISSCANNED] [int] NULL,
	[PRINTBARCODE] [int] NULL,
	[PRINTWORKLOADS] [int] NULL,
	[PRINTLATE] [int] NULL,
	[LASTMODIFIEDBY] [varchar](30) NULL,
	[LASTMODIFIEDTIME] [datetime] NULL,
	[REQUIREDSCAN] [int] NULL,
	[ISSHIPTASK] [int] NULL,
	[DISCONTINUED] [int] NULL,
	[USEDEFAULTUNITS] [int] NULL,
	[UNITS] [numeric](10, 4) NULL,
	[TASKINDEX] [int] NULL,
	[ALLOWNONPRODUCTIONSCANS] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEAMS]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEAMS](
	[TEAMID] [varchar](20) NULL,
	[DESCRIPTION] [varchar](40) NULL,
	[LISTORDER] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp_fPriceChangeCatalog]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp_fPriceChangeCatalog](
	[PriceListID] [int] NULL,
	[PriceListName] [nvarchar](255) NULL,
	[PriceListKey] [nvarchar](255) NULL,
	[PriceListDescription] [varchar](max) NULL,
	[ListOrder] [nvarchar](50) NULL,
	[SetID] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[ProductID] [varchar](20) NULL,
	[ProductDescription] [varchar](40) NULL,
	[Price] [decimal](19, 4) NULL,
	[Discontinued] [int] NULL,
	[UpdateType] [varchar](59) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USERDEFINEDFIELDS]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERDEFINEDFIELDS](
	[USERDEFINEDFIELDID] [int] NULL,
	[USERDEFINEDFIELDTABLEID] [int] NULL,
	[FIELDNAME] [varchar](100) NULL,
	[LISTORDER] [int] NULL,
	[VISIBLE] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USERDEFINEDFIELDTABLES]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERDEFINEDFIELDTABLES](
	[USERDEFINEDFIELDTABLEID] [int] NULL,
	[TABLENAME] [varchar](100) NULL,
	[KEYFIELDNAME] [varchar](200) NULL,
	[IDENTITYIDFIELD] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[V4BILLINGRELATIONSHIP]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[V4BILLINGRELATIONSHIP](
	[ID] [int] NULL,
	[PARENTOBJECTTYPEID] [int] NULL,
	[PARENTOBJECTID] [int] NULL,
	[CHILDOBJECTTYPEID] [int] NULL,
	[CHILDOBJECTID] [int] NULL,
	[GUID] [char](36) NULL,
	[CREATED] [datetime] NULL,
	[CREATEDBY] [int] NULL,
	[MODIFIED] [datetime] NULL,
	[MODIFIEDBY] [int] NULL,
	[TIMESTAMP] [binary](8) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[V4PRICELISTSET_06212023]    Script Date: 6/27/2024 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[V4PRICELISTSET_06212023](
	[ID] [int] NULL,
	[PRICELISTID] [int] NULL,
	[ACTIVE] [int] NULL,
	[EFFECTIVEDATEUTC] [datetime] NULL,
	[DISCONTINUEDDATEUTC] [datetime] NULL,
	[CREATED] [datetime] NULL,
	[CREATEDBY] [int] NULL,
	[MODIFIED] [datetime] NULL,
	[MODIFIEDBY] [int] NULL,
	[TIMESTAMP] [binary](8) NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [DSG] SET  READ_WRITE 
GO
