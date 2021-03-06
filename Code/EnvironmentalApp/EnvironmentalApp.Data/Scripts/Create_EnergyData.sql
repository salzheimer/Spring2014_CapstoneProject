USE [master]
GO
/****** Object:  Database [EnergyData]    Script Date: 05/06/2014 20:43:18 ******/
CREATE DATABASE [EnergyData] ON  PRIMARY 
GO
ALTER DATABASE [EnergyData] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EnergyData].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EnergyData] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [EnergyData] SET ANSI_NULLS OFF
GO
ALTER DATABASE [EnergyData] SET ANSI_PADDING OFF
GO
ALTER DATABASE [EnergyData] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [EnergyData] SET ARITHABORT OFF
GO
ALTER DATABASE [EnergyData] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [EnergyData] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [EnergyData] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [EnergyData] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [EnergyData] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [EnergyData] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [EnergyData] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [EnergyData] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [EnergyData] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [EnergyData] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [EnergyData] SET  DISABLE_BROKER
GO
ALTER DATABASE [EnergyData] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [EnergyData] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [EnergyData] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [EnergyData] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [EnergyData] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [EnergyData] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [EnergyData] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [EnergyData] SET  READ_WRITE
GO
ALTER DATABASE [EnergyData] SET RECOVERY FULL
GO
ALTER DATABASE [EnergyData] SET  MULTI_USER
GO
ALTER DATABASE [EnergyData] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [EnergyData] SET DB_CHAINING OFF
GO
USE [EnergyData]
GO
/****** Object:  Table [dbo].[TOTAL_CAMPUS_STEAM]    Script Date: 05/06/2014 20:43:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TOTAL_CAMPUS_STEAM](
	[TotalCampusSteamID] [uniqueidentifier] NOT NULL,
	[Reading] [real] NOT NULL,
	[TimeStamp] [datetime] NOT NULL,
	[ReadingDateTime] [datetime] NOT NULL,
	[TimeStep] [int] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_TOTAL_CAMPUS_STEAM] PRIMARY KEY CLUSTERED 
(
	[TotalCampusSteamID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TOTAL_CAMPUS_ELECTRICITY]    Script Date: 05/06/2014 20:43:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TOTAL_CAMPUS_ELECTRICITY](
	[TotalCampusElectricityID] [uniqueidentifier] NOT NULL,
	[Reading] [real] NOT NULL,
	[TimeStamp] [datetime] NOT NULL,
	[ReadingDateTime] [datetime] NOT NULL,
	[TimeStep] [int] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_TOTAL_CAMPUS_ELECTRICITY] PRIMARY KEY CLUSTERED 
(
	[TotalCampusElectricityID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TOTAL_CAMPUS_CHILLED_WATER]    Script Date: 05/06/2014 20:43:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TOTAL_CAMPUS_CHILLED_WATER](
	[TotalCampusChilledWaterID] [uniqueidentifier] NOT NULL,
	[Reading] [real] NOT NULL,
	[TimeStamp] [datetime] NOT NULL,
	[ReadingDateTime] [datetime] NOT NULL,
	[TimeStep] [int] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_TOTAL_CAMPUS_CHILLED_WATER] PRIMARY KEY CLUSTERED 
(
	[TotalCampusChilledWaterID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TC_STEAM_SUM_BY_DAY]    Script Date: 05/06/2014 20:43:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TC_STEAM_SUM_BY_DAY](
	[TCSteamSumByDayID] [uniqueidentifier] NOT NULL,
	[ReadingDateTime] [datetime] NOT NULL,
	[DailySum] [real] NOT NULL,
	[DailyAverage] [real] NOT NULL,
	[HighValue] [real] NOT NULL,
	[LowValue] [real] NOT NULL,
 CONSTRAINT [PK_TC_STEAM_SUM_BY_DAY] PRIMARY KEY CLUSTERED 
(
	[TCSteamSumByDayID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TC_ELECTRICITY_SUM_BY_DAY]    Script Date: 05/06/2014 20:43:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TC_ELECTRICITY_SUM_BY_DAY](
	[TCElectricitySumByDayID] [uniqueidentifier] NOT NULL,
	[ReadingDateTime] [datetime] NOT NULL,
	[DailySum] [real] NOT NULL,
	[DailyAverage] [real] NOT NULL,
	[HighValue] [real] NOT NULL,
	[LowValue] [real] NOT NULL,
 CONSTRAINT [PK_TC_ELECTRICITY_SUM_BY_DAY] PRIMARY KEY CLUSTERED 
(
	[TCElectricitySumByDayID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TC_CHILLED_WATER_SUM_BY_DAY]    Script Date: 05/06/2014 20:43:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TC_CHILLED_WATER_SUM_BY_DAY](
	[TCChilledWaterSumByDayID] [uniqueidentifier] NOT NULL,
	[ReadingDateTime] [datetime] NOT NULL,
	[DailySum] [real] NOT NULL,
	[DailyAverage] [real] NOT NULL,
	[HighValue] [real] NOT NULL,
	[LowValue] [real] NOT NULL,
 CONSTRAINT [PK_TC_CHILLED_WATER_SUM_BY_DAY_1] PRIMARY KEY CLUSTERED 
(
	[TCChilledWaterSumByDayID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SOLAR_RADIATION_SUM_BY_DAY]    Script Date: 05/06/2014 20:43:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SOLAR_RADIATION_SUM_BY_DAY](
	[SolarRadiationSumByDayID] [uniqueidentifier] NOT NULL,
	[ReadingDateTime] [datetime] NOT NULL,
	[DailySum] [real] NOT NULL,
	[DailyAverage] [real] NOT NULL,
	[HighValue] [real] NOT NULL,
	[LowValue] [real] NOT NULL,
 CONSTRAINT [PK_SOLAR_RADIATION_SUM_BY_DAY_1] PRIMARY KEY CLUSTERED 
(
	[SolarRadiationSumByDayID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SOLAR_RADIATION]    Script Date: 05/06/2014 20:43:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SOLAR_RADIATION](
	[Solar_RadiationID] [uniqueidentifier] NOT NULL,
	[Reading] [real] NOT NULL,
	[TimeStamp] [datetime] NOT NULL,
	[ReadingDateTime] [datetime] NOT NULL,
	[TimeStep] [int] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_SOLAR_RADIATION_1] PRIMARY KEY CLUSTERED 
(
	[Solar_RadiationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SOLAR_CAR_CHARGING_SUM_BY_DAY]    Script Date: 05/06/2014 20:43:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SOLAR_CAR_CHARGING_SUM_BY_DAY](
	[SolarCarChargingSumByDayID] [uniqueidentifier] NOT NULL,
	[ReadingDateTime] [datetime] NOT NULL,
	[DailySum] [real] NOT NULL,
	[DailyAverage] [real] NOT NULL,
	[HighValue] [real] NOT NULL,
	[LowValue] [real] NOT NULL,
 CONSTRAINT [PK_SOLAR_CAR_CHARGING_SUM_BY_DAY_1] PRIMARY KEY CLUSTERED 
(
	[SolarCarChargingSumByDayID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SOLAR_CAR_CHARGING]    Script Date: 05/06/2014 20:43:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SOLAR_CAR_CHARGING](
	[SolarCarChargingID] [uniqueidentifier] NOT NULL,
	[Reading] [real] NOT NULL,
	[TimeStamp] [datetime] NOT NULL,
	[ReadingDateTime] [datetime] NOT NULL,
	[TimeStep] [int] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_SOLAR_CAR_CHARGING] PRIMARY KEY CLUSTERED 
(
	[SolarCarChargingID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SOLAR_BUS_BARN_SUM_BY_DAY]    Script Date: 05/06/2014 20:43:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SOLAR_BUS_BARN_SUM_BY_DAY](
	[SolarBusBarnSumByDayID] [uniqueidentifier] NOT NULL,
	[ReadingDateTime] [datetime] NOT NULL,
	[DailySum] [real] NOT NULL,
	[DailyAverage] [real] NOT NULL,
	[HighValue] [real] NOT NULL,
	[LowValue] [real] NOT NULL,
 CONSTRAINT [PK_SOLAR_BUS_BARN_SUM_BY_DAY_1] PRIMARY KEY CLUSTERED 
(
	[SolarBusBarnSumByDayID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SOLAR_BUS_BARN]    Script Date: 05/06/2014 20:43:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SOLAR_BUS_BARN](
	[SolarBusBarnID] [uniqueidentifier] NOT NULL,
	[Reading] [real] NOT NULL,
	[TimeStamp] [datetime] NOT NULL,
	[ReadingDateTime] [datetime] NOT NULL,
	[TimeStep] [int] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_SOLAR_BUS_BARN_1] PRIMARY KEY CLUSTERED 
(
	[SolarBusBarnID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 05/06/2014 20:43:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
 CONSTRAINT [Pk_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[REPORT]    Script Date: 05/06/2014 20:43:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REPORT](
	[ReportID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[StartTime] [time](0) NOT NULL,
	[EndTime] [time](0) NOT NULL,
	[DataType] [nvarchar](50) NOT NULL,
	[GraphStyle] [nvarchar](50) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[GeneratedBy] [nvarchar](50) NOT NULL,
	[Active] [bit] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_REPORT] PRIMARY KEY CLUSTERED 
(
	[ReportID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PBB_STEAM_SUM_BY_DAY]    Script Date: 05/06/2014 20:43:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PBB_STEAM_SUM_BY_DAY](
	[PBBSteamSumByDayID] [uniqueidentifier] NOT NULL,
	[ReadingDateTime] [datetime] NOT NULL,
	[DailySum] [real] NOT NULL,
	[DailyAverage] [real] NOT NULL,
	[HighValue] [real] NOT NULL,
	[LowValue] [real] NOT NULL,
 CONSTRAINT [PK_PBB_STEAM_SUM_BY_DAY_1] PRIMARY KEY CLUSTERED 
(
	[PBBSteamSumByDayID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PBB_STEAM]    Script Date: 05/06/2014 20:43:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PBB_STEAM](
	[PBB_SteamID] [uniqueidentifier] NOT NULL,
	[Reading] [real] NOT NULL,
	[TimeStamp] [datetime] NOT NULL,
	[ReadingDateTime] [datetime] NOT NULL,
	[TimeStep] [int] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_PBB_STEAM_1] PRIMARY KEY CLUSTERED 
(
	[PBB_SteamID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PBB_ELECTRIC_SUM_BY_DAY]    Script Date: 05/06/2014 20:43:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PBB_ELECTRIC_SUM_BY_DAY](
	[PBBElectricSumByDayID] [uniqueidentifier] NOT NULL,
	[ReadingDateTime] [datetime] NOT NULL,
	[DailySum] [real] NOT NULL,
	[DailyAverage] [real] NOT NULL,
	[HighValue] [real] NOT NULL,
	[LowValue] [real] NOT NULL,
 CONSTRAINT [PK_PBB_ELECTRIC_SUM_BY_DAY] PRIMARY KEY CLUSTERED 
(
	[PBBElectricSumByDayID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PBB_ELECTRIC]    Script Date: 05/06/2014 20:43:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PBB_ELECTRIC](
	[PBB_ElectricID] [uniqueidentifier] NOT NULL,
	[Reading] [real] NOT NULL,
	[TimeStamp] [datetime] NOT NULL,
	[ReadingDateTime] [datetime] NOT NULL,
	[TimeStep] [int] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_PBB_ELECTRIC_1] PRIMARY KEY CLUSTERED 
(
	[PBB_ElectricID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PBB_CHILLED_WATER_SUM_BY_DAY]    Script Date: 05/06/2014 20:43:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PBB_CHILLED_WATER_SUM_BY_DAY](
	[PBBChilledWaterSumByDayID] [uniqueidentifier] NOT NULL,
	[ReadingDateTime] [datetime] NOT NULL,
	[DailySum] [real] NOT NULL,
	[DailyAverage] [real] NOT NULL,
	[HighValue] [real] NOT NULL,
	[LowValue] [real] NOT NULL,
 CONSTRAINT [PK_PBB_CHILLED_WATER_SUM_BY_DAY] PRIMARY KEY CLUSTERED 
(
	[PBBChilledWaterSumByDayID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PBB_CHILLED_WATER]    Script Date: 05/06/2014 20:43:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PBB_CHILLED_WATER](
	[PBB_ChilledWaterID] [uniqueidentifier] NOT NULL,
	[Reading] [real] NOT NULL,
	[TimeStamp] [datetime] NOT NULL,
	[ReadingDateTime] [datetime] NOT NULL,
	[TimeStep] [int] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_PBB_CHILLED_WATER] PRIMARY KEY CLUSTERED 
(
	[PBB_ChilledWaterID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OUTSIDE_HUMIDITY]    Script Date: 05/06/2014 20:43:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OUTSIDE_HUMIDITY](
	[OutsideHumidityID] [uniqueidentifier] NOT NULL,
	[Reading] [real] NOT NULL,
	[TimeStamp] [datetime] NOT NULL,
	[ReadingDateTime] [datetime] NOT NULL,
	[TimeStep] [int] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_OUTSIDE_HUMIDITY_1] PRIMARY KEY CLUSTERED 
(
	[OutsideHumidityID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OUTSIDE_AIR_TEMP]    Script Date: 05/06/2014 20:43:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OUTSIDE_AIR_TEMP](
	[OutsideAirTempID] [uniqueidentifier] NOT NULL,
	[Reading] [real] NOT NULL,
	[TimeStamp] [datetime] NOT NULL,
	[ReadingDateTime] [datetime] NOT NULL,
	[TimeStep] [int] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_OUTSIDE_AIR_TEMP_1] PRIMARY KEY CLUSTERED 
(
	[OutsideAirTempID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HUMIDITY_SUM_BY_DAY]    Script Date: 05/06/2014 20:43:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HUMIDITY_SUM_BY_DAY](
	[HumiditySumByDayID] [uniqueidentifier] NOT NULL,
	[ReadingDateTime] [datetime] NOT NULL,
	[DailySum] [real] NOT NULL,
	[DailyAverage] [real] NOT NULL,
	[HighValue] [real] NOT NULL,
	[LowValue] [real] NOT NULL,
 CONSTRAINT [PK_HUMIDITY_SUM_BY_DAY] PRIMARY KEY CLUSTERED 
(
	[HumiditySumByDayID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AIR_TEMP_SUM_BY_DAY]    Script Date: 05/06/2014 20:43:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AIR_TEMP_SUM_BY_DAY](
	[AirTempSumByDayID] [uniqueidentifier] NOT NULL,
	[ReadingDateTime] [datetime] NOT NULL,
	[DailySum] [real] NOT NULL,
	[DailyAverage] [real] NOT NULL,
	[HighValue] [real] NOT NULL,
	[LowValue] [real] NOT NULL,
 CONSTRAINT [PK_AIR_TEMP_SUM_BY_DAY] PRIMARY KEY CLUSTERED 
(
	[AirTempSumByDayID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WIND_SUM_BY_DAY]    Script Date: 05/06/2014 20:43:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WIND_SUM_BY_DAY](
	[WindSumByDayID] [uniqueidentifier] NOT NULL,
	[ReadingDateTime] [datetime] NOT NULL,
	[DailySum] [real] NOT NULL,
	[DailyAverage] [real] NOT NULL,
	[HighValue] [real] NOT NULL,
	[LowValue] [real] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WIND]    Script Date: 05/06/2014 20:43:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WIND](
	[WindID] [uniqueidentifier] NOT NULL,
	[Reading] [real] NOT NULL,
	[TimeStamp] [datetime] NOT NULL,
	[ReadingDateTime] [datetime] NOT NULL,
	[TimeStep] [int] NOT NULL,
	[Status] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 05/06/2014 20:43:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[HawkId] [nvarchar](50) NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [Pk_UserRole] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [Fk_UserRole_Role]    Script Date: 05/06/2014 20:43:20 ******/
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [Fk_UserRole_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [Fk_UserRole_Role]
GO
