USE [master]
GO
/****** Object:  Database [kingdom_world0]    Script Date: 6/25/2017 10:55:05 AM ******/
CREATE DATABASE [kingdom_world0]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'tube', FILENAME = N'C:\Data\kingdom_world0.mdf' , SIZE = 14336KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'tube_log', FILENAME = N'C:\Data\kingdom_world0_log.ldf' , SIZE = 249024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [kingdom_world0] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [kingdom_world0].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [kingdom_world0] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [kingdom_world0] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [kingdom_world0] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [kingdom_world0] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [kingdom_world0] SET ARITHABORT OFF 
GO
ALTER DATABASE [kingdom_world0] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [kingdom_world0] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [kingdom_world0] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [kingdom_world0] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [kingdom_world0] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [kingdom_world0] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [kingdom_world0] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [kingdom_world0] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [kingdom_world0] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [kingdom_world0] SET  DISABLE_BROKER 
GO
ALTER DATABASE [kingdom_world0] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [kingdom_world0] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [kingdom_world0] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [kingdom_world0] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [kingdom_world0] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [kingdom_world0] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [kingdom_world0] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [kingdom_world0] SET RECOVERY FULL 
GO
ALTER DATABASE [kingdom_world0] SET  MULTI_USER 
GO
ALTER DATABASE [kingdom_world0] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [kingdom_world0] SET DB_CHAINING OFF 
GO
ALTER DATABASE [kingdom_world0] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [kingdom_world0] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [kingdom_world0] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'kingdom_world0', N'ON'
GO
ALTER DATABASE [kingdom_world0] SET QUERY_STORE = OFF
GO
USE [kingdom_world0]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [kingdom_world0]
GO
/****** Object:  User [tom]    Script Date: 6/25/2017 10:55:06 AM ******/
CREATE USER [tom] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_datareader] ADD MEMBER [tom]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [tom]
GO
/****** Object:  UserDefinedTableType [dbo].[BaseFetchTableType]    Script Date: 6/25/2017 10:55:06 AM ******/
CREATE TYPE [dbo].[BaseFetchTableType] AS TABLE(
	[base_id] [bigint] NULL,
	[base_type] [int] NULL,
	[profile_id] [bigint] NULL,
	[base_name] [varchar](50) NULL,
	[map_x] [int] NULL,
	[map_y] [int] NULL,
	[r1] [decimal](18, 2) NULL,
	[r2] [decimal](18, 2) NULL,
	[r3] [decimal](18, 2) NULL,
	[r4] [decimal](18, 2) NULL,
	[r5] [decimal](18, 2) NULL,
	[build_location] [int] NULL,
	[build_queue] [datetime] NULL,
	[build_time] [int] NULL,
	[research_queue] [datetime] NULL,
	[research_time] [int] NULL,
	[research_id] [int] NULL,
	[attack_queue] [datetime] NULL,
	[attack_time] [int] NULL,
	[attack_job_time] [int] NULL,
	[attack_return] [datetime] NULL,
	[attack_id] [bigint] NULL,
	[trade_queue] [datetime] NULL,
	[trade_time] [int] NULL,
	[trade_id] [bigint] NULL,
	[reinforce_queue] [datetime] NULL,
	[reinforce_time] [int] NULL,
	[reinforce_id] [int] NULL,
	[reinforce_action] [int] NULL,
	[transfer_queue] [datetime] NULL,
	[transfer_time] [int] NULL,
	[transfer_id] [bigint] NULL,
	[craft_queue] [datetime] NULL,
	[craft_time] [int] NULL,
	[hospital_queue] [datetime] NULL,
	[hospital_time] [int] NULL,
	[a_queue] [datetime] NULL,
	[a_time] [int] NULL,
	[b_queue] [datetime] NULL,
	[b_time] [int] NULL,
	[c_queue] [datetime] NULL,
	[c_time] [int] NULL,
	[d_queue] [datetime] NULL,
	[d_time] [int] NULL,
	[spy_queue] [datetime] NULL,
	[spy_time] [int] NULL,
	[spy] [int] NULL,
	[a1] [int] NULL,
	[a2] [int] NULL,
	[a3] [int] NULL,
	[b1] [int] NULL,
	[b2] [int] NULL,
	[b3] [int] NULL,
	[c1] [int] NULL,
	[c2] [int] NULL,
	[c3] [int] NULL,
	[d1] [int] NULL,
	[d2] [int] NULL,
	[d3] [int] NULL,
	[t_a1] [int] NULL,
	[t_a2] [int] NULL,
	[t_a3] [int] NULL,
	[t_b1] [int] NULL,
	[t_b2] [int] NULL,
	[t_b3] [int] NULL,
	[t_c1] [int] NULL,
	[t_c2] [int] NULL,
	[t_c3] [int] NULL,
	[t_d1] [int] NULL,
	[t_d2] [int] NULL,
	[t_d3] [int] NULL,
	[i_a1] [int] NULL,
	[i_a2] [int] NULL,
	[i_a3] [int] NULL,
	[i_b1] [int] NULL,
	[i_b2] [int] NULL,
	[i_b3] [int] NULL,
	[i_c1] [int] NULL,
	[i_c2] [int] NULL,
	[i_c3] [int] NULL,
	[i_d1] [int] NULL,
	[i_d2] [int] NULL,
	[i_d3] [int] NULL,
	[h_a1] [int] NULL,
	[h_a2] [int] NULL,
	[h_a3] [int] NULL,
	[h_b1] [int] NULL,
	[h_b2] [int] NULL,
	[h_b3] [int] NULL,
	[h_c1] [int] NULL,
	[h_c2] [int] NULL,
	[h_c3] [int] NULL,
	[h_d1] [int] NULL,
	[h_d2] [int] NULL,
	[h_d3] [int] NULL,
	[r_a1] [int] NULL,
	[r_a2] [int] NULL,
	[r_a3] [int] NULL,
	[r_b1] [int] NULL,
	[r_b2] [int] NULL,
	[r_b3] [int] NULL,
	[r_c1] [int] NULL,
	[r_c2] [int] NULL,
	[r_c3] [int] NULL,
	[r_d1] [int] NULL,
	[r_d2] [int] NULL,
	[r_d3] [int] NULL,
	[rt_a1] [int] NULL,
	[rt_a2] [int] NULL,
	[rt_a3] [int] NULL,
	[rt_b1] [int] NULL,
	[rt_b2] [int] NULL,
	[rt_b3] [int] NULL,
	[rt_c1] [int] NULL,
	[rt_c2] [int] NULL,
	[rt_c3] [int] NULL,
	[rt_d1] [int] NULL,
	[rt_d2] [int] NULL,
	[rt_d3] [int] NULL,
	[research_r1] [int] NULL,
	[research_r2] [int] NULL,
	[research_r3] [int] NULL,
	[research_r4] [int] NULL,
	[research_r5] [int] NULL,
	[research_research] [int] NULL,
	[research_training] [int] NULL,
	[research_march] [int] NULL,
	[research_attack] [int] NULL,
	[research_defense] [int] NULL,
	[research_load] [int] NULL,
	[item_r1] [int] NULL,
	[item_r2] [int] NULL,
	[item_r3] [int] NULL,
	[item_r4] [int] NULL,
	[item_r5] [int] NULL,
	[item_attack] [int] NULL,
	[item_defense] [int] NULL,
	[upkeep] [int] NULL,
	[r1_capacity] [decimal](18, 2) NULL,
	[r2_capacity] [decimal](18, 2) NULL,
	[r3_capacity] [decimal](18, 2) NULL,
	[r4_capacity] [decimal](18, 2) NULL,
	[r5_capacity] [decimal](18, 2) NULL,
	[r1_production] [float] NULL,
	[r2_production] [float] NULL,
	[r3_production] [float] NULL,
	[r4_production] [float] NULL,
	[r5_production] [float] NULL,
	[hero_boost_r1] [int] NULL,
	[hero_boost_r2] [int] NULL,
	[hero_boost_r3] [int] NULL,
	[hero_boost_r4] [int] NULL,
	[hero_boost_r5] [int] NULL,
	[hero_boost_build] [int] NULL,
	[hero_boost_research] [int] NULL,
	[hero_boost_training] [int] NULL,
	[hero_boost_march] [int] NULL,
	[hero_boost_trade] [int] NULL,
	[hero_boost_craft] [int] NULL,
	[hero_boost_attack] [int] NULL,
	[hero_boost_defense] [int] NULL,
	[hero_boost_life] [int] NULL,
	[hero_boost_a_attack] [int] NULL,
	[hero_boost_b_attack] [int] NULL,
	[hero_boost_c_attack] [int] NULL,
	[hero_boost_d_attack] [int] NULL,
	[hero_boost_heal] [int] NULL,
	[hero_boost_load] [int] NULL,
	[item_boost_r1] [int] NULL,
	[item_boost_r2] [int] NULL,
	[item_boost_r3] [int] NULL,
	[item_boost_r4] [int] NULL,
	[item_boost_r5] [int] NULL,
	[item_boost_attack] [int] NULL,
	[item_boost_defense] [int] NULL,
	[boost_r1] [int] NULL,
	[boost_r2] [int] NULL,
	[boost_r3] [int] NULL,
	[boost_r4] [int] NULL,
	[boost_r5] [int] NULL,
	[boost_attack] [int] NULL,
	[boost_defense] [int] NULL,
	[boost_build] [int] NULL,
	[boost_research] [int] NULL,
	[boost_training] [int] NULL,
	[boost_march] [int] NULL,
	[boost_trade] [int] NULL,
	[boost_craft] [int] NULL,
	[boost_life] [int] NULL,
	[boost_load] [int] NULL,
	[boost_a_attack] [int] NULL,
	[boost_b_attack] [int] NULL,
	[boost_c_attack] [int] NULL,
	[boost_d_attack] [int] NULL,
	[boost_heal] [int] NULL,
	[research_build] [int] NULL,
	[research_trade] [int] NULL,
	[research_craft] [int] NULL,
	[research_heal] [int] NULL,
	[research_a_attack] [int] NULL,
	[research_b_attack] [int] NULL,
	[research_c_attack] [int] NULL,
	[research_d_attack] [int] NULL,
	[research_life] [int] NULL,
	[research_a2] [int] NULL,
	[research_a3] [int] NULL,
	[research_b2] [int] NULL,
	[research_b3] [int] NULL,
	[research_c2] [int] NULL,
	[research_c3] [int] NULL,
	[research_d2] [int] NULL,
	[research_d3] [int] NULL,
	[a_a1] [int] NULL,
	[a_a2] [int] NULL,
	[a_a3] [int] NULL,
	[a_b1] [int] NULL,
	[a_b2] [int] NULL,
	[a_b3] [int] NULL,
	[a_c1] [int] NULL,
	[a_c2] [int] NULL,
	[a_c3] [int] NULL,
	[a_d1] [int] NULL,
	[a_d2] [int] NULL,
	[a_d3] [int] NULL,
	[a_r1] [int] NULL,
	[a_r2] [int] NULL,
	[a_r3] [int] NULL,
	[a_r4] [int] NULL,
	[a_r5] [int] NULL,
	[item_r1_ending] [datetime] NULL,
	[item_r2_ending] [datetime] NULL,
	[item_r3_ending] [datetime] NULL,
	[item_r4_ending] [datetime] NULL,
	[item_r5_ending] [datetime] NULL,
	[item_attack_ending] [datetime] NULL,
	[item_defense_ending] [datetime] NULL,
	[r1_boost_value] [int] NULL,
	[r2_boost_value] [int] NULL,
	[r3_boost_value] [int] NULL,
	[r4_boost_value] [int] NULL,
	[r5_boost_value] [int] NULL,
	[attack_boost_value] [int] NULL,
	[defense_boost_value] [int] NULL,
	[castle_level] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[BaseFetchTableType_old]    Script Date: 6/25/2017 10:55:10 AM ******/
CREATE TYPE [dbo].[BaseFetchTableType_old] AS TABLE(
	[base_id] [bigint] NULL,
	[base_type] [int] NULL,
	[profile_id] [bigint] NULL,
	[base_name] [varchar](50) NULL,
	[map_x] [int] NULL,
	[map_y] [int] NULL,
	[r1] [decimal](18, 2) NULL,
	[r2] [decimal](18, 2) NULL,
	[r3] [decimal](18, 2) NULL,
	[r4] [decimal](18, 2) NULL,
	[r5] [decimal](18, 2) NULL,
	[build_location] [int] NULL,
	[build_queue] [datetime] NULL,
	[build_time] [int] NULL,
	[research_queue] [datetime] NULL,
	[research_time] [int] NULL,
	[research_id] [int] NULL,
	[attack_queue] [datetime] NULL,
	[attack_time] [int] NULL,
	[attack_job_time] [int] NULL,
	[attack_return] [datetime] NULL,
	[attack_id] [bigint] NULL,
	[trade_queue] [datetime] NULL,
	[trade_time] [int] NULL,
	[trade_id] [bigint] NULL,
	[reinforce_queue] [datetime] NULL,
	[reinforce_time] [int] NULL,
	[reinforce_id] [int] NULL,
	[reinforce_action] [int] NULL,
	[transfer_queue] [datetime] NULL,
	[transfer_time] [datetime] NULL,
	[transfer_id] [bigint] NULL,
	[craft_queue] [datetime] NULL,
	[craft_time] [int] NULL,
	[hospital_queue] [datetime] NULL,
	[hospital_time] [int] NULL,
	[a_queue] [datetime] NULL,
	[a_time] [int] NULL,
	[b_queue] [datetime] NULL,
	[b_time] [int] NULL,
	[c_queue] [datetime] NULL,
	[c_time] [int] NULL,
	[d_queue] [datetime] NULL,
	[d_time] [int] NULL,
	[spy_queue] [datetime] NULL,
	[spy_time] [int] NULL,
	[spy] [int] NULL,
	[a1] [int] NULL,
	[a2] [int] NULL,
	[a3] [int] NULL,
	[b1] [int] NULL,
	[b2] [int] NULL,
	[b3] [int] NULL,
	[c1] [int] NULL,
	[c2] [int] NULL,
	[c3] [int] NULL,
	[d1] [int] NULL,
	[d2] [int] NULL,
	[d3] [int] NULL,
	[t_a1] [int] NULL,
	[t_a2] [int] NULL,
	[t_a3] [int] NULL,
	[t_b1] [int] NULL,
	[t_b2] [int] NULL,
	[t_b3] [int] NULL,
	[t_c1] [int] NULL,
	[t_c2] [int] NULL,
	[t_c3] [int] NULL,
	[t_d1] [int] NULL,
	[t_d2] [int] NULL,
	[t_d3] [int] NULL,
	[i_a1] [int] NULL,
	[i_a2] [int] NULL,
	[i_a3] [int] NULL,
	[i_b1] [int] NULL,
	[i_b2] [int] NULL,
	[i_b3] [int] NULL,
	[i_c1] [int] NULL,
	[i_c2] [int] NULL,
	[i_c3] [int] NULL,
	[i_d1] [int] NULL,
	[i_d2] [int] NULL,
	[i_d3] [int] NULL,
	[h_a1] [int] NULL,
	[h_a2] [int] NULL,
	[h_a3] [int] NULL,
	[h_b1] [int] NULL,
	[h_b2] [int] NULL,
	[h_b3] [int] NULL,
	[h_c1] [int] NULL,
	[h_c2] [int] NULL,
	[h_c3] [int] NULL,
	[h_d1] [int] NULL,
	[h_d2] [int] NULL,
	[h_d3] [int] NULL,
	[r_a1] [int] NULL,
	[r_a2] [int] NULL,
	[r_a3] [int] NULL,
	[r_b1] [int] NULL,
	[r_b2] [int] NULL,
	[r_b3] [int] NULL,
	[r_c1] [int] NULL,
	[r_c2] [int] NULL,
	[r_c3] [int] NULL,
	[r_d1] [int] NULL,
	[r_d2] [int] NULL,
	[r_d3] [int] NULL,
	[rt_a1] [int] NULL,
	[rt_a2] [int] NULL,
	[rt_a3] [int] NULL,
	[rt_b1] [int] NULL,
	[rt_b2] [int] NULL,
	[rt_b3] [int] NULL,
	[rt_c1] [int] NULL,
	[rt_c2] [int] NULL,
	[rt_c3] [int] NULL,
	[rt_d1] [int] NULL,
	[rt_d2] [int] NULL,
	[rt_d3] [int] NULL,
	[research_r1] [int] NULL,
	[research_r2] [int] NULL,
	[research_r3] [int] NULL,
	[research_r4] [int] NULL,
	[research_r5] [int] NULL,
	[research_research] [int] NULL,
	[research_training] [int] NULL,
	[research_march] [int] NULL,
	[research_attack] [int] NULL,
	[research_defense] [int] NULL,
	[research_load] [int] NULL,
	[item_r1] [int] NULL,
	[item_r2] [int] NULL,
	[item_r3] [int] NULL,
	[item_r4] [int] NULL,
	[item_r5] [int] NULL,
	[item_attack] [int] NULL,
	[item_defense] [int] NULL,
	[upkeep] [int] NULL,
	[r1_capacity] [decimal](18, 2) NULL,
	[r2_capacity] [decimal](18, 2) NULL,
	[r3_capacity] [decimal](18, 2) NULL,
	[r4_capacity] [decimal](18, 2) NULL,
	[r5_capacity] [decimal](18, 2) NULL,
	[r1_production] [float] NULL,
	[r2_production] [float] NULL,
	[r3_production] [float] NULL,
	[r4_production] [float] NULL,
	[r5_production] [float] NULL,
	[hero_boost_r1] [int] NULL,
	[hero_boost_r2] [int] NULL,
	[hero_boost_r3] [int] NULL,
	[hero_boost_r4] [int] NULL,
	[hero_boost_r5] [int] NULL,
	[hero_boost_build] [int] NULL,
	[hero_boost_research] [int] NULL,
	[hero_boost_training] [int] NULL,
	[hero_boost_march] [int] NULL,
	[hero_boost_trade] [int] NULL,
	[hero_boost_craft] [int] NULL,
	[hero_boost_attack] [int] NULL,
	[hero_boost_defense] [int] NULL,
	[hero_boost_life] [int] NULL,
	[hero_boost_a_attack] [int] NULL,
	[hero_boost_b_attack] [int] NULL,
	[hero_boost_c_attack] [int] NULL,
	[hero_boost_d_attack] [int] NULL,
	[hero_boost_heal] [int] NULL,
	[hero_boost_load] [int] NULL,
	[item_boost_r1] [int] NULL,
	[item_boost_r2] [int] NULL,
	[item_boost_r3] [int] NULL,
	[item_boost_r4] [int] NULL,
	[item_boost_r5] [int] NULL,
	[item_boost_attack] [int] NULL,
	[item_boost_defense] [int] NULL,
	[boost_r1] [int] NULL,
	[boost_r2] [int] NULL,
	[boost_r3] [int] NULL,
	[boost_r4] [int] NULL,
	[boost_r5] [int] NULL,
	[boost_attack] [int] NULL,
	[boost_defense] [int] NULL,
	[boost_build] [int] NULL,
	[boost_research] [int] NULL,
	[boost_training] [int] NULL,
	[boost_march] [int] NULL,
	[boost_trade] [int] NULL,
	[boost_craft] [int] NULL,
	[boost_life] [int] NULL,
	[boost_load] [int] NULL,
	[boost_a_attack] [int] NULL,
	[boost_b_attack] [int] NULL,
	[boost_c_attack] [int] NULL,
	[boost_d_attack] [int] NULL,
	[boost_heal] [int] NULL,
	[research_build] [int] NULL,
	[research_trade] [int] NULL,
	[research_craft] [int] NULL,
	[research_heal] [int] NULL,
	[research_a_attack] [int] NULL,
	[research_b_attack] [int] NULL,
	[research_c_attack] [int] NULL,
	[research_d_attack] [int] NULL,
	[research_life] [int] NULL,
	[research_a2] [int] NULL,
	[research_a3] [int] NULL,
	[research_b2] [int] NULL,
	[research_b3] [int] NULL,
	[research_c2] [int] NULL,
	[research_c3] [int] NULL,
	[research_d2] [int] NULL,
	[research_d3] [int] NULL,
	[a_a1] [int] NULL,
	[a_a2] [int] NULL,
	[a_a3] [int] NULL,
	[a_b1] [int] NULL,
	[a_b2] [int] NULL,
	[a_b3] [int] NULL,
	[a_c1] [int] NULL,
	[a_c2] [int] NULL,
	[a_c3] [int] NULL,
	[a_d1] [int] NULL,
	[a_d2] [int] NULL,
	[a_d3] [int] NULL,
	[a_r1] [int] NULL,
	[a_r2] [int] NULL,
	[a_r3] [int] NULL,
	[a_r4] [int] NULL,
	[a_r5] [int] NULL,
	[item_r1_ending] [datetime] NULL,
	[item_r2_ending] [datetime] NULL,
	[item_r3_ending] [datetime] NULL,
	[item_r4_ending] [datetime] NULL,
	[item_r5_ending] [datetime] NULL,
	[item_attack_ending] [datetime] NULL,
	[item_defense_ending] [datetime] NULL,
	[r1_boost_value] [int] NULL,
	[r2_boost_value] [int] NULL,
	[r3_boost_value] [int] NULL,
	[r4_boost_value] [int] NULL,
	[r5_boost_value] [int] NULL,
	[attack_boost_value] [int] NULL,
	[defense_boost_value] [int] NULL,
	[castle_level] [int] NULL
)
GO
/****** Object:  UserDefinedFunction [dbo].[fx_convertVarcharHexToDec]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fx_convertVarcharHexToDec] 
(@varHex varchar(8))
RETURNS int
AS
BEGIN
	
declare @val_int int
declare @val_hex varchar(10)

set @val_hex = @varHex

--convert hex-varchar to integer.
set @val_int =
      ((charindex(substring(right('00000000'+substring(@val_hex,3,8),
            8),1,1),'0123456789ABCDEF')-1)*power(16,7))
    + ((charindex(substring(right('00000000'+substring(@val_hex,3,8),
            8),2,1),'0123456789ABCDEF')-1)*power(16,6))
    + ((charindex(substring(right('00000000'+substring(@val_hex,3,8),
            8),3,1),'0123456789ABCDEF')-1)*power(16,5))
    + ((charindex(substring(right('00000000'+substring(@val_hex,3,8),
            8),4,1),'0123456789ABCDEF')-1)*power(16,4))
    + ((charindex(substring(right('00000000'+substring(@val_hex,3,8),
            8),5,1),'0123456789ABCDEF')-1)*power(16,3))
    + ((charindex(substring(right('00000000'+substring(@val_hex,3,8),
            8),6,1),'0123456789ABCDEF')-1)*power(16,2))
    + ((charindex(substring(right('00000000'+substring(@val_hex,3,8),
            8),7,1),'0123456789ABCDEF')-1)*power(16,1))
    + ((charindex(substring(right('00000000'+substring(@val_hex,3,8),
            8),8,1),'0123456789ABCDEF')-1)*power(16,0))
--display.
return @val_int
END

GO
/****** Object:  UserDefinedFunction [dbo].[fx_generateRandomNumber]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fx_generateRandomNumber](
	@guid as uniqueidentifier, 
	@intMin int =  0, 
	@intMax int = 10  )
RETURNS int
AS
BEGIN
	
	declare @tmp1 as int
	declare @tmp2 as numeric(10,3) 
	declare @tmp3 as numeric(10,3)

set @tmp1 = dbo.fx_convertVarcharHexToDec('0x' + right(cast(@guid as varchar(64)), 2)) 	

set @tmp2 = (@intMax - @intMin) / cast(255 as  numeric(10,3))	
--filter factor

set @tmp3 = (@tmp1 * @tmp2) + @intMin
  
return cast(round(@tmp3, 0) as int)

 
END
GO
/****** Object:  UserDefinedFunction [dbo].[fx_randTile]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fx_randTile](
@guid1 as uniqueidentifier,
@guid2 as uniqueidentifier )
RETURNS int
AS
BEGIN
DECLARE @rand_terrain int, @rand_level int
SET @rand_terrain = dbo.fx_generateRandomNumber(@guid1, 1, 6);
SET @rand_level = dbo.fx_generateRandomNumber(@guid2, 1, 3);
	
return @rand_terrain*10+@rand_level

END

GO
/****** Object:  Table [dbo].[build]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[build](
	[build_id] [bigint] IDENTITY(1,1) NOT NULL,
	[base_id] [bigint] NULL,
	[location] [int] NULL,
	[building_id] [int] NULL,
	[building_level] [int] NULL,
	[build_queue] [datetime] NOT NULL,
 CONSTRAINT [PK_building] PRIMARY KEY CLUSTERED 
(
	[build_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[base]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[base](
	[base_id] [bigint] IDENTITY(1,1) NOT NULL,
	[last_process] [datetime] NOT NULL,
	[last_attacked] [datetime] NOT NULL,
	[last_captured] [datetime] NOT NULL,
	[base_type] [int] NULL,
	[profile_id] [bigint] NULL,
	[previous_profile_id] [bigint] NULL,
	[base_name] [nvarchar](50) NULL,
	[map_x] [int] NULL,
	[map_y] [int] NULL,
	[r1] [decimal](18, 2) NOT NULL,
	[r2] [decimal](18, 2) NOT NULL,
	[r3] [decimal](18, 2) NOT NULL,
	[r4] [decimal](18, 2) NOT NULL,
	[r5] [decimal](18, 2) NOT NULL,
	[build_queue] [datetime] NOT NULL,
	[build_time] [int] NULL,
	[build_location] [int] NULL,
	[building_id] [bigint] NULL,
	[research_queue] [datetime] NOT NULL,
	[research_time] [int] NULL,
	[research_id] [bigint] NULL,
	[attack_queue] [datetime] NOT NULL,
	[attack_time] [int] NULL,
	[attack_job_time] [int] NULL,
	[attack_return] [datetime] NOT NULL,
	[attack_id] [bigint] NULL,
	[reinforce_queue] [datetime] NOT NULL,
	[reinforce_time] [int] NULL,
	[reinforce_id] [bigint] NULL,
	[reinforce_action] [int] NULL,
	[transfer_queue] [datetime] NOT NULL,
	[transfer_time] [int] NULL,
	[transfer_id] [bigint] NULL,
	[trade_queue] [datetime] NOT NULL,
	[trade_time] [int] NULL,
	[trade_id] [bigint] NULL,
	[craft_queue] [datetime] NOT NULL,
	[craft_time] [int] NULL,
	[hospital_queue] [datetime] NOT NULL,
	[hospital_time] [int] NULL,
	[a_queue] [datetime] NOT NULL,
	[a_time] [int] NULL,
	[b_queue] [datetime] NOT NULL,
	[b_time] [int] NULL,
	[c_queue] [datetime] NOT NULL,
	[c_time] [int] NULL,
	[d_queue] [datetime] NOT NULL,
	[d_time] [int] NULL,
	[spy_queue] [datetime] NOT NULL,
	[spy_time] [int] NULL,
	[spy] [int] NOT NULL,
	[a1] [int] NOT NULL,
	[a2] [int] NOT NULL,
	[a3] [int] NOT NULL,
	[b1] [int] NOT NULL,
	[b2] [int] NOT NULL,
	[b3] [int] NOT NULL,
	[c1] [int] NOT NULL,
	[c2] [int] NOT NULL,
	[c3] [int] NOT NULL,
	[d1] [int] NOT NULL,
	[d2] [int] NOT NULL,
	[d3] [int] NOT NULL,
	[t_a1] [int] NULL,
	[t_a2] [int] NULL,
	[t_a3] [int] NULL,
	[t_b1] [int] NULL,
	[t_b2] [int] NULL,
	[t_b3] [int] NULL,
	[t_c1] [int] NULL,
	[t_c2] [int] NULL,
	[t_c3] [int] NULL,
	[t_d1] [int] NULL,
	[t_d2] [int] NULL,
	[t_d3] [int] NULL,
	[i_a1] [int] NULL,
	[i_a2] [int] NULL,
	[i_a3] [int] NULL,
	[i_b1] [int] NULL,
	[i_b2] [int] NULL,
	[i_b3] [int] NULL,
	[i_c1] [int] NULL,
	[i_c2] [int] NULL,
	[i_c3] [int] NULL,
	[i_d1] [int] NULL,
	[i_d2] [int] NULL,
	[i_d3] [int] NULL,
	[h_a1] [int] NULL,
	[h_a2] [int] NULL,
	[h_a3] [int] NULL,
	[h_b1] [int] NULL,
	[h_b2] [int] NULL,
	[h_b3] [int] NULL,
	[h_c1] [int] NULL,
	[h_c2] [int] NULL,
	[h_c3] [int] NULL,
	[h_d1] [int] NULL,
	[h_d2] [int] NULL,
	[h_d3] [int] NULL,
	[r_a1] [int] NULL,
	[r_a2] [int] NULL,
	[r_a3] [int] NULL,
	[r_b1] [int] NULL,
	[r_b2] [int] NULL,
	[r_b3] [int] NULL,
	[r_c1] [int] NULL,
	[r_c2] [int] NULL,
	[r_c3] [int] NULL,
	[r_d1] [int] NULL,
	[r_d2] [int] NULL,
	[r_d3] [int] NULL,
	[rt_a1] [int] NULL,
	[rt_a2] [int] NULL,
	[rt_a3] [int] NULL,
	[rt_b1] [int] NULL,
	[rt_b2] [int] NULL,
	[rt_b3] [int] NULL,
	[rt_c1] [int] NULL,
	[rt_c2] [int] NULL,
	[rt_c3] [int] NULL,
	[rt_d1] [int] NULL,
	[rt_d2] [int] NULL,
	[rt_d3] [int] NULL,
	[a_a1] [int] NULL,
	[a_a2] [int] NULL,
	[a_a3] [int] NULL,
	[a_b1] [int] NULL,
	[a_b2] [int] NULL,
	[a_b3] [int] NULL,
	[a_c1] [int] NULL,
	[a_c2] [int] NULL,
	[a_c3] [int] NULL,
	[a_d1] [int] NULL,
	[a_d2] [int] NULL,
	[a_d3] [int] NULL,
	[a_r1] [int] NULL,
	[a_r2] [int] NULL,
	[a_r3] [int] NULL,
	[a_r4] [int] NULL,
	[a_r5] [int] NULL,
	[research_r1] [int] NULL,
	[research_r2] [int] NULL,
	[research_r3] [int] NULL,
	[research_r4] [int] NULL,
	[research_r5] [int] NULL,
	[research_build] [int] NULL,
	[research_research] [int] NULL,
	[research_march] [int] NULL,
	[research_trade] [int] NULL,
	[research_craft] [int] NULL,
	[research_heal] [int] NULL,
	[research_training] [int] NULL,
	[research_a_attack] [int] NULL,
	[research_b_attack] [int] NULL,
	[research_c_attack] [int] NULL,
	[research_d_attack] [int] NULL,
	[research_attack] [int] NULL,
	[research_defense] [int] NULL,
	[research_life] [int] NULL,
	[research_load] [int] NULL,
	[r1_boost_value] [int] NOT NULL,
	[r2_boost_value] [int] NOT NULL,
	[r3_boost_value] [int] NOT NULL,
	[r4_boost_value] [int] NOT NULL,
	[r5_boost_value] [int] NOT NULL,
	[attack_boost_value] [int] NOT NULL,
	[defense_boost_value] [int] NOT NULL,
	[item_r1] [int] NULL,
	[item_r2] [int] NULL,
	[item_r3] [int] NULL,
	[item_r4] [int] NULL,
	[item_r5] [int] NULL,
	[item_attack] [int] NULL,
	[item_defense] [int] NULL,
	[item_r1_ending] [datetime] NOT NULL,
	[item_r2_ending] [datetime] NOT NULL,
	[item_r3_ending] [datetime] NOT NULL,
	[item_r4_ending] [datetime] NOT NULL,
	[item_r5_ending] [datetime] NOT NULL,
	[item_attack_ending] [datetime] NOT NULL,
	[item_defense_ending] [datetime] NOT NULL,
	[research_a2] [int] NULL,
	[research_a3] [int] NULL,
	[research_b2] [int] NULL,
	[research_b3] [int] NULL,
	[research_c2] [int] NULL,
	[research_c3] [int] NULL,
	[research_d2] [int] NULL,
	[research_d3] [int] NULL,
	[protection_ending] [datetime] NOT NULL,
	[protection_time] [int] NOT NULL,
	[latest_captured_base_id] [int] NOT NULL,
	[is_attack_capture] [int] NOT NULL,
 CONSTRAINT [PK_base] PRIMARY KEY CLUSTERED 
(
	[base_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[View_BaseCastleLevel]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_BaseCastleLevel]
AS
SELECT        dbo.base.base_id, dbo.base.base_type, dbo.base.base_name, dbo.base.map_x, dbo.base.map_y, ISNULL(dbo.build.building_level, 1) AS building_level, 
                         dbo.base.profile_id, dbo.base.protection_time, dbo.base.protection_ending, CASE WHEN dbo.base.protection_ending < GETUTCDATE() 
                         THEN 0 ELSE 1 END AS under_protection, dbo.base.last_attacked, dbo.base.last_captured, dbo.base.last_process
FROM            dbo.base LEFT OUTER JOIN
                         dbo.build ON dbo.base.base_id = dbo.build.base_id AND dbo.build.location = 101 AND dbo.build.building_id = 101

GO
/****** Object:  Table [dbo].[building_level]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[building_level](
	[requirement_id] [int] NOT NULL,
	[building_id] [int] NULL,
	[building_level] [int] NULL,
	[r1] [int] NULL,
	[r2] [int] NULL,
	[r3] [int] NULL,
	[r4] [int] NULL,
	[r5] [int] NULL,
	[time] [int] NULL,
	[hero_xp] [int] NULL,
	[power] [int] NULL,
	[production] [int] NULL,
	[capacity] [int] NULL,
	[require1_building_id] [int] NULL,
	[require1_building_level] [int] NULL,
	[require2_building_id] [int] NULL,
	[require2_building_level] [int] NULL,
 CONSTRAINT [PK_building_requirement] PRIMARY KEY CLUSTERED 
(
	[requirement_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[View_Build]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Build]
AS
SELECT        build_id, base_id, location, building_id, build_queue, ISNULL
                             ((SELECT        CASE WHEN build_queue < GETUTCDATE() THEN dbo.build.building_level ELSE dbo.build.building_level - 1 END AS building_level), 0) 
                         AS Expr1, ISNULL
                             ((SELECT        production
                                 FROM            dbo.building_level
                                 WHERE        (building_id = dbo.build.building_id) AND (building_level = CASE WHEN build_queue < GETUTCDATE() 
                                                          THEN dbo.build.building_level ELSE dbo.build.building_level - 1 END)), 0) AS production, ISNULL
                             ((SELECT        capacity
                                 FROM            dbo.building_level AS building_level_1
                                 WHERE        (building_id = dbo.build.building_id) AND (building_level = CASE WHEN build_queue < GETUTCDATE() 
                                                          THEN dbo.build.building_level ELSE dbo.build.building_level - 1 END)), 0) AS capacity, ISNULL
                             ((SELECT        power
                                 FROM            dbo.building_level AS building_level_2
                                 WHERE        (building_id = dbo.build.building_id) AND (building_level = CASE WHEN build_queue < GETUTCDATE() 
                                                          THEN dbo.build.building_level ELSE dbo.build.building_level - 1 END)), 0) AS power
FROM            dbo.build

GO
/****** Object:  Table [dbo].[alliance]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[alliance](
	[alliance_id] [bigint] IDENTITY(1,1) NOT NULL,
	[leader_id] [bigint] NULL,
	[alliance_name] [nvarchar](50) NULL,
	[alliance_tag] [nvarchar](3) NULL,
	[alliance_logo] [int] NULL,
	[alliance_language] [int] NULL,
	[alliance_marquee] [nvarchar](max) NULL,
	[alliance_description] [nvarchar](max) NULL,
	[alliance_level] [int] NULL,
	[alliance_currency_first] [int] NULL,
	[alliance_currency_second] [int] NULL,
	[alliance_created] [datetime] NULL,
 CONSTRAINT [PK_alliance] PRIMARY KEY CLUSTERED 
(
	[alliance_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[profile]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[profile](
	[profile_id] [bigint] IDENTITY(1,1) NOT NULL,
	[uid] [nvarchar](50) NOT NULL,
	[date_found] [datetime] NOT NULL,
	[profile_name] [nvarchar](50) NULL,
	[profile_face] [int] NULL,
	[alliance_id] [bigint] NULL,
	[alliance_rank] [int] NULL,
	[xp] [int] NULL,
	[xp_gain] [int] NULL,
	[xp_history] [int] NULL,
	[xp_gain_a] [int] NULL,
	[xp_history_a] [int] NULL,
	[kills] [int] NULL,
	[kills_gain] [int] NULL,
	[kills_history] [int] NULL,
	[kills_gain_a] [int] NULL,
	[kills_history_a] [int] NULL,
	[troop_lost] [int] NULL,
	[attacks_won] [int] NULL,
	[attacks_lost] [int] NULL,
	[defenses_won] [int] NULL,
	[defenses_lost] [int] NULL,
	[players_scouted] [int] NULL,
	[currency_second] [int] NOT NULL,
	[tutorial_on] [int] NULL,
	[devicetoken] [varchar](100) NULL,
	[last_completed_tutorial_step] [int] NOT NULL,
	[current_mission_id] [int] NOT NULL,
	[mission_date_ending] [datetime] NULL,
	[purchase_times] [int] NULL,
	[bot_player] [int] NULL,
	[graphic_pack_id] [int] NULL,
 CONSTRAINT [PK_profile] PRIMARY KEY CLUSTERED 
(
	[profile_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hero]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hero](
	[hero_id] [bigint] IDENTITY(1,1) NOT NULL,
	[profile_id] [bigint] NULL,
	[hero_status] [int] NULL,
	[hero_name] [nvarchar](50) NULL,
	[hero_type] [nvarchar](50) NULL,
	[hero_xp] [int] NULL,
	[hero_xp_gain] [int] NULL,
	[hero_helmet] [int] NULL,
	[hero_armor] [int] NULL,
	[hero_boots] [int] NULL,
	[hero_weapon] [int] NULL,
	[hero_accessory] [int] NULL,
	[hero_gloves] [int] NULL,
	[hero_r1] [int] NULL,
	[hero_r2] [int] NULL,
	[hero_r3] [int] NULL,
	[hero_r4] [int] NULL,
	[hero_r5] [int] NULL,
	[hero_build] [int] NULL,
	[hero_research] [int] NULL,
	[hero_march] [int] NULL,
	[hero_trade] [int] NULL,
	[hero_craft] [int] NULL,
	[hero_heal] [int] NULL,
	[hero_training] [int] NULL,
	[hero_a_attack] [int] NULL,
	[hero_b_attack] [int] NULL,
	[hero_c_attack] [int] NULL,
	[hero_d_attack] [int] NULL,
	[hero_attack] [int] NULL,
	[hero_defense] [int] NULL,
	[hero_life] [int] NULL,
	[hero_load] [int] NULL,
 CONSTRAINT [PK_hero] PRIMARY KEY CLUSTERED 
(
	[hero_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[View_Profile]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Profile]
AS
SELECT        dbo.profile.profile_id, dbo.profile.uid, dbo.profile.date_found, dbo.profile.profile_name, dbo.profile.profile_face, dbo.profile.alliance_id, 
                         dbo.profile.alliance_rank, dbo.profile.xp, dbo.profile.xp_gain, dbo.profile.xp_history, dbo.profile.xp_gain_a, dbo.profile.xp_history_a, dbo.profile.kills, 
                         dbo.profile.kills_gain, dbo.profile.kills_history, dbo.profile.kills_gain_a, dbo.profile.kills_history_a, dbo.profile.troop_lost, dbo.profile.attacks_won, 
                         dbo.profile.attacks_lost, dbo.profile.defenses_won, dbo.profile.defenses_lost, dbo.profile.players_scouted, dbo.profile.currency_second, 
                         dbo.profile.kills / (dbo.profile.troop_lost + 1) AS kills_lost, dbo.profile.attacks_won + dbo.profile.defenses_won AS battles_won, 
                         dbo.profile.attacks_lost + dbo.profile.defenses_lost AS battles_lost, (dbo.profile.attacks_won + dbo.profile.defenses_won) 
                         / (dbo.profile.attacks_lost + dbo.profile.defenses_lost + 1) AS won_lost, dbo.alliance.leader_id, dbo.alliance.alliance_name, dbo.alliance.alliance_tag, 
                         dbo.alliance.alliance_marquee, dbo.alliance.alliance_created, dbo.alliance.alliance_logo, dbo.alliance.alliance_language, dbo.alliance.alliance_description, 
                         dbo.alliance.alliance_level, dbo.alliance.alliance_currency_first, dbo.alliance.alliance_currency_second, dbo.hero.hero_id, dbo.hero.hero_status, 
                         dbo.hero.hero_name, dbo.hero.hero_type, dbo.hero.hero_xp, dbo.hero.hero_xp_gain, dbo.hero.hero_helmet, dbo.hero.hero_armor, dbo.hero.hero_boots, 
                         dbo.hero.hero_weapon, dbo.hero.hero_accessory, dbo.hero.hero_gloves, dbo.hero.hero_r1, dbo.hero.hero_r2, dbo.hero.hero_r3, dbo.hero.hero_r4, 
                         dbo.hero.hero_r5, dbo.hero.hero_build, dbo.hero.hero_research, dbo.hero.hero_march, dbo.hero.hero_trade, dbo.hero.hero_craft, dbo.hero.hero_heal, 
                         dbo.hero.hero_training, dbo.hero.hero_a_attack, dbo.hero.hero_b_attack, dbo.hero.hero_c_attack, dbo.hero.hero_d_attack, dbo.hero.hero_attack, 
                         dbo.hero.hero_defense, dbo.hero.hero_life, dbo.hero.hero_load,
                             (SELECT        COUNT(profile_id) AS count
                               FROM            dbo.base
                               WHERE        (profile_id = dbo.profile.profile_id)) AS base_count, dbo.profile.tutorial_on, dbo.profile.last_completed_tutorial_step, 
                         dbo.profile.tutorial_on AS tutorial_on_start, dbo.profile.current_mission_id, dbo.profile.mission_date_ending, dbo.profile.graphic_pack_id
FROM            dbo.profile LEFT OUTER JOIN
                         dbo.alliance ON dbo.profile.alliance_id = dbo.alliance.alliance_id LEFT OUTER JOIN
                         dbo.hero ON dbo.profile.profile_id = dbo.hero.profile_id

GO
/****** Object:  View [dbo].[View_ProfileRank]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_ProfileRank]
AS
SELECT        profile_id, RANK() OVER (ORDER BY xp DESC) AS 'rank_xp', RANK() OVER (ORDER BY kills DESC) AS 'rank_kills', RANK() OVER (ORDER BY kills_lost DESC) AS 'rank_kills_lost', RANK() OVER (ORDER BY battles_won
                          DESC) AS 'rank_battles_won', RANK() OVER (ORDER BY attacks_won DESC) AS 'rank_attacks_won', RANK() OVER (ORDER BY defenses_won DESC) AS 'rank_defenses_won', RANK() OVER (ORDER BY won_lost DESC)
 AS 'rank_won_lost', RANK() OVER (ORDER BY players_scouted DESC) AS 'rank_players_scouted', RANK() OVER (ORDER BY base_count DESC) AS 'rank_base_count' 
FROM            View_Profile


GO
/****** Object:  View [dbo].[View_Alliance]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Alliance]
AS
SELECT        alliance_id, leader_id, alliance_name, alliance_tag, alliance_logo, alliance_language, alliance_marquee, alliance_description, alliance_level, alliance_currency_first, alliance_currency_second, alliance_created,
                             (SELECT        profile_name AS Expr2
                               FROM            dbo.profile AS profile_1
                               WHERE        (profile_id = dbo.alliance.leader_id)) AS leader_name,
                             (SELECT        COUNT(*) AS Expr1
                               FROM            dbo.profile
                               WHERE        (alliance_id = dbo.alliance.alliance_id)) AS total_members, ISNULL
                             ((SELECT        SUM(xp) AS Expr2
                                 FROM            dbo.profile AS profile_1
                                 WHERE        (alliance_id = dbo.alliance.alliance_id)), 0) AS power, ISNULL
                             ((SELECT        SUM(kills) AS Expr2
                                 FROM            dbo.profile AS profile_1
                                 WHERE        (alliance_id = dbo.alliance.alliance_id)), 0) AS kills
FROM            dbo.alliance


GO
/****** Object:  Table [dbo].[alliance_apply]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[alliance_apply](
	[apply_id] [bigint] IDENTITY(1,1) NOT NULL,
	[alliance_id] [bigint] NULL,
	[profile_id] [bigint] NULL,
	[date_posted] [datetime] NOT NULL,
 CONSTRAINT [PK_alliance_apply] PRIMARY KEY CLUSTERED 
(
	[apply_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[View_AllianceApplyProfile]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_AllianceApplyProfile]
AS
SELECT        dbo.alliance_apply.*, dbo.profile.profile_name, dbo.profile.profile_face, dbo.profile.alliance_id AS profile_alliance_id, dbo.profile.alliance_rank, dbo.profile.xp, dbo.profile.kills
FROM            dbo.alliance_apply INNER JOIN
                         dbo.profile ON dbo.alliance_apply.profile_id = dbo.profile.profile_id


GO
/****** Object:  View [dbo].[View_AllianceEvent]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_AllianceEvent]
AS
SELECT        alliance_id, alliance_name,
                             (SELECT        SUM(xp_gain_a) AS Expr1
                               FROM            dbo.profile
                               WHERE        (alliance_id = dbo.alliance.alliance_id)) AS xp_gain
FROM            dbo.alliance


GO
/****** Object:  View [dbo].[View_AllianceEventResult]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_AllianceEventResult]
AS
SELECT        alliance_id, alliance_name,
                             (SELECT        SUM(xp_history_a) AS Expr1
                               FROM            dbo.profile
                               WHERE        (alliance_id = dbo.alliance.alliance_id)) AS xp_gain
FROM            dbo.alliance


GO
/****** Object:  Table [dbo].[attack]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[attack](
	[attack_id] [bigint] IDENTITY(1,1) NOT NULL,
	[march_time] [int] NULL,
	[date_sent] [datetime] NULL,
	[date_arrive] [datetime] NULL,
	[job_time] [int] NULL,
	[date_return] [datetime] NULL,
	[from_profile_id] [bigint] NULL,
	[to_profile_id] [bigint] NULL,
	[from_base_id] [bigint] NULL,
	[to_base_id] [bigint] NULL,
	[hero] [int] NULL,
	[a1] [int] NULL,
	[a2] [int] NULL,
	[a3] [int] NULL,
	[b1] [int] NULL,
	[b2] [int] NULL,
	[b3] [int] NULL,
	[c1] [int] NULL,
	[c2] [int] NULL,
	[c3] [int] NULL,
	[d1] [int] NULL,
	[d2] [int] NULL,
	[d3] [int] NULL,
	[profile1_name] [nvarchar](50) NULL,
	[profile2_name] [nvarchar](50) NULL,
	[profile1_face] [int] NULL,
	[profile2_face] [int] NULL,
	[profile1_rank] [int] NULL,
	[profile2_rank] [int] NULL,
	[profile1_tag] [nvarchar](3) NULL,
	[profile2_tag] [nvarchar](3) NULL,
	[profile1_hero_name] [nvarchar](50) NULL,
	[profile2_hero_name] [nvarchar](50) NULL,
	[profile1_hero_xp] [bigint] NULL,
	[profile2_hero_xp] [bigint] NULL,
	[profile1_base_name] [nvarchar](50) NULL,
	[profile2_base_name] [nvarchar](50) NULL,
	[profile1_x] [bigint] NULL,
	[profile2_x] [bigint] NULL,
	[profile1_y] [bigint] NULL,
	[profile2_y] [bigint] NULL,
	[is_capture] [int] NOT NULL,
	[background_job_id] [int] NULL,
 CONSTRAINT [PK_attack] PRIMARY KEY CLUSTERED 
(
	[attack_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[View_Attacks]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Attacks]
AS
SELECT        attack_id, march_time, date_sent, date_arrive, job_time, DATEADD(ss, job_time, date_arrive) AS date_attack_over, date_return, from_profile_id, to_profile_id, 
                         from_base_id, to_base_id, a1, a2, a3, b1, b2, b3, c1, c2, c3, d1, d2, d3,
                             (SELECT        profile_name
                               FROM            dbo.profile
                               WHERE        (profile_id = dbo.attack.from_profile_id)) AS from_profile_name,
                             (SELECT        profile_face
                               FROM            dbo.profile AS profile_1
                               WHERE        (profile_id = dbo.attack.from_profile_id)) AS from_profile_face,
                             (SELECT        alliance_rank
                               FROM            dbo.profile AS profile_1
                               WHERE        (profile_id = dbo.attack.from_profile_id)) AS from_alliance_rank,
                             (SELECT        profile_name
                               FROM            dbo.profile AS profile_2
                               WHERE        (profile_id = dbo.attack.to_profile_id)) AS to_profile_name,
                             (SELECT        profile_face
                               FROM            dbo.profile AS profile_1
                               WHERE        (profile_id = dbo.attack.to_profile_id)) AS to_profile_face,
                             (SELECT        alliance_rank
                               FROM            dbo.profile AS profile_1
                               WHERE        (profile_id = dbo.attack.to_profile_id)) AS to_alliance_rank,
                             (SELECT        base_name
                               FROM            dbo.base AS base_1
                               WHERE        (base_id = dbo.attack.to_base_id)) AS to_base_name,
                             (SELECT        map_x
                               FROM            dbo.base AS base_1
                               WHERE        (base_id = dbo.attack.to_base_id)) AS to_map_x,
                             (SELECT        map_y
                               FROM            dbo.base AS base_1
                               WHERE        (base_id = dbo.attack.to_base_id)) AS to_map_y
FROM            dbo.attack
WHERE        (date_arrive > GETUTCDATE()) OR
                         (date_arrive < GETUTCDATE()) AND (date_return > GETUTCDATE())

GO
/****** Object:  View [dbo].[View_AttacksArrive]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_AttacksArrive]
AS
SELECT        attack_id, march_time, date_sent, date_arrive, job_time, date_return, from_profile_id, to_profile_id, from_base_id, to_base_id, a1, a2, a3, b1, b2, b3, c1, c2, c3, d1, d2, d3,
                             (SELECT        profile_name
                               FROM            dbo.profile
                               WHERE        (profile_id = dbo.attack.from_profile_id)) AS from_profile_name,
                             (SELECT        profile_face
                               FROM            dbo.profile AS profile_1
                               WHERE        (profile_id = dbo.attack.from_profile_id)) AS from_profile_face,
                             (SELECT        alliance_rank
                               FROM            dbo.profile AS profile_1
                               WHERE        (profile_id = dbo.attack.from_profile_id)) AS from_alliance_rank,
                             (SELECT        profile_name
                               FROM            dbo.profile AS profile_2
                               WHERE        (profile_id = dbo.attack.to_profile_id)) AS to_profile_name,
                             (SELECT        profile_face
                               FROM            dbo.profile AS profile_1
                               WHERE        (profile_id = dbo.attack.to_profile_id)) AS to_profile_face,
                             (SELECT        alliance_rank
                               FROM            dbo.profile AS profile_1
                               WHERE        (profile_id = dbo.attack.to_profile_id)) AS to_alliance_rank,
                             (SELECT        base_name
                               FROM            dbo.base AS base_1
                               WHERE        (base_id = dbo.attack.to_base_id)) AS to_base_name,
                             (SELECT        map_x
                               FROM            dbo.base AS base_1
                               WHERE        (base_id = dbo.attack.to_base_id)) AS to_map_x,
                             (SELECT        map_y
                               FROM            dbo.base AS base_1
                               WHERE        (base_id = dbo.attack.to_base_id)) AS to_map_y,
                             (SELECT        base_name
                               FROM            dbo.base AS base_1
                               WHERE        (base_id = dbo.attack.from_base_id)) AS from_base_name,
                             (SELECT        map_x
                               FROM            dbo.base AS base_1
                               WHERE        (base_id = dbo.attack.from_base_id)) AS from_map_x,
                             (SELECT        map_y
                               FROM            dbo.base AS base_1
                               WHERE        (base_id = dbo.attack.from_base_id)) AS from_map_y
FROM            dbo.attack
WHERE        (date_arrive > GETUTCDATE())


GO
/****** Object:  View [dbo].[View_AttacksReturn]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_AttacksReturn]
AS
SELECT        attack_id, march_time, date_sent, date_arrive, job_time, date_return, from_profile_id, to_profile_id, from_base_id, to_base_id, a1, a2, a3, b1, b2, b3, c1, c2, c3, d1, d2, d3,
                             (SELECT        profile_name
                               FROM            dbo.profile
                               WHERE        (profile_id = dbo.attack.from_profile_id)) AS from_profile_name,
                             (SELECT        profile_face
                               FROM            dbo.profile AS profile_1
                               WHERE        (profile_id = dbo.attack.from_profile_id)) AS from_profile_face,
                             (SELECT        alliance_rank
                               FROM            dbo.profile AS profile_1
                               WHERE        (profile_id = dbo.attack.from_profile_id)) AS from_alliance_rank,
                             (SELECT        profile_name
                               FROM            dbo.profile AS profile_2
                               WHERE        (profile_id = dbo.attack.to_profile_id)) AS to_profile_name,
                             (SELECT        profile_face
                               FROM            dbo.profile AS profile_1
                               WHERE        (profile_id = dbo.attack.to_profile_id)) AS to_profile_face,
                             (SELECT        alliance_rank
                               FROM            dbo.profile AS profile_1
                               WHERE        (profile_id = dbo.attack.to_profile_id)) AS to_alliance_rank,
                             (SELECT        base_name
                               FROM            dbo.base AS base_1
                               WHERE        (base_id = dbo.attack.to_base_id)) AS to_base_name,
                             (SELECT        map_x
                               FROM            dbo.base AS base_1
                               WHERE        (base_id = dbo.attack.to_base_id)) AS to_map_x,
                             (SELECT        map_y
                               FROM            dbo.base AS base_1
                               WHERE        (base_id = dbo.attack.to_base_id)) AS to_map_y
FROM            dbo.attack
WHERE        (date_arrive < GETUTCDATE()) AND (date_return > GETUTCDATE())


GO
/****** Object:  Table [dbo].[hero_level]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hero_level](
	[hero_level] [int] NOT NULL,
	[xp_required] [int] NULL,
	[power] [int] NULL,
	[skill_points] [int] NULL,
 CONSTRAINT [PK_hero_level] PRIMARY KEY CLUSTERED 
(
	[hero_level] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[View_HeroLevel]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_HeroLevel]
AS
SELECT     hero_level, xp_required, power, skill_points,
                          (SELECT     SUM(xp_required) AS Expr1
                            FROM          dbo.hero_level AS t1
                            WHERE      (hero_level <= t0.hero_level)) AS total_xp,
                          (SELECT     SUM(power) AS Expr2
                            FROM          dbo.hero_level AS t1
                            WHERE      (hero_level <= t0.hero_level)) AS total_power,
                          (SELECT     SUM(skill_points) AS Expr3
                            FROM          dbo.hero_level AS t1
                            WHERE      (hero_level <= t0.hero_level)) AS total_skill_points
FROM         dbo.hero_level AS t0


GO
/****** Object:  Table [dbo].[reinforce]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reinforce](
	[reinforce_id] [bigint] IDENTITY(1,1) NOT NULL,
	[is_return] [int] NULL,
	[march_time] [int] NULL,
	[date_sent] [datetime] NULL,
	[date_arrive] [datetime] NULL,
	[from_profile_id] [bigint] NULL,
	[to_profile_id] [bigint] NULL,
	[from_base_id] [bigint] NULL,
	[to_base_id] [bigint] NULL,
	[a1] [int] NULL,
	[a2] [int] NULL,
	[a3] [int] NULL,
	[b1] [int] NULL,
	[b2] [int] NULL,
	[b3] [int] NULL,
	[c1] [int] NULL,
	[c2] [int] NULL,
	[c3] [int] NULL,
	[d1] [int] NULL,
	[d2] [int] NULL,
	[d3] [int] NULL,
 CONSTRAINT [PK_reinforcements] PRIMARY KEY CLUSTERED 
(
	[reinforce_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[View_Reinforcements]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Reinforcements]
AS
SELECT        reinforce_id, is_return, march_time, date_sent, date_arrive, from_profile_id, to_profile_id, from_base_id, to_base_id, a1, a2, a3, b1, b2, b3, c1, c2, c3, d1, d2, d3,
                             (SELECT        profile_name
                               FROM            dbo.profile
                               WHERE        (profile_id = dbo.reinforce.from_profile_id)) AS from_profile_name,
                             (SELECT        profile_face
                               FROM            dbo.profile AS profile_1
                               WHERE        (profile_id = dbo.reinforce.from_profile_id)) AS from_profile_face,
                             (SELECT        alliance_rank
                               FROM            dbo.profile AS profile_1
                               WHERE        (profile_id = dbo.reinforce.from_profile_id)) AS from_alliance_rank,
                             (SELECT        profile_name
                               FROM            dbo.profile AS profile_2
                               WHERE        (profile_id = dbo.reinforce.to_profile_id)) AS to_profile_name,
                             (SELECT        profile_face
                               FROM            dbo.profile AS profile_1
                               WHERE        (profile_id = dbo.reinforce.to_profile_id)) AS to_profile_face,
                             (SELECT        alliance_rank
                               FROM            dbo.profile AS profile_1
                               WHERE        (profile_id = dbo.reinforce.to_profile_id)) AS to_alliance_rank,
                             (SELECT        base_name
                               FROM            dbo.base AS base_1
                               WHERE        (base_id = dbo.reinforce.to_base_id)) AS to_base_name,
                             (SELECT        map_x
                               FROM            dbo.base AS base_1
                               WHERE        (base_id = dbo.reinforce.to_base_id)) AS to_map_x,
                             (SELECT        map_y
                               FROM            dbo.base AS base_1
                               WHERE        (base_id = dbo.reinforce.to_base_id)) AS to_map_y
FROM            dbo.reinforce
WHERE        (date_arrive > CASE WHEN is_return = 0 THEN 0 ELSE GETUTCDATE() END)


GO
/****** Object:  View [dbo].[View_ReinforcementsAt]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_ReinforcementsAt]
AS
SELECT        reinforce_id, march_time, date_sent, date_arrive, from_profile_id, to_profile_id, from_base_id, to_base_id, a1, a2, a3, b1, b2, b3, c1, c2, c3, d1, d2, d3,
                             (SELECT        profile_name
                               FROM            dbo.profile
                               WHERE        (profile_id = dbo.reinforce.from_profile_id)) AS from_profile_name,
                             (SELECT        profile_face
                               FROM            dbo.profile AS profile_1
                               WHERE        (profile_id = dbo.reinforce.from_profile_id)) AS from_profile_face,
                             (SELECT        alliance_rank
                               FROM            dbo.profile AS profile_1
                               WHERE        (profile_id = dbo.reinforce.from_profile_id)) AS from_alliance_rank,
                             (SELECT        profile_name
                               FROM            dbo.profile AS profile_2
                               WHERE        (profile_id = dbo.reinforce.to_profile_id)) AS to_profile_name,
                             (SELECT        profile_face
                               FROM            dbo.profile AS profile_1
                               WHERE        (profile_id = dbo.reinforce.to_profile_id)) AS to_profile_face,
                             (SELECT        alliance_rank
                               FROM            dbo.profile AS profile_1
                               WHERE        (profile_id = dbo.reinforce.to_profile_id)) AS to_alliance_rank,
                             (SELECT        base_name
                               FROM            dbo.base AS base_1
                               WHERE        (base_id = dbo.reinforce.to_base_id)) AS to_base_name,
                             (SELECT        map_x
                               FROM            dbo.base AS base_1
                               WHERE        (base_id = dbo.reinforce.to_base_id)) AS to_map_x,
                             (SELECT        map_y
                               FROM            dbo.base AS base_1
                               WHERE        (base_id = dbo.reinforce.to_base_id)) AS to_map_y,
                             (SELECT        base_name
                               FROM            dbo.base AS base_1
                               WHERE        (base_id = dbo.reinforce.from_base_id)) AS from_base_name,
                             (SELECT        map_x
                               FROM            dbo.base AS base_1
                               WHERE        (base_id = dbo.reinforce.from_base_id)) AS from_map_x,
                             (SELECT        map_y
                               FROM            dbo.base AS base_1
                               WHERE        (base_id = dbo.reinforce.from_base_id)) AS from_map_y
FROM            dbo.reinforce
WHERE        (date_arrive < GETUTCDATE()) AND (is_return = 0)


GO
/****** Object:  View [dbo].[View_ReinforcementsTo]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_ReinforcementsTo]
AS
SELECT        reinforce_id, march_time, date_sent, date_arrive, from_profile_id, to_profile_id, from_base_id, to_base_id, a1, a2, a3, b1, b2, b3, c1, c2, c3, d1, d2, d3,
                             (SELECT        profile_name
                               FROM            dbo.profile
                               WHERE        (profile_id = dbo.reinforce.from_profile_id)) AS from_profile_name,
                             (SELECT        profile_face
                               FROM            dbo.profile AS profile_1
                               WHERE        (profile_id = dbo.reinforce.from_profile_id)) AS from_profile_face,
                             (SELECT        alliance_rank
                               FROM            dbo.profile AS profile_1
                               WHERE        (profile_id = dbo.reinforce.from_profile_id)) AS from_alliance_rank,
                             (SELECT        profile_name
                               FROM            dbo.profile AS profile_2
                               WHERE        (profile_id = dbo.reinforce.to_profile_id)) AS to_profile_name,
                             (SELECT        profile_face
                               FROM            dbo.profile AS profile_1
                               WHERE        (profile_id = dbo.reinforce.to_profile_id)) AS to_profile_face,
                             (SELECT        alliance_rank
                               FROM            dbo.profile AS profile_1
                               WHERE        (profile_id = dbo.reinforce.to_profile_id)) AS to_alliance_rank,
                             (SELECT        base_name
                               FROM            dbo.base AS base_1
                               WHERE        (base_id = dbo.reinforce.to_base_id)) AS to_base_name,
                             (SELECT        map_x
                               FROM            dbo.base AS base_1
                               WHERE        (base_id = dbo.reinforce.to_base_id)) AS to_map_x,
                             (SELECT        map_y
                               FROM            dbo.base AS base_1
                               WHERE        (base_id = dbo.reinforce.to_base_id)) AS to_map_y,
                             (SELECT        base_name
                               FROM            dbo.base AS base_1
                               WHERE        (base_id = dbo.reinforce.from_base_id)) AS from_base_name,
                             (SELECT        map_x
                               FROM            dbo.base AS base_1
                               WHERE        (base_id = dbo.reinforce.from_base_id)) AS from_map_x,
                             (SELECT        map_y
                               FROM            dbo.base AS base_1
                               WHERE        (base_id = dbo.reinforce.from_base_id)) AS from_map_y
FROM            dbo.reinforce
WHERE        (date_arrive > GETUTCDATE()) AND (is_return = 0)


GO
/****** Object:  Table [dbo].[trades]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trades](
	[trade_id] [bigint] IDENTITY(1,1) NOT NULL,
	[march_time] [int] NULL,
	[date_sent] [datetime] NOT NULL,
	[date_arrive] [datetime] NOT NULL,
	[from_profile_id] [bigint] NULL,
	[to_profile_id] [bigint] NULL,
	[from_base_id] [bigint] NULL,
	[to_base_id] [bigint] NULL,
	[r1] [int] NULL,
	[r2] [int] NULL,
	[r3] [int] NULL,
	[r4] [int] NULL,
	[r5] [int] NULL,
 CONSTRAINT [PK_trades] PRIMARY KEY CLUSTERED 
(
	[trade_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[View_TradesArrive]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_TradesArrive]
AS
SELECT        trade_id, march_time, date_sent, date_arrive, from_profile_id, to_profile_id, from_base_id, to_base_id, r1, r2, r3, r4, r5,
                             (SELECT        profile_name
                               FROM            dbo.profile
                               WHERE        (profile_id = dbo.trades.from_profile_id)) AS from_profile_name,
                             (SELECT        profile_face
                               FROM            dbo.profile AS profile_1
                               WHERE        (profile_id = dbo.trades.from_profile_id)) AS from_profile_face,
                             (SELECT        alliance_rank
                               FROM            dbo.profile AS profile_1
                               WHERE        (profile_id = dbo.trades.from_profile_id)) AS from_alliance_rank,
                             (SELECT        profile_name
                               FROM            dbo.profile AS profile_2
                               WHERE        (profile_id = dbo.trades.to_profile_id)) AS to_profile_name,
                             (SELECT        profile_face
                               FROM            dbo.profile AS profile_1
                               WHERE        (profile_id = dbo.trades.to_profile_id)) AS to_profile_face,
                             (SELECT        alliance_rank
                               FROM            dbo.profile AS profile_1
                               WHERE        (profile_id = dbo.trades.to_profile_id)) AS to_alliance_rank,
                             (SELECT        base_name
                               FROM            dbo.base AS base_1
                               WHERE        (base_id = dbo.trades.to_base_id)) AS to_base_name,
                             (SELECT        map_x
                               FROM            dbo.base AS base_1
                               WHERE        (base_id = dbo.trades.to_base_id)) AS to_map_x,
                             (SELECT        map_y
                               FROM            dbo.base AS base_1
                               WHERE        (base_id = dbo.trades.to_base_id)) AS to_map_y,
                             (SELECT        base_name
                               FROM            dbo.base AS base_1
                               WHERE        (base_id = dbo.trades.from_base_id)) AS from_base_name,
                             (SELECT        map_x
                               FROM            dbo.base AS base_1
                               WHERE        (base_id = dbo.trades.from_base_id)) AS from_map_x,
                             (SELECT        map_y
                               FROM            dbo.base AS base_1
                               WHERE        (base_id = dbo.trades.from_base_id)) AS from_map_y
FROM            dbo.trades
WHERE        (date_arrive > GETUTCDATE())


GO
/****** Object:  Table [dbo].[alliance_chat]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[alliance_chat](
	[chat_id] [bigint] IDENTITY(1,1) NOT NULL,
	[profile_id] [bigint] NULL,
	[profile_name] [nvarchar](50) NULL,
	[profile_face] [int] NULL,
	[message] [nvarchar](max) NULL,
	[date_posted] [datetime] NOT NULL,
	[alliance_id] [bigint] NULL,
	[alliance_tag] [nvarchar](3) NULL,
	[alliance_logo] [int] NULL,
	[target_alliance_id] [bigint] NULL,
 CONSTRAINT [PK_alliance_chat] PRIMARY KEY CLUSTERED 
(
	[chat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[alliance_donation]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[alliance_donation](
	[donation_id] [bigint] IDENTITY(1,1) NOT NULL,
	[alliance_id] [bigint] NULL,
	[profile_id] [bigint] NULL,
	[profile_name] [nvarchar](50) NULL,
	[profile_face] [int] NULL,
	[currency_second] [int] NULL,
	[date_posted] [datetime] NOT NULL,
 CONSTRAINT [PK_alliance_donation] PRIMARY KEY CLUSTERED 
(
	[donation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[alliance_event]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[alliance_event](
	[event_id] [bigint] IDENTITY(1,1) NOT NULL,
	[alliance_id] [bigint] NULL,
	[profile_id] [bigint] NULL,
	[profile_name] [nvarchar](50) NULL,
	[event_icon] [nvarchar](50) NULL,
	[message] [nvarchar](max) NULL,
	[date_posted] [datetime] NOT NULL,
 CONSTRAINT [PK_alliance_event] PRIMARY KEY CLUSTERED 
(
	[event_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[alliance_wall]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[alliance_wall](
	[chat_id] [bigint] IDENTITY(1,1) NOT NULL,
	[profile_id] [bigint] NULL,
	[profile_name] [nvarchar](50) NULL,
	[profile_face] [int] NULL,
	[message] [nvarchar](max) NULL,
	[date_posted] [datetime] NOT NULL,
	[alliance_id] [bigint] NULL,
	[alliance_tag] [nvarchar](3) NULL,
	[alliance_logo] [int] NULL,
	[target_alliance_id] [bigint] NULL,
 CONSTRAINT [PK_alliance_wall] PRIMARY KEY CLUSTERED 
(
	[chat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[bookmark]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bookmark](
	[bookmark_id] [bigint] IDENTITY(1,1) NOT NULL,
	[profile_id] [bigint] NULL,
	[map_x] [int] NULL,
	[map_y] [int] NULL,
	[label] [int] NULL,
	[title] [nvarchar](50) NULL,
 CONSTRAINT [PK_bookmark] PRIMARY KEY CLUSTERED 
(
	[bookmark_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[chat]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chat](
	[chat_id] [bigint] IDENTITY(1,1) NOT NULL,
	[profile_id] [bigint] NULL,
	[profile_name] [nvarchar](50) NULL,
	[profile_face] [int] NULL,
	[message] [nvarchar](max) NULL,
	[date_posted] [datetime] NOT NULL,
	[alliance_id] [bigint] NULL,
	[alliance_tag] [nvarchar](3) NULL,
	[alliance_logo] [int] NULL,
	[target_alliance_id] [bigint] NULL,
 CONSTRAINT [PK_chat] PRIMARY KEY CLUSTERED 
(
	[chat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[event_alliance]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[event_alliance](
	[event_id] [bigint] NOT NULL,
	[event_active] [int] NULL,
	[event_row1] [nvarchar](50) NULL,
	[event_row2] [nvarchar](max) NULL,
	[event_row3] [nvarchar](max) NULL,
	[event_duration] [int] NULL,
	[event_starting] [datetime] NULL,
	[event_ending] [datetime] NULL,
	[prize1] [int] NULL,
	[prize2] [int] NULL,
	[prize3] [int] NULL,
	[prize4] [int] NULL,
	[prize5] [int] NULL,
 CONSTRAINT [PK_event_alliance] PRIMARY KEY CLUSTERED 
(
	[event_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[event_solo]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[event_solo](
	[event_id] [bigint] NOT NULL,
	[event_active] [int] NULL,
	[event_row1] [nvarchar](50) NULL,
	[event_row2] [nvarchar](max) NULL,
	[event_row3] [nvarchar](max) NULL,
	[event_duration] [int] NULL,
	[event_starting] [datetime] NULL,
	[event_ending] [datetime] NULL,
	[prize1] [int] NULL,
	[prize2] [int] NULL,
	[prize3] [int] NULL,
	[prize4] [int] NULL,
	[prize5] [int] NULL,
 CONSTRAINT [PK_event_solo] PRIMARY KEY CLUSTERED 
(
	[event_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[item]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[item](
	[item_id] [int] NOT NULL,
	[item_valid] [int] NULL,
	[item_forsale] [int] NULL,
	[item_use] [int] NULL,
	[item_category1] [nvarchar](50) NULL,
	[item_category2] [nvarchar](50) NULL,
	[item_name] [nvarchar](max) NULL,
	[item_details] [nvarchar](max) NULL,
	[item_image] [nvarchar](max) NULL,
	[item_value] [int] NULL,
	[item_value2] [int] NULL,
	[item_cost] [int] NULL,
	[hero_r1] [decimal](5, 2) NULL,
	[hero_r2] [decimal](5, 2) NULL,
	[hero_r3] [decimal](5, 2) NULL,
	[hero_r4] [decimal](5, 2) NULL,
	[hero_r5] [decimal](5, 2) NULL,
	[hero_attack] [decimal](5, 2) NULL,
	[hero_defense] [decimal](5, 2) NULL,
	[hero_life] [decimal](5, 2) NULL,
	[hero_load] [decimal](5, 2) NULL,
	[hero_a_attack] [decimal](5, 2) NULL,
	[hero_b_attack] [decimal](5, 2) NULL,
	[hero_c_attack] [decimal](5, 2) NULL,
	[hero_d_attack] [decimal](5, 2) NULL,
	[hero_build] [decimal](5, 2) NULL,
	[hero_research] [decimal](5, 2) NULL,
	[hero_march] [decimal](5, 2) NULL,
	[hero_trade] [decimal](5, 2) NULL,
	[hero_craft] [decimal](5, 2) NULL,
	[hero_heal] [decimal](5, 2) NULL,
	[hero_training] [decimal](5, 2) NULL,
 CONSTRAINT [PK_item] PRIMARY KEY CLUSTERED 
(
	[item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[itemprofile]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[itemprofile](
	[itemprofile_id] [bigint] IDENTITY(1,1) NOT NULL,
	[profile_id] [bigint] NULL,
	[item_id] [int] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_itemclub] PRIMARY KEY CLUSTERED 
(
	[itemprofile_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mail]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mail](
	[mail_id] [bigint] IDENTITY(1,1) NOT NULL,
	[date_posted] [datetime] NOT NULL,
	[title] [nvarchar](max) NULL,
	[message] [nvarchar](max) NULL,
	[everyone] [int] NULL,
	[alliance_id] [bigint] NULL,
	[to_id] [bigint] NULL,
	[to_name] [nvarchar](50) NULL,
	[profile_id] [bigint] NULL,
	[profile_name] [nvarchar](50) NULL,
	[profile_face] [int] NULL,
	[open_read] [int] NULL,
	[reply_counter] [int] NULL,
 CONSTRAINT [PK_mail] PRIMARY KEY CLUSTERED 
(
	[mail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mail_reply]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mail_reply](
	[reply_id] [bigint] IDENTITY(1,1) NOT NULL,
	[mail_id] [bigint] NULL,
	[date_posted] [datetime] NOT NULL,
	[message] [nvarchar](max) NULL,
	[profile_id] [bigint] NULL,
	[profile_name] [nvarchar](50) NULL,
	[profile_face] [int] NULL,
 CONSTRAINT [PK_mail_reply] PRIMARY KEY CLUSTERED 
(
	[reply_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mailprofile]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mailprofile](
	[mailprofile_id] [bigint] IDENTITY(1,1) NOT NULL,
	[mail_id] [bigint] NULL,
	[profile_id] [bigint] NULL,
 CONSTRAINT [PK_mailclub] PRIMARY KEY CLUSTERED 
(
	[mailprofile_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[map_terrain]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[map_terrain](
	[map_id] [int] NOT NULL,
	[terrain] [int] NULL,
	[x_coordinate] [int] NOT NULL,
	[y_coordinate] [int] NOT NULL,
 CONSTRAINT [PK_map] PRIMARY KEY CLUSTERED 
(
	[map_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mission]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mission](
	[mission_id] [bigint] IDENTITY(1,1) NOT NULL,
	[profile_id] [bigint] NULL,
	[mission_type_id] [int] NULL,
	[claimed] [bit] NOT NULL,
	[started] [bit] NOT NULL,
	[date_ending] [datetime] NULL,
 CONSTRAINT [PK_mission] PRIMARY KEY CLUSTERED 
(
	[mission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mission_type]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mission_type](
	[mission_type_id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](max) NULL,
	[image_url] [nvarchar](50) NULL,
	[tutorial] [nvarchar](max) NULL,
	[valid] [bit] NULL,
	[mission_duration] [int] NOT NULL,
	[power_range_min] [int] NOT NULL,
	[power_range_max] [int] NOT NULL,
	[requirement_value_1] [int] NOT NULL,
	[requirement_value_2] [int] NOT NULL,
	[requirement_value_3] [int] NOT NULL,
	[requirement_value_4] [int] NOT NULL,
	[requirement_value_5] [int] NOT NULL,
	[requirement_value_6] [int] NOT NULL,
	[requirement_value_7] [int] NOT NULL,
	[requirement_value_8] [int] NOT NULL,
	[requirement_value_9] [int] NOT NULL,
	[requirement_value_10] [int] NOT NULL,
	[requirement_value_11] [int] NOT NULL,
	[requirement_value_12] [int] NOT NULL,
	[requirement_value_13] [int] NOT NULL,
	[requirement_value_14] [int] NOT NULL,
	[reward_value_1] [int] NOT NULL,
	[reward_value_2] [int] NOT NULL,
	[reward_value_3] [int] NOT NULL,
	[reward_value_4] [int] NOT NULL,
	[reward_value_5] [int] NOT NULL,
	[reward_value_6] [int] NOT NULL,
	[reward_value_7] [int] NOT NULL,
	[reward_value_8] [int] NOT NULL,
	[reward_value_9] [int] NOT NULL,
	[reward_value_10] [int] NOT NULL,
	[reward_value_11] [int] NOT NULL,
	[reward_value_12] [int] NOT NULL,
	[reward_value_13] [int] NOT NULL,
	[reward_value_14] [int] NOT NULL,
	[reward_value_15] [int] NOT NULL,
	[reward_value_16] [int] NOT NULL,
	[reward_value_17] [int] NOT NULL,
	[reward_value_18] [int] NOT NULL,
 CONSTRAINT [PK_mission_type] PRIMARY KEY CLUSTERED 
(
	[mission_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[quest]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quest](
	[quest_id] [bigint] IDENTITY(1,1) NOT NULL,
	[profile_id] [bigint] NULL,
	[quest_type_id] [int] NULL,
	[claimed] [bit] NULL,
 CONSTRAINT [PK_quest] PRIMARY KEY CLUSTERED 
(
	[quest_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[quest_type]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quest_type](
	[quest_type_id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](max) NULL,
	[reward] [int] NULL,
	[image_url] [nvarchar](50) NULL,
	[tutorial] [nvarchar](max) NULL,
	[valid] [bit] NULL,
	[quest_group] [nvarchar](50) NULL,
	[quest_order] [int] NULL,
 CONSTRAINT [PK_quest_type] PRIMARY KEY CLUSTERED 
(
	[quest_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[receipt]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[receipt](
	[receipt_id] [bigint] IDENTITY(1,1) NOT NULL,
	[uid] [nvarchar](50) NULL,
	[transaction_id] [text] NULL,
	[product_id] [nvarchar](50) NULL,
	[purchase_date] [nvarchar](50) NULL,
 CONSTRAINT [PK_receipt] PRIMARY KEY CLUSTERED 
(
	[receipt_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[region]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[region](
	[region_id] [bigint] NOT NULL,
	[last_process] [datetime] NULL,
 CONSTRAINT [PK_region] PRIMARY KEY CLUSTERED 
(
	[region_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[report]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report](
	[report_id] [bigint] IDENTITY(1,1) NOT NULL,
	[report_type] [int] NULL,
	[victory] [int] NULL,
	[row_id] [bigint] NULL,
	[open_read] [int] NULL,
	[date_posted] [datetime] NOT NULL,
	[date_arrive] [datetime] NOT NULL,
	[title] [nvarchar](max) NULL,
	[alliance_id] [bigint] NULL,
	[profile1_id] [bigint] NULL,
	[profile2_id] [bigint] NULL,
	[profile1_name] [nvarchar](50) NULL,
	[profile2_name] [nvarchar](50) NULL,
	[profile1_tag] [nvarchar](3) NULL,
	[profile2_tag] [nvarchar](3) NULL,
	[profile1_rank] [int] NULL,
	[profile2_rank] [int] NULL,
	[profile1_face] [int] NULL,
	[profile2_face] [int] NULL,
	[profile1_base_id] [bigint] NULL,
	[profile2_base_id] [bigint] NULL,
	[profile1_base_name] [nvarchar](50) NULL,
	[profile2_base_name] [nvarchar](50) NULL,
	[profile1_power] [int] NULL,
	[profile2_power] [int] NULL,
	[profile1_x] [bigint] NULL,
	[profile2_x] [bigint] NULL,
	[profile1_y] [bigint] NULL,
	[profile2_y] [bigint] NULL,
	[profile1_troops] [int] NULL,
	[profile2_troops] [int] NULL,
	[profile1_r_troops] [int] NULL,
	[profile2_r_troops] [int] NULL,
	[profile1_injured] [int] NULL,
	[profile2_injured] [int] NULL,
	[profile1_r_injured] [int] NULL,
	[profile2_r_injured] [int] NULL,
	[profile1_killed] [int] NULL,
	[profile2_killed] [int] NULL,
	[profile1_r_killed] [int] NULL,
	[profile2_r_killed] [int] NULL,
	[profile1_hero_name] [nvarchar](50) NULL,
	[profile2_hero_name] [nvarchar](50) NULL,
	[profile1_hero_xp] [bigint] NULL,
	[profile2_hero_xp] [bigint] NULL,
	[profile1_hero_xp_gain] [int] NULL,
	[profile2_hero_xp_gain] [int] NULL,
	[profile1_spy_sent] [int] NULL,
	[profile1_spy_captured] [int] NULL,
	[r1] [int] NULL,
	[r2] [int] NULL,
	[r3] [int] NULL,
	[r4] [int] NULL,
	[r5] [int] NULL,
	[p1_a1] [int] NULL,
	[p1_a2] [int] NULL,
	[p1_a3] [int] NULL,
	[p1_b1] [int] NULL,
	[p1_b2] [int] NULL,
	[p1_b3] [int] NULL,
	[p1_c1] [int] NULL,
	[p1_c2] [int] NULL,
	[p1_c3] [int] NULL,
	[p1_d1] [int] NULL,
	[p1_d2] [int] NULL,
	[p1_d3] [int] NULL,
	[i1_a1] [int] NULL,
	[i1_a2] [int] NULL,
	[i1_a3] [int] NULL,
	[i1_b1] [int] NULL,
	[i1_b2] [int] NULL,
	[i1_b3] [int] NULL,
	[i1_c1] [int] NULL,
	[i1_c2] [int] NULL,
	[i1_c3] [int] NULL,
	[i1_d1] [int] NULL,
	[i1_d2] [int] NULL,
	[i1_d3] [int] NULL,
	[k1_a1] [int] NULL,
	[k1_a2] [int] NULL,
	[k1_a3] [int] NULL,
	[k1_b1] [int] NULL,
	[k1_b2] [int] NULL,
	[k1_b3] [int] NULL,
	[k1_c1] [int] NULL,
	[k1_c2] [int] NULL,
	[k1_c3] [int] NULL,
	[k1_d1] [int] NULL,
	[k1_d2] [int] NULL,
	[k1_d3] [int] NULL,
	[p2_a1] [int] NULL,
	[p2_a2] [int] NULL,
	[p2_a3] [int] NULL,
	[p2_b1] [int] NULL,
	[p2_b2] [int] NULL,
	[p2_b3] [int] NULL,
	[p2_c1] [int] NULL,
	[p2_c2] [int] NULL,
	[p2_c3] [int] NULL,
	[p2_d1] [int] NULL,
	[p2_d2] [int] NULL,
	[p2_d3] [int] NULL,
	[i2_a1] [int] NULL,
	[i2_a2] [int] NULL,
	[i2_a3] [int] NULL,
	[i2_b1] [int] NULL,
	[i2_b2] [int] NULL,
	[i2_b3] [int] NULL,
	[i2_c1] [int] NULL,
	[i2_c2] [int] NULL,
	[i2_c3] [int] NULL,
	[i2_d1] [int] NULL,
	[i2_d2] [int] NULL,
	[i2_d3] [int] NULL,
	[k2_a1] [int] NULL,
	[k2_a2] [int] NULL,
	[k2_a3] [int] NULL,
	[k2_b1] [int] NULL,
	[k2_b2] [int] NULL,
	[k2_b3] [int] NULL,
	[k2_c1] [int] NULL,
	[k2_c2] [int] NULL,
	[k2_c3] [int] NULL,
	[k2_d1] [int] NULL,
	[k2_d2] [int] NULL,
	[k2_d3] [int] NULL,
	[r2_a1] [int] NULL,
	[r2_a2] [int] NULL,
	[r2_a3] [int] NULL,
	[r2_b1] [int] NULL,
	[r2_b2] [int] NULL,
	[r2_b3] [int] NULL,
	[r2_c1] [int] NULL,
	[r2_c2] [int] NULL,
	[r2_c3] [int] NULL,
	[r2_d1] [int] NULL,
	[r2_d2] [int] NULL,
	[r2_d3] [int] NULL,
	[rk2_a1] [int] NULL,
	[rk2_a2] [int] NULL,
	[rk2_a3] [int] NULL,
	[rk2_b1] [int] NULL,
	[rk2_b2] [int] NULL,
	[rk2_b3] [int] NULL,
	[rk2_c1] [int] NULL,
	[rk2_c2] [int] NULL,
	[rk2_c3] [int] NULL,
	[rk2_d1] [int] NULL,
	[rk2_d2] [int] NULL,
	[rk2_d3] [int] NULL,
 CONSTRAINT [PK_report] PRIMARY KEY CLUSTERED 
(
	[report_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[research]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[research](
	[research_id] [int] NOT NULL,
	[base_column] [nvarchar](50) NULL,
	[max_level] [int] NULL,
	[r1] [int] NULL,
	[r2] [int] NULL,
	[r3] [int] NULL,
	[r4] [int] NULL,
	[r5] [int] NULL,
	[time] [int] NULL,
	[hero_xp] [int] NULL,
	[power] [int] NULL,
	[production] [int] NULL,
 CONSTRAINT [PK_research] PRIMARY KEY CLUSTERED 
(
	[research_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sales]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sales](
	[sale_id] [bigint] NOT NULL,
	[sale_active] [int] NULL,
	[sale_sold] [int] NULL,
	[sale_title] [nvarchar](250) NULL,
	[sale_subtitle] [nvarchar](250) NULL,
	[sale_currency] [int] NULL,
	[sale_worthofitems] [int] NULL,
	[sale_duration] [int] NULL,
	[sale_starting] [datetime] NULL,
	[sale_ending] [datetime] NULL,
	[sale_pricetier] [int] NULL,
	[sale_identifier] [nvarchar](250) NULL,
	[sale_background_url] [nvarchar](250) NULL,
 CONSTRAINT [PK_sales] PRIMARY KEY CLUSTERED 
(
	[sale_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sales_items]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sales_items](
	[sale_item_id] [bigint] NOT NULL,
	[sale_id] [bigint] NULL,
	[item_id] [bigint] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_sales_items] PRIMARY KEY CLUSTERED 
(
	[sale_item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[settings]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[settings](
	[settings_id] [int] NOT NULL,
	[alliance_require_currency2] [int] NULL,
	[region_width] [int] NULL,
	[region_height] [int] NULL,
	[tile_id_x_multiplier] [int] NULL,
	[capture_require_formula_a] [decimal](18, 2) NULL,
	[capture_require_formula_b] [decimal](18, 2) NULL,
	[capture_require_formula_c] [decimal](18, 2) NULL,
	[capture_require_formula_d] [decimal](18, 2) NULL,
	[village_resource_refresh_rate] [int] NULL,
	[city_resource_refresh_rate] [int] NULL,
	[map_width] [int] NULL,
	[map_height] [int] NULL,
	[village_population_formula_block_width] [int] NULL,
	[village_population_formula_block_height] [int] NULL,
	[village_teleport] [int] NULL,
	[village_shared_defense_bonus] [int] NULL,
	[research_minus_level_after_capture] [int] NULL,
	[building_minus_level_after_capture] [int] NULL,
	[village_protection_hours] [int] NULL,
	[enable_slot] [int] NULL,
	[enable_football] [int] NULL,
	[base_loyalty_conversion_time] [int] NULL,
	[daily_mission_next_updated_time] [datetime] NOT NULL,
	[number_of_daily_mission] [int] NULL,
	[village_max_building_level] [int] NULL,
 CONSTRAINT [PK_settings] PRIMARY KEY CLUSTERED 
(
	[settings_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[transfer_troops]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transfer_troops](
	[transfer_id] [bigint] IDENTITY(1,1) NOT NULL,
	[march_time] [int] NULL,
	[date_sent] [datetime] NOT NULL,
	[date_arrive] [datetime] NOT NULL,
	[from_profile_id] [bigint] NULL,
	[to_profile_id] [bigint] NULL,
	[from_base_id] [bigint] NULL,
	[to_base_id] [bigint] NULL,
	[a1] [int] NULL,
	[a2] [int] NULL,
	[a3] [int] NULL,
	[b1] [int] NULL,
	[b2] [int] NULL,
	[b3] [int] NULL,
	[c1] [int] NULL,
	[c2] [int] NULL,
	[c3] [int] NULL,
	[d1] [int] NULL,
	[d2] [int] NULL,
	[d3] [int] NULL,
 CONSTRAINT [PK_transfer] PRIMARY KEY CLUSTERED 
(
	[transfer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[unit]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[unit](
	[unit_id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[info] [nvarchar](max) NULL,
	[type] [nvarchar](50) NULL,
	[type_name] [nvarchar](50) NULL,
	[tier] [int] NULL,
	[attack] [int] NULL,
	[defense_a] [int] NULL,
	[defense_b] [int] NULL,
	[defense_c] [int] NULL,
	[power] [int] NULL,
	[strongvs] [nvarchar](50) NULL,
	[weakvs] [nvarchar](50) NULL,
	[require1_building_level] [int] NULL,
	[require1_research_id] [int] NULL,
	[r1] [int] NULL,
	[r2] [int] NULL,
	[r3] [int] NULL,
	[r4] [int] NULL,
	[r5] [int] NULL,
	[time] [int] NULL,
	[defense] [int] NULL,
	[life] [int] NULL,
	[speed] [int] NULL,
	[unit_load] [int] NULL,
	[upkeep] [int] NULL,
 CONSTRAINT [PK_unit] PRIMARY KEY CLUSTERED 
(
	[unit_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[village]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[village](
	[village_id] [bigint] IDENTITY(1,1) NOT NULL,
	[village_level] [int] NULL,
	[map_x] [int] NULL,
	[map_y] [int] NULL,
	[army_type] [int] NULL,
	[resources_type] [int] NULL,
	[last_attacked] [datetime] NULL,
 CONSTRAINT [PK_village] PRIMARY KEY CLUSTERED 
(
	[village_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[alliance] ADD  CONSTRAINT [DF_alliance_leader_id]  DEFAULT ((0)) FOR [leader_id]
GO
ALTER TABLE [dbo].[alliance] ADD  CONSTRAINT [DF_alliance_alliance_logo]  DEFAULT ((1)) FOR [alliance_logo]
GO
ALTER TABLE [dbo].[alliance] ADD  CONSTRAINT [DF_alliance_alliance_language]  DEFAULT ((1)) FOR [alliance_language]
GO
ALTER TABLE [dbo].[alliance] ADD  CONSTRAINT [DF_alliance_alliance_level]  DEFAULT ((1)) FOR [alliance_level]
GO
ALTER TABLE [dbo].[alliance] ADD  CONSTRAINT [DF_alliance_alliance_currency_first]  DEFAULT ((0)) FOR [alliance_currency_first]
GO
ALTER TABLE [dbo].[alliance] ADD  CONSTRAINT [DF_alliance_alliance_currency_second]  DEFAULT ((0)) FOR [alliance_currency_second]
GO
ALTER TABLE [dbo].[alliance] ADD  CONSTRAINT [DF_alliance_alliance_created]  DEFAULT ('2015-1-1') FOR [alliance_created]
GO
ALTER TABLE [dbo].[alliance_apply] ADD  CONSTRAINT [DF_alliance_apply_date_posted]  DEFAULT ('2015-1-1') FOR [date_posted]
GO
ALTER TABLE [dbo].[alliance_chat] ADD  CONSTRAINT [DF_alliance_chat_profile_face]  DEFAULT ((1)) FOR [profile_face]
GO
ALTER TABLE [dbo].[alliance_chat] ADD  CONSTRAINT [DF_alliance_chat_date_posted]  DEFAULT ('2015-1-1') FOR [date_posted]
GO
ALTER TABLE [dbo].[alliance_chat] ADD  CONSTRAINT [DF_alliance_chat_alliance_logo]  DEFAULT ((1)) FOR [alliance_logo]
GO
ALTER TABLE [dbo].[alliance_donation] ADD  CONSTRAINT [DF_alliance_donation_profile_face]  DEFAULT ((1)) FOR [profile_face]
GO
ALTER TABLE [dbo].[alliance_donation] ADD  CONSTRAINT [DF_alliance_donation_currency_second]  DEFAULT ((1)) FOR [currency_second]
GO
ALTER TABLE [dbo].[alliance_donation] ADD  CONSTRAINT [DF_alliance_donation_date_posted]  DEFAULT ('2015-1-1') FOR [date_posted]
GO
ALTER TABLE [dbo].[alliance_event] ADD  CONSTRAINT [DF_alliance_event_date_posted]  DEFAULT ('2015-1-1') FOR [date_posted]
GO
ALTER TABLE [dbo].[alliance_wall] ADD  CONSTRAINT [DF_alliance_wall_profile_face]  DEFAULT ((1)) FOR [profile_face]
GO
ALTER TABLE [dbo].[alliance_wall] ADD  CONSTRAINT [DF_alliance_wall_date_posted]  DEFAULT ('2015-1-1') FOR [date_posted]
GO
ALTER TABLE [dbo].[alliance_wall] ADD  CONSTRAINT [DF_alliance_wall_alliance_logo]  DEFAULT ((1)) FOR [alliance_logo]
GO
ALTER TABLE [dbo].[attack] ADD  DEFAULT ((0)) FOR [is_capture]
GO
ALTER TABLE [dbo].[attack] ADD  DEFAULT ((0)) FOR [background_job_id]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_build_queue1]  DEFAULT ('2015-1-1') FOR [last_process]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_last_attacked]  DEFAULT ('2015-1-1') FOR [last_attacked]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_last_captured]  DEFAULT ('2015-1-1') FOR [last_captured]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_base_type]  DEFAULT ((1)) FOR [base_type]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_profile_id]  DEFAULT ((0)) FOR [profile_id]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_profile_id1]  DEFAULT ((0)) FOR [previous_profile_id]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_base_name]  DEFAULT ('City 1') FOR [base_name]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_map_x]  DEFAULT ((1)) FOR [map_x]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_map_y]  DEFAULT ((1)) FOR [map_y]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_resource1]  DEFAULT ((5000)) FOR [r1]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_resource2]  DEFAULT ((5000)) FOR [r2]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_resource3]  DEFAULT ((5000)) FOR [r3]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_resource4]  DEFAULT ((5000)) FOR [r4]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_r5]  DEFAULT ((1000)) FOR [r5]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_build_queue]  DEFAULT ('2015-1-1') FOR [build_queue]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_build_time]  DEFAULT ((0)) FOR [build_time]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_build_location]  DEFAULT ((0)) FOR [build_location]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_attack_id1]  DEFAULT ((0)) FOR [building_id]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_research_queue]  DEFAULT ('2015-1-1') FOR [research_queue]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_research_time]  DEFAULT ((0)) FOR [research_time]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_building_id1]  DEFAULT ((0)) FOR [research_id]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_march_queue]  DEFAULT ('2015-1-1') FOR [attack_queue]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_march_time]  DEFAULT ((0)) FOR [attack_time]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_attack_time1]  DEFAULT ((30)) FOR [attack_job_time]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_attack_queue1]  DEFAULT ('2015-1-1') FOR [attack_return]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_attack_id]  DEFAULT ((0)) FOR [attack_id]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_reinforce_queue]  DEFAULT ('2015-1-1') FOR [reinforce_queue]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_reinforce_time]  DEFAULT ((0)) FOR [reinforce_time]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_reinforce_id]  DEFAULT ((0)) FOR [reinforce_id]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_reinforce_id1]  DEFAULT ((0)) FOR [reinforce_action]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_reinforce_queue1]  DEFAULT ('2015-1-1') FOR [transfer_queue]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_reinforce_time1]  DEFAULT ((0)) FOR [transfer_time]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_reinforce_id1_1]  DEFAULT ((0)) FOR [transfer_id]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_trade_queue]  DEFAULT ('2015-1-1') FOR [trade_queue]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_trade_time]  DEFAULT ((0)) FOR [trade_time]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_trade_id]  DEFAULT ((0)) FOR [trade_id]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_craft_queue]  DEFAULT ('2015-1-1') FOR [craft_queue]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_craft_time]  DEFAULT ((0)) FOR [craft_time]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_hospital_queue]  DEFAULT ('2015-1-1') FOR [hospital_queue]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_hospital_time]  DEFAULT ((0)) FOR [hospital_time]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_a_queue]  DEFAULT ('2015-1-1') FOR [a_queue]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_a_time]  DEFAULT ((0)) FOR [a_time]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_b_queue]  DEFAULT ('2015-1-1') FOR [b_queue]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_b_time]  DEFAULT ((0)) FOR [b_time]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_c_queue]  DEFAULT ('2015-1-1') FOR [c_queue]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_c_time]  DEFAULT ((0)) FOR [c_time]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_d_queue]  DEFAULT ('2015-1-1') FOR [d_queue]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_d_time]  DEFAULT ((0)) FOR [d_time]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_d_queue1]  DEFAULT ('2015-1-1') FOR [spy_queue]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_d_time1]  DEFAULT ((0)) FOR [spy_time]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_spy]  DEFAULT ((0)) FOR [spy]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_a1]  DEFAULT ((0)) FOR [a1]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_a2]  DEFAULT ((0)) FOR [a2]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_a3]  DEFAULT ((0)) FOR [a3]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_b1]  DEFAULT ((0)) FOR [b1]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_b2]  DEFAULT ((0)) FOR [b2]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_b3]  DEFAULT ((0)) FOR [b3]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_c1]  DEFAULT ((0)) FOR [c1]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_c2]  DEFAULT ((0)) FOR [c2]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_c3]  DEFAULT ((0)) FOR [c3]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_d1]  DEFAULT ((0)) FOR [d1]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_d2]  DEFAULT ((0)) FOR [d2]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_d3]  DEFAULT ((0)) FOR [d3]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_t_a1]  DEFAULT ((0)) FOR [t_a1]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_t_a2]  DEFAULT ((0)) FOR [t_a2]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_t_a3]  DEFAULT ((0)) FOR [t_a3]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_t_b1]  DEFAULT ((0)) FOR [t_b1]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_t_b2]  DEFAULT ((0)) FOR [t_b2]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_t_b3]  DEFAULT ((0)) FOR [t_b3]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_t_c1]  DEFAULT ((0)) FOR [t_c1]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_t_c2]  DEFAULT ((0)) FOR [t_c2]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_t_c3]  DEFAULT ((0)) FOR [t_c3]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_t_d1]  DEFAULT ((0)) FOR [t_d1]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_t_d2]  DEFAULT ((0)) FOR [t_d2]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_t_d3]  DEFAULT ((0)) FOR [t_d3]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_i_a1]  DEFAULT ((0)) FOR [i_a1]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_i_a2]  DEFAULT ((0)) FOR [i_a2]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_i_a3]  DEFAULT ((0)) FOR [i_a3]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_i_b1]  DEFAULT ((0)) FOR [i_b1]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_i_b2]  DEFAULT ((0)) FOR [i_b2]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_i_b3]  DEFAULT ((0)) FOR [i_b3]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_i_c1]  DEFAULT ((0)) FOR [i_c1]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_i_c2]  DEFAULT ((0)) FOR [i_c2]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_i_c3]  DEFAULT ((0)) FOR [i_c3]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_i_d1]  DEFAULT ((0)) FOR [i_d1]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_i_d2]  DEFAULT ((0)) FOR [i_d2]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_i_d3]  DEFAULT ((0)) FOR [i_d3]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_h_a1]  DEFAULT ((0)) FOR [h_a1]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_h_a2]  DEFAULT ((0)) FOR [h_a2]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_h_a3]  DEFAULT ((0)) FOR [h_a3]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_h_b1]  DEFAULT ((0)) FOR [h_b1]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_h_b2]  DEFAULT ((0)) FOR [h_b2]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_h_b3]  DEFAULT ((0)) FOR [h_b3]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_h_c1]  DEFAULT ((0)) FOR [h_c1]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_h_c2]  DEFAULT ((0)) FOR [h_c2]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_h_c3]  DEFAULT ((0)) FOR [h_c3]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_h_d1]  DEFAULT ((0)) FOR [h_d1]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_h_d2]  DEFAULT ((0)) FOR [h_d2]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_h_d3]  DEFAULT ((0)) FOR [h_d3]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_r_a1]  DEFAULT ((0)) FOR [r_a1]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_r_a2]  DEFAULT ((0)) FOR [r_a2]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_r_a3]  DEFAULT ((0)) FOR [r_a3]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_r_b1]  DEFAULT ((0)) FOR [r_b1]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_r_b2]  DEFAULT ((0)) FOR [r_b2]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_r_b3]  DEFAULT ((0)) FOR [r_b3]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_r_c1]  DEFAULT ((0)) FOR [r_c1]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_r_c2]  DEFAULT ((0)) FOR [r_c2]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_r_c3]  DEFAULT ((0)) FOR [r_c3]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_r_d1]  DEFAULT ((0)) FOR [r_d1]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_r_d2]  DEFAULT ((0)) FOR [r_d2]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_r_d3]  DEFAULT ((0)) FOR [r_d3]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_rt_a1]  DEFAULT ((0)) FOR [rt_a1]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_rt_a2]  DEFAULT ((0)) FOR [rt_a2]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_rt_a3]  DEFAULT ((0)) FOR [rt_a3]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_rt_b1]  DEFAULT ((0)) FOR [rt_b1]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_rt_b2]  DEFAULT ((0)) FOR [rt_b2]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_rt_b3]  DEFAULT ((0)) FOR [rt_b3]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_rt_c1]  DEFAULT ((0)) FOR [rt_c1]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_rt_c2]  DEFAULT ((0)) FOR [rt_c2]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_rt_c3]  DEFAULT ((0)) FOR [rt_c3]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_rt_d1]  DEFAULT ((0)) FOR [rt_d1]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_rt_d2]  DEFAULT ((0)) FOR [rt_d2]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_rt_d3]  DEFAULT ((0)) FOR [rt_d3]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_rt_a11]  DEFAULT ((0)) FOR [a_a1]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_rt_a21]  DEFAULT ((0)) FOR [a_a2]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_rt_a31]  DEFAULT ((0)) FOR [a_a3]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_rt_b11]  DEFAULT ((0)) FOR [a_b1]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_rt_b21]  DEFAULT ((0)) FOR [a_b2]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_rt_b31]  DEFAULT ((0)) FOR [a_b3]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_rt_c11]  DEFAULT ((0)) FOR [a_c1]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_rt_c21]  DEFAULT ((0)) FOR [a_c2]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_rt_c31]  DEFAULT ((0)) FOR [a_c3]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_rt_d11]  DEFAULT ((0)) FOR [a_d1]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_rt_d21]  DEFAULT ((0)) FOR [a_d2]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_rt_d31]  DEFAULT ((0)) FOR [a_d3]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_a_a11]  DEFAULT ((0)) FOR [a_r1]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_a_a21]  DEFAULT ((0)) FOR [a_r2]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_a_a31]  DEFAULT ((0)) FOR [a_r3]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_a_b11]  DEFAULT ((0)) FOR [a_r4]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_a_b21]  DEFAULT ((0)) FOR [a_r5]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_research_r1]  DEFAULT ((0)) FOR [research_r1]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_research_r2]  DEFAULT ((0)) FOR [research_r2]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_research_r3]  DEFAULT ((0)) FOR [research_r3]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_research_r4]  DEFAULT ((0)) FOR [research_r4]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_research_r5]  DEFAULT ((0)) FOR [research_r5]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_research_build]  DEFAULT ((0)) FOR [research_build]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_research_research]  DEFAULT ((0)) FOR [research_research]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_research_march]  DEFAULT ((0)) FOR [research_march]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_research_trade]  DEFAULT ((0)) FOR [research_trade]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_research_craft]  DEFAULT ((0)) FOR [research_craft]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_research_heal]  DEFAULT ((0)) FOR [research_heal]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_research_training]  DEFAULT ((0)) FOR [research_training]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_research_a_attack]  DEFAULT ((0)) FOR [research_a_attack]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_research_b_attack]  DEFAULT ((0)) FOR [research_b_attack]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_research_c_attack]  DEFAULT ((0)) FOR [research_c_attack]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_research_d_attack]  DEFAULT ((0)) FOR [research_d_attack]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_research_attack]  DEFAULT ((0)) FOR [research_attack]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_research_defense]  DEFAULT ((0)) FOR [research_defense]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_research_life]  DEFAULT ((0)) FOR [research_life]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_research_load]  DEFAULT ((0)) FOR [research_load]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_r1_boost_value]  DEFAULT ((0)) FOR [r1_boost_value]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_r1_boost_value6]  DEFAULT ((0)) FOR [r2_boost_value]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_r1_boost_value5]  DEFAULT ((0)) FOR [r3_boost_value]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_r1_boost_value4]  DEFAULT ((0)) FOR [r4_boost_value]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_r1_boost_value3]  DEFAULT ((0)) FOR [r5_boost_value]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_r1_boost_value2]  DEFAULT ((0)) FOR [attack_boost_value]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_r1_boost_value1]  DEFAULT ((0)) FOR [defense_boost_value]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_item_r1]  DEFAULT ((0)) FOR [item_r1]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_item_r2]  DEFAULT ((0)) FOR [item_r2]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_item_r3]  DEFAULT ((0)) FOR [item_r3]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_item_r4]  DEFAULT ((0)) FOR [item_r4]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_item_r5]  DEFAULT ((0)) FOR [item_r5]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_item_attack]  DEFAULT ((0)) FOR [item_attack]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_item_defense]  DEFAULT ((0)) FOR [item_defense]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_item_r1_ending]  DEFAULT ('2015-1-1') FOR [item_r1_ending]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_item_r2_ending]  DEFAULT ('2015-1-1') FOR [item_r2_ending]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_item_r3_ending]  DEFAULT ('2015-1-1') FOR [item_r3_ending]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_item_r4_ending]  DEFAULT ('2015-1-1') FOR [item_r4_ending]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_item_r5_ending]  DEFAULT ('2015-1-1') FOR [item_r5_ending]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_item_attack_ending]  DEFAULT ('2015-1-1') FOR [item_attack_ending]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_item_defense_ending]  DEFAULT ('2015-1-1') FOR [item_defense_ending]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_research_a2]  DEFAULT ((0)) FOR [research_a2]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_research_a3]  DEFAULT ((0)) FOR [research_a3]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_research_b2]  DEFAULT ((0)) FOR [research_b2]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_research_b3]  DEFAULT ((0)) FOR [research_b3]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_research_c2]  DEFAULT ((0)) FOR [research_c2]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_research_c3]  DEFAULT ((0)) FOR [research_c3]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_research_d2]  DEFAULT ((0)) FOR [research_d2]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_research_d3]  DEFAULT ((0)) FOR [research_d3]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_protection_ending]  DEFAULT (((2015)-(1))-(1)) FOR [protection_ending]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_protection_time]  DEFAULT ((0)) FOR [protection_time]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_latest_captured_base_id]  DEFAULT ((0)) FOR [latest_captured_base_id]
GO
ALTER TABLE [dbo].[base] ADD  CONSTRAINT [DF_base_is_attack_capture]  DEFAULT ((0)) FOR [is_attack_capture]
GO
ALTER TABLE [dbo].[build] ADD  DEFAULT ('1900-1-1') FOR [build_queue]
GO
ALTER TABLE [dbo].[building_level] ADD  CONSTRAINT [DF_building_level_building_level]  DEFAULT ((1)) FOR [building_level]
GO
ALTER TABLE [dbo].[building_level] ADD  CONSTRAINT [DF_building_level_r1]  DEFAULT ((0)) FOR [r1]
GO
ALTER TABLE [dbo].[building_level] ADD  CONSTRAINT [DF_building_level_r2]  DEFAULT ((0)) FOR [r2]
GO
ALTER TABLE [dbo].[building_level] ADD  CONSTRAINT [DF_building_level_r3]  DEFAULT ((0)) FOR [r3]
GO
ALTER TABLE [dbo].[building_level] ADD  CONSTRAINT [DF_building_level_r4]  DEFAULT ((0)) FOR [r4]
GO
ALTER TABLE [dbo].[building_level] ADD  CONSTRAINT [DF_building_level_r5]  DEFAULT ((0)) FOR [r5]
GO
ALTER TABLE [dbo].[building_level] ADD  CONSTRAINT [DF_building_level_time]  DEFAULT ((0)) FOR [time]
GO
ALTER TABLE [dbo].[building_level] ADD  CONSTRAINT [DF_building_level_hero_xp]  DEFAULT ((0)) FOR [hero_xp]
GO
ALTER TABLE [dbo].[building_level] ADD  CONSTRAINT [DF_building_level_power]  DEFAULT ((0)) FOR [power]
GO
ALTER TABLE [dbo].[building_level] ADD  CONSTRAINT [DF_building_level_production]  DEFAULT ((0)) FOR [production]
GO
ALTER TABLE [dbo].[building_level] ADD  CONSTRAINT [DF_building_level_capacity]  DEFAULT ((0)) FOR [capacity]
GO
ALTER TABLE [dbo].[building_level] ADD  CONSTRAINT [DF_building_level_require1_building_id]  DEFAULT ((0)) FOR [require1_building_id]
GO
ALTER TABLE [dbo].[building_level] ADD  CONSTRAINT [DF_building_level_require1_building_level]  DEFAULT ((0)) FOR [require1_building_level]
GO
ALTER TABLE [dbo].[building_level] ADD  CONSTRAINT [DF_building_level_require2_building_id]  DEFAULT ((0)) FOR [require2_building_id]
GO
ALTER TABLE [dbo].[building_level] ADD  CONSTRAINT [DF_building_level_require2_building_level]  DEFAULT ((0)) FOR [require2_building_level]
GO
ALTER TABLE [dbo].[chat] ADD  CONSTRAINT [DF_chat_profile_face]  DEFAULT ((1)) FOR [profile_face]
GO
ALTER TABLE [dbo].[chat] ADD  CONSTRAINT [DF_chat_date_posted]  DEFAULT ('2015-1-1') FOR [date_posted]
GO
ALTER TABLE [dbo].[chat] ADD  CONSTRAINT [DF_chat_alliance_logo]  DEFAULT ((1)) FOR [alliance_logo]
GO
ALTER TABLE [dbo].[hero] ADD  CONSTRAINT [DF_hero_hero_status]  DEFAULT ((1)) FOR [hero_status]
GO
ALTER TABLE [dbo].[hero] ADD  CONSTRAINT [DF_hero_hero_type]  DEFAULT ((1)) FOR [hero_type]
GO
ALTER TABLE [dbo].[hero] ADD  CONSTRAINT [DF_hero_hero_xp]  DEFAULT ((0)) FOR [hero_xp]
GO
ALTER TABLE [dbo].[hero] ADD  CONSTRAINT [DF_hero_hero_xp_gain]  DEFAULT ((0)) FOR [hero_xp_gain]
GO
ALTER TABLE [dbo].[hero] ADD  CONSTRAINT [DF_hero_hero_helmet]  DEFAULT ((0)) FOR [hero_helmet]
GO
ALTER TABLE [dbo].[hero] ADD  CONSTRAINT [DF_hero_hero_armor]  DEFAULT ((0)) FOR [hero_armor]
GO
ALTER TABLE [dbo].[hero] ADD  CONSTRAINT [DF_hero_hero_boots]  DEFAULT ((0)) FOR [hero_boots]
GO
ALTER TABLE [dbo].[hero] ADD  CONSTRAINT [DF_hero_hero_weapon]  DEFAULT ((0)) FOR [hero_weapon]
GO
ALTER TABLE [dbo].[hero] ADD  CONSTRAINT [DF_hero_hero_accessory]  DEFAULT ((0)) FOR [hero_accessory]
GO
ALTER TABLE [dbo].[hero] ADD  CONSTRAINT [DF_hero_hero_gloves]  DEFAULT ((0)) FOR [hero_gloves]
GO
ALTER TABLE [dbo].[hero] ADD  CONSTRAINT [DF_hero_hero_r1]  DEFAULT ((0)) FOR [hero_r1]
GO
ALTER TABLE [dbo].[hero] ADD  CONSTRAINT [DF_hero_hero_r2]  DEFAULT ((0)) FOR [hero_r2]
GO
ALTER TABLE [dbo].[hero] ADD  CONSTRAINT [DF_hero_hero_r3]  DEFAULT ((0)) FOR [hero_r3]
GO
ALTER TABLE [dbo].[hero] ADD  CONSTRAINT [DF_hero_hero_r4]  DEFAULT ((0)) FOR [hero_r4]
GO
ALTER TABLE [dbo].[hero] ADD  CONSTRAINT [DF_hero_hero_r5]  DEFAULT ((0)) FOR [hero_r5]
GO
ALTER TABLE [dbo].[hero] ADD  CONSTRAINT [DF_hero_hero_build]  DEFAULT ((0)) FOR [hero_build]
GO
ALTER TABLE [dbo].[hero] ADD  CONSTRAINT [DF_hero_hero_research]  DEFAULT ((0)) FOR [hero_research]
GO
ALTER TABLE [dbo].[hero] ADD  CONSTRAINT [DF_hero_hero_march]  DEFAULT ((0)) FOR [hero_march]
GO
ALTER TABLE [dbo].[hero] ADD  CONSTRAINT [DF_hero_hero_trade]  DEFAULT ((0)) FOR [hero_trade]
GO
ALTER TABLE [dbo].[hero] ADD  CONSTRAINT [DF_hero_hero_craft]  DEFAULT ((0)) FOR [hero_craft]
GO
ALTER TABLE [dbo].[hero] ADD  CONSTRAINT [DF_hero_hero_heal]  DEFAULT ((0)) FOR [hero_heal]
GO
ALTER TABLE [dbo].[hero] ADD  CONSTRAINT [DF_hero_hero_training]  DEFAULT ((0)) FOR [hero_training]
GO
ALTER TABLE [dbo].[hero] ADD  CONSTRAINT [DF_hero_hero_a_attack]  DEFAULT ((0)) FOR [hero_a_attack]
GO
ALTER TABLE [dbo].[hero] ADD  CONSTRAINT [DF_hero_hero_b_attack]  DEFAULT ((0)) FOR [hero_b_attack]
GO
ALTER TABLE [dbo].[hero] ADD  CONSTRAINT [DF_hero_hero_c_attack]  DEFAULT ((0)) FOR [hero_c_attack]
GO
ALTER TABLE [dbo].[hero] ADD  CONSTRAINT [DF_hero_hero_d_attack]  DEFAULT ((0)) FOR [hero_d_attack]
GO
ALTER TABLE [dbo].[hero] ADD  CONSTRAINT [DF_hero_hero_attack]  DEFAULT ((0)) FOR [hero_attack]
GO
ALTER TABLE [dbo].[hero] ADD  CONSTRAINT [DF_hero_hero_defense]  DEFAULT ((0)) FOR [hero_defense]
GO
ALTER TABLE [dbo].[hero] ADD  CONSTRAINT [DF_hero_hero_life]  DEFAULT ((0)) FOR [hero_life]
GO
ALTER TABLE [dbo].[hero] ADD  CONSTRAINT [DF_hero_hero_load]  DEFAULT ((0)) FOR [hero_load]
GO
ALTER TABLE [dbo].[item] ADD  CONSTRAINT [DF_item_item_valid]  DEFAULT ((1)) FOR [item_valid]
GO
ALTER TABLE [dbo].[item] ADD  CONSTRAINT [DF_item_item_forsale]  DEFAULT ((1)) FOR [item_forsale]
GO
ALTER TABLE [dbo].[item] ADD  CONSTRAINT [DF_item_item_use]  DEFAULT ((1)) FOR [item_use]
GO
ALTER TABLE [dbo].[itemprofile] ADD  CONSTRAINT [DF_itemprofile_quantity]  DEFAULT ((1)) FOR [quantity]
GO
ALTER TABLE [dbo].[mail] ADD  CONSTRAINT [DF_mail_date_posted]  DEFAULT ('2015-1-1') FOR [date_posted]
GO
ALTER TABLE [dbo].[mail] ADD  CONSTRAINT [DF_mail_everyone]  DEFAULT ((0)) FOR [everyone]
GO
ALTER TABLE [dbo].[mail] ADD  CONSTRAINT [DF_mail_club_id]  DEFAULT ((0)) FOR [profile_id]
GO
ALTER TABLE [dbo].[mail] ADD  CONSTRAINT [DF_mail_profile_face]  DEFAULT ((1)) FOR [profile_face]
GO
ALTER TABLE [dbo].[mail] ADD  CONSTRAINT [DF_mail_open_read]  DEFAULT ((0)) FOR [open_read]
GO
ALTER TABLE [dbo].[mail] ADD  CONSTRAINT [DF_mail_reply_counter]  DEFAULT ((0)) FOR [reply_counter]
GO
ALTER TABLE [dbo].[mail_reply] ADD  CONSTRAINT [DF_mail_reply_date_posted]  DEFAULT ('2015-1-1') FOR [date_posted]
GO
ALTER TABLE [dbo].[mail_reply] ADD  CONSTRAINT [DF_mail_reply_profile_face]  DEFAULT ((1)) FOR [profile_face]
GO
ALTER TABLE [dbo].[map_terrain] ADD  DEFAULT ((0)) FOR [x_coordinate]
GO
ALTER TABLE [dbo].[map_terrain] ADD  DEFAULT ((0)) FOR [y_coordinate]
GO
ALTER TABLE [dbo].[mission] ADD  CONSTRAINT [DF_mission_claimed]  DEFAULT ((0)) FOR [claimed]
GO
ALTER TABLE [dbo].[mission] ADD  CONSTRAINT [DF_mission_started]  DEFAULT ((0)) FOR [started]
GO
ALTER TABLE [dbo].[mission_type] ADD  CONSTRAINT [DF_mission_type_mission_duration]  DEFAULT ((0)) FOR [mission_duration]
GO
ALTER TABLE [dbo].[mission_type] ADD  CONSTRAINT [DF_mission_type_power_range_min]  DEFAULT ((0)) FOR [power_range_min]
GO
ALTER TABLE [dbo].[mission_type] ADD  CONSTRAINT [DF_mission_type_power_range_max]  DEFAULT ((0)) FOR [power_range_max]
GO
ALTER TABLE [dbo].[mission_type] ADD  CONSTRAINT [DF_mission_type_requirement_value_1]  DEFAULT ((0)) FOR [requirement_value_1]
GO
ALTER TABLE [dbo].[mission_type] ADD  CONSTRAINT [DF_mission_type_requirement_value_2]  DEFAULT ((0)) FOR [requirement_value_2]
GO
ALTER TABLE [dbo].[mission_type] ADD  CONSTRAINT [DF_mission_type_requirement_value_3]  DEFAULT ((0)) FOR [requirement_value_3]
GO
ALTER TABLE [dbo].[mission_type] ADD  CONSTRAINT [DF_mission_type_requirement_value_4]  DEFAULT ((0)) FOR [requirement_value_4]
GO
ALTER TABLE [dbo].[mission_type] ADD  CONSTRAINT [DF_mission_type_requirement_value_5]  DEFAULT ((0)) FOR [requirement_value_5]
GO
ALTER TABLE [dbo].[mission_type] ADD  CONSTRAINT [DF_mission_type_requirement_value_6]  DEFAULT ((0)) FOR [requirement_value_6]
GO
ALTER TABLE [dbo].[mission_type] ADD  CONSTRAINT [DF_mission_type_requirement_value_7]  DEFAULT ((0)) FOR [requirement_value_7]
GO
ALTER TABLE [dbo].[mission_type] ADD  CONSTRAINT [DF_mission_type_requirement_value_8]  DEFAULT ((0)) FOR [requirement_value_8]
GO
ALTER TABLE [dbo].[mission_type] ADD  CONSTRAINT [DF_mission_type_requirement_value_9]  DEFAULT ((0)) FOR [requirement_value_9]
GO
ALTER TABLE [dbo].[mission_type] ADD  CONSTRAINT [DF_mission_type_requirement_value_10]  DEFAULT ((0)) FOR [requirement_value_10]
GO
ALTER TABLE [dbo].[mission_type] ADD  CONSTRAINT [DF_mission_type_requirement_value_11]  DEFAULT ((0)) FOR [requirement_value_11]
GO
ALTER TABLE [dbo].[mission_type] ADD  CONSTRAINT [DF_mission_type_requirement_value_12]  DEFAULT ((0)) FOR [requirement_value_12]
GO
ALTER TABLE [dbo].[mission_type] ADD  CONSTRAINT [DF_mission_type_requirement_value_13]  DEFAULT ((0)) FOR [requirement_value_13]
GO
ALTER TABLE [dbo].[mission_type] ADD  CONSTRAINT [DF_mission_type_requirement_value_14]  DEFAULT ((0)) FOR [requirement_value_14]
GO
ALTER TABLE [dbo].[mission_type] ADD  CONSTRAINT [DF_mission_type_reward_value_1]  DEFAULT ((0)) FOR [reward_value_1]
GO
ALTER TABLE [dbo].[mission_type] ADD  CONSTRAINT [DF_mission_type_reward_value_2]  DEFAULT ((0)) FOR [reward_value_2]
GO
ALTER TABLE [dbo].[mission_type] ADD  CONSTRAINT [DF_mission_type_reward_value_3]  DEFAULT ((0)) FOR [reward_value_3]
GO
ALTER TABLE [dbo].[mission_type] ADD  CONSTRAINT [DF_mission_type_reward_value_4]  DEFAULT ((0)) FOR [reward_value_4]
GO
ALTER TABLE [dbo].[mission_type] ADD  CONSTRAINT [DF_mission_type_reward_value_5]  DEFAULT ((0)) FOR [reward_value_5]
GO
ALTER TABLE [dbo].[mission_type] ADD  CONSTRAINT [DF_mission_type_reward_value_6]  DEFAULT ((0)) FOR [reward_value_6]
GO
ALTER TABLE [dbo].[mission_type] ADD  CONSTRAINT [DF_mission_type_reward_value_7]  DEFAULT ((0)) FOR [reward_value_7]
GO
ALTER TABLE [dbo].[mission_type] ADD  CONSTRAINT [DF_mission_type_reward_value_8]  DEFAULT ((0)) FOR [reward_value_8]
GO
ALTER TABLE [dbo].[mission_type] ADD  CONSTRAINT [DF_mission_type_reward_value_9]  DEFAULT ((0)) FOR [reward_value_9]
GO
ALTER TABLE [dbo].[mission_type] ADD  CONSTRAINT [DF_mission_type_reward_value_10]  DEFAULT ((0)) FOR [reward_value_10]
GO
ALTER TABLE [dbo].[mission_type] ADD  CONSTRAINT [DF_mission_type_reward_value_11]  DEFAULT ((0)) FOR [reward_value_11]
GO
ALTER TABLE [dbo].[mission_type] ADD  CONSTRAINT [DF_mission_type_reward_value_12]  DEFAULT ((0)) FOR [reward_value_12]
GO
ALTER TABLE [dbo].[mission_type] ADD  CONSTRAINT [DF_mission_type_reward_value_13]  DEFAULT ((0)) FOR [reward_value_13]
GO
ALTER TABLE [dbo].[mission_type] ADD  CONSTRAINT [DF_mission_type_reward_value_14]  DEFAULT ((0)) FOR [reward_value_14]
GO
ALTER TABLE [dbo].[mission_type] ADD  CONSTRAINT [DF_mission_type_requirement_value_15]  DEFAULT ((0)) FOR [reward_value_15]
GO
ALTER TABLE [dbo].[mission_type] ADD  CONSTRAINT [DF_mission_type_requirement_value_16]  DEFAULT ((0)) FOR [reward_value_16]
GO
ALTER TABLE [dbo].[mission_type] ADD  CONSTRAINT [DF_mission_type_requirement_value_17]  DEFAULT ((0)) FOR [reward_value_17]
GO
ALTER TABLE [dbo].[mission_type] ADD  CONSTRAINT [DF_mission_type_reward_value_18]  DEFAULT ((0)) FOR [reward_value_18]
GO
ALTER TABLE [dbo].[profile] ADD  CONSTRAINT [DF_profile_date_found]  DEFAULT ('2015-1-1') FOR [date_found]
GO
ALTER TABLE [dbo].[profile] ADD  CONSTRAINT [DF_profile_profile_name]  DEFAULT ('Profile 1') FOR [profile_name]
GO
ALTER TABLE [dbo].[profile] ADD  CONSTRAINT [DF_profile_profile_face]  DEFAULT ((1)) FOR [profile_face]
GO
ALTER TABLE [dbo].[profile] ADD  CONSTRAINT [DF_profile_alliance_id]  DEFAULT ((0)) FOR [alliance_id]
GO
ALTER TABLE [dbo].[profile] ADD  CONSTRAINT [DF_profile_alliance_rank]  DEFAULT ((0)) FOR [alliance_rank]
GO
ALTER TABLE [dbo].[profile] ADD  CONSTRAINT [DF_profile_xp]  DEFAULT ((0)) FOR [xp]
GO
ALTER TABLE [dbo].[profile] ADD  CONSTRAINT [DF_profile_xp_gain]  DEFAULT ((0)) FOR [xp_gain]
GO
ALTER TABLE [dbo].[profile] ADD  CONSTRAINT [DF_profile_xp_history]  DEFAULT ((0)) FOR [xp_history]
GO
ALTER TABLE [dbo].[profile] ADD  CONSTRAINT [DF_profile_xp_gain_a]  DEFAULT ((0)) FOR [xp_gain_a]
GO
ALTER TABLE [dbo].[profile] ADD  CONSTRAINT [DF_profile_xp_history_a]  DEFAULT ((0)) FOR [xp_history_a]
GO
ALTER TABLE [dbo].[profile] ADD  CONSTRAINT [DF_profile_kills]  DEFAULT ((0)) FOR [kills]
GO
ALTER TABLE [dbo].[profile] ADD  CONSTRAINT [DF_profile_kills1]  DEFAULT ((0)) FOR [kills_gain]
GO
ALTER TABLE [dbo].[profile] ADD  CONSTRAINT [DF_profile_kills1_1]  DEFAULT ((0)) FOR [kills_history]
GO
ALTER TABLE [dbo].[profile] ADD  CONSTRAINT [DF_profile_kills1_2]  DEFAULT ((0)) FOR [kills_gain_a]
GO
ALTER TABLE [dbo].[profile] ADD  CONSTRAINT [DF_profile_kills1_3]  DEFAULT ((0)) FOR [kills_history_a]
GO
ALTER TABLE [dbo].[profile] ADD  CONSTRAINT [DF_profile_troop_lost]  DEFAULT ((0)) FOR [troop_lost]
GO
ALTER TABLE [dbo].[profile] ADD  CONSTRAINT [DF_profile_attacks_won]  DEFAULT ((0)) FOR [attacks_won]
GO
ALTER TABLE [dbo].[profile] ADD  CONSTRAINT [DF_profile_attacks_lost]  DEFAULT ((0)) FOR [attacks_lost]
GO
ALTER TABLE [dbo].[profile] ADD  CONSTRAINT [DF_profile_defenses_won]  DEFAULT ((0)) FOR [defenses_won]
GO
ALTER TABLE [dbo].[profile] ADD  CONSTRAINT [DF_profile_defenses_lost]  DEFAULT ((0)) FOR [defenses_lost]
GO
ALTER TABLE [dbo].[profile] ADD  CONSTRAINT [DF_profile_players_scouted]  DEFAULT ((0)) FOR [players_scouted]
GO
ALTER TABLE [dbo].[profile] ADD  CONSTRAINT [DF_profile_currency_first]  DEFAULT ((0)) FOR [currency_second]
GO
ALTER TABLE [dbo].[profile] ADD  CONSTRAINT [DF_profile_tutorial_on_start]  DEFAULT ((1)) FOR [tutorial_on]
GO
ALTER TABLE [dbo].[profile] ADD  CONSTRAINT [DF__profile__current__6A26A4A8]  DEFAULT ((0)) FOR [last_completed_tutorial_step]
GO
ALTER TABLE [dbo].[profile] ADD  CONSTRAINT [DF_profile_current_mission_id]  DEFAULT ((0)) FOR [current_mission_id]
GO
ALTER TABLE [dbo].[region] ADD  CONSTRAINT [DF_region_last_process]  DEFAULT ('2015-1-1') FOR [last_process]
GO
ALTER TABLE [dbo].[reinforce] ADD  CONSTRAINT [DF_reinforce_is_return]  DEFAULT ((0)) FOR [is_return]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_open_read]  DEFAULT ((0)) FOR [open_read]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_date_posted]  DEFAULT ('2015-1-1') FOR [date_posted]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_date_arrive]  DEFAULT ('2015-1-1') FOR [date_arrive]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_profile1_r_troops]  DEFAULT ((0)) FOR [profile1_r_troops]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_profile1_r_injured]  DEFAULT ((0)) FOR [profile1_r_injured]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_profile1_r_killed]  DEFAULT ((0)) FOR [profile1_r_killed]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_resource1]  DEFAULT ((0)) FOR [r1]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_resource2]  DEFAULT ((0)) FOR [r2]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_resource3]  DEFAULT ((0)) FOR [r3]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_resource4]  DEFAULT ((0)) FOR [r4]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_resource5]  DEFAULT ((0)) FOR [r5]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_i_a1]  DEFAULT ((0)) FOR [i1_a1]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_i_a2]  DEFAULT ((0)) FOR [i1_a2]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_i_a3]  DEFAULT ((0)) FOR [i1_a3]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_i_b1]  DEFAULT ((0)) FOR [i1_b1]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_i_b2]  DEFAULT ((0)) FOR [i1_b2]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_i_b3]  DEFAULT ((0)) FOR [i1_b3]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_i_c1]  DEFAULT ((0)) FOR [i1_c1]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_i_c2]  DEFAULT ((0)) FOR [i1_c2]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_i_c3]  DEFAULT ((0)) FOR [i1_c3]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_i_d1]  DEFAULT ((0)) FOR [i1_d1]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_i_d2]  DEFAULT ((0)) FOR [i1_d2]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_i_d3]  DEFAULT ((0)) FOR [i1_d3]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_h_a1]  DEFAULT ((0)) FOR [k1_a1]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_h_a2]  DEFAULT ((0)) FOR [k1_a2]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_h_a3]  DEFAULT ((0)) FOR [k1_a3]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_h_b1]  DEFAULT ((0)) FOR [k1_b1]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_h_b2]  DEFAULT ((0)) FOR [k1_b2]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_h_b3]  DEFAULT ((0)) FOR [k1_b3]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_h_c1]  DEFAULT ((0)) FOR [k1_c1]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_h_c2]  DEFAULT ((0)) FOR [k1_c2]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_h_c3]  DEFAULT ((0)) FOR [k1_c3]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_h_d1]  DEFAULT ((0)) FOR [k1_d1]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_h_d2]  DEFAULT ((0)) FOR [k1_d2]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_h_d3]  DEFAULT ((0)) FOR [k1_d3]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_i2_a1]  DEFAULT ((0)) FOR [i2_a1]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_i2_a2]  DEFAULT ((0)) FOR [i2_a2]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_i2_a3]  DEFAULT ((0)) FOR [i2_a3]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_i2_b1]  DEFAULT ((0)) FOR [i2_b1]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_i2_b2]  DEFAULT ((0)) FOR [i2_b2]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_i2_b3]  DEFAULT ((0)) FOR [i2_b3]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_i2_c1]  DEFAULT ((0)) FOR [i2_c1]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_i2_c2]  DEFAULT ((0)) FOR [i2_c2]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_i2_c3]  DEFAULT ((0)) FOR [i2_c3]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_i2_d1]  DEFAULT ((0)) FOR [i2_d1]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_i2_d2]  DEFAULT ((0)) FOR [i2_d2]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_i2_d3]  DEFAULT ((0)) FOR [i2_d3]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_k2_a1]  DEFAULT ((0)) FOR [k2_a1]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_k2_a2]  DEFAULT ((0)) FOR [k2_a2]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_k2_a3]  DEFAULT ((0)) FOR [k2_a3]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_k2_b1]  DEFAULT ((0)) FOR [k2_b1]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_k2_b2]  DEFAULT ((0)) FOR [k2_b2]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_k2_b3]  DEFAULT ((0)) FOR [k2_b3]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_k2_c1]  DEFAULT ((0)) FOR [k2_c1]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_k2_c2]  DEFAULT ((0)) FOR [k2_c2]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_k2_c3]  DEFAULT ((0)) FOR [k2_c3]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_k2_d1]  DEFAULT ((0)) FOR [k2_d1]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_k2_d2]  DEFAULT ((0)) FOR [k2_d2]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_k2_d3]  DEFAULT ((0)) FOR [k2_d3]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_r_a11]  DEFAULT ((0)) FOR [r2_a1]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_r_a21]  DEFAULT ((0)) FOR [r2_a2]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_r_a31]  DEFAULT ((0)) FOR [r2_a3]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_r_b11]  DEFAULT ((0)) FOR [r2_b1]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_r_b21]  DEFAULT ((0)) FOR [r2_b2]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_r_b31]  DEFAULT ((0)) FOR [r2_b3]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_r_c11]  DEFAULT ((0)) FOR [r2_c1]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_r_c21]  DEFAULT ((0)) FOR [r2_c2]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_r_c31]  DEFAULT ((0)) FOR [r2_c3]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_r_d11]  DEFAULT ((0)) FOR [r2_d1]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_r_d21]  DEFAULT ((0)) FOR [r2_d2]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_r_d31]  DEFAULT ((0)) FOR [r2_d3]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_r_a1]  DEFAULT ((0)) FOR [rk2_a1]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_r_a2]  DEFAULT ((0)) FOR [rk2_a2]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_r_a3]  DEFAULT ((0)) FOR [rk2_a3]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_r_b1]  DEFAULT ((0)) FOR [rk2_b1]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_r_b2]  DEFAULT ((0)) FOR [rk2_b2]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_r_b3]  DEFAULT ((0)) FOR [rk2_b3]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_r_c1]  DEFAULT ((0)) FOR [rk2_c1]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_r_c2]  DEFAULT ((0)) FOR [rk2_c2]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_r_c3]  DEFAULT ((0)) FOR [rk2_c3]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_r_d1]  DEFAULT ((0)) FOR [rk2_d1]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_r_d2]  DEFAULT ((0)) FOR [rk2_d2]
GO
ALTER TABLE [dbo].[report] ADD  CONSTRAINT [DF_report_r_d3]  DEFAULT ((0)) FOR [rk2_d3]
GO
ALTER TABLE [dbo].[research] ADD  CONSTRAINT [DF_research_max_level]  DEFAULT ((22)) FOR [max_level]
GO
ALTER TABLE [dbo].[sales_items] ADD  CONSTRAINT [DF_sales_items_quantity]  DEFAULT ((1)) FOR [quantity]
GO
ALTER TABLE [dbo].[settings] ADD  CONSTRAINT [DF__settings__villag__5F1F0650]  DEFAULT ((360)) FOR [village_resource_refresh_rate]
GO
ALTER TABLE [dbo].[settings] ADD  CONSTRAINT [DF__settings__city_r__60132A89]  DEFAULT ((360)) FOR [city_resource_refresh_rate]
GO
ALTER TABLE [dbo].[settings] ADD  CONSTRAINT [DF__settings__map_wi__61FB72FB]  DEFAULT ((100)) FOR [map_width]
GO
ALTER TABLE [dbo].[settings] ADD  CONSTRAINT [DF__settings__map_he__62EF9734]  DEFAULT ((100)) FOR [map_height]
GO
ALTER TABLE [dbo].[settings] ADD  CONSTRAINT [DF__settings__villag__63E3BB6D]  DEFAULT ((4)) FOR [village_population_formula_block_width]
GO
ALTER TABLE [dbo].[settings] ADD  CONSTRAINT [DF__settings__villag__64D7DFA6]  DEFAULT ((4)) FOR [village_population_formula_block_height]
GO
ALTER TABLE [dbo].[settings] ADD  CONSTRAINT [DF_settings_research_minus_level_after_capture]  DEFAULT ((1)) FOR [research_minus_level_after_capture]
GO
ALTER TABLE [dbo].[settings] ADD  CONSTRAINT [DF_settings_building_minus_level_after_capture]  DEFAULT ((1)) FOR [building_minus_level_after_capture]
GO
ALTER TABLE [dbo].[settings] ADD  CONSTRAINT [DF_settings_base_loyalty_conversion_time]  DEFAULT ((86400)) FOR [base_loyalty_conversion_time]
GO
ALTER TABLE [dbo].[settings] ADD  CONSTRAINT [DF_settings_mission_daily_reset_time]  DEFAULT (((2015)-(1))-(1)) FOR [daily_mission_next_updated_time]
GO
ALTER TABLE [dbo].[settings] ADD  CONSTRAINT [DF_settings_number_of_daily_mission]  DEFAULT ((0)) FOR [number_of_daily_mission]
GO
ALTER TABLE [dbo].[trades] ADD  CONSTRAINT [DF_trades_date_sent]  DEFAULT ('2015-1-1') FOR [date_sent]
GO
ALTER TABLE [dbo].[trades] ADD  CONSTRAINT [DF_trades_date_arrive]  DEFAULT ('2015-1-1') FOR [date_arrive]
GO
ALTER TABLE [dbo].[transfer_troops] ADD  CONSTRAINT [DF_transfer_troops_date_sent]  DEFAULT ('2015-1-1') FOR [date_sent]
GO
ALTER TABLE [dbo].[transfer_troops] ADD  CONSTRAINT [DF_transfer_troops_date_arrive]  DEFAULT ('2015-1-1') FOR [date_arrive]
GO
ALTER TABLE [dbo].[village] ADD  CONSTRAINT [DF_Table_1_base_type]  DEFAULT ((1)) FOR [village_level]
GO
ALTER TABLE [dbo].[village] ADD  CONSTRAINT [DF_village_map_x]  DEFAULT ((1)) FOR [map_x]
GO
ALTER TABLE [dbo].[village] ADD  CONSTRAINT [DF_village_map_y]  DEFAULT ((1)) FOR [map_y]
GO
ALTER TABLE [dbo].[village] ADD  CONSTRAINT [village_army_type_default]  DEFAULT ((4)) FOR [army_type]
GO
ALTER TABLE [dbo].[village] ADD  CONSTRAINT [village_resources_type_default]  DEFAULT ((6)) FOR [resources_type]
GO
ALTER TABLE [dbo].[village] ADD  CONSTRAINT [DF_village_last_attacked]  DEFAULT ('2015-1-1') FOR [last_attacked]
GO
/****** Object:  StoredProcedure [dbo].[usp_AllianceApply]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_AllianceApply]
(@profile_uid nvarchar(50), @alliance_id int, @r int out)
AS
BEGIN

DECLARE @count_apply int, @profile_id int

SET @r = -1;

SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid), 0);

IF @profile_id > 0
BEGIN

SET @count_apply = ISNULL((SELECT COUNT(*) FROM alliance_apply WHERE alliance_id=@alliance_id AND profile_id=@profile_id), 0);

IF @count_apply = 0
BEGIN

INSERT INTO alliance_apply VALUES (@alliance_id, @profile_id, GETUTCDATE());

END

SET @r = 1;

END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_AllianceApprove]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_AllianceApprove]
(@profile_uid nvarchar(50), @alliance_id int, @action_profile_id int, @r int out)
AS
BEGIN

    DECLARE @profile_id int, @profile_name nvarchar(50), @text nvarchar(500), @event_icon nvarchar(50), @profile_face int, @alliance_level int

    SET @r = -1;
    SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid AND alliance_id=@alliance_id AND alliance_rank=1), 0);

    SET @alliance_level = ISNULL((SELECT alliance_level FROM alliance WHERE alliance_id=@alliance_id AND leader_id=@profile_id), 0);
    --TODO check for max level members allowed

    IF @profile_id > 0
    BEGIN

        DELETE alliance_apply WHERE alliance_id=@alliance_id AND profile_id=@action_profile_id;

        UPDATE [profile] SET alliance_id=@alliance_id, alliance_rank=2 WHERE profile_id=@action_profile_id;

        SET @profile_name = (SELECT profile_name FROM [profile] WHERE profile_id=@action_profile_id);
        SET @profile_face = ISNULL((SELECT profile_face FROM [profile] WHERE profile_id=@action_profile_id), 0);
        SET @event_icon = N'face_' + CONVERT(varchar(10),@profile_face);

        SET @text = @profile_name + N' was approved to join the Alliance.';

        INSERT INTO alliance_event VALUES (@alliance_id, @profile_id, @profile_name, @event_icon, @text, GETUTCDATE());

        --Update map (alliance tag)
        DECLARE @base_id int
        DECLARE base_table_cursor CURSOR
        FOR SELECT base_id
        FROM base
        WHERE profile_id = @profile_id
        OPEN base_table_cursor
        FETCH NEXT FROM base_table_cursor
        INTO @base_id
        WHILE @@FETCH_STATUS = 0
            BEGIN
                exec usp_UpdateRegions @base_id
                FETCH NEXT FROM base_table_cursor
                INTO @base_id
            END

        CLOSE base_table_cursor
        DEALLOCATE base_table_cursor

        --Return all reinforcements by alliance members
        UPDATE reinforce SET is_return=1, date_sent=GETUTCDATE(), date_arrive=DATEADD(ss, march_time, GETUTCDATE()) WHERE to_profile_id=@profile_id;

        --Return all reinforcements by alliance members
        UPDATE reinforce SET is_return=1, date_sent=GETUTCDATE(), date_arrive=DATEADD(ss, march_time, GETUTCDATE()) WHERE from_profile_id=@profile_id;

        SET @r = 1;
    END


END
GO
/****** Object:  StoredProcedure [dbo].[usp_AllianceCreate]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_AllianceCreate]
(@profile_uid nvarchar(50), @alliance_name nvarchar(50), @alliance_tag nvarchar(3), @alliance_marquee nvarchar(MAX), @r int out)
AS
BEGIN

DECLARE @profile_id int, @alliance_id int, @logo int, @alliance_require_currency2 int

SET @r = -1;
SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid), 0);
SET @alliance_require_currency2 = ISNULL((SELECT alliance_require_currency2 FROM settings WHERE settings_id=1), 0);

--Check if id already exist on main db
IF (@profile_id > 0)
BEGIN

    SET @logo = dbo.fx_generateRandomNumber(newID(), 1, 10);

    INSERT INTO alliance (leader_id, alliance_name, alliance_tag, alliance_logo, alliance_language, alliance_marquee, alliance_description, alliance_level, alliance_currency_first, alliance_currency_second, alliance_created) 
        VALUES (@profile_id, @alliance_name, @alliance_tag, @logo, 0, @alliance_marquee, '', 1, 0, 0, GETUTCDATE());

    SELECT @alliance_id = SCOPE_IDENTITY();

    UPDATE [profile] SET alliance_id=@alliance_id, alliance_rank=1, currency_second=currency_second-@alliance_require_currency2 WHERE profile_id=@profile_id;
    
    DECLARE @base_id int
    DECLARE base_table_cursor CURSOR
    FOR SELECT base_id
    FROM base 
    WHERE profile_id = @profile_id
    OPEN base_table_cursor
    FETCH NEXT FROM base_table_cursor
    INTO @base_id
    WHILE @@FETCH_STATUS = 0
		BEGIN
            exec usp_UpdateRegions @base_id
            FETCH NEXT FROM base_table_cursor
            INTO @base_id
        END
        
    CLOSE base_table_cursor
    DEALLOCATE base_table_cursor
    
    SET @r = 1;

END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_AllianceDescription]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_AllianceDescription]
(@profile_uid nvarchar(50), @alliance_id int, @text nvarchar(MAX), @r int out)
AS
BEGIN

DECLARE @profile_id int

SET @r = -1;
SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid AND alliance_id=@alliance_id), 0);

IF @profile_id > 0
BEGIN

UPDATE alliance set alliance_description=@text WHERE leader_id=@profile_id AND alliance_id=@alliance_id;

SET @r = 1;

END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_AllianceDonate]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_AllianceDonate]
(@profile_uid nvarchar(50), @alliance_id int, @currency_second int, @r int out)
AS
BEGIN

DECLARE @profile_id int, @profile_name nvarchar(50), @profile_face int

SET @r = -1;
SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid AND alliance_id=@alliance_id), 0);
SET @profile_name = (SELECT profile_name FROM [profile] WHERE [uid]=@profile_uid AND alliance_id=@alliance_id);
SET @profile_face = ISNULL((SELECT profile_face FROM [profile] WHERE [uid]=@profile_uid AND alliance_id=@alliance_id), 1);

IF @profile_id > 0
BEGIN

INSERT INTO alliance_donation VALUES (@alliance_id, @profile_id, @profile_name, @profile_face, @currency_second, GETUTCDATE());

UPDATE [profile] SET currency_second=currency_second-@currency_second WHERE profile_id=@profile_id;

UPDATE alliance SET alliance_currency_second=alliance_currency_second+@currency_second WHERE alliance_id=@alliance_id;

SET @r = 1;

END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_AllianceKick]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_AllianceKick]
(@profile_uid nvarchar(50), @alliance_id int, @action_profile_id int, @r int out)
AS
BEGIN

    DECLARE @profile_id int, @profile_name nvarchar(50), @text nvarchar(500), @event_icon nvarchar(50), @profile_face int

    SET @r = -1;
    SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid AND alliance_id=@alliance_id), 0);

    IF @profile_id > 0
    BEGIN

        SET @profile_name = (SELECT profile_name FROM [profile] WHERE profile_id=@action_profile_id);
        SET @profile_face = ISNULL((SELECT profile_face FROM [profile] WHERE profile_id=@action_profile_id), 0);
        SET @event_icon = N'face_' + CONVERT(varchar(10),@profile_face);

        UPDATE [profile] SET alliance_id=0, alliance_rank=0 WHERE profile_id=@action_profile_id AND alliance_id=@alliance_id;

        SET @text = @profile_name + N' was kicked out of the Alliance.';

        INSERT INTO alliance_event VALUES (@alliance_id, @profile_id, @profile_name, @event_icon, @text, GETUTCDATE());

        --Update map (alliance tag)
        DECLARE @base_id int
        DECLARE base_table_cursor CURSOR
        FOR SELECT base_id
        FROM base 
        WHERE profile_id = @profile_id
        OPEN base_table_cursor
        FETCH NEXT FROM base_table_cursor
        INTO @base_id
        WHILE @@FETCH_STATUS = 0
            BEGIN
                exec usp_UpdateRegions @base_id
                FETCH NEXT FROM base_table_cursor
                INTO @base_id
            END
            
        CLOSE base_table_cursor
        DEALLOCATE base_table_cursor
        
        SET @r = 1;
        
        DECLARE @from_base_id int,@a1 int,@a2 int,@a3 int,@b1 int,@b2 int,@b3 int,@c1 int,@c2 int,@c3 int,@d1 int,@d2 int,@d3 int

        --Return all reinforcements by alliance members
        UPDATE reinforce SET is_return=1, date_sent=GETUTCDATE(), date_arrive=DATEADD(ss, march_time, GETUTCDATE()) WHERE to_profile_id=@profile_id;
        
        DECLARE reinforce_cursor_alliance_member CURSOR
        FOR SELECT from_base_id,a1,a2,a3,b1,b2,b3,c1,c2,c3,d1,d2,d3
        FROM reinforce 
        WHERE to_profile_id = @profile_id
        OPEN reinforce_cursor_alliance_member
        FETCH NEXT FROM reinforce_cursor_alliance_member
        INTO @from_base_id,@a1,@a2,@a3,@b1,@b2,@b3,@c1,@c2,@c3,@d1,@d2,@d3
        WHILE @@FETCH_STATUS = 0
            BEGIN
                UPDATE base SET r_a1=r_a1-@a1, r_a2=r_a2-@a2, r_a3=r_a3-@a3, r_b1=r_b1-@b1, r_b2=r_b2-@b2, r_b3=r_b3-@b3, r_c1=r_c1-@c1, r_c2=r_c2-@c2, r_c3=r_c3-@c3, r_d1=r_d1-@d1, r_d2=r_d2-@d2, r_d3=r_d3-@d3, 
                rt_a1=@a1, rt_a2=@a2, rt_a3=@a3, rt_b1=@b1, rt_b2=@b2, rt_b3=@b3, rt_c1=@c1, rt_c2=@c2, rt_c3=@c3, rt_d1=@d1, rt_d2=@d2, rt_d3=@d3 WHERE base_id=@from_base_id;
                
                FETCH NEXT FROM reinforce_cursor_alliance_member
                INTO @from_base_id,@a1,@a2,@a3,@b1,@b2,@b3,@c1,@c2,@c3,@d1,@d2,@d3
            END
            
        CLOSE reinforce_cursor_alliance_member
        DEALLOCATE reinforce_cursor_alliance_member
        
        --Return all reinforcements by player to alliance members
        UPDATE reinforce SET is_return=1, date_sent=GETUTCDATE(), date_arrive=DATEADD(ss, march_time, GETUTCDATE()) WHERE from_profile_id=@profile_id;
        
        DECLARE reinforce_cursor_player CURSOR
        FOR SELECT from_base_id,a1,a2,a3,b1,b2,b3,c1,c2,c3,d1,d2,d3
        FROM reinforce 
        WHERE from_profile_id = @profile_id
        OPEN reinforce_cursor_player
        FETCH NEXT FROM reinforce_cursor_player
        INTO @from_base_id,@a1,@a2,@a3,@b1,@b2,@b3,@c1,@c2,@c3,@d1,@d2,@d3
        WHILE @@FETCH_STATUS = 0
            BEGIN
                UPDATE base SET r_a1=r_a1-@a1, r_a2=r_a2-@a2, r_a3=r_a3-@a3, r_b1=r_b1-@b1, r_b2=r_b2-@b2, r_b3=r_b3-@b3, r_c1=r_c1-@c1, r_c2=r_c2-@c2, r_c3=r_c3-@c3, r_d1=r_d1-@d1, r_d2=r_d2-@d2, r_d3=r_d3-@d3, 
                rt_a1=@a1, rt_a2=@a2, rt_a3=@a3, rt_b1=@b1, rt_b2=@b2, rt_b3=@b3, rt_c1=@c1, rt_c2=@c2, rt_c3=@c3, rt_d1=@d1, rt_d2=@d2, rt_d3=@d3 WHERE base_id=@from_base_id;
                
                FETCH NEXT FROM reinforce_cursor_player
                INTO @from_base_id,@a1,@a2,@a3,@b1,@b2,@b3,@c1,@c2,@c3,@d1,@d2,@d3
            END
            
        CLOSE reinforce_cursor_player
        DEALLOCATE reinforce_cursor_player

    END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_AllianceLeave]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_AllianceLeave]
(@profile_uid nvarchar(50), @alliance_id int, @r int out)
AS
BEGIN

    DECLARE @profile_id int, @profile_name nvarchar(50), @profile_face int, @text nvarchar(500), @event_icon nvarchar(50), @leader_id int

    SET @r = -1;
    SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid AND alliance_id=@alliance_id), 0);
    SET @profile_name = (SELECT profile_name FROM [profile] WHERE profile_id=@profile_id);
    SET @profile_face = ISNULL((SELECT profile_face FROM [profile] WHERE profile_id=@profile_id), 0);

    SET @leader_id = ISNULL((SELECT leader_id FROM alliance WHERE alliance_id=@alliance_id), 0);

    IF @profile_id > 0
    BEGIN

        UPDATE [profile] SET alliance_id=0, alliance_rank=0 WHERE profile_id=@profile_id;

        SET @text = @profile_name + N' has left the Alliance.';
        SET @event_icon = N'face_' + CONVERT(varchar(10),@profile_face);

        INSERT INTO alliance_event VALUES (@alliance_id, @profile_id, @profile_name, @event_icon, @text, GETUTCDATE());

        --The leader leaves alliance
        IF @profile_id = @leader_id
        BEGIN

            DECLARE @top_profile_id int

            SET @top_profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE alliance_id=@alliance_id ORDER BY xp DESC), 0);
            IF @top_profile_id > 0
            BEGIN -- Set new leader and rank
                UPDATE [profile] SET alliance_rank=1 WHERE profile_id=@top_profile_id;
                UPDATE alliance SET leader_id=@top_profile_id WHERE alliance_id=@alliance_id;

                SET @profile_name = (SELECT profile_name FROM [profile] WHERE profile_id=@top_profile_id);
                SET @profile_face = ISNULL((SELECT profile_face FROM [profile] WHERE profile_id=@top_profile_id), 0);
                SET @text = @profile_name + N' is the new Alliance Leader.';
                SET @event_icon = N'face_' + CONVERT(varchar(10),@profile_face);

                INSERT INTO alliance_event VALUES (@alliance_id, @top_profile_id, @profile_name, @event_icon, @text, GETUTCDATE());

            END
            ELSE -- Empty alliance
            BEGIN
                DELETE alliance WHERE alliance_id=@alliance_id;
                DELETE alliance_event WHERE alliance_id=@alliance_id;
                DELETE alliance_donation WHERE alliance_id=@alliance_id;
                DELETE alliance_apply WHERE alliance_id=@alliance_id;
                DELETE alliance_chat WHERE target_alliance_id=@alliance_id;
                DELETE alliance_wall WHERE target_alliance_id=@alliance_id;
            END

        END
        
        --Update map (alliance tag)
        DECLARE @base_id int
        DECLARE base_table_cursor CURSOR
        FOR SELECT base_id
        FROM base 
        WHERE profile_id = @profile_id
        OPEN base_table_cursor
        FETCH NEXT FROM base_table_cursor
        INTO @base_id
        WHILE @@FETCH_STATUS = 0
            BEGIN
                exec usp_UpdateRegions @base_id
                FETCH NEXT FROM base_table_cursor
                INTO @base_id
            END
            
        CLOSE base_table_cursor
        DEALLOCATE base_table_cursor
        
        SET @r = 1;
        
        DECLARE @from_base_id int,@a1 int,@a2 int,@a3 int,@b1 int,@b2 int,@b3 int,@c1 int,@c2 int,@c3 int,@d1 int,@d2 int,@d3 int

        --Return all reinforcements by alliance members
        UPDATE reinforce SET is_return=1, date_sent=GETUTCDATE(), date_arrive=DATEADD(ss, march_time, GETUTCDATE()) WHERE to_profile_id=@profile_id;
        
        DECLARE reinforce_cursor_alliance_member CURSOR
        FOR SELECT from_base_id,a1,a2,a3,b1,b2,b3,c1,c2,c3,d1,d2,d3
        FROM reinforce 
        WHERE to_profile_id = @profile_id
        OPEN reinforce_cursor_alliance_member
        FETCH NEXT FROM reinforce_cursor_alliance_member
        INTO @from_base_id,@a1,@a2,@a3,@b1,@b2,@b3,@c1,@c2,@c3,@d1,@d2,@d3
        WHILE @@FETCH_STATUS = 0
            BEGIN
                UPDATE base SET r_a1=r_a1-@a1, r_a2=r_a2-@a2, r_a3=r_a3-@a3, r_b1=r_b1-@b1, r_b2=r_b2-@b2, r_b3=r_b3-@b3, r_c1=r_c1-@c1, r_c2=r_c2-@c2, r_c3=r_c3-@c3, r_d1=r_d1-@d1, r_d2=r_d2-@d2, r_d3=r_d3-@d3, 
                rt_a1=@a1, rt_a2=@a2, rt_a3=@a3, rt_b1=@b1, rt_b2=@b2, rt_b3=@b3, rt_c1=@c1, rt_c2=@c2, rt_c3=@c3, rt_d1=@d1, rt_d2=@d2, rt_d3=@d3 WHERE base_id=@from_base_id;
                
                FETCH NEXT FROM reinforce_cursor_alliance_member
                INTO @from_base_id,@a1,@a2,@a3,@b1,@b2,@b3,@c1,@c2,@c3,@d1,@d2,@d3
            END
            
        CLOSE reinforce_cursor_alliance_member
        DEALLOCATE reinforce_cursor_alliance_member
        
        --Return all reinforcements by player to alliance members
        UPDATE reinforce SET is_return=1, date_sent=GETUTCDATE(), date_arrive=DATEADD(ss, march_time, GETUTCDATE()) WHERE from_profile_id=@profile_id;
        
        DECLARE reinforce_cursor_player CURSOR
        FOR SELECT from_base_id,a1,a2,a3,b1,b2,b3,c1,c2,c3,d1,d2,d3
        FROM reinforce 
        WHERE from_profile_id = @profile_id
        OPEN reinforce_cursor_player
        FETCH NEXT FROM reinforce_cursor_player
        INTO @from_base_id,@a1,@a2,@a3,@b1,@b2,@b3,@c1,@c2,@c3,@d1,@d2,@d3
        WHILE @@FETCH_STATUS = 0
            BEGIN
                UPDATE base SET r_a1=r_a1-@a1, r_a2=r_a2-@a2, r_a3=r_a3-@a3, r_b1=r_b1-@b1, r_b2=r_b2-@b2, r_b3=r_b3-@b3, r_c1=r_c1-@c1, r_c2=r_c2-@c2, r_c3=r_c3-@c3, r_d1=r_d1-@d1, r_d2=r_d2-@d2, r_d3=r_d3-@d3, 
                rt_a1=@a1, rt_a2=@a2, rt_a3=@a3, rt_b1=@b1, rt_b2=@b2, rt_b3=@b3, rt_c1=@c1, rt_c2=@c2, rt_c3=@c3, rt_d1=@d1, rt_d2=@d2, rt_d3=@d3 WHERE base_id=@from_base_id;
                
                FETCH NEXT FROM reinforce_cursor_player
                INTO @from_base_id,@a1,@a2,@a3,@b1,@b2,@b3,@c1,@c2,@c3,@d1,@d2,@d3
            END
            
        CLOSE reinforce_cursor_player
        DEALLOCATE reinforce_cursor_player
    END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_AllianceLogo]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_AllianceLogo]
(@profile_uid nvarchar(50), @logo_type int, @r int out)
AS
BEGIN

DECLARE @profile_id int, @item_quantity int

SET @r = -1;
SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid), 0);
SET @item_quantity = ISNULL((SELECT quantity FROM itemprofile WHERE item_id=709 AND profile_id=@profile_id), 0);

IF @item_quantity > 0
BEGIN

UPDATE alliance SET alliance_logo=@logo_type WHERE leader_id=@profile_id;

UPDATE itemprofile SET quantity=quantity-1 WHERE item_id=709 AND profile_id=@profile_id;

SET @r = 1;

END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_AllianceMarquee]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_AllianceMarquee]
(@profile_uid nvarchar(50), @alliance_id int, @text nvarchar(MAX), @r int out)
AS
BEGIN

DECLARE @profile_id int

SET @r = -1;
SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid AND alliance_id=@alliance_id), 0);

IF @profile_id > 0
BEGIN

UPDATE alliance set alliance_marquee=@text WHERE leader_id=@profile_id AND alliance_id=@alliance_id;

SET @r = 1;

END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_AllianceName]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_AllianceName]
(@profile_uid nvarchar(50), @alliance_id int, @text nvarchar(MAX), @r int out)
AS
BEGIN

    DECLARE @profile_id int

    SET @r = -1;
    SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid AND alliance_id=@alliance_id), 0);

    IF @profile_id > 0
    BEGIN

    UPDATE alliance set alliance_name=@text WHERE leader_id=@profile_id AND alliance_id=@alliance_id;
    UPDATE itemprofile set quantity=quantity-1 WHERE item_id=710 AND profile_id=@profile_id;
    
    
    DECLARE @base_id int
    DECLARE base_table_cursor CURSOR
    FOR SELECT base_id
    FROM base 
    WHERE profile_id = @profile_id
    OPEN base_table_cursor
    FETCH NEXT FROM base_table_cursor
    INTO @base_id
    WHILE @@FETCH_STATUS = 0
		BEGIN
            exec usp_UpdateRegions @base_id
            FETCH NEXT FROM base_table_cursor
            INTO @base_id
        END
        
    CLOSE base_table_cursor
    DEALLOCATE base_table_cursor
    
    SET @r = 1;
    
    END

    

END
GO
/****** Object:  StoredProcedure [dbo].[usp_AllianceReject]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_AllianceReject]
(@profile_uid nvarchar(50), @alliance_id int, @action_profile_id int, @r int out)
AS
BEGIN

DECLARE @profile_id int, @profile_name nvarchar(50), @text nvarchar(500), @event_icon nvarchar(50), @profile_face int

SET @r = -1;
SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid AND alliance_id=@alliance_id AND alliance_rank=1), 0);

IF @profile_id > 0
BEGIN

DELETE alliance_apply WHERE alliance_id=@alliance_id AND profile_id=@action_profile_id;

SET @profile_name = (SELECT profile_name FROM [profile] WHERE profile_id=@action_profile_id);
SET @profile_face = ISNULL((SELECT profile_face FROM [profile] WHERE profile_id=@action_profile_id), 0);
SET @event_icon = N'face_' + CONVERT(varchar(10),@profile_face);

SET @text = @profile_name + N' was rejected to join the Alliance.';

INSERT INTO alliance_event VALUES (@alliance_id, @profile_id, @profile_name, @event_icon, @text, GETUTCDATE());

SET @r = 1;

END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_AllianceTag]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_AllianceTag]
(@profile_uid nvarchar(50), @alliance_id int, @text nvarchar(3), @r int out)
AS
BEGIN

    DECLARE @profile_id int

    SET @r = -1;
    SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid AND alliance_id=@alliance_id), 0);

    IF @profile_id > 0
    BEGIN

        UPDATE alliance set alliance_tag=@text WHERE leader_id=@profile_id AND alliance_id=@alliance_id;
        UPDATE itemprofile set quantity=quantity-1 WHERE item_id=711 AND profile_id=@profile_id;

        DECLARE @base_id int
        DECLARE base_table_cursor CURSOR
        FOR SELECT base_id
        FROM base 
        WHERE profile_id = @profile_id
        OPEN base_table_cursor
        FETCH NEXT FROM base_table_cursor
        INTO @base_id
        WHILE @@FETCH_STATUS = 0
            BEGIN
                exec usp_UpdateRegions @base_id
                FETCH NEXT FROM base_table_cursor
                INTO @base_id
            END
            
        CLOSE base_table_cursor
        DEALLOCATE base_table_cursor
        
        SET @r = 1;

    END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_AllianceTransfer]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_AllianceTransfer]
(@profile_uid nvarchar(50), @alliance_id int, @action_profile_id int, @r int out)
AS
BEGIN

DECLARE @profile_id int, @profile_name nvarchar(50), @text nvarchar(500), @event_icon nvarchar(50), @profile_face int

SET @r = -1;
SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid AND alliance_id=@alliance_id), 0);

IF @profile_id > 0
BEGIN

SET @profile_name = (SELECT profile_name FROM [profile] WHERE profile_id=@action_profile_id);
SET @profile_face = ISNULL((SELECT profile_face FROM [profile] WHERE profile_id=@action_profile_id), 0);
SET @event_icon = N'face_' + CONVERT(varchar(10),@profile_face);

UPDATE [profile] SET alliance_rank=1 WHERE profile_id=@action_profile_id AND alliance_id=@alliance_id;

UPDATE [profile] SET alliance_rank=2 WHERE profile_id=@profile_id AND alliance_id=@alliance_id;

UPDATE alliance SET leader_id=@action_profile_id WHERE alliance_id=@alliance_id;

SET @text = N'Leadership has been transfered. ' + @profile_name + N' is the new Leader of the Alliance!';

INSERT INTO alliance_event VALUES (@alliance_id, @profile_id, @profile_name, @event_icon, @text, GETUTCDATE());

SET @r = 1;

END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_AllianceUpgrade]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_AllianceUpgrade]
(@profile_uid nvarchar(50), @alliance_id int, @r int out)
AS
BEGIN

DECLARE @profile_id int, @profile_name nvarchar(50), @event_icon nvarchar(50), @profile_face int

SET @r = -1;
SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid AND alliance_id=@alliance_id), 0);
SET @profile_name = (SELECT profile_name FROM [profile] WHERE profile_id=@profile_id);
SET @profile_face = ISNULL((SELECT profile_face FROM [profile] WHERE profile_id=@profile_id), 0);
SET @event_icon = N'face_' + CONVERT(varchar(10),@profile_face);

IF @profile_id > 0
BEGIN

INSERT INTO alliance_event VALUES (@alliance_id, @profile_id, @profile_name, @event_icon, 'Alliance upgraded to the next level.', GETUTCDATE());

UPDATE alliance SET alliance_level=alliance_level+1, alliance_currency_second=alliance_currency_second-((alliance_level+1)*100) WHERE alliance_id=@alliance_id;

SET @r = 1;

END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_ApplyBoost]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ApplyBoost]
(@profile_uid nvarchar(50), @base_id int, @item_id int, @type int,@r int out)
AS
BEGIN

    exec usp_BaseUpdate @base_id

    DECLARE @profile_id int, @item_quantity int, @item_value int, @item_value2 int, @item_id_sped_up int, @boost_time int, @boost_value int, @new_boost_time int, @new_boost_value int, @item_ending datetime, @new_item_ending datetime
    
    DECLARE @item_id_AS_STRING varchar(30) = CAST(@item_id AS VARCHAR);
	RAISERROR ('item_id : %s', 10,-1, @item_id_AS_STRING) with nowait;
    DECLARE @type_AS_STRING varchar(30) = CAST(@type AS VARCHAR);
	RAISERROR ('type : %s', 10,-1, @type_AS_STRING) with nowait;
    
    SET @r = -1;
    SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid), 0);
    DECLARE @profile_id_AS_STRING varchar(30) = CAST(@profile_id AS VARCHAR);
	RAISERROR ('profile_id : %s', 10,-1, @profile_id_AS_STRING) with nowait;
    SET @item_quantity = ISNULL((SELECT quantity FROM itemprofile WHERE item_id=@item_id AND profile_id=@profile_id), 0);

    DECLARE @item_quantity_AS_STRING varchar(30) = CAST(@item_quantity AS VARCHAR);
	RAISERROR ('item_quantity : %s', 10,-1, @item_quantity_AS_STRING) with nowait;
    
    IF @item_quantity > 0--Item Available
    BEGIN
        SELECT @item_value=item_value, @item_value2=item_value2 FROM item WHERE item_id=@item_id;
    
        IF (@item_value > 0  AND @item_value2 >0 )--Valid Boost
        BEGIN
            UPDATE itemprofile SET quantity=quantity-1 WHERE item_id=@item_id AND profile_id=@profile_id;
            
            IF @type = 12 --TV_BOOST_R1
            BEGIN
                SELECT @boost_time= item_r1, @boost_value= r1_boost_value, @item_ending = item_r1_ending FROM base WHERE base_id=@base_id AND profile_id=@profile_id;
                
                IF(@item_ending<GETUTCDATE())
                BEGIN
                    SET @new_boost_time = @item_value
                    SET @new_boost_value = @item_value2
                    SET @new_item_ending = DATEADD(ss, @new_boost_time *1, GETUTCDATE())
                    UPDATE base SET item_r1_ending=@new_item_ending, item_r1=@new_boost_time , r1_boost_value=@new_boost_value WHERE base_id=@base_id AND profile_id=@profile_id;
                    SET @r = 1;
                END
            END
            ELSE IF @type = 13 --TV_BOOST_R2
            BEGIN
                SELECT @boost_time= item_r2, @boost_value= r2_boost_value, @item_ending = item_r2_ending FROM base WHERE base_id=@base_id AND profile_id=@profile_id;
                
                IF(@item_ending<GETUTCDATE())
                BEGIN
                    SET @new_boost_time = @item_value
                    SET @new_boost_value = @item_value2
                    SET @new_item_ending = DATEADD(ss, @new_boost_time *1, GETUTCDATE())
                    UPDATE base SET item_r2_ending=@new_item_ending, item_r2=@new_boost_time , r2_boost_value=@new_boost_value WHERE base_id=@base_id AND profile_id=@profile_id;
                    SET @r = 1;
                END
            END
            ELSE IF @type = 14 --TV_BOOST_R3
            BEGIN
                SELECT @boost_time= item_r3, @boost_value= r3_boost_value, @item_ending = item_r3_ending FROM base WHERE base_id=@base_id AND profile_id=@profile_id;
                
                IF(@item_ending<GETUTCDATE())
                BEGIN
                    SET @new_boost_time = @item_value
                    SET @new_boost_value = @item_value2
                    SET @new_item_ending = DATEADD(ss, @new_boost_time *1, GETUTCDATE())
                    UPDATE base SET item_r3_ending=@new_item_ending, item_r3=@new_boost_time , r3_boost_value=@new_boost_value WHERE base_id=@base_id AND profile_id=@profile_id;
                    SET @r = 1;
                END
            END
            ELSE IF @type = 15 --TV_BOOST_R4
            BEGIN
                SELECT @boost_time= item_r4, @boost_value= r4_boost_value, @item_ending = item_r4_ending FROM base WHERE base_id=@base_id AND profile_id=@profile_id;
                
                IF(@item_ending<GETUTCDATE())
                BEGIN
                    SET @new_boost_time = @item_value
                    SET @new_boost_value = @item_value2
                    SET @new_item_ending = DATEADD(ss, @new_boost_time *1, GETUTCDATE())
                    UPDATE base SET item_r4_ending=@new_item_ending, item_r4=@new_boost_time , r4_boost_value=@new_boost_value WHERE base_id=@base_id AND profile_id=@profile_id;
                    SET @r = 1;
                END
            END
            ELSE IF @type = 16 --TV_BOOST_R5
            BEGIN
                SELECT @boost_time= item_r5, @boost_value= r5_boost_value, @item_ending = item_r5_ending FROM base WHERE base_id=@base_id AND profile_id=@profile_id;
                
                IF(@item_ending<GETUTCDATE())
                BEGIN
                    SET @new_boost_time = @item_value
                    SET @new_boost_value = @item_value2
                    SET @new_item_ending = DATEADD(ss, @new_boost_time *1, GETUTCDATE())
                    UPDATE base SET item_r5_ending=@new_item_ending, item_r5=@new_boost_time , r5_boost_value=@new_boost_value WHERE base_id=@base_id AND profile_id=@profile_id;
                    SET @r = 1;
                END
            END
            ELSE IF @type = 17 --TV_BOOST_ATT
            BEGIN
                SELECT @boost_time= item_attack, @boost_value= attack_boost_value, @item_ending = item_attack_ending FROM base WHERE base_id=@base_id AND profile_id=@profile_id;
                
                IF(@item_ending<GETUTCDATE())
                BEGIN
                    SET @new_boost_time = @item_value
                    SET @new_boost_value = @item_value2
                    SET @new_item_ending = DATEADD(ss, @new_boost_time *1, GETUTCDATE())
                    UPDATE base SET item_attack_ending=@new_item_ending, item_attack=@new_boost_time , attack_boost_value=@new_boost_value WHERE base_id=@base_id AND profile_id=@profile_id;
                    SET @r = 1;
                END
            END
            ELSE IF @type = 18 --TV_BOOST_DEF
            BEGIN
                SELECT @boost_time= item_defense, @boost_value= defense_boost_value, @item_ending = item_defense_ending FROM base WHERE base_id=@base_id AND profile_id=@profile_id;
                
                IF(@item_ending<GETUTCDATE())
                BEGIN
                    SET @new_boost_time = @item_value
                    SET @new_boost_value = @item_value2
                    SET @new_item_ending = DATEADD(ss, @new_boost_time *1, GETUTCDATE())
                    UPDATE base SET item_defense_ending=@new_item_ending, item_defense=@new_boost_time , defense_boost_value=@new_boost_value WHERE base_id=@base_id AND profile_id=@profile_id;
                    SET @r = 1;
                END
            END
        END
        ELSE
        BEGIN --Value Not Valid
            RAISERROR ('Type Not Valid', 10,-1) with nowait;
                
            SET @r = -1;
        END
    END
    ELSE
    BEGIN --Item Not Available
        RAISERROR ('Item Not Available', 10,-1) with nowait;
        
        SET @r = -1;
    END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ApplyProtection]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ApplyProtection]
(@profile_uid nvarchar(50), @base_id int, @item_id int, @r int out)
AS
BEGIN

    exec usp_BaseUpdate @base_id

    DECLARE @profile_id int, @item_quantity int, @item_value int, @item_value2 int, @protection_time int, @new_protection_time int, @protection_ending datetime, @new_protection_ending datetime
    
    DECLARE @item_id_AS_STRING varchar(30) = CAST(@item_id AS VARCHAR);
	RAISERROR ('item_id : %s', 10,-1, @item_id_AS_STRING) with nowait;
    
    SET @r = -1;
    
    SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid), 0);
    DECLARE @profile_id_AS_STRING varchar(30) = CAST(@profile_id AS VARCHAR);
	RAISERROR ('profile_id : %s', 10,-1, @profile_id_AS_STRING) with nowait;
    
    IF @item_id>0 --Item Valid
    BEGIN
        SET @item_quantity = ISNULL((SELECT quantity FROM itemprofile WHERE item_id=@item_id AND profile_id=@profile_id), 0);
        
        IF @item_quantity > 0--Item Available
        BEGIN
            SELECT @item_value=item_value FROM item WHERE item_id=@item_id;
        
            DECLARE @item_value_AS_STRING varchar(30) = CAST(@item_value AS VARCHAR);
	        RAISERROR ('item_value : %s', 10,-1, @item_value_AS_STRING) with nowait;
    
            IF (@item_value > 0)--Valid protection
            BEGIN
                UPDATE itemprofile SET quantity=quantity-1 WHERE item_id=@item_id AND profile_id=@profile_id;

                SELECT @protection_time= protection_time, @protection_ending = protection_ending FROM base WHERE base_id=@base_id AND profile_id=@profile_id;
                 
                IF(@protection_ending<GETUTCDATE())
                BEGIN
                    SET @new_protection_time = @item_value
                    SET @new_protection_ending = DATEADD(ss, @item_value *1, GETUTCDATE())
                END
                ELSE
                BEGIN
                    SET @new_protection_time = @protection_time+@item_value
                    SET @new_protection_ending = DATEADD(ss, @item_value *1, @protection_ending)
                END

                UPDATE base SET protection_time=@new_protection_time, protection_ending=@new_protection_ending WHERE base_id=@base_id AND profile_id=@profile_id;
                exec usp_UpdateRegions @base_id
                SET @r = 1;
                RAISERROR ('Protection Applied',10,-1) with nowait;
            END
            ELSE
            BEGIN --Value Not Valid
                RAISERROR ('Type Not Valid', 10,-1) with nowait;
                    
                SET @r = -1;
            END
        END
        ELSE
        BEGIN --Item Not Available
            RAISERROR ('Item Not Available', 10,-1) with nowait;
            
            SET @r = -1;
        END
    END
    ELSE --Maybe attack
    BEGIN
        --HACK currently no attack validation
        --IF EXISTS(SELECT attack_id FROM attack WHERE attack_id=@attack_id AND from_profile_id=@profile_id)
        
        SET @new_protection_time = 86400
        SET @new_protection_ending = DATEADD(ss, @new_protection_time *1, GETUTCDATE())
        
        UPDATE base SET protection_time=@new_protection_time, protection_ending=@new_protection_ending WHERE base_id=@base_id AND profile_id=@profile_id;
        exec usp_UpdateRegions @base_id
        SET @r = 1;
    END
    
END
GO
/****** Object:  StoredProcedure [dbo].[usp_AttackFormula]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_AttackFormula]
(@tutorial_step int=0, @report_test float, @is_capture float, @is_npc float, @village_shared_defense_bonus float, @p1_research_life float, @p1_hero_life float, @p1_item_attack float, @p1_research_attack float, @p1_research_a_attack float, @p1_research_b_attack float, @p1_research_c_attack float, @p1_research_d_attack float, 
@p1_hero_attack float, @p1_hero_a_attack float, @p1_hero_b_attack float, @p1_hero_c_attack float, @p1_hero_d_attack float, 
@p1_a1 float, @p1_b1 float, @p1_c1 float, @p1_d1 float, @p1_a2 float, @p1_b2 float, @p1_c2 float, @p1_d2 float, @p1_a3 float, @p1_b3 float, @p1_c3 float, @p1_d3 float, 
@p2_research_life float, @p2_hero_life float, @p2_item_defense float, @p2_research_defense float, @p2_hero_defense float, @p2_wall float, @p2_total_villages int, @p2_base_type int,
@p2_a1 float, @p2_b1 float, @p2_c1 float, @p2_d1 float, @p2_a2 float, @p2_b2 float, @p2_c2 float, @p2_d2 float, @p2_a3 float, @p2_b3 float, @p2_c3 float, @p2_d3 float, 
@r2_a1 float, @r2_b1 float, @r2_c1 float, @r2_d1 float, @r2_a2 float, @r2_b2 float, @r2_c2 float, @r2_d2 float, @r2_a3 float, @r2_b3 float, @r2_c3 float, @r2_d3 float, 
@k1_a1 float Output, @k1_b1 float Output, @k1_c1 float Output, @k1_d1 float Output, @k1_a2 float Output, @k1_b2 float Output, @k1_c2 float Output, @k1_d2 float Output, @k1_a3 float Output, @k1_b3 float Output, @k1_c3 float Output, @k1_d3 float Output, 
@k2_a1 float Output, @k2_b1 float Output, @k2_c1 float Output, @k2_d1 float Output, @k2_a2 float Output, @k2_b2 float Output, @k2_c2 float Output, @k2_d2 float Output, @k2_a3 float Output, @k2_b3 float Output, @k2_c3 float Output, @k2_d3 float Output, 
@i2_a1 float Output, @i2_b1 float Output, @i2_c1 float Output, @i2_d1 float Output, @i2_a2 float Output, @i2_b2 float Output, @i2_c2 float Output, @i2_d2 float Output, @i2_a3 float Output, @i2_b3 float Output, @i2_c3 float Output, @i2_d3 float Output, 
@rk2_a1 float Output, @rk2_b1 float Output, @rk2_c1 float Output, @rk2_d1 float Output, @rk2_a2 float Output, @rk2_b2 float Output, @rk2_c2 float Output, @rk2_d2 float Output, @rk2_a3 float Output, @rk2_b3 float Output, @rk2_c3 float Output, @rk2_d3 float Output, 
@p1_troops float Output, @p1_injured float Output, @p1_killed float Output,
@r1_troops float Output, @r1_injured float Output, @r1_killed float Output, 
@p2_troops float Output, @p2_injured float Output, @p2_killed float Output, 
@r2_troops float Output, @r2_injured float Output, @r2_killed float Output, 
@p1_hero_xp_gain float Output, @p2_hero_xp_gain float Output, 
@r1 float Output, @r2 float Output, @r3 float Output, @r4 float Output, @r5 float Output, 
@victory float Output)
AS
BEGIN

DECLARE @p1_a1_AS_STRING varchar(30) = CAST(@p1_a1 AS VARCHAR);
RAISERROR ('p1_a1: %s', 10,-1, @p1_a1_AS_STRING) with nowait;
DECLARE @p1_a2_AS_STRING varchar(30) = CAST(@p1_a2 AS VARCHAR);
RAISERROR ('p1_a2: %s', 10,-1, @p1_a2_AS_STRING) with nowait;
DECLARE @p1_a3_AS_STRING varchar(30) = CAST(@p1_a3 AS VARCHAR);
RAISERROR ('p1_a3: %s', 10,-1, @p1_a3_AS_STRING) with nowait;

DECLARE @p1_b1_bS_STRING varchar(30) = CAST(@p1_b1 AS VARCHAR);
RAISERROR ('p1_b1: %s', 10,-1, @p1_b1_bS_STRING) with nowait;
DECLARE @p1_b2_bS_STRING varchar(30) = CAST(@p1_b2 AS VARCHAR);
RAISERROR ('p1_b2: %s', 10,-1, @p1_b2_bS_STRING) with nowait;
DECLARE @p1_b3_bS_STRING varchar(30) = CAST(@p1_b3 AS VARCHAR);
RAISERROR ('p1_b3: %s', 10,-1, @p1_b3_bS_STRING) with nowait;

DECLARE @p1_c1_cS_STRING varchar(30) = CAST(@p1_c1 AS VARCHAR);
RAISERROR ('p1_c1: %s', 10,-1, @p1_c1_cS_STRING) with nowait;
DECLARE @p1_c2_cS_STRING varchar(30) = CAST(@p1_c2 AS VARCHAR);
RAISERROR ('p1_c2: %s', 10,-1, @p1_c2_cS_STRING) with nowait;
DECLARE @p1_c3_cS_STRING varchar(30) = CAST(@p1_c3 AS VARCHAR);
RAISERROR ('p1_c3: %s', 10,-1, @p1_c3_cS_STRING) with nowait;

DECLARE @p1_d1_dS_STRING varchar(30) = CAST(@p1_d1 AS VARCHAR);
RAISERROR ('p1_d1: %s', 10,-1, @p1_d1_dS_STRING) with nowait;
DECLARE @p1_d2_dS_STRING varchar(30) = CAST(@p1_d2 AS VARCHAR);
RAISERROR ('p1_d2: %s', 10,-1, @p1_d2_dS_STRING) with nowait;
DECLARE @p1_d3_dS_STRING varchar(30) = CAST(@p1_d3 AS VARCHAR);
RAISERROR ('p1_d3: %s', 10,-1, @p1_d3_dS_STRING) with nowait;

DECLARE @p2_a1_AS_STRING varchar(30) = CAST(@p2_a1 AS VARCHAR);
RAISERROR ('p2_a1: %s', 10,-1, @p2_a1_AS_STRING) with nowait;
DECLARE @p2_a2_AS_STRING varchar(30) = CAST(@p2_a2 AS VARCHAR);
RAISERROR ('p2_a2: %s', 10,-1, @p2_a2_AS_STRING) with nowait;
DECLARE @p2_a3_AS_STRING varchar(30) = CAST(@p2_a3 AS VARCHAR);
RAISERROR ('p2_a3: %s', 10,-1, @p2_a3_AS_STRING) with nowait;

DECLARE @p2_b1_bS_STRING varchar(30) = CAST(@p2_b1 AS VARCHAR);
RAISERROR ('p2_b1: %s', 10,-1, @p2_b1_bS_STRING) with nowait;
DECLARE @p2_b2_bS_STRING varchar(30) = CAST(@p2_b2 AS VARCHAR);
RAISERROR ('p2_b2: %s', 10,-1, @p2_b2_bS_STRING) with nowait;
DECLARE @p2_b3_bS_STRING varchar(30) = CAST(@p2_b3 AS VARCHAR);
RAISERROR ('p2_b3: %s', 10,-1, @p2_b3_bS_STRING) with nowait;

DECLARE @p2_c1_cS_STRING varchar(30) = CAST(@p2_c1 AS VARCHAR);
RAISERROR ('p2_c1: %s', 10,-1, @p2_c1_cS_STRING) with nowait;
DECLARE @p2_c2_cS_STRING varchar(30) = CAST(@p2_c2 AS VARCHAR);
RAISERROR ('p2_c2: %s', 10,-1, @p2_c2_cS_STRING) with nowait;
DECLARE @p2_c3_cS_STRING varchar(30) = CAST(@p2_c3 AS VARCHAR);
RAISERROR ('p2_c3: %s', 10,-1, @p2_c3_cS_STRING) with nowait;

DECLARE @p2_d1_dS_STRING varchar(30) = CAST(@p2_d1 AS VARCHAR);
RAISERROR ('p2_d1: %s', 10,-1, @p2_d1_dS_STRING) with nowait;
DECLARE @p2_d2_dS_STRING varchar(30) = CAST(@p2_d2 AS VARCHAR);
RAISERROR ('p2_d2: %s', 10,-1, @p2_d2_dS_STRING) with nowait;
DECLARE @p2_d3_dS_STRING varchar(30) = CAST(@p2_d3 AS VARCHAR);
RAISERROR ('p2_d3: %s', 10,-1, @p2_d3_dS_STRING) with nowait;

DECLARE @r2_a1_AS_STRING varchar(30) = CAST(@r2_a1 AS VARCHAR);
RAISERROR ('r2_a1: %s', 10,-1, @r2_a1_AS_STRING) with nowait;
DECLARE @r2_a2_AS_STRING varchar(30) = CAST(@r2_a2 AS VARCHAR);
RAISERROR ('r2_a2: %s', 10,-1, @r2_a2_AS_STRING) with nowait;
DECLARE @r2_a3_AS_STRING varchar(30) = CAST(@r2_a3 AS VARCHAR);
RAISERROR ('r2_a3: %s', 10,-1, @r2_a3_AS_STRING) with nowait;

DECLARE @r2_b1_bS_STRING varchar(30) = CAST(@r2_b1 AS VARCHAR);
RAISERROR ('r2_b1: %s', 10,-1, @r2_b1_bS_STRING) with nowait;
DECLARE @r2_b2_bS_STRING varchar(30) = CAST(@r2_b2 AS VARCHAR);
RAISERROR ('r2_b2: %s', 10,-1, @r2_b2_bS_STRING) with nowait;
DECLARE @r2_b3_bS_STRING varchar(30) = CAST(@r2_b3 AS VARCHAR);
RAISERROR ('r2_b3: %s', 10,-1, @r2_b3_bS_STRING) with nowait;

DECLARE @r2_c1_cS_STRING varchar(30) = CAST(@r2_c1 AS VARCHAR);
RAISERROR ('r2_c1: %s', 10,-1, @r2_c1_cS_STRING) with nowait;
DECLARE @r2_c2_cS_STRING varchar(30) = CAST(@r2_c2 AS VARCHAR);
RAISERROR ('r2_c2: %s', 10,-1, @r2_c2_cS_STRING) with nowait;
DECLARE @r2_c3_cS_STRING varchar(30) = CAST(@r2_c3 AS VARCHAR);
RAISERROR ('r2_c3: %s', 10,-1, @r2_c3_cS_STRING) with nowait;

DECLARE @r2_d1_dS_STRING varchar(30) = CAST(@r2_d1 AS VARCHAR);
RAISERROR ('r2_d1: %s', 10,-1, @r2_d1_dS_STRING) with nowait;
DECLARE @r2_d2_dS_STRING varchar(30) = CAST(@r2_d2 AS VARCHAR);
RAISERROR ('r2_d2: %s', 10,-1, @r2_d2_dS_STRING) with nowait;
DECLARE @r2_d3_dS_STRING varchar(30) = CAST(@r2_d3 AS VARCHAR);
RAISERROR ('r2_d3: %s', 10,-1, @r2_d3_dS_STRING) with nowait;

--Unit's stats from hardcoded unit table
DECLARE @a1_attack float = 30, @a1_defense_a float = 40, @a1_defense_b float = 20, @a1_defense_c float = 50, @a1_power float = 1 , @a1_load float = 50;
DECLARE @a2_attack float = 50, @a2_defense_a float = 50, @a2_defense_b float = 30, @a2_defense_c float = 60, @a2_power float = 2 , @a2_load float = 100;
DECLARE @a3_attack float = 70, @a3_defense_a float = 60, @a3_defense_b float = 40, @a3_defense_c float = 70, @a3_power float = 3 , @a3_load float = 150;

DECLARE @b1_attack float = 30, @b1_defense_a float = 50, @b1_defense_b float = 40, @b1_defense_c float = 20, @b1_power float = 1 , @b1_load float = 50;
DECLARE @b2_attack float = 50, @b2_defense_a float = 60, @b2_defense_b float = 50, @b2_defense_c float = 30, @b2_power float = 2 , @b2_load float = 100;
DECLARE @b3_attack float = 70, @b3_defense_a float = 70, @b3_defense_b float = 60, @b3_defense_c float = 40, @b3_power float = 3 , @b3_load float = 150;

DECLARE @c1_attack float = 30, @c1_defense_a float = 20, @c1_defense_b float = 50, @c1_defense_c float = 40, @c1_power float = 1 , @c1_load float = 50;
DECLARE @c2_attack float = 50, @c2_defense_a float = 30, @c2_defense_b float = 60, @c2_defense_c float = 50, @c2_power float = 2 , @c2_load float = 100;
DECLARE @c3_attack float = 70, @c3_defense_a float = 40, @c3_defense_b float = 70, @c3_defense_c float = 60, @c3_power float = 3 , @c3_load float = 150;

DECLARE @d1_attack float = 30, @d1_defense_a float = 5, @d1_defense_b float = 5, @d1_defense_c float = 5, @d1_power float = 3 , @d1_load float = 50;
DECLARE @d2_attack float = 50, @d2_defense_a float = 20, @d2_defense_b float = 20, @d2_defense_c float = 20, @d2_power float = 6 , @d2_load float = 100;
DECLARE @d3_attack float = 100, @d3_defense_a float = 25, @d3_defense_b float = 25, @d3_defense_c float = 25, @d3_power float = 9 , @d3_load float = 150;

-- example a1_defense_a means: infantry tier 1 (a1) defense points againts infantry units (a)
-- example c2_defense_b means: cavalry tier 2 (c2) defense points againts ranged units (b)


--P1 Total attack 

--total attack bonus for p1(the attacker)
DECLARE @p1_final_attack_bonus float = 0, @p1_life_bonus float = 0 ,@p1_final_a_attack_bonus float = 0,@p1_final_b_attack_bonus float = 0,@p1_final_c_attack_bonus float = 0,@p1_final_d_attack_bonus float = 0, @p1_base_bonus_attack_sum float =0, @p1_type_specific_bonus_attack_sum float=0, @p2_base_bonus_defend_sum float=0;
SET @p1_life_bonus = @p1_research_life + @p1_hero_life;
--since life can be used for attack and defense purpose, just use one third of it as a attack bonus
SET @p1_final_attack_bonus = (@p1_life_bonus/3) + @p1_research_attack + @p1_item_attack + @p1_hero_attack;

SET @p1_final_a_attack_bonus= @p1_hero_a_attack;
SET @p1_final_b_attack_bonus= @p1_hero_b_attack;
SET @p1_final_c_attack_bonus= @p1_hero_c_attack;
SET @p1_final_d_attack_bonus= @p1_hero_d_attack;

--P1 Troops
DECLARE @p1_a_attack float = 0, @p1_a_power float = 0, @p1_a_defense_a float = 0, @p1_a_defense_b float = 0, @p1_a_defense_c float = 0;
DECLARE @p1_b_attack float = 0, @p1_b_power float = 0, @p1_b_defense_a float = 0, @p1_b_defense_b float = 0, @p1_b_defense_c float = 0;
DECLARE @p1_c_attack float = 0, @p1_c_power float = 0, @p1_c_defense_a float = 0, @p1_c_defense_b float = 0, @p1_c_defense_c float = 0;
DECLARE @p1_d_attack float = 0, @p1_d_power float = 0, @p1_d_defense_a float = 0, @p1_d_defense_b float = 0, @p1_d_defense_c float = 0;
DECLARE @p1_sum_attack float = 0, @p1_sum_power float = 0 , @p1_final_sum_attack float = 0;
DECLARE @p1_a_ratio float = 0, @p1_b_ratio float = 0, @p1_c_ratio float = 0, @p1_d_ratio float = 0;

SET @p1_a_attack = (@p1_a1 * @a1_attack) + (@p1_a2 * @a2_attack) + (@p1_a3 * @a3_attack);
SET @p1_b_attack = (@p1_b1 * @b1_attack) + (@p1_b2 * @b2_attack) + (@p1_b3 * @b3_attack);
SET @p1_c_attack = (@p1_c1 * @c1_attack) + (@p1_c2 * @c2_attack) + (@p1_c3 * @c3_attack);
SET @p1_d_attack = (@p1_d1 * @d1_attack) + (@p1_d2 * @d2_attack) + (@p1_d3 * @d3_attack);
SET @p1_sum_attack = @p1_a_attack + @p1_b_attack + @p1_c_attack + @p1_d_attack;

SET @p1_a_power = (@p1_a1 * @a1_power) + (@p1_a2 * @a2_power) + (@p1_a3 * @a3_power);
SET @p1_b_power = (@p1_b1 * @b1_power) + (@p1_b2 * @b2_power) + (@p1_b3 * @b3_power);
SET @p1_c_power = (@p1_c1 * @c1_power) + (@p1_c2 * @c2_power) + (@p1_c3 * @c3_power);
SET @p1_d_power = (@p1_d1 * @d1_power) + (@p1_d2 * @d2_power) + (@p1_d3 * @d3_power);
SET @p1_sum_power = @p1_a_power + @p1_b_power + @p1_c_power + @p1_d_power;

if(@p1_sum_power>0)
	BEGIN
		SET @p1_a_ratio = @p1_a_power/@p1_sum_power;
		SET @p1_b_ratio = @p1_b_power/@p1_sum_power;
		SET @p1_c_ratio = @p1_c_power/@p1_sum_power;
		SET @p1_d_ratio = @p1_d_power/@p1_sum_power;
	END
--P2 Total defense

--total defense bonus for p2(the defender)
DECLARE @p2_final_defense_bonus float = 0, @p2_life_bonus float = 0;
SET @p2_life_bonus = @p2_research_life + @p2_hero_life;
--since life can be used for attack and defense purpose, just use one third of it as a defense bonus
SET @p2_final_defense_bonus = (@p2_life_bonus/3) + @p2_research_defense + @p2_item_defense + @p2_hero_defense;

--P2 Troops
DECLARE @p2_a_attack float = 0, @p2_a_power float = 0, @p2_a_defense_a float = 0, @p2_a_defense_b float = 0, @p2_a_defense_c float = 0;
DECLARE @p2_b_attack float = 0, @p2_b_power float = 0, @p2_b_defense_a float = 0, @p2_b_defense_b float = 0, @p2_b_defense_c float = 0;
DECLARE @p2_c_attack float = 0, @p2_c_power float = 0, @p2_c_defense_a float = 0, @p2_c_defense_b float = 0, @p2_c_defense_c float = 0;
DECLARE @p2_d_attack float = 0, @p2_d_power float = 0, @p2_d_defense_a float = 0, @p2_d_defense_b float = 0, @p2_d_defense_c float = 0;
DECLARE @p2_sum_defense_a float = 0, @p2_sum_defense_b float = 0, @p2_sum_defense_c float = 0, @p2_sum_defense_d float = 0 ,@p2_sum_power float = 0  ;
DECLARE @p2_final_sum_defense_a float = 0, @p2_final_sum_defense_b float = 0, @p2_final_sum_defense_c float = 0, @p2_final_sum_defense_d float = 0 ,  @p2_final_sum_defense float = 0;

SET @p2_a_defense_a  = (@p2_a1 * @a1_defense_a) + (@p2_a2 * @a2_defense_a) + (@p2_a3 * @a3_defense_a);
SET @p2_b_defense_a  = (@p2_b1 * @b1_defense_a) + (@p2_b2 * @b2_defense_a) + (@p2_b3 * @b3_defense_a);
SET @p2_c_defense_a  = (@p2_c1 * @c1_defense_a) + (@p2_c2 * @c2_defense_a) + (@p2_c3 * @c3_defense_a);
SET @p2_d_defense_a  = (@p2_d1 * @d1_defense_a) + (@p2_d2 * @d2_defense_a) + (@p2_d3 * @d3_defense_a);
SET @p2_sum_defense_a = @p2_a_defense_a + @p2_b_defense_a + @p2_c_defense_a + @p2_d_defense_a;

SET @p2_a_defense_b  = (@p2_a1 * @a1_defense_b) + (@p2_a2 * @a2_defense_b) + (@p2_a3 * @a3_defense_b);
SET @p2_b_defense_b  = (@p2_b1 * @b1_defense_b) + (@p2_b2 * @b2_defense_b) + (@p2_b3 * @b3_defense_b);
SET @p2_c_defense_b  = (@p2_c1 * @c1_defense_b) + (@p2_c2 * @c2_defense_b) + (@p2_c3 * @c3_defense_b);
SET @p2_d_defense_b  = (@p2_d1 * @d1_defense_b) + (@p2_d2 * @d2_defense_b) + (@p2_d3 * @d3_defense_b);
SET @p2_sum_defense_b = @p2_a_defense_b + @p2_b_defense_b + @p2_c_defense_b + @p2_d_defense_b;

SET @p2_a_defense_c  = (@p2_a1 * @a1_defense_c) + (@p2_a2 * @a2_defense_c) + (@p2_a3 * @a3_defense_c);
SET @p2_b_defense_c  = (@p2_b1 * @b1_defense_c) + (@p2_b2 * @b2_defense_c) + (@p2_b3 * @b3_defense_c);
SET @p2_c_defense_c  = (@p2_c1 * @c1_defense_c) + (@p2_c2 * @c2_defense_c) + (@p2_c3 * @c3_defense_c);
SET @p2_d_defense_c  = (@p2_d1 * @d1_defense_c) + (@p2_d2 * @d2_defense_c) + (@p2_d3 * @d3_defense_c);
SET @p2_sum_defense_c = @p2_a_defense_c + @p2_b_defense_c + @p2_c_defense_c + @p2_d_defense_c;

SET @p2_a_power  = (@p2_a1 * @a1_power) + (@p2_a2 * @a2_power) + (@p2_a3 * @a3_power);
SET @p2_b_power  = (@p2_b1 * @b1_power) + (@p2_b2 * @b2_power) + (@p2_b3 * @b3_power);
SET @p2_c_power  = (@p2_c1 * @c1_power) + (@p2_c2 * @c2_power) + (@p2_c3 * @c3_power);
SET @p2_d_power  = (@p2_d1 * @d1_power) + (@p2_d2 * @d2_power) + (@p2_d3 * @d3_power);
SET @p2_sum_power = @p2_a_power + @p2_b_power + @p2_c_power + @p2_d_power;


DECLARE @p2_sum_power_AS_STRING varchar(30) = CAST(@p2_sum_power AS VARCHAR);

SET @p2_sum_defense_d =((@p2_sum_defense_a + @p2_sum_defense_b + @p2_sum_defense_c)/3);



--p2_reinforcement Reinforcement Troops
DECLARE @r2_a_attack float = 0, @r2_a_power float = 0, @r2_a_defense_a float = 0, @r2_a_defense_b float = 0, @r2_a_defense_c float = 0;
DECLARE @r2_b_attack float = 0, @r2_b_power float = 0, @r2_b_defense_a float = 0, @r2_b_defense_b float = 0, @r2_b_defense_c float = 0;
DECLARE @r2_c_attack float = 0, @r2_c_power float = 0, @r2_c_defense_a float = 0, @r2_c_defense_b float = 0, @r2_c_defense_c float = 0;
DECLARE @r2_d_attack float = 0, @r2_d_power float = 0, @r2_d_defense_a float = 0, @r2_d_defense_b float = 0, @r2_d_defense_c float = 0;
DECLARE @r2_sum_defense_a float = 0, @r2_sum_defense_b float = 0, @r2_sum_defense_c float = 0, @r2_sum_defense_d float = 0 ,@r2_sum_power float = 0  ;
DECLARE @r2_final_sum_defense_a float = 0, @r2_final_sum_defense_b float = 0, @r2_final_sum_defense_c float = 0, @r2_final_sum_defense_d float = 0 ,  @r2_final_sum_defense float = 0;

SET @r2_a_defense_a  = (@r2_a1 * @a1_defense_a) + (@r2_a2 * @a2_defense_a) + (@r2_a3 * @a3_defense_a);
SET @r2_b_defense_a  = (@r2_b1 * @b1_defense_a) + (@r2_b2 * @b2_defense_a) + (@r2_b3 * @b3_defense_a);
SET @r2_c_defense_a  = (@r2_c1 * @c1_defense_a) + (@r2_c2 * @c2_defense_a) + (@r2_c3 * @c3_defense_a);
SET @r2_d_defense_a  = (@r2_d1 * @d1_defense_a) + (@r2_d2 * @d2_defense_a) + (@r2_d3 * @d3_defense_a);
SET @r2_sum_defense_a = @r2_a_defense_a + @r2_b_defense_a + @r2_c_defense_a + @r2_d_defense_a;

SET @r2_a_defense_b  = (@r2_a1 * @a1_defense_b) + (@r2_a2 * @a2_defense_b) + (@r2_a3 * @a3_defense_b);
SET @r2_b_defense_b  = (@r2_b1 * @b1_defense_b) + (@r2_b2 * @b2_defense_b) + (@r2_b3 * @b3_defense_b);
SET @r2_c_defense_b  = (@r2_c1 * @c1_defense_b) + (@r2_c2 * @c2_defense_b) + (@r2_c3 * @c3_defense_b);
SET @r2_d_defense_b  = (@r2_d1 * @d1_defense_b) + (@r2_d2 * @d2_defense_b) + (@r2_d3 * @d3_defense_b);
SET @r2_sum_defense_b = @r2_a_defense_b + @r2_b_defense_b + @r2_c_defense_b + @r2_d_defense_b;

SET @r2_a_defense_c  = (@r2_a1 * @a1_defense_c) + (@r2_a2 * @a2_defense_c) + (@r2_a3 * @a3_defense_c);
SET @r2_b_defense_c  = (@r2_b1 * @b1_defense_c) + (@r2_b2 * @b2_defense_c) + (@r2_b3 * @b3_defense_c);
SET @r2_c_defense_c  = (@r2_c1 * @c1_defense_c) + (@r2_c2 * @c2_defense_c) + (@r2_c3 * @c3_defense_c);
SET @r2_d_defense_c  = (@r2_d1 * @d1_defense_c) + (@r2_d2 * @d2_defense_c) + (@r2_d3 * @d3_defense_c);
SET @r2_sum_defense_c = @r2_a_defense_c + @r2_b_defense_c + @r2_c_defense_c + @r2_d_defense_c;

SET @r2_a_power  = (@r2_a1 * @a1_power) + (@r2_a2 * @a2_power) + (@r2_a3 * @a3_power);
SET @r2_b_power  = (@r2_b1 * @b1_power) + (@r2_b2 * @b2_power) + (@r2_b3 * @b3_power);
SET @r2_c_power  = (@r2_c1 * @c1_power) + (@r2_c2 * @c2_power) + (@r2_c3 * @c3_power);
SET @r2_d_power  = (@r2_d1 * @d1_power) + (@r2_d2 * @d2_power) + (@r2_d3 * @d3_power);
SET @r2_sum_power = @r2_a_power + @r2_b_power + @r2_c_power + @r2_d_power;

DECLARE @p2_a_power_AS_STRING varchar(30) = CAST(@p2_a_power AS VARCHAR);
RAISERROR ('p2_a_power : %s', 10,-1, @p2_a_power_AS_STRING) with nowait;
DECLARE @p2_b_power_AS_STRING varchar(30) = CAST(@p2_b_power AS VARCHAR);
RAISERROR ('p2_b_power : %s', 10,-1, @p2_b_power_AS_STRING) with nowait;
DECLARE @p2_c_power_AS_STRING varchar(30) = CAST(@p2_c_power AS VARCHAR);
RAISERROR ('p2_c_power : %s', 10,-1, @p2_c_power_AS_STRING) with nowait;
DECLARE @r2_d_power_AS_STRING varchar(30) = CAST(@r2_d_power AS VARCHAR);
RAISERROR ('r2_d_power : %s', 10,-1, @r2_d_power_AS_STRING) with nowait;

SET @r2_sum_defense_d =((@r2_sum_defense_a + @r2_sum_defense_b + @r2_sum_defense_c)/3);

--P2 Final Defense

DECLARE @r2_ratio float = 0;
DECLARE @r2_effectiveness float = 0.5;
DECLARE @r2_final_sum_power float = @r2_sum_power*@r2_effectiveness;

IF(@r2_final_sum_power = 0)
	BEGIN
		SET @r2_ratio = 0;
	END
ELSE IF(@p2_sum_power = 0)
	BEGIN
		SET @r2_ratio = 1;
	END
ELSE
	BEGIN
		SET @r2_ratio = @r2_final_sum_power/ (@r2_final_sum_power + @p2_sum_power);
	END


DECLARE @r2_final_sum_power_AS_STRING varchar(30) = CAST(@r2_final_sum_power AS VARCHAR);
RAISERROR ('p2_reinforcement_final_sum_power : %s', 10,-1, @r2_final_sum_power_AS_STRING) with nowait;	
DECLARE @r2_ratio_AS_STRING varchar(30) = CAST(@r2_ratio AS VARCHAR);
RAISERROR ('p2_reinforcement_ratio : %s', 10,-1, @r2_ratio_AS_STRING) with nowait;

SET @p2_sum_defense_a = @p2_sum_defense_a + (@r2_sum_defense_a*@r2_effectiveness);
SET @p2_sum_defense_b = @p2_sum_defense_b + (@r2_sum_defense_b*@r2_effectiveness);
SET @p2_sum_defense_c = @p2_sum_defense_c + (@r2_sum_defense_c*@r2_effectiveness);
SET @p2_sum_defense_d = @p2_sum_defense_d + (@r2_sum_defense_d*@r2_effectiveness);

SET @p2_a_defense_a = @p2_a_defense_a + (@r2_a_defense_a*@r2_effectiveness);
SET @p2_a_defense_b = @p2_a_defense_a + (@r2_a_defense_a*@r2_effectiveness);
SET @p2_a_defense_c = @p2_a_defense_a + (@r2_a_defense_a*@r2_effectiveness);
SET @p2_b_defense_a = @p2_b_defense_a + (@r2_b_defense_a*@r2_effectiveness);
SET @p2_b_defense_b = @p2_b_defense_a + (@r2_b_defense_a*@r2_effectiveness);
SET @p2_b_defense_c = @p2_b_defense_a + (@r2_b_defense_a*@r2_effectiveness);
SET @p2_c_defense_a = @p2_c_defense_a + (@r2_c_defense_a*@r2_effectiveness);
SET @p2_c_defense_b = @p2_c_defense_a + (@r2_c_defense_a*@r2_effectiveness);
SET @p2_c_defense_c = @p2_c_defense_a + (@r2_c_defense_a*@r2_effectiveness);
SET @p2_d_defense_a = @p2_d_defense_a + (@r2_d_defense_a*@r2_effectiveness);
SET @p2_d_defense_b = @p2_d_defense_a + (@r2_d_defense_a*@r2_effectiveness);
SET @p2_d_defense_c = @p2_d_defense_a + (@r2_d_defense_a*@r2_effectiveness);



--SIEGE FORMULA 


DECLARE @siege_attack float = 0, @siege_defense float = 0, @siege_result float=0, @siege_damage_multiplier float = 0, @final_wall_bonus float = 0;

IF (@p2_wall>0)
BEGIN
	SET @final_wall_bonus = (0.75*sqrt(@p2_wall)+(0.5*@p2_wall)) ;
	
	SET @siege_attack = @p1_a_attack + @p1_b_attack + @p1_c_attack + (@p1_d_attack*10);
	SET @siege_defense = ((@p2_a_defense_a + @p2_b_defense_a + @p2_c_defense_a + (@p2_d_defense_a*10)) + (@p2_a_defense_b + @p2_b_defense_b + @p2_c_defense_b + (@p2_d_defense_b*10)) + (@p2_a_defense_c + @p2_b_defense_c + @p2_c_defense_c + (@p2_d_defense_c*10)))/3;
	SET @siege_defense = @siege_defense*@final_wall_bonus

	IF(@siege_defense>0)
		BEGIN
			SET @siege_result = @siege_attack/@siege_defense;
		END
		
	DECLARE @siege_attack_AS_STRING varchar(30) = CAST(@siege_attack AS VARCHAR);
	RAISERROR ('siege_attack : %s', 10,-1, @siege_attack_AS_STRING) with nowait;
	DECLARE @siege_defense_AS_STRING varchar(30) = CAST(@siege_defense AS VARCHAR);
	RAISERROR ('siege_defense : %s', 10,-1, @siege_defense_AS_STRING) with nowait;
	DECLARE @siege_result_AS_STRING varchar(30) = CAST(@siege_result AS VARCHAR);
	RAISERROR ('siege_result : %s', 10,-1, @siege_result_AS_STRING) with nowait;

	IF(@siege_result>1)
	BEGIN
			SET @siege_damage_multiplier = 1 - (1/(@siege_result*@siege_result*@siege_result*@siege_result));
			SET @final_wall_bonus = @final_wall_bonus - (@final_wall_bonus*@siege_damage_multiplier)
	END	

END

	DECLARE @siege_damage_multiplier_AS_STRING varchar(30) = CAST(@siege_damage_multiplier AS VARCHAR);
	RAISERROR ('siege_damage_multiplier : %s', 10,-1, @siege_damage_multiplier_AS_STRING) with nowait;
	DECLARE @final_wall_bonus_AS_STRING varchar(30) = CAST(@final_wall_bonus AS VARCHAR);
	RAISERROR ('final_wall_bonus: %s', 10,-1, @final_wall_bonus_AS_STRING) with nowait;

DECLARE @battle_result float = 0, @defender_injury_multiplier float = 0, @attacker_casualty_multiplier float = 0, @defender_casualty_multiplier float = 0, @research_defender_injury_multiplier float = 0 ,  @base_defender_injury_multiplier float= 0 ,@final_defender_injury_multiplier float= 0 , @final_defender_casualty_multiplier float = 0;


--BATTLE FORMULA

SET @p1_final_sum_attack = @p1_sum_attack;

SET @p1_base_bonus_attack_sum = @p1_final_sum_attack*@p1_final_attack_bonus*0.01;

SET @p1_type_specific_bonus_attack_sum= ((@p1_a_attack*@p1_final_a_attack_bonus)+(@p1_b_attack*@p1_final_b_attack_bonus)+(@p1_c_attack*@p1_final_c_attack_bonus)+(@p1_d_attack*@p1_final_d_attack_bonus))*0.01;


SET @p2_final_sum_defense_a = @p2_sum_defense_a * @p1_a_ratio ;
SET @p2_final_sum_defense_b = @p2_sum_defense_b * @p1_b_ratio ;
SET @p2_final_sum_defense_c = @p2_sum_defense_c * @p1_c_ratio ;
SET @p2_final_sum_defense_d = @p2_sum_defense_d * @p1_d_ratio ;
SET @p2_final_sum_defense = @p2_final_sum_defense_a + @p2_final_sum_defense_b + @p2_final_sum_defense_c + @p2_final_sum_defense_d;

SET @p2_base_bonus_defend_sum =  @p2_final_sum_defense*@p2_final_defense_bonus*0.01;

IF (@p2_final_sum_defense = 0)
BEGIN
	SET @p2_final_sum_defense = 1;
END

IF (@is_capture = 1) -- Significant force is needed
BEGIN
	SET @p1_final_sum_attack =@p1_final_sum_attack *0.5;
END

	--ADD BONUSES
	
	DECLARE @is_capture_AS_STRING varchar(30) = CAST(@is_capture AS VARCHAR);
	RAISERROR ('is_capture : %s', 10,-1, @is_capture_AS_STRING) with nowait;
	
	DECLARE @p1_final_sum_attack_AS_STRING varchar(30) = CAST(@p1_final_sum_attack AS VARCHAR);
	RAISERROR ('p1_final_sum_attack : %s', 10,-1, @p1_final_sum_attack_AS_STRING) with nowait;
	DECLARE @p2_final_sum_defense_AS_STRING varchar(30) = CAST(@p2_final_sum_defense AS VARCHAR);
	RAISERROR ('p2_final_sum_defense : %s', 10,-1, @p2_final_sum_defense_AS_STRING) with nowait;
	
	SET @p1_final_sum_attack = @p1_final_sum_attack + @p1_base_bonus_attack_sum + @p1_type_specific_bonus_attack_sum ; 
	SET @p2_final_sum_defense = @p2_final_sum_defense + @p2_base_bonus_defend_sum ; 
	
	DECLARE @p1_final_sum_attack_after_bonus_AS_STRING varchar(30) = CAST(@p1_final_sum_attack AS VARCHAR);
	RAISERROR ('p2_final_sum_attack_after_bonus : %s', 10,-1, @p1_final_sum_attack_AS_STRING) with nowait;
	DECLARE @p2_final_sum_defense_after_bonus_AS_STRING varchar(30) = CAST(@p2_final_sum_defense AS VARCHAR);
	RAISERROR ('p2_final_sum_defense_after_bonus : %s', 10,-1, @p2_final_sum_defense_after_bonus_AS_STRING) with nowait;

	--WALL BONUS

	SET @p2_final_sum_defense = @p2_final_sum_defense*(1+@final_wall_bonus);
	
	DECLARE @p2_final_sum_defense_after_wall_bonus_AS_STRING varchar(30) = CAST(@p2_final_sum_defense AS VARCHAR);
	RAISERROR ('p2_final_sum_defense_after_wall_bonus : %s', 10,-1, @p2_final_sum_defense_after_wall_bonus_AS_STRING) with nowait;
    
    --CAPITAL CITY PROTECTION BONUS
    
    DECLARE @capital_city_protection_bonus float = 0;
    
    --COPY OVER TO ATTACK PVP
    --DECLARE @village_shared_defense_bonus float = 0;
    --SELECT @village_shared_defense_bonus = village_shared_defense_bonus FROM settings WHERE settings_id=1
    
    IF(@p2_base_type=2 AND @p2_total_villages>0)
    BEGIN
    --percent
        SET @capital_city_protection_bonus = (@village_shared_defense_bonus/(@p2_total_villages))*0.001;
    END
    
    SET @p2_final_sum_defense = @p2_final_sum_defense*(1+@capital_city_protection_bonus);
    
    -- BATTLE CALCULATION
    
	IF(@p2_final_sum_defense>0)
	SET @battle_result = @p1_final_sum_attack/@p2_final_sum_defense;  

	DECLARE @battle_result_AS_STRING varchar(30) = CAST(@battle_result AS VARCHAR);
	RAISERROR ('battle_result : %s', 10,-1, @battle_result_AS_STRING) with nowait;

	/*
	IF (@battle_result > 1) --attacker win
	BEGIN
		SET @attacker_casualty_multiplier = sqrt(1/@battle_result) / @battle_result;
		SET @defender_casualty_multiplier = 1;
		IF (@is_capture = 1) -- Significant casualties when capturing
			BEGIN
				SET @attacker_casualty_multiplier = @attacker_casualty_multiplier*2;
			END
	END
	ELSE
	BEGIN --attacker lost
		IF(@battle_result<=0)
		BEGIN
			SET @attacker_casualty_multiplier = 1;
			SET @defender_casualty_multiplier = 0;
		END
		ELSE
		BEGIN
			SET @attacker_casualty_multiplier=  sqrt(@battle_result) * @battle_result;
			SET @defender_casualty_multiplier = sqrt(POWER(@battle_result,3)) * @battle_result;
			IF (@is_capture = 1) -- Significant casualties when capturing
			BEGIN
				SET @attacker_casualty_multiplier = @attacker_casualty_multiplier*2;
			END
		END
	END
	*/
	
	IF (@battle_result > 1) --attacker win
	BEGIN
		SET @attacker_casualty_multiplier = sqrt(1/@battle_result) / @battle_result;
		SET @defender_casualty_multiplier = 1;
	END
	ELSE
	BEGIN --attacker lost
		SET @attacker_casualty_multiplier = 0.99;--workaround for no return army workaround
		SET @defender_casualty_multiplier=  sqrt(@battle_result) * @battle_result;
	END


	DECLARE @attacker_casualty_multiplier_AS_STRING varchar(30) = CAST(@attacker_casualty_multiplier AS VARCHAR);
	RAISERROR ('!!! attacker_casualty_multiplier : %s', 10,-1, @attacker_casualty_multiplier_AS_STRING) with nowait;
	DECLARE @defender_casualty_multiplier_AS_STRING varchar(30) = CAST(@defender_casualty_multiplier AS VARCHAR);
	RAISERROR ('!!! defender_casualty_multiplier : %s', 10,-1, @defender_casualty_multiplier_AS_STRING) with nowait;

	--attacker casualties (Simple average formula)
		SET @k1_a1 = ROUND(@p1_a1 * @attacker_casualty_multiplier,0);
        DECLARE @k1_a1_AS_STRING varchar(30) = CAST(@k1_a1 AS VARCHAR);
	    RAISERROR ('k1_a1 : %s', 10,-1, @k1_a1_AS_STRING) with nowait;
            
        IF(@k1_a1=@p1_a1 AND @p1_a1>0)
        BEGIN
            
            SET @k1_a1=@k1_a1-1;
        END
		SET @k1_a2 = ROUND(@p1_a2 * @attacker_casualty_multiplier,0);
        IF(@k1_a2=@p1_a1 AND @p1_a2>0)
        BEGIN
            SET @k1_a2=@k1_a2-1;
        END
		SET @k1_a3 = ROUND(@p1_a3 * @attacker_casualty_multiplier,0);
		IF(@k1_a3=@p1_a1 AND @p1_a3>0)
        BEGIN
            SET @k1_a3=@k1_a3-1;
        END
		SET @k1_b1 = ROUND(@p1_b1 * @attacker_casualty_multiplier,0);
        IF(@k1_b1=@p1_b1 AND @p1_b1>0)
        BEGIN
            SET @k1_b1=@k1_b1-1;
        END
		SET @k1_b2 = ROUND(@p1_b2 * @attacker_casualty_multiplier,0);
        IF(@k1_b2=@p1_b2 AND @p1_b2>0)
        BEGIN
            SET @k1_b2=@k1_b2-1;
        END
		SET @k1_b3 = ROUND(@p1_b3 * @attacker_casualty_multiplier,0);
		IF(@k1_b3=@p1_b3 AND @p1_b3>0)
        BEGIN
            SET @k1_b3=@k1_b3-1;
        END
		SET @k1_c1 = ROUND(@p1_c1 * @attacker_casualty_multiplier,0);
        IF(@k1_c1=@p1_c1 AND @p1_c1>0)
        BEGIN
            SET @k1_c1=@k1_c1-1;
        END
		SET @k1_c2 = ROUND(@p1_c2 * @attacker_casualty_multiplier,0);
        IF(@k1_c2=@p1_c2 AND @p1_c2>0)
        BEGIN
            SET @k1_c2=@k1_c2-1;
        END
		SET @k1_c3 = ROUND(@p1_c3 * @attacker_casualty_multiplier,0);
		IF(@k1_c3=@p1_c3 AND @p1_c3>0)
        BEGIN
            SET @k1_c3=@k1_c3-1;
        END
		SET @k1_d1 = ROUND(@p1_d1 * @attacker_casualty_multiplier,0);
        IF(@k1_d1=@p1_d1 AND @p1_d1>0)
        BEGIN
            SET @k1_d1=@k1_d1-1;
        END
		SET @k1_d2 = ROUND(@p1_d2 * @attacker_casualty_multiplier,0);
        IF(@k1_d2=@p1_d2 AND @p1_d2>0)
        BEGIN
            SET @k1_d2=@k1_d2-1;
        END
		SET @k1_d3 = ROUND(@p1_d3 * @attacker_casualty_multiplier,0);
        IF(@k1_d3=@p1_d3 AND @p1_d3>0)
        BEGIN
            SET @k1_d3=@k1_d3-1;
        END
		
	--defender casualties (Simple average formula)
		SET @base_defender_injury_multiplier = 0.5;
		SET @research_defender_injury_multiplier = 0;
		
		/*
		SET @defender_casualty_multiplier = @defender_casualty_multiplier * @r2_ratio;
		
		DECLARE @defender_casualty_multiplier_after_reinforcement_AS_STRING varchar(30) = CAST(@defender_casualty_multiplier AS VARCHAR);
		RAISERROR ('defender_casualty_multiplier_after_reinforcement : %s', 10,-1, @defender_casualty_multiplier_after_reinforcement_AS_STRING) with nowait;
		*/
		SET @final_defender_injury_multiplier = @defender_casualty_multiplier * (@base_defender_injury_multiplier/(1+@research_defender_injury_multiplier));
		
		SET @final_defender_casualty_multiplier = @defender_casualty_multiplier - @final_defender_injury_multiplier ;

		/*
		PRINT '@defender_casualty_multiplier : '+ CAST(@defender_casualty_multiplier AS VARCHAR);
		PRINT '@final_defender_injury_multiplier : '+ CAST(@final_defender_injury_multiplier AS VARCHAR);
		PRINT '@final_defender_casualty_multiplier : '+ CAST(@final_defender_casualty_multiplier AS VARCHAR);
		*/
		
		DECLARE @final_defender_injury_multiplier_AS_STRING varchar(30) = CAST(@final_defender_injury_multiplier AS VARCHAR);
		RAISERROR ('final_defender_injury_multiplier : %s', 10,-1, @final_defender_injury_multiplier_AS_STRING) with nowait;
		DECLARE @final_defender_casualty_multiplier_AS_STRING varchar(30) = CAST(@final_defender_casualty_multiplier AS VARCHAR);
		RAISERROR ('final_defender_casualty_multiplier : %s', 10,-1, @final_defender_casualty_multiplier_AS_STRING) with nowait;

		-- P2 injuries

		SET @i2_a1 = ROUND(@p2_a1 * @final_defender_injury_multiplier,0);
		SET @i2_a2 = ROUND(@p2_a2 * @final_defender_injury_multiplier,0);
		SET @i2_a3 = ROUND(@p2_a3 * @final_defender_injury_multiplier,0);
		
		SET @i2_b1 = ROUND(@p2_b1 * @final_defender_injury_multiplier,0);
		SET @i2_b2 = ROUND(@p2_b2 * @final_defender_injury_multiplier,0);
		SET @i2_b3 = ROUND(@p2_b3 * @final_defender_injury_multiplier,0);
		
		SET @i2_c1 = ROUND(@p2_c1 * @final_defender_injury_multiplier,0);
		SET @i2_c2 = ROUND(@p2_c2 * @final_defender_injury_multiplier,0);
		SET @i2_c3 = ROUND(@p2_c3 * @final_defender_injury_multiplier,0);
		
		SET @i2_d1 = ROUND(@p2_d1 * @final_defender_injury_multiplier,0);
		SET @i2_d2 = ROUND(@p2_d2 * @final_defender_injury_multiplier,0);
		SET @i2_d3 = ROUND(@p2_d3 * @final_defender_injury_multiplier,0);
		
		-- P2 casualties

		
		SET @k2_a1 = ROUND(@p2_a1 * @final_defender_casualty_multiplier,0);
		SET @k2_a2 = ROUND(@p2_a2 * @final_defender_casualty_multiplier,0);
		SET @k2_a3 = ROUND(@p2_a3 * @final_defender_casualty_multiplier,0);
		
		SET @k2_b1 = ROUND(@p2_b1 * @final_defender_casualty_multiplier,0);
		SET @k2_b2 = ROUND(@p2_b2 * @final_defender_casualty_multiplier,0);
		SET @k2_b3 = ROUND(@p2_b3 * @final_defender_casualty_multiplier,0);
		
		SET @k2_c1 = ROUND(@p2_c1 * @final_defender_casualty_multiplier,0);
		SET @k2_c2 = ROUND(@p2_c2 * @final_defender_casualty_multiplier,0);
		SET @k2_c3 = ROUND(@p2_c3 * @final_defender_casualty_multiplier,0);
		
		SET @k2_d1 = ROUND(@p2_d1 * @final_defender_casualty_multiplier,0);
		SET @k2_d2 = ROUND(@p2_d2 * @final_defender_casualty_multiplier,0);
		SET @k2_d3 = ROUND(@p2_d3 * @final_defender_casualty_multiplier,0);

				
		-- P2 reinforcements casualties
		
		SET @rk2_a1 = ROUND(@r2_a1 * @defender_casualty_multiplier,0);
		SET @rk2_a2 = ROUND(@r2_a2 * @defender_casualty_multiplier,0);
		SET @rk2_a3 = ROUND(@r2_a3 * @defender_casualty_multiplier,0);
		
		SET @rk2_b1 = ROUND(@r2_b1 * @defender_casualty_multiplier,0);
		SET @rk2_b2 = ROUND(@r2_b2 * @defender_casualty_multiplier,0);
		SET @rk2_b3 = ROUND(@r2_b3 * @defender_casualty_multiplier,0);
		
		SET @rk2_c1 = ROUND(@r2_c1 * @defender_casualty_multiplier,0);
		SET @rk2_c2 = ROUND(@r2_c2 * @defender_casualty_multiplier,0);
		SET @rk2_c3 = ROUND(@r2_c3 * @defender_casualty_multiplier,0);
		
		SET @rk2_d1 = ROUND(@r2_d1 * @defender_casualty_multiplier,0);
		SET @rk2_d2 = ROUND(@r2_d2 * @defender_casualty_multiplier,0);
		SET @rk2_d3 = ROUND(@r2_d3 * @defender_casualty_multiplier,0);
		
		DECLARE @defender_casualty_multiplier_reinforcement_AS_STRING varchar(30) = CAST(@defender_casualty_multiplier AS VARCHAR);
		RAISERROR ('defender_casualty_multiplier_reinforcement : %s', 10,-1, @defender_casualty_multiplier_reinforcement_AS_STRING) with nowait;

		DECLARE @rk2_a1_AS_STRING varchar(30) = CAST(@rk2_a1 AS VARCHAR);
		RAISERROR ('@rk2_a1 : %s', 10,-1, @rk2_a1_AS_STRING) with nowait;
		DECLARE @rk2_a2_AS_STRING varchar(30) = CAST(@rk2_a2 AS VARCHAR);
		RAISERROR ('@rk2_a2 : %s', 10,-1, @rk2_a2_AS_STRING) with nowait;
		DECLARE @rk2_a3_AS_STRING varchar(30) = CAST(@rk2_a3 AS VARCHAR);
		RAISERROR ('@rk2_a3 : %s', 10,-1, @rk2_a3_AS_STRING) with nowait;

		DECLARE @rk2_b1_AS_STRING varchar(30) = CAST(@rk2_b1 AS VARCHAR);
		RAISERROR ('@rk2_b1 : %s', 10,-1, @rk2_b1_AS_STRING) with nowait;
		DECLARE @rk2_b2_AS_STRING varchar(30) = CAST(@rk2_b2 AS VARCHAR);
		RAISERROR ('@rk2_b2 : %s', 10,-1, @rk2_b2_AS_STRING) with nowait;
		DECLARE @rk2_b3_AS_STRING varchar(30) = CAST(@rk2_b3 AS VARCHAR);
		RAISERROR ('@rk2_b3 : %s', 10,-1, @rk2_b3_AS_STRING) with nowait;

		DECLARE @rk2_c1_AS_STRING varchar(30) = CAST(@rk2_c1 AS VARCHAR);
		RAISERROR ('@rk2_c1 : %s', 10,-1, @rk2_c1_AS_STRING) with nowait;
		DECLARE @rk2_c2_AS_STRING varchar(30) = CAST(@rk2_c2 AS VARCHAR);
		RAISERROR ('@rk2_c2 : %s', 10,-1, @rk2_c2_AS_STRING) with nowait;
		DECLARE @rk2_c3_AS_STRING varchar(30) = CAST(@rk2_c3 AS VARCHAR);
		RAISERROR ('@rk2_c3 : %s', 10,-1, @rk2_c3_AS_STRING) with nowait;

		DECLARE @rk2_d1_AS_STRING varchar(30) = CAST(@rk2_d1 AS VARCHAR);
		RAISERROR ('@rk2_d1 : %s', 10,-1, @rk2_d1_AS_STRING) with nowait;
		DECLARE @rk2_d2_AS_STRING varchar(30) = CAST(@rk2_d2 AS VARCHAR);
		RAISERROR ('@rk2_c2 : %s', 10,-1, @rk2_d2_AS_STRING) with nowait;
		DECLARE @rk2_d3_AS_STRING varchar(30) = CAST(@rk2_d3 AS VARCHAR);
		RAISERROR ('@rk2_d3 : %s', 10,-1, @rk2_d3_AS_STRING) with nowait;

--END BATTLE FORMULA


SET @p1_troops = @p1_a1 + @p1_b1 + @p1_c1 + @p1_d1 + @p1_a2 + @p1_b2 + @p1_c2 + @p1_d2 + @p1_a3 + @p1_b3 + @p1_c3 + @p1_d3;

SET @r1_troops = 0;

SET @p2_troops = @p2_a1 + @p2_a2 + @p2_a3 + @p2_b1 + @p2_b2 + @p2_b3 + @p2_c1 + @p2_c2 + @p2_c3 + @p2_d1 + @p2_d2 + @p2_d3;

SET @r2_troops = @r2_a1 + @r2_a2 + @r2_a3 + @r2_b1 + @r2_b2 + @r2_b3 + @r2_c1 + @r2_c2 + @r2_c3 + @r2_d1 + @r2_d2 + @r2_d3;

SET @p1_injured = 0;

SET @r1_injured = 0;

SET @p2_injured = @i2_a1 + @i2_a2 + @i2_a3 + @i2_b1 + @i2_b2 + @i2_b3 + @i2_c1 + @i2_c2 + @i2_c3 + @i2_d1 + @i2_d2 + @i2_d3;

SET @p1_killed = @k1_a1 + @k1_a2 + @k1_a3 + @k1_b1 + @k1_b2 + @k1_b3 + @k1_c1 + @k1_c2 + @k1_c3 + @k1_d1 + @k1_d2 + @k1_d3;

SET @r1_killed = 0;

SET @p2_killed = @k2_a1 + @k2_a2 + @k2_a3 + @k2_b1 + @k2_b2 + @k2_b3 + @k2_c1 + @k2_c2 + @k2_c3 + @k2_d1 + @k2_d2 + @k2_d3;

SET @r2_killed = @rk2_a1 + @rk2_a2 + @rk2_a3 + @rk2_b1 + @rk2_b2 + @rk2_b3 + @rk2_c1 + @rk2_c2 + @rk2_c3 + @rk2_d1 + @rk2_d2 + @rk2_d3;


DECLARE @p1_troops_AS_STRING varchar(30) = CAST(@p1_troops AS VARCHAR);
RAISERROR ('@p1_troops : %s', 10,-1, @p1_troops_AS_STRING) with nowait;
DECLARE @p1_killed_AS_STRING varchar(30) = CAST(@p1_killed AS VARCHAR);
RAISERROR ('@p1_killed : %s', 10,-1, @p1_killed_AS_STRING) with nowait;
DECLARE @p2_troops_AS_STRING varchar(30) = CAST(@p2_troops AS VARCHAR);
RAISERROR ('@p2_troops : %s', 10,-1, @p2_troops_AS_STRING) with nowait;
DECLARE @p2_injured_AS_STRING varchar(30) = CAST(@p2_injured AS VARCHAR);
RAISERROR ('@p2_injured : %s', 10,-1, @p2_injured_AS_STRING) with nowait;
DECLARE @p2_killed_AS_STRING varchar(30) = CAST(@p2_killed AS VARCHAR);
RAISERROR ('@p2_killed : %s', 10,-1, @p2_killed_AS_STRING) with nowait;

SET @p1_hero_xp_gain = @p2_injured;
SET @p2_hero_xp_gain = @p1_killed;


DECLARE @Total_load float = 0;

SET @total_load = (@p1_a1-@k1_a1)*@a1_load + (@p1_a2-@k1_a2)*@a2_load + (@p1_a3-@k1_a3)*@a3_load + (@p1_b1-@k1_b1)*@b1_load + (@p1_b2-@k1_b2)*@b2_load + (@p1_b3-@k1_b3)*@b3_load + (@p1_c1-@k1_c1)*@c1_load + (@p1_c2-@k1_c2)*@c2_load + (@p1_c3-@k1_c3)*@c3_load + (@p1_d1-@k1_d1)*@d1_load + (@p1_d2-@k1_d2)*@d2_load + (@p1_d3-@k1_d3)*@d3_load;

DECLARE @total_load_AS_STRING varchar(30) = CAST(@total_load AS VARCHAR);
RAISERROR ('@total_load : %s', 10,-1, @total_load_AS_STRING) with nowait;

IF(@is_capture = 1) -- CAPTURE
	BEGIN
		IF (@battle_result > 1)
			BEGIN
				SET @victory = 1;	
			END
		
		ELSE
			BEGIN
				SET @victory = 0;
			END
	END
ELSE -- RAID
	BEGIN	
        IF (@battle_result > 1)
		--IF (@total_load > 0)
			BEGIN
				SET @victory = 1;
			END
		ELSE
			BEGIN
				SET @victory = 0;
			END
		
		SET @r1 = @total_load/5;
		SET @r2 = @total_load/5;
		SET @r3 = @total_load/5;
		SET @r4 = @total_load/5;
		SET @r5 = @total_load/5;
	END

DECLARE @victory_AS_STRING varchar(30) = CAST(@victory AS VARCHAR);
RAISERROR ('@victory : %s', 10,-1, @victory_AS_STRING) with nowait;	

--TUTORIAL HARDCODE
/*
IF(@tutorial_step =99)
BEGIN
    SET @k1_a1 =0;
    SET @k1_b1 =0;
    SET @k1_c1 =0;
    SET @k1_d1 =0;
    SET @k1_a2 =0;
    SET @k1_b2 =0;
    SET @k1_c2 =0;
    SET @k1_d2 =0;
    SET @k1_a3 =0;
    SET @k1_b3 =0;
    SET @k1_c3 =0;
    SET @k1_d3 =0; 
    SET @k2_a1 =0;
    SET @k2_b1 =0;
    SET @k2_c1 =0;
    SET @k2_d1 =0;
    SET @k2_a2 =0;
    SET @k2_b2 =0;
    SET @k2_c2 =0;
    SET @k2_d2 =0;
    SET @k2_a3 =0;
    SET @k2_b3 =0;
    SET @k2_c3 =0;
    SET @k2_d3 =0;
    SET @i2_a1 =0;
    SET @i2_b1 =0;
    SET @i2_c1 =0;
    SET @i2_d1 =0;
    SET @i2_a2 =0;
    SET @i2_b2 =0;
    SET @i2_c2 =0;
    SET @i2_d2 =0;
    SET @i2_a3 =0;
    SET @i2_b3 =0;
    SET @i2_c3 =0;
    SET @i2_d3 =0;
    SET @rk2_a1 =0;
    SET @rk2_b1 =0;
    SET @rk2_c1 =0;
    SET @rk2_d1 =0;
    SET @rk2_a2 =0;
    SET @rk2_b2 =0;
    SET @rk2_c2 =0;
    SET @rk2_d2 =0;
    SET @rk2_a3 =0;
    SET @rk2_b3 =0;
    SET @rk2_c3 =0;
    SET @rk2_d3 =0;
    SET @p1_troops =0;
    SET @p1_injured =0;
    SET @p1_killed =0;
    SET @r1_troops =0;
    SET @r1_injured =0;
    SET @r1_killed =0;
    SET @p2_troops =0;
    SET @p2_injured =0;
    SET @p2_killed =0;
    SET @r2_troops =0;
    SET @r2_injured =0;
    SET @r2_killed =0;
    SET @p1_hero_xp_gain =0;
    SET @p2_hero_xp_gain =0;
    SET @r1 =0;
    SET @r2 =0;
    SET @r3 =0;
    SET @r4 =0;
    SET @r5 =0;
    SET @victory =1;
END
*/
IF(@tutorial_step =35)
BEGIN
    SET @siege_result=2
    SET @battle_result=2;
    --Set those variable for OUTPUT
    SET @k1_a1 =0;
    SET @k1_b1 =0;
    SET @k1_c1 =0;
    SET @k1_d1 =0;
    SET @k1_a2 =0;
    SET @k1_b2 =0;
    SET @k1_c2 =0;
    SET @k1_d2 =0;
    SET @k1_a3 =0;
    SET @k1_b3 =0;
    SET @k1_c3 =0;
    SET @k1_d3 =0; 
    SET @k2_a1 =0;
    SET @k2_b1 =0;
    SET @k2_c1 =0;
    SET @k2_d1 =0;
    SET @k2_a2 =0;
    SET @k2_b2 =0;
    SET @k2_c2 =0;
    SET @k2_d2 =0;
    SET @k2_a3 =0;
    SET @k2_b3 =0;
    SET @k2_c3 =0;
    SET @k2_d3 =0;
    SET @i2_a1 =0;
    SET @i2_b1 =0;
    SET @i2_c1 =0;
    SET @i2_d1 =0;
    SET @i2_a2 =0;
    SET @i2_b2 =0;
    SET @i2_c2 =0;
    SET @i2_d2 =0;
    SET @i2_a3 =0;
    SET @i2_b3 =0;
    SET @i2_c3 =0;
    SET @i2_d3 =0;
    SET @rk2_a1 =0;
    SET @rk2_b1 =0;
    SET @rk2_c1 =0;
    SET @rk2_d1 =0;
    SET @rk2_a2 =0;
    SET @rk2_b2 =0;
    SET @rk2_c2 =0;
    SET @rk2_d2 =0;
    SET @rk2_a3 =0;
    SET @rk2_b3 =0;
    SET @rk2_c3 =0;
    SET @rk2_d3 =0;
    SET @p1_troops =3;
    SET @p1_injured =0;
    SET @p1_killed =0;
    SET @r1_troops =0;
    SET @r1_injured =0;
    SET @r1_killed =0;
    SET @p2_troops =0;
    SET @p2_injured =0;
    SET @p2_killed =0;
    SET @r2_troops =0;
    SET @r2_injured =0;
    SET @r2_killed =0;
    SET @p1_hero_xp_gain =0;
    SET @p2_hero_xp_gain =0;
    SET @r1 =10;
    SET @r2 =10;
    SET @r3 =10;
    SET @r4 =10;
    SET @r5 =10;
    SET @victory =1;
END
ELSE IF(@tutorial_step =62)
BEGIN
    SET @siege_result=2
    SET @battle_result=2;
    --Set those variable for OUTPUT
    SET @k1_a1 =0;
    SET @k1_b1 =0;
    SET @k1_c1 =0;
    SET @k1_d1 =0;
    SET @k1_a2 =0;
    SET @k1_b2 =0;
    SET @k1_c2 =0;
    SET @k1_d2 =0;
    SET @k1_a3 =0;
    SET @k1_b3 =0;
    SET @k1_c3 =0;
    SET @k1_d3 =0; 
    SET @k2_a1 =0;
    SET @k2_b1 =0;
    SET @k2_c1 =0;
    SET @k2_d1 =0;
    SET @k2_a2 =0;
    SET @k2_b2 =0;
    SET @k2_c2 =0;
    SET @k2_d2 =0;
    SET @k2_a3 =0;
    SET @k2_b3 =0;
    SET @k2_c3 =0;
    SET @k2_d3 =0;
    SET @i2_a1 =0;
    SET @i2_b1 =0;
    SET @i2_c1 =0;
    SET @i2_d1 =0;
    SET @i2_a2 =0;
    SET @i2_b2 =0;
    SET @i2_c2 =0;
    SET @i2_d2 =0;
    SET @i2_a3 =0;
    SET @i2_b3 =0;
    SET @i2_c3 =0;
    SET @i2_d3 =0;
    SET @rk2_a1 =0;
    SET @rk2_b1 =0;
    SET @rk2_c1 =0;
    SET @rk2_d1 =0;
    SET @rk2_a2 =0;
    SET @rk2_b2 =0;
    SET @rk2_c2 =0;
    SET @rk2_d2 =0;
    SET @rk2_a3 =0;
    SET @rk2_b3 =0;
    SET @rk2_c3 =0;
    SET @rk2_d3 =0;
    SET @p1_troops =3;
    SET @p1_injured =0;
    SET @p1_killed =0;
    SET @r1_troops =0;
    SET @r1_injured =0;
    SET @r1_killed =0;
    SET @p2_troops =0;
    SET @p2_injured =0;
    SET @p2_killed =0;
    SET @r2_troops =0;
    SET @r2_injured =0;
    SET @r2_killed =0;
    SET @p1_hero_xp_gain =0;
    SET @p2_hero_xp_gain =0;
    SET @r1 =10;
    SET @r2 =10;
    SET @r3 =10;
    SET @r4 =10;
    SET @r5 =10;
    SET @victory =1;
END
--END TUTORIAL HARDCODE


--REPORT This is only set for testing purposes to output report for the Battle Sim app.
IF @report_test = 1
BEGIN
    DECLARE @report_type int = 11
    IF @is_capture = 1
    BEGIN
        SET @report_type = 61;
    END
    DECLARE @attack_id bigint = 1

    DECLARE @p1_base_id bigint = 1;
    DECLARE @p2_base_id bigint = 2;
    DECLARE @p1_profile_id bigint = 1;
    DECLARE @p2_profile_id bigint = 2;

    DECLARE @p1_hero int = 1;
    DECLARE @p1_name nvarchar(50) = 'THE ATTACKER';
    DECLARE @p2_name nvarchar(50) = 'THE VICTIM';

    DECLARE @p1_face int = 1;
    DECLARE @p2_face int = 2;

    DECLARE @p1_rank int = 1;
    DECLARE @p2_rank int = 2;

    DECLARE @p1_tag nvarchar(3) = 'AAA';
    DECLARE @p2_tag nvarchar(3) = 'BBB';
    DECLARE @p1_hero_name nvarchar(50) = 'BATMAN';
    DECLARE @p2_hero_name nvarchar(50) = 'SUPERMAN';

    DECLARE @p1_hero_xp bigint = 1000;
    DECLARE @p2_hero_xp bigint = 1100;

    DECLARE @p1_base_name nvarchar(50) = 'Penang';
    DECLARE @p2_base_name nvarchar(50) = 'Ipoh';

    DECLARE @p1_x bigint = 10;
    DECLARE @p2_x bigint = 20;
    DECLARE @p1_y bigint = 10;
    DECLARE @p2_y bigint = 20;

    DECLARE @i1_a1 int = 0;
    DECLARE @i1_b1 int = 0;
    DECLARE @i1_c1 int = 0;
    DECLARE @i1_d1 int = 0;
    DECLARE @i1_a2 int = 0;
    DECLARE @i1_b2 int = 0;
    DECLARE @i1_c2 int = 0;
    DECLARE @i1_d2 int = 0;
    DECLARE @i1_a3 int = 0;
    DECLARE @i1_b3 int = 0;
    DECLARE @i1_c3 int = 0;
    DECLARE @i1_d3 int = 0;




    --ISNULL ( check_expression , replacement_value )
    --create new report so can be viewed inside the game

    INSERT INTO report (date_posted, date_arrive, profile1_id, profile2_id, profile1_base_id, profile2_base_id, report_type, victory, row_id, open_read, profile1_name, profile2_name, profile1_face, profile2_face, profile1_rank, profile2_rank, profile1_tag, profile2_tag, profile1_hero_name, profile2_hero_name, profile1_hero_xp, profile2_hero_xp, profile1_hero_xp_gain, profile2_hero_xp_gain, profile1_base_name, profile2_base_name, profile1_x, profile2_x, profile1_y, profile2_y, r1, r2, r3, r4, r5, 
    profile1_troops, profile1_injured, profile1_killed,
    profile1_r_troops, profile1_r_injured, profile1_r_killed, 
    profile2_troops, profile2_injured, profile2_killed,
    profile2_r_troops, profile2_r_injured, profile2_r_killed,
    p1_a1, p1_b1, p1_c1, p1_d1, p1_a2, p1_b2, p1_c2, p1_d2, p1_a3, p1_b3, p1_c3, p1_d3,  
    p2_a1, p2_b1, p2_c1, p2_d1, p2_a2, p2_b2, p2_c2, p2_d2, p2_a3, p2_b3, p2_c3, p2_d3,
    r2_a1, r2_a2, r2_a3, r2_b1, r2_b2, r2_b3, r2_c1, r2_c2, r2_c3, r2_d1, r2_d2, r2_d3, 
    i1_a1, i1_a2, i1_a3, i1_b1, i1_b2, i1_b3, i1_c1, i1_c2, i1_c3, i1_d1, i1_d2, i1_d3, 
    k1_a1, k1_a2, k1_a3, k1_b1, k1_b2, k1_b3, k1_c1, k1_c2, k1_c3, k1_d1, k1_d2, k1_d3, 
    i2_a1, i2_a2, i2_a3, i2_b1, i2_b2, i2_b3, i2_c1, i2_c2, i2_c3, i2_d1, i2_d2, i2_d3, 
    k2_a1, k2_a2, k2_a3, k2_b1, k2_b2, k2_b3, k2_c1, k2_c2, k2_c3, k2_d1, k2_d2, k2_d3,
    rk2_a1, rk2_a2, rk2_a3, rk2_b1, rk2_b2, rk2_b3, rk2_c1, rk2_c2, rk2_c3, rk2_d1, rk2_d2, rk2_d3)  
    VALUES (GETUTCDATE(), GETUTCDATE(), @p1_profile_id, @p2_profile_id, @p1_base_id, @p2_base_id, @report_type, CAST(@victory AS int), @attack_id, 0, @p1_name, @p2_name, @p1_face, @p2_face, @p1_rank, @p2_rank, @p1_tag, @p2_tag, @p1_hero_name, @p2_hero_name, @p1_hero_xp, @p2_hero_xp, CAST(@p1_hero_xp_gain AS int), CAST(@p2_hero_xp_gain AS int), @p1_base_name, @p2_base_name, @p1_x, @p2_x, @p1_y, @p2_y, CAST(@r1 AS int), CAST(@r2 AS int), CAST(@r3 AS int), CAST(@r4 AS int), CAST(@r5 AS int), 
    CAST(@p1_troops AS int), CAST(@p1_injured AS int), CAST(@p1_killed AS int),
    CAST(@r1_troops AS int), CAST(@r1_injured AS int), CAST(@r1_killed AS int), 
    CAST(@p2_troops AS int), CAST(@p2_injured AS int), CAST(@p2_killed AS int), 
    CAST(@r2_troops AS int), CAST(@r2_injured AS int), CAST(@r2_killed AS int),
    CAST(@p1_a1 AS int), CAST(@p1_b1 AS int), CAST(@p1_c1 AS int), CAST(@p1_d1 AS int), CAST(@p1_a2 AS int), CAST(@p1_b2 AS int), CAST(@p1_c2 AS int), CAST(@p1_d2 AS int), CAST(@p1_a3 AS int), CAST(@p1_b3 AS int), CAST(@p1_c3 AS int), CAST(@p1_d3 AS int), 
    CAST(@p2_a1 AS int), CAST(@p2_b1 AS int), CAST(@p2_c1 AS int), CAST(@p2_d1 AS int), CAST(@p2_a2 AS int), CAST(@p2_b2 AS int), CAST(@p2_c2 AS int), CAST(@p2_d2 AS int), CAST(@p2_a3 AS int), CAST(@p2_b3 AS int), CAST(@p2_c3 AS int), CAST(@p2_d3 AS int), 
    CAST(@r2_a1 AS int), CAST(@r2_a2 AS int), CAST(@r2_a3 AS int), CAST(@r2_b1 AS int), CAST(@r2_b2 AS int), CAST(@r2_b3 AS int), CAST(@r2_c1 AS int), CAST(@r2_c2 AS int), CAST(@r2_c3 AS int), CAST(@r2_d1 AS int), CAST(@r2_d2 AS int), CAST(@r2_d3 AS int), 
    CAST(@i1_a1 AS int), CAST(@i1_a2 AS int), CAST(@i1_a3 AS int), CAST(@i1_b1 AS int), CAST(@i1_b2 AS int), CAST(@i1_b3 AS int), CAST(@i1_c1 AS int), CAST(@i1_c2 AS int), CAST(@i1_c3 AS int), CAST(@i1_d1 AS int), CAST(@i1_d2 AS int), CAST(@i1_d3 AS int), 
    CAST(@k1_a1 AS int), CAST(@k1_a2 AS int), CAST(@k1_a3 AS int), CAST(@k1_b1 AS int), CAST(@k1_b2 AS int), CAST(@k1_b3 AS int), CAST(@k1_c1 AS int), CAST(@k1_c2 AS int), CAST(@k1_c3 AS int), CAST(@k1_d1 AS int), CAST(@k1_d2 AS int), CAST(@k1_d3 AS int), 
    CAST(@i2_a1 AS int), CAST(@i2_a2 AS int), CAST(@i2_a3 AS int), CAST(@i2_b1 AS int), CAST(@i2_b2 AS int), CAST(@i2_b3 AS int), CAST(@i2_c1 AS int), CAST(@i2_c2 AS int), CAST(@i2_c3 AS int), CAST(@i2_d1 AS int), CAST(@i2_d2 AS int), CAST(@i2_d3 AS int), 
    CAST(@k2_a1 AS int), CAST(@k2_a2 AS int), CAST(@k2_a3 AS int), CAST(@k2_b1 AS int), CAST(@k2_b2 AS int), CAST(@k2_b3 AS int), CAST(@k2_c1 AS int), CAST(@k2_c2 AS int), CAST(@k2_c3 AS int), CAST(@k2_d1 AS int), CAST(@k2_d2 AS int), CAST(@k2_d3 AS int), 
    CAST(@rk2_a1 AS int), CAST(@rk2_a2 AS int), CAST(@rk2_a3 AS int), CAST(@rk2_b1 AS int), CAST(@rk2_b2 AS int), CAST(@rk2_b3 AS int), CAST(@rk2_c1 AS int), CAST(@rk2_c2 AS int), CAST(@rk2_c3 AS int), CAST(@rk2_d1 AS int), CAST(@rk2_d2 AS int), CAST(@rk2_d3 AS int));
END
--END REPORT

END
GO
/****** Object:  StoredProcedure [dbo].[usp_AttackPve]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[usp_AttackPve]
	(@tutorial_step int, @report_test int, @is_capture int, @p1_profile_id bigint, @p1_base_id bigint, @village_id int,
	@village_level int, @attacked_hours_ago int, @army_type int, @resources_type int,
	@p1_research_life float, @p1_hero_life float, @p1_item_attack float, @p1_research_attack float, @p1_research_a_attack float,
	@p1_research_b_attack float, @p1_research_c_attack float, @p1_research_d_attack float, @p1_hero_attack float, @p1_hero_a_attack float,
	@p1_hero_b_attack float, @p1_hero_c_attack float, @p1_hero_d_attack float,
	@p1_a1 int, @p1_b1 int, @p1_c1 int, @p1_d1 int, @p1_a2 int, @p1_b2 int, @p1_c2 int, @p1_d2 int, @p1_a3 int, @p1_b3 int, @p1_c3 int, @p1_d3 int,
	@march_time int, @job_time int)
	AS
	BEGIN
    
    exec usp_BaseUpdate @p1_base_id
    
	DECLARE @victory int = 0, @report_type int = 10;

	IF @is_capture = 1
	BEGIN
		SET @report_type = 60;
	END

	DECLARE @p1_name nvarchar(50), @p2_name nvarchar(50), @p1_face int, @p2_face int, @p1_rank int, @p2_rank int
	DECLARE @p1_tag nvarchar(3), @p2_tag nvarchar(3), @p1_hero_name nvarchar(50), @p2_hero_name nvarchar(50), @p1_hero_xp int, @p2_hero_xp int
	DECLARE @p1_base nvarchar(50), @p2_base nvarchar(50), @p1_x int, @p2_x int, @p1_y int, @p2_y int

	--Resources gained after an attack (r1 is food, r2 is wood, r3 is stone, r4 is iron, r5 is gold)
	DECLARE @r1 int = 0, @r2 int = 0, @r3 int = 0, @r4 int = 0, @r5 int = 0;

	--Troops Injured (i1 prefix is profile1 injured and i2 prefix is profile2 injured)
	DECLARE @i1_a1 int = 0, @i1_b1 int = 0, @i1_c1 int = 0, @i1_d1 int = 0, @i1_a2 int = 0, @i1_b2 int = 0, @i1_c2 int = 0, @i1_d2 int = 0, @i1_a3 int = 0, @i1_b3 int = 0, @i1_c3 int = 0, @i1_d3 int = 0;
	DECLARE @i2_a1 int = 0, @i2_b1 int = 0, @i2_c1 int = 0, @i2_d1 int = 0, @i2_a2 int = 0, @i2_b2 int = 0, @i2_c2 int = 0, @i2_d2 int = 0, @i2_a3 int = 0, @i2_b3 int = 0, @i2_c3 int = 0, @i2_d3 int = 0;

	--Troops Killed (k1 prefix is profile1 killed and k2 prefix is profile2 killed)
	DECLARE @k1_a1 int = 0, @k1_b1 int = 0, @k1_c1 int = 0, @k1_d1 int = 0, @k1_a2 int = 0, @k1_b2 int = 0, @k1_c2 int = 0, @k1_d2 int = 0, @k1_a3 int = 0, @k1_b3 int = 0, @k1_c3 int = 0, @k1_d3 int = 0;
	DECLARE @k2_a1 int = 0, @k2_b1 int = 0, @k2_c1 int = 0, @k2_d1 int = 0, @k2_a2 int = 0, @k2_b2 int = 0, @k2_c2 int = 0, @k2_d2 int = 0, @k2_a3 int = 0, @k2_b3 int = 0, @k2_c3 int = 0, @k2_d3 int = 0;
	--Troops Killed for alliance reinforcements to profile 2
	DECLARE @rk2_a1 int = 0, @rk2_b1 int = 0, @rk2_c1 int = 0, @rk2_d1 int = 0, @rk2_a2 int = 0, @rk2_b2 int = 0, @rk2_c2 int = 0, @rk2_d2 int = 0, @rk2_a3 int = 0, @rk2_b3 int = 0, @rk2_c3 int = 0, @rk2_d3 int = 0;

	--Total troops, injured, killed on both sides
	DECLARE @p1_troops int = 0,  @p1_injured int = 0, @p1_killed int = 0,
	@r1_troops int = 0,  @r1_injured int = 0, @r1_killed int = 0,
	@p2_troops int = 0,  @p2_injured int = 0, @p2_killed int = 0,
	@r2_troops int = 0,  @r2_injured int = 0, @r2_killed int = 0,
	@p1_hero_xp_gain int = 0, @p2_hero_xp_gain int = 0;

	--Profile 2 resources
	DECLARE @p2_r1 int = 0, @p2_r2 int = 0, @p2_r3 int = 0, @p2_r4 int = 0, @p2_r5 int = 0;
	--Profile 2 troops
	DECLARE @p2_a1 int = 0, @p2_b1 int = 0, @p2_c1 int = 0, @p2_d1 int = 0, @p2_a2 int = 0, @p2_b2 int = 0, @p2_c2 int = 0, @p2_d2 int = 0, @p2_a3 int = 0, @p2_b3 int = 0, @p2_c3 int = 0, @p2_d3 int = 0;
	--Profile 2 injurured troops
	DECLARE @p2_i_a1 int = 0, @p2_i_b1 int = 0, @p2_i_c1 int = 0, @p2_i_d1 int = 0, @p2_i_a2 int = 0, @p2_i_b2 int = 0, @p2_i_c2 int = 0, @p2_i_d2 int = 0, @p2_i_a3 int = 0, @p2_i_b3 int = 0, @p2_i_c3 int = 0, @p2_i_d3 int = 0;
	--Profile 2 reinforcing troops
	DECLARE @p2_r_a1 int = 0, @p2_r_b1 int = 0, @p2_r_c1 int = 0, @p2_r_d1 int = 0, @p2_r_a2 int = 0, @p2_r_b2 int = 0, @p2_r_c2 int = 0, @p2_r_d2 int = 0, @p2_r_a3 int = 0, @p2_r_b3 int = 0, @p2_r_c3 int = 0, @p2_r_d3 int = 0;

	DECLARE @p2_item_defense float = 0, @p2_research_defense float = 0, @p2_research_life float = 0;

	--Profile 2 alliance reinforcement troops
	DECLARE @r2_a1 int = 0, @r2_b1 int = 0, @r2_c1 int = 0, @r2_d1 int = 0, @r2_a2 int = 0, @r2_b2 int = 0, @r2_c2 int = 0, @r2_d2 int = 0, @r2_a3 int = 0, @r2_b3 int = 0, @r2_c3 int = 0, @r2_d3 int = 0;

	DECLARE @p2_wall int = 1;

	-- Loot Calculation (storehouse buildingid = 11)
	DECLARE @p1_loot_multiplier float= 0;
	DECLARE @p1_load_research_level int = 1;
	SELECT @p1_load_research_level=research_load
	FROM base WHERE base_id=@p1_base_id;

	SET @p1_loot_multiplier = 1+(@p1_load_research_level * 0.01);

	--Hero stats for defense and life
	DECLARE @p2_hero_defense float = 0, @p2_hero_life float = 0;


	DECLARE @dt_sent datetime, @dt_arrive datetime, @dt_return datetime, @return_time int

	--SET @job_time = 30;
	SET @dt_sent = GETUTCDATE();
	SET @dt_arrive = DATEADD(ss, @march_time, @dt_sent);
	SET @return_time = @job_time + @march_time;
	SET @dt_return = DATEADD(ss, @return_time, @dt_arrive);
	--SET @dt_return = DATEADD(ss, -1, @dt_sent); --NO RETURN MARCH

	SET @p1_name = (SELECT profile_name FROM [profile] WHERE profile_id=@p1_profile_id);
	SET @p1_face = ISNULL((SELECT profile_face FROM [profile] WHERE profile_id=@p1_profile_id), 0);
	SET @p1_rank = ISNULL((SELECT alliance_rank FROM [profile] WHERE profile_id=@p1_profile_id), 0);
	SET @p1_base = (SELECT base_name FROM base WHERE base_id=@p1_base_id);
	SET @p1_x = ISNULL((SELECT map_x FROM base WHERE base_id=@p1_base_id), 0);
	SET @p1_y = ISNULL((SELECT map_y FROM base WHERE base_id=@p1_base_id), 0);
	SELECT @p1_tag=alliance_tag, @p1_hero_name=hero_name, @p1_hero_xp=hero_xp FROM View_Profile WHERE profile_id=@p1_profile_id;

	--NPC default values
	SET @p2_name = 'Barbarian Leader';
	SET @p2_face = 998;
	SET @p2_rank = 0;
	SET @p2_base = 'Barbarian Village';
	SET @p2_tag = '';
	SET @p2_hero_name = '';
	SET @p2_hero_xp = 0;

	-- army_type = 1 : infantry , army_type = 2 : archer  , army_type = 3 : calvary  , army_type = 4 : balanced;
	-- resources_type = 1 : food, resources_type = 2 : wood, resources_type = 3 : stone, resources_type = 4 : iron , resources_type = 5 : gold , resources_type = 6 : balanced;
	
    DECLARE @village_last_attacked datetime = GETUTCDATE(); 
    DECLARE @village_last_attacked_seconds float =0; 
    DECLARE @village_resource_refresh_rate float =0; 
    DECLARE @village_resource_rate float =1; 
    DECLARE @village_attack_time datetime=  GETUTCDATE(); 
    
    SELECT @village_resource_refresh_rate=village_resource_refresh_rate
    FROM settings
    WHERE settings_id=1
    
    DECLARE @village_resource_refresh_rate_AS_STRING varchar(30) = CAST(@village_resource_refresh_rate AS VARCHAR);
	RAISERROR ('@village_resource_refresh_rate : %s', 10,-1, @village_resource_refresh_rate_AS_STRING) with nowait;

	IF(@village_id > 0)
	BEGIN
		SELECT @village_level = ISNULL(village_level,1) , @army_type = ISNULL(army_type,4) , @resources_type = ISNULL(resources_type,6), @village_last_attacked = ISNULL(last_attacked,GETUTCDATE())
		FROM village WHERE village_id = @village_id;
	END
	ELSE
	BEGIN
		SET @village_level = 1;
		SET @army_type = 4;
		SET @resources_type = 6;
        SET @village_last_attacked = DATEADD(ss,-180,GETUTCDATE());
	END
	
    --TUTORIAL HARDCODE
    IF(@tutorial_step=35)
    BEGIN
        SET @village_level = 1;
		SET @army_type = 4;
		SET @resources_type = 6;
        SET @village_last_attacked = DATEADD(ss,-180,GETUTCDATE());
    END
    ELSE IF(@tutorial_step=61)
    BEGIN
        SET @village_level = 1;
		SET @army_type = 4;
		SET @resources_type = 6;
        SET @village_last_attacked = DATEADD(ss,-180,GETUTCDATE());
    END
    --END TUTORIAL HARDCODE
    
    DECLARE @village_last_attacked_AS_STRING varchar(30) = CAST(@village_last_attacked AS VARCHAR);
	RAISERROR ('@village_last_attacked : %s', 10,-1, @village_last_attacked_AS_STRING) with nowait;
    
    DECLARE @village_attacked_AS_STRING varchar(30) = CAST(GETUTCDATE() AS VARCHAR);
	RAISERROR ('village_attacked : %s', 10,-1, @village_attacked_AS_STRING) with nowait;
    
    SET @village_attack_time=DATEADD(ss,@march_time,@village_attack_time)
    
	SET @village_last_attacked_seconds = DATEDIFF(ss,@village_last_attacked,@village_attack_time);
    
    DECLARE @village_last_attacked_seconds_AS_STRING varchar(30) = CAST(@village_last_attacked_seconds AS VARCHAR);
	RAISERROR ('@village_last_attacked_seconds : %s', 10,-1, @village_last_attacked_seconds_AS_STRING) with nowait;
    
    SET @village_resource_rate = @village_last_attacked_seconds/@village_resource_refresh_rate;
    IF(@village_resource_rate>1)
    BEGIN
        SET @village_resource_rate=1;
    END
    
    DECLARE @village_resource_rate_AS_STRING varchar(30) = CAST(@village_resource_rate AS VARCHAR);
	RAISERROR ('@village_resource_rate : %s', 10,-1, @village_resource_rate_AS_STRING) with nowait;
    
	DECLARE @resource_level_multiplier float = 50000;

	DECLARE @r1_available int = 0;
	DECLARE @r2_available int = 0;
	DECLARE @r3_available int = 0;
	DECLARE @r4_available int = 0;
	DECLARE @r5_available int = 0;

	--Resource formula for Barbarian

    /*
	DECLARE @random_seed int = dbo.fx_generateRandomNumber(newID(), 0, 25);
	DECLARE @random_resource_adjustment_multiplier float = 1+ (@random_seed * 0.01);

	IF (@resources_type = 1)
	BEGIN
		IF(@attacked_hours_ago>=4)
			BEGIN
				SET @r1_available = @resource_level_multiplier * @village_level;
			END
		ELSE IF(@attacked_hours_ago>0)
			BEGIN
				SET @r1_available = (@resource_level_multiplier * @village_level) * (@attacked_hours_ago*0.25);
			END
		ELSE
			BEGIN
				SET @r1_available = @resource_level_multiplier * @village_level;
			END
	END
	ELSE IF(@resources_type = 2)
	BEGIN
		IF(@attacked_hours_ago>=4)
			BEGIN
				SET @r2_available = @resource_level_multiplier * @village_level;
			END
		ELSE IF(@attacked_hours_ago>0)
			BEGIN
				SET @r2_available = (@resource_level_multiplier * @village_level) * (@attacked_hours_ago*0.25);
			END
		ELSE
			BEGIN
				SET @r2_available = @resource_level_multiplier * @village_level;
			END
	END
	ELSE IF(@resources_type = 3)
	BEGIN
		IF(@attacked_hours_ago>=4)
			BEGIN
				SET @r3_available = @resource_level_multiplier * @village_level;
			END
		ELSE IF(@attacked_hours_ago>0)
			BEGIN
				SET @r3_available = (@resource_level_multiplier * @village_level) * (@attacked_hours_ago*0.25);
			END
		ELSE
			BEGIN
				SET @r3_available = @resource_level_multiplier * @village_level;
			END
	END
	ELSE IF(@resources_type = 4)
	BEGIN
		IF(@attacked_hours_ago>=4)
			BEGIN
				SET @r4_available = @resource_level_multiplier * @village_level;
			END
		ELSE IF(@attacked_hours_ago>0)
			BEGIN
				SET @r4_available = (@resource_level_multiplier * @village_level) * (@attacked_hours_ago*0.25);
			END
		ELSE
			BEGIN
				SET @r4_available = @resource_level_multiplier * @village_level;
			END
	END
	ELSE IF(@resources_type = 5)
	BEGIN
		IF(@attacked_hours_ago>=4)
			BEGIN
				SET @r5_available = @resource_level_multiplier * @village_level;
			END
		ELSE IF(@attacked_hours_ago>0)
			BEGIN
				SET @r5_available = (@resource_level_multiplier * @village_level) * (@attacked_hours_ago*0.25);
			END
		ELSE
			BEGIN
				SET @r5_available = @resource_level_multiplier * @village_level;
			END
	END
	ELSE IF(@resources_type = 6)
	BEGIN
		IF(@attacked_hours_ago>=4)
			BEGIN
				SET @r1_available = @resource_level_multiplier * @village_level * 0.2;
				SET @r2_available = @resource_level_multiplier * @village_level * 0.2;
				SET @r3_available = @resource_level_multiplier * @village_level * 0.2;
				SET @r4_available = @resource_level_multiplier * @village_level * 0.2;
				SET @r5_available = @resource_level_multiplier * @village_level * 0.2;
			END
		ELSE IF(@attacked_hours_ago>0)
			BEGIN
				SET @r1_available = @resource_level_multiplier * @village_level * 0.2 * (@attacked_hours_ago*0.25);
				SET @r2_available = @resource_level_multiplier * @village_level * 0.2 * (@attacked_hours_ago*0.25);
				SET @r3_available = @resource_level_multiplier * @village_level * 0.2 * (@attacked_hours_ago*0.25);
				SET @r4_available = @resource_level_multiplier * @village_level * 0.2 * (@attacked_hours_ago*0.25);
				SET @r5_available = @resource_level_multiplier * @village_level * 0.2 * (@attacked_hours_ago*0.25);
			END
		ELSE
			BEGIN
				SET @r1_available = @resource_level_multiplier * @village_level * 0.2;
				SET @r2_available = @resource_level_multiplier * @village_level * 0.2;
				SET @r3_available = @resource_level_multiplier * @village_level * 0.2;
				SET @r4_available = @resource_level_multiplier * @village_level * 0.2;
				SET @r5_available = @resource_level_multiplier * @village_level * 0.2;
			END
	END
    */
    
    IF (@resources_type = 1)
	BEGIN
		SET @r1_available = @resource_level_multiplier * @village_level*@village_resource_rate;
	END
	ELSE IF(@resources_type = 2)
	BEGIN
		SET @r2_available = @resource_level_multiplier * @village_level*@village_resource_rate;
	END
	ELSE IF(@resources_type = 3)
	BEGIN
		SET @r3_available = @resource_level_multiplier * @village_level*@village_resource_rate;
	END
	ELSE IF(@resources_type = 4)
	BEGIN
		SET @r4_available = @resource_level_multiplier * @village_level*@village_resource_rate;
	END
	ELSE IF(@resources_type = 5)
	BEGIN
		SET @r5_available = @resource_level_multiplier * @village_level*@village_resource_rate;
	END
	ELSE IF(@resources_type = 6)
	BEGIN
		SET @r1_available = @resource_level_multiplier * @village_level * 0.2*@village_resource_rate;
        SET @r2_available = @resource_level_multiplier * @village_level * 0.2*@village_resource_rate;
        SET @r3_available = @resource_level_multiplier * @village_level * 0.2*@village_resource_rate;
        SET @r4_available = @resource_level_multiplier * @village_level * 0.2*@village_resource_rate;
        SET @r5_available = @resource_level_multiplier * @village_level * 0.2*@village_resource_rate;
    END       
            
    IF (@army_type = 1)
	BEGIN
		SET @p2_a1 = 100 * @village_level * @village_level ;
		SET @p2_a2 =
				CASE WHEN (@village_level/3 -1) > 0
				THEN (@village_level/3 -1) * 100 * @village_level
				ELSE 0
				END;
		SET @p2_a3 =
				CASE WHEN (@village_level/7 -1) > 0
				THEN (@village_level/7 -1) * 100 * @village_level
				ELSE 0
				END;
	END
	ELSE IF (@army_type = 2)
	BEGIN
		SET @p2_b1 = 100 * @village_level * @village_level;
		SET @p2_b2 =
				CASE WHEN (@village_level/3 -1) > 0
				THEN (@village_level/3 -1) * 100 * @village_level
				ELSE 0
				END;
		SET @p2_b3 =
				CASE WHEN (@village_level/7 -1) > 0
				THEN (@village_level/7 -1) * 100 * @village_level
				ELSE 0
				END;
	END
	ELSE IF (@army_type = 3)
	BEGIN
		SET @p2_c1 = 100 * @village_level * @village_level;
		SET @p2_c2 =
				CASE WHEN (@village_level/3 -1) > 0
				THEN (@village_level/3 -1) * 100 * @village_level
				ELSE 0
				END;
		SET @p2_c3 =
				CASE WHEN (@village_level/7 -1) > 0
				THEN (@village_level/7 -1) * 100 * @village_level
				ELSE 0
				END;
	END
	ELSE IF (@army_type = 4)
	BEGIN
		SET @p2_a1 = 30 * @village_level;
		SET @p2_a2 =
				CASE WHEN (@village_level/3 -1) > 0
				THEN (@village_level/3 -1) * 30
				ELSE 0
				END;
		SET @p2_a3 =
				CASE WHEN (@village_level/7 -1) > 0
				THEN (@village_level/7 -1) * 30
				ELSE 0
				END;

		SET @p2_b1 = 30 * @village_level;
		SET @p2_b2 =
				CASE WHEN (@village_level/3 -1) > 0
				THEN (@village_level/3 -1) * 30
				ELSE 0
				END;
		SET @p2_b3 =
				CASE WHEN (@village_level/7 -1) > 0
				THEN (@village_level/7 -1) * 30
				ELSE 0
				END;

		SET @p2_c1 = 30 * @village_level;
		SET @p2_c2 =
				CASE WHEN (@village_level/3 -1) > 0
				THEN (@village_level/3 -1) * 30
				ELSE 0
				END;
		SET @p2_c3 =
				CASE WHEN (@village_level/7 -1) > 0
				THEN (@village_level/7 -1) * 30
				ELSE 0
				END;
	END

	DECLARE @village_id_AS_STRING varchar(30) = CAST(@village_id AS VARCHAR);
	RAISERROR ('@village_id : %s', 10,-1, @village_id_AS_STRING) with nowait;

	DECLARE @village_level_AS_STRING varchar(30) = CAST(@village_level AS VARCHAR);
	RAISERROR ('@village_level : %s', 10,-1, @village_level_AS_STRING) with nowait;

	DECLARE @resources_type_AS_STRING varchar(30) = CAST(@resources_type AS VARCHAR);
	RAISERROR ('@resources_type : %s', 10,-1, @resources_type_AS_STRING) with nowait;

	DECLARE @army_type_AS_STRING varchar(30) = CAST(@army_type AS VARCHAR);
	RAISERROR ('@army_type : %s', 10,-1, @army_type_AS_STRING) with nowait;
    
    /* 
	DECLARE @attacked_hours_ago_AS_STRING varchar(30) = CAST(@attacked_hours_ago AS VARCHAR);
	RAISERROR ('@attacked_hours_ago : %s', 10,-1, @attacked_hours_ago_AS_STRING) with nowait;
    */
    
    
	SET @p2_x = ISNULL((SELECT map_x FROM village WHERE village_id=@village_id), 0);
	SET @p2_y = ISNULL((SELECT map_y FROM village WHERE village_id=@village_id), 0);

	DECLARE @r1_available_AS_STRING varchar(30) = CAST(@r1_available AS VARCHAR);
	RAISERROR ('@barbarian_r1_available : %s', 10,-1, @r1_available_AS_STRING) with nowait;
	DECLARE @r2_available_AS_STRING varchar(30) = CAST(@r2_available AS VARCHAR);
	RAISERROR ('@barbarian_r2_available : %s', 10,-1, @r2_available_AS_STRING) with nowait;
	DECLARE @r3_available_AS_STRING varchar(30) = CAST(@r3_available AS VARCHAR);
	RAISERROR ('@barbarian_r3_available : %s', 10,-1, @r3_available_AS_STRING) with nowait;
	DECLARE @r4_available_AS_STRING varchar(30) = CAST(@r3_available AS VARCHAR);
	RAISERROR ('@barbarian_r4_available : %s', 10,-1, @r4_available_AS_STRING) with nowait;
	DECLARE @r5_available_AS_STRING varchar(30) = CAST(@r5_available AS VARCHAR);
	RAISERROR ('@barbarian_r5_available : %s', 10,-1, @r5_available_AS_STRING) with nowait;

	DECLARE @p2_a1_AS_STRING varchar(30) = CAST(@p2_a1 AS VARCHAR);
	RAISERROR ('@barbarian_p2_a1 : %s', 10,-1, @p2_a1_AS_STRING) with nowait;
	DECLARE @p2_a2_AS_STRING varchar(30) = CAST(@p2_a2 AS VARCHAR);
	RAISERROR ('@barbarian_p2_a2 : %s', 10,-1, @p2_a2_AS_STRING) with nowait;
	DECLARE @p2_a3_AS_STRING varchar(30) = CAST(@p2_a3 AS VARCHAR);
	RAISERROR ('@barbarian_p2_a3 : %s', 10,-1, @p2_a3_AS_STRING) with nowait;

	DECLARE @p2_b1_AS_STRING varchar(30) = CAST(@p2_b1 AS VARCHAR);
	RAISERROR ('@barbarian_p2_b1 : %s', 10,-1, @p2_b1_AS_STRING) with nowait;
	DECLARE @p2_b2_AS_STRING varchar(30) = CAST(@p2_b2 AS VARCHAR);
	RAISERROR ('@barbarian_p2_b2 : %s', 10,-1, @p2_b2_AS_STRING) with nowait;
	DECLARE @p2_b3_AS_STRING varchar(30) = CAST(@p2_b3 AS VARCHAR);
	RAISERROR ('@barbarian_p2_b3 : %s', 10,-1, @p2_b3_AS_STRING) with nowait;

	DECLARE @p2_c1_AS_STRING varchar(30) = CAST(@p2_c1 AS VARCHAR);
	RAISERROR ('@barbarian_p2_c1 : %s', 10,-1, @p2_c1_AS_STRING) with nowait;
	DECLARE @p2_c2_AS_STRING varchar(30) = CAST(@p2_c2 AS VARCHAR);
	RAISERROR ('@barbarian_p2_c2 : %s', 10,-1, @p2_c2_AS_STRING) with nowait;
	DECLARE @p2_c3_AS_STRING varchar(30) = CAST(@p2_c3 AS VARCHAR);
	RAISERROR ('@barbarian_p2_c3 : %s', 10,-1, @p2_c3_AS_STRING) with nowait;


    --TUTORIAL HARDCODE
    IF(@tutorial_step=35)
    BEGIN
       SET @r1_available = 100;
       SET @r2_available = 100;
       SET @r3_available = 100;
       SET @r4_available = 100;
       SET @r5_available = 100;
       SET @p1_a1 = 3;
       SET @p1_b1 = 0;
       SET @p1_c1 = 0;
       SET @p1_d1 = 0;
       SET @p1_a2 = 0;
       SET @p1_b2 = 0;
       SET @p1_c2 = 0;
       SET @p1_d2 = 0;
       SET @p1_a3 = 0;
       SET @p1_b3 = 0;
       SET @p1_c3 = 0;
       SET @p1_d3 = 0;
       SET @p2_a1 = 0;
       SET @p2_b1 = 0;
       SET @p2_c1 = 0;
       SET @p2_d1 = 0;
       SET @p2_a2 = 0;
       SET @p2_b2 = 0;
       SET @p2_c2 = 0;
       SET @p2_d2 = 0;
       SET @p2_a3 = 0;
       SET @p2_b3 = 0;
       SET @p2_c3 = 0;
       SET @p2_d3 = 0;
    END
    ELSE IF(@tutorial_step=62)
    BEGIN
       SET @r1_available = 500;
       SET @r2_available = 500;
       SET @r3_available = 500;
       SET @r4_available = 500;
       SET @r5_available = 500;
       SET @p1_a1 = 3;
       SET @p1_b1 = 0;
       SET @p1_c1 = 0;
       SET @p1_d1 = 0;
       SET @p1_a2 = 0;
       SET @p1_b2 = 0;
       SET @p1_c2 = 0;
       SET @p1_d2 = 0;
       SET @p1_a3 = 0;
       SET @p1_b3 = 0;
       SET @p1_c3 = 0;
       SET @p1_d3 = 0;
       SET @p2_a1 = 0;
       SET @p2_b1 = 0;
       SET @p2_c1 = 0;
       SET @p2_d1 = 0;
       SET @p2_a2 = 0;
       SET @p2_b2 = 0;
       SET @p2_c2 = 0;
       SET @p2_d2 = 0;
       SET @p2_a3 = 0;
       SET @p2_b3 = 0;
       SET @p2_c3 = 0;
       SET @p2_d3 = 0;
    END
    --END TUTORIAL HARDCODE
    
	--Invoke usp_AttackFormula

	SET @report_test = 0;

	EXECUTE usp_AttackFormula
	@tutorial_step,@report_test, @is_capture, 1,0, @p1_research_life, @p1_hero_life, @p1_item_attack, @p1_research_attack, @p1_research_a_attack, @p1_research_b_attack, @p1_research_c_attack, @p1_research_d_attack,
	@p1_hero_attack, @p1_hero_a_attack, @p1_hero_b_attack, @p1_hero_c_attack, @p1_hero_d_attack,
	@p1_a1, @p1_b1, @p1_c1, @p1_d1, @p1_a2, @p1_b2, @p1_c2, @p1_d2, @p1_a3, @p1_b3, @p1_c3, @p1_d3,
	@p2_research_life, @p2_hero_life, @p2_item_defense, @p2_research_defense, @p2_hero_defense, @p2_wall, 0, 0,
	@p2_a1, @p2_b1, @p2_c1, @p2_d1, @p2_a2, @p2_b2, @p2_c2, @p2_d2, @p2_a3, @p2_b3, @p2_c3, @p2_d3,
	@r2_a1, @r2_b1, @r2_c1, @r2_d1, @r2_a2, @r2_b2, @r2_c2, @r2_d2, @r2_a3, @r2_b3, @r2_c3, @r2_d3,
	@k1_a1 = @k1_a1 Output, @k1_b1 = @k1_b1 Output, @k1_c1 = @k1_c1 Output, @k1_d1 = @k1_d1 Output, @k1_a2 = @k1_a2 Output, @k1_b2 = @k1_b2 Output, @k1_c2 = @k1_c2 Output, @k1_d2 = @k1_d2 Output, @k1_a3 = @k1_a3 Output, @k1_b3 = @k1_b3 Output, @k1_c3 = @k1_c3 Output, @k1_d3 = @k1_d3 Output,
	@k2_a1 = @k2_a1 Output, @k2_b1 = @k2_b1 Output, @k2_c1 = @k2_c1 Output, @k2_d1 = @k2_d1 Output, @k2_a2 = @k2_a2 Output, @k2_b2 = @k2_b2 Output, @k2_c2 = @k2_c2 Output, @k2_d2 = @k2_d2 Output, @k2_a3 = @k2_a3 Output, @k2_b3 = @k2_b3 Output, @k2_c3 = @k2_c3 Output, @k2_d3 = @k2_d3 Output,
	@i2_a1 = @i2_a1 Output, @i2_b1 = @i2_b1 Output, @i2_c1 = @i2_c1 Output, @i2_d1 = @i2_d1 Output, @i2_a2 = @i2_a2 Output, @i2_b2 = @i2_b2 Output, @i2_c2 = @i2_c2 Output, @i2_d2 = @i2_d2 Output, @i2_a3 = @i2_a3 Output, @i2_b3 = @i2_b3 Output, @i2_c3 = @i2_c3 Output, @i2_d3 = @i2_d3 Output,
	@rk2_a1 = @rk2_a1 Output, @rk2_b1 = @rk2_b1 Output, @rk2_c1 = @rk2_c1 Output, @rk2_d1 = @rk2_d1 Output, @rk2_a2 = @rk2_a2 Output, @rk2_b2 = @rk2_b2 Output, @rk2_c2 = @rk2_c2 Output, @rk2_d2 = @rk2_d2 Output, @rk2_a3 = @rk2_a3 Output, @rk2_b3 = @rk2_b3 Output, @rk2_c3 = @rk2_c3 Output, @rk2_d3 = @rk2_d3 Output,
	@p1_troops = @p1_troops Output, @p1_injured = @p1_injured Output, @p1_killed = @p1_killed Output,
	@r1_troops = @r1_troops Output, @r1_injured = @r1_injured Output, @r1_killed = @r1_killed Output,
	@p2_troops = @p2_troops Output, @p2_injured = @p2_injured Output, @p2_killed = @p2_killed Output,
	@r2_troops = @r2_troops Output, @r2_injured = @r2_injured Output, @r2_killed = @r2_killed Output,
	@p1_hero_xp_gain = @p1_hero_xp_gain Output, @p2_hero_xp_gain = @p2_hero_xp_gain Output,
	@r1 = @r1 Output, @r2 = @r2 Output, @r3 = @r3 Output, @r4 = @r4 Output, @r5 = @r5 Output,
	@victory = @victory Output;
    
    /*
	IF @victory = 0
	BEGIN
		SET @dt_return = DATEADD(ss, -1, @dt_sent); --NO RETURN MARCH
	END
    */
    
	DECLARE @total_resource_captured int = @r1 + @r2 + @r3 + @r4 + @r5;

	SET @total_resource_captured = @total_resource_captured*@p1_loot_multiplier;

	DECLARE @total_resource_captured_AS_STRING varchar(30) = CAST(@total_resource_captured AS VARCHAR);
	RAISERROR ('@total_resource_captured : %s', 10,-1, @total_resource_captured_AS_STRING) with nowait;

	DECLARE @total_resource_available int = @r1_available + @r2_available + @r3_available + @r4_available + @r5_available;

	DECLARE @total_resource_available_AS_STRING varchar(30) = CAST(@total_resource_available AS VARCHAR);
	RAISERROR ('@total_resource_available : %s', 10,-1, @total_resource_available_AS_STRING) with nowait;

	DECLARE @r1_ratio float = 0;
	DECLARE @r2_ratio float = 0;
	DECLARE @r3_ratio float = 0;
	DECLARE @r4_ratio float = 0;
	DECLARE @r5_ratio float = 0;

	IF(@total_resource_available>1)
		BEGIN
		SET @r1_ratio = CAST(@r1_available AS float)/ CAST(@total_resource_available AS float);
		SET @r2_ratio = CAST(@r2_available AS float)/ CAST(@total_resource_available AS float);
		SET @r3_ratio = CAST(@r3_available AS float)/ CAST(@total_resource_available AS float);
		SET @r4_ratio = CAST(@r4_available AS float)/ CAST(@total_resource_available AS float);
		SET @r5_ratio = CAST(@r5_available AS float)/ CAST(@total_resource_available AS float);
		END

	DECLARE @r1_ratio_AS_STRING varchar(30) = CAST(@r1_ratio AS VARCHAR);
	RAISERROR ('@r1_ratio : %s', 10,-1, @r1_ratio_AS_STRING) with nowait;
	DECLARE @r2_ratio_AS_STRING varchar(30) = CAST(@r2_ratio AS VARCHAR);
	RAISERROR ('@r2_ratio : %s', 10,-1, @r2_ratio_AS_STRING) with nowait;
	DECLARE @r3_ratio_AS_STRING varchar(30) = CAST(@r3_ratio AS VARCHAR);
	RAISERROR ('@r3_ratio : %s', 10,-1, @r3_ratio_AS_STRING) with nowait;
	DECLARE @r4_ratio_AS_STRING varchar(30) = CAST(@r4_ratio AS VARCHAR);
	RAISERROR ('@r4_ratio : %s', 10,-1, @r4_ratio_AS_STRING) with nowait;
	DECLARE @r5_ratio_AS_STRING varchar(30) = CAST(@r5_ratio AS VARCHAR);
	RAISERROR ('@r5_ratio : %s', 10,-1, @r5_ratio_AS_STRING) with nowait;

	DECLARE @r1_max_capture float = @r1_ratio * @total_resource_captured;
	DECLARE @r2_max_capture float = @r2_ratio * @total_resource_captured;
	DECLARE @r3_max_capture float = @r3_ratio * @total_resource_captured;
	DECLARE @r4_max_capture float = @r4_ratio * @total_resource_captured;
	DECLARE @r5_max_capture float = @r5_ratio * @total_resource_captured;
    
    IF(@r1_max_capture>@r1_available)
    BEGIN
        SET @r1_max_capture=@r1_available
    END
    IF(@r2_max_capture>@r2_available)
    BEGIN
        SET @r2_max_capture=@r2_available
    END
    IF(@r3_max_capture>@r3_available)
    BEGIN
        SET @r3_max_capture=@r3_available
    END
    IF(@r4_max_capture>@r4_available)
    BEGIN
        SET @r4_max_capture=@r4_available
    END
    IF(@r5_max_capture>@r5_available)
    BEGIN
        SET @r5_max_capture=@r5_available
    END
    /*
	SET @r1 = (@r1_max_capture);
	SET @r2 = (@r2_max_capture);
	SET @r3 = (@r3_max_capture);
	SET @r4 = (@r4_max_capture);
	SET @r5 = (@r5_max_capture);
	*/

	DECLARE @r1_AS_STRING varchar(30) = CAST(@r1_max_capture AS VARCHAR);
	RAISERROR ('@barbarian_r1_captured : %s', 10,-1, @r1_AS_STRING) with nowait;
	DECLARE @r2_AS_STRING varchar(30) = CAST(@r2_max_capture AS VARCHAR);
	RAISERROR ('@barbarian_r2_captured : %s', 10,-1, @r2_AS_STRING) with nowait;
	DECLARE @r3_AS_STRING varchar(30) = CAST(@r3_max_capture AS VARCHAR);
	RAISERROR ('@barbarian_r3_captured : %s', 10,-1, @r3_AS_STRING) with nowait;
	DECLARE @r4_AS_STRING varchar(30) = CAST(@r3_max_capture AS VARCHAR);
	RAISERROR ('@barbarian_r4_captured : %s', 10,-1, @r4_AS_STRING) with nowait;
	DECLARE @r5_AS_STRING varchar(30) = CAST(@r5_max_capture AS VARCHAR);
	RAISERROR ('@barbarian_r5_captured : %s', 10,-1, @r5_AS_STRING) with nowait;

	--Troops Survived
	DECLARE @s1_a1 int = 0, @s1_b1 int = 0, @s1_c1 int = 0, @s1_d1 int = 0, @s1_a2 int = 0, @s1_b2 int = 0, @s1_c2 int = 0, @s1_d2 int = 0, @s1_a3 int = 0, @s1_b3 int = 0, @s1_c3 int = 0, @s1_d3 int = 0;
	SET @s1_a1 = @p1_a1-@k1_a1;
	SET @s1_a2 = @p1_a2-@k1_a2;
	SET @s1_a3 = @p1_a3-@k1_a3;
	SET @s1_b1 = @p1_b1-@k1_b1;
	SET @s1_b2 = @p1_b2-@k1_b2;
	SET @s1_b3 = @p1_b3-@k1_b3;
	SET @s1_c1 = @p1_c1-@k1_c1;
	SET @s1_c2 = @p1_c2-@k1_c2;
	SET @s1_c3 = @p1_c3-@k1_c3;
	SET @s1_d1 = @p1_d1-@k1_d1;
	SET @s1_d2 = @p1_d2-@k1_d2;
	SET @s1_d3 = @p1_d3-@k1_d3;

	--update the profile1(atacker) data after attack

	DECLARE @attack_id int = 1;

	/* Not needed for PVE
	INSERT INTO attack (march_time, date_sent, date_arrive, job_time, date_return, from_profile_id, to_profile_id, from_base_id, to_base_id, hero, a1, b1, c1, d1, a2, b2, c2, d2, a3, b3, c3, d3, profile1_name, profile2_name, profile1_face, profile2_face, profile1_rank, profile2_rank, profile1_tag, profile2_tag, profile1_hero_name, profile2_hero_name, profile1_hero_xp, profile2_hero_xp, profile1_base_name, profile2_base_name, profile1_x, profile2_x, profile1_y, profile2_y)
	VALUES (@march_time, @dt_sent, @dt_arrive, @job_time, @dt_return, @p1_profile_id, 0, @p1_base_id, @village_id, 1, @p1_a1, @p1_b1, @p1_c1, @p1_d1, @p1_a2, @p1_b2, @p1_c2, @p1_d2, @p1_a3, @p1_b3, @p1_c3, @p1_d3, @p1_name, @p2_name, @p1_face, @p2_face, @p1_rank, @p2_rank, @p1_tag, @p2_tag, @p1_hero_name, @p2_hero_name, @p1_hero_xp, @p2_hero_xp, @p1_base, @p2_base, @p1_x, @p2_x, @p1_y, @p2_y);

	SELECT @attack_id = SCOPE_IDENTITY();
	*/

	DECLARE @dt_return_AS_STRING varchar(30) = CAST(@dt_return AS VARCHAR);
	RAISERROR ('@dt_return2 : %s', 10,-1, @dt_return_AS_STRING) with nowait;
	DECLARE @victory_AS_STRING varchar(30) = CAST(@victory AS VARCHAR);
	RAISERROR ('@victory : %s', 10,-1, @victory_AS_STRING) with nowait;

	IF @is_capture = 1 AND @victory = 1
	BEGIN
		DECLARE @army_percentage_left_at_captured_village float = 0.5, @l1_a1 int = 0,@l1_a2 int = 0,@l1_a3 int = 0,@l1_b1 int = 0,@l1_b2 int = 0,@l1_b3 int = 0,@l1_c1 int = 0,@l1_c2 int = 0,@l1_c3 int = 0,@l1_d1 int = 0,@l1_d2 int = 0,@l1_d3 int = 0;
		
		SET @l1_a1= ROUND((@s1_a1*@army_percentage_left_at_captured_village),0);
		SET @l1_a2= ROUND((@s1_a2*@army_percentage_left_at_captured_village),0);
		SET @l1_a3= ROUND((@s1_a3*@army_percentage_left_at_captured_village),0);
		SET @l1_b1= ROUND((@s1_b1*@army_percentage_left_at_captured_village),0);
		SET @l1_b2= ROUND((@s1_b2*@army_percentage_left_at_captured_village),0);
		SET @l1_b3= ROUND((@s1_b3*@army_percentage_left_at_captured_village),0);
		SET @l1_c1= ROUND((@s1_c1*@army_percentage_left_at_captured_village),0);
		SET @l1_c2= ROUND((@s1_c2*@army_percentage_left_at_captured_village),0);
		SET @l1_c3= ROUND((@s1_c3*@army_percentage_left_at_captured_village),0);
		SET @l1_d1= ROUND((@s1_d1*@army_percentage_left_at_captured_village),0);
		SET @l1_d2= ROUND((@s1_d2*@army_percentage_left_at_captured_village),0);
		SET @l1_d3= ROUND((@s1_d3*@army_percentage_left_at_captured_village),0);
		
		SET @s1_a1= @s1_a1-@l1_a1;
		SET @s1_a2= @s1_a2-@l1_a2;
		SET @s1_a3= @s1_a3-@l1_a3;
		SET @s1_b1= @s1_b1-@l1_b1;
		SET @s1_b2= @s1_b2-@l1_b2;
		SET @s1_b3= @s1_b3-@l1_b3;
		SET @s1_c1= @s1_c1-@l1_c1;
		SET @s1_c2= @s1_c2-@l1_c2;
		SET @s1_c3= @s1_c3-@l1_c3;
		SET @s1_d1= @s1_d1-@l1_d1;
		SET @s1_d2= @s1_d2-@l1_d2;
		SET @s1_d3= @s1_d3-@l1_d3;
		
		--Create new human base
		DELETE village WHERE village_id=@village_id;
		
		
		INSERT INTO base (base_type, profile_id, base_name, map_x, map_y, r1, r2, r3, r4, r5, a1, a2, a3, b1 , b2, b3, c1, c2, c3, d1, d2, d3,last_captured,last_attacked)
		VALUES (2, @p1_profile_id, 'New Village', @p2_x, @p2_y, @r1_available, @r2_available, @r3_available, @r4_available, @r5_available, @l1_a1, @l1_a2, @l1_a3, @l1_b1 , @l1_b2, @l1_b3, @l1_c1, @l1_c2, @l1_c3, @l1_d1, @l1_d2, @l1_d3,DATEADD(ss, @job_time, @dt_arrive),DATEADD(ss, @job_time, @dt_arrive));
		
		DECLARE @baseIdInserted bigint = SCOPE_IDENTITY();

		DECLARE @random_pos1 int = 400 + dbo.fx_generateRandomNumber(newID(), 1, 9);
		DECLARE @random_pos2 int = 400 + dbo.fx_generateRandomNumber(newID(), 10, 18); --max 18 building spots for villages

		--Free Market and rally point
		INSERT INTO build VALUES (@baseIdInserted, @random_pos1, 12, 1, GETUTCDATE());
		INSERT INTO build VALUES (@baseIdInserted, @random_pos2, 18, 1, GETUTCDATE());

		DECLARE @player_profile_uid nvarchar(50);
		SELECT @player_profile_uid = uid FROM profile WHERE profile_id = @p1_profile_id;
		
		EXECUTE usp_ApplyProtection @player_profile_uid,@baseIdInserted,0,0
		
		UPDATE base SET attack_id=@attack_id, attack_time=@march_time, attack_queue=@dt_arrive, attack_return=@dt_return,attack_job_time = @job_time,
		a1=a1-@k1_a1-@l1_a1, a2=a2-@k1_a2-@l1_a2, a3=a3-@k1_a3-@l1_a3, b1=b1-@k1_b1-@l1_b1, b2=b2-@k1_b2-@l1_b2, b3=b3-@k1_b3-@l1_b3, c1=c1-@k1_c1-@l1_c1, c2=c2-@k1_c2-@l1_c2, c3=c3-@k1_c3-@l1_c3, d1=d1-@k1_d1-@l1_d1, d2=d2-@k1_d2-@l1_d2, d3=d3-@k1_d3-@l1_d3,
		a_a1=@s1_a1, a_a2=@s1_a2, a_a3=@s1_a3, a_b1=@s1_b1, a_b2=@s1_b2, a_b3=@s1_b3, a_c1=@s1_c1, a_c2=@s1_c2, a_c3=@s1_c3, a_d1=@s1_d1, a_d2=@s1_d2, a_d3=@s1_d3, 
		a_r1=0,a_r2=0,a_r3=0,a_r4=0,a_r5=0,latest_captured_base_id=@baseIdInserted,is_attack_capture=1
        WHERE base_id=@p1_base_id;
		

       EXECUTE usp_UpdateRegions  @baseIdInserted
	END
	ELSE
	BEGIN
        --VILLAGE
        UPDATE village
        SET last_attacked=@village_attack_time
        WHERE village_id=@village_id
    	--ATTACKER BASE 
		UPDATE base SET attack_id=@attack_id, attack_time=@march_time, attack_queue=@dt_arrive, attack_return=@dt_return, attack_job_time = @job_time,
		a1=a1-@k1_a1, a2=a2-@k1_a2, a3=a3-@k1_a3, b1=b1-@k1_b1, b2=b2-@k1_b2, b3=b3-@k1_b3, c1=c1-@k1_c1, c2=c2-@k1_c2, c3=c3-@k1_c3, d1=d1-@k1_d1, d2=d2-@k1_d2, d3=d3-@k1_d3,
		a_a1=@s1_a1, a_a2=@s1_a2, a_a3=@s1_a3, a_b1=@s1_b1, a_b2=@s1_b2, a_b3=@s1_b3, a_c1=@s1_c1, a_c2=@s1_c2, a_c3=@s1_c3, a_d1=@s1_d1, a_d2=@s1_d2, a_d3=@s1_d3,
		r1=r1+@r1_max_capture, r2=r2+@r2_max_capture, r3=r3+@r3_max_capture, r4=r4+@r4_max_capture, r5=r5+@r5_max_capture, a_r1=@r1_max_capture, a_r2=@r2_max_capture, a_r3=@r3_max_capture, a_r4=@r4_max_capture, a_r5=@r5_max_capture, is_attack_capture=0 WHERE base_id=@p1_base_id;
	END

    --HERO
	UPDATE hero SET hero_xp=hero_xp+@p1_hero_xp_gain, hero_xp_gain=hero_xp_gain+@p1_hero_xp_gain
	WHERE profile_id=@p1_profile_id;

	DECLARE @TempTable TABLE(
		[attack_id] [bigint] NOT NULL,
		[profile2_base_name] [nvarchar](50) NULL,
		[profile2_x] [bigint] NULL,
		[profile2_y] [bigint] NULL
		)

	INSERT INTO @TempTable (attack_id, profile2_base_name, profile2_x, profile2_y)
	VALUES (1, @p2_base, @p2_x, @p2_y);

	SELECT * FROM @TempTable;

    DECLARE @total_survived int= @s1_a1+@s1_a2+@s1_a3+@s1_b1+@s1_b2+@s1_b3+@s1_c1+@s1_c2+@s1_c3+@s1_d1+@s1_d2+@s1_d3;
    DECLARE @survived_AS_STRING varchar(30) = CAST(@total_survived AS VARCHAR);
	RAISERROR ('total survived : %s', 10,-1, @survived_AS_STRING) with nowait;

    --- Update attack return if there are no survivors
    IF( @total_survived=0)
    BEGIN

		SELECT @dt_return=attack_queue FROM base WHERE base_id=@p1_base_id;

        DECLARE @attack_duration int = 0;
		SET @dt_return = DATEADD(ss, @attack_duration, @dt_return); --NO RETURN MARCH

		--update the profile1(atacker) data after attack
		UPDATE base SET attack_return=@dt_return
		WHERE base_id=@p1_base_id;

    END

	--create new report so can be viewed inside the game
	INSERT INTO report (date_posted, date_arrive, profile1_id, profile2_id, profile1_base_id, profile2_base_id, report_type, victory, row_id, open_read, profile1_name, profile2_name, profile1_face, profile2_face, profile1_rank, profile2_rank, profile1_tag, profile2_tag, profile1_hero_name, profile2_hero_name, profile1_hero_xp, profile2_hero_xp, profile1_hero_xp_gain, profile2_hero_xp_gain, profile1_base_name, profile2_base_name, profile1_x, profile2_x, profile1_y, profile2_y, r1, r2, r3, r4, r5, profile1_troops, profile1_injured, profile1_killed, p1_a1, p1_b1, p1_c1, p1_d1, p1_a2,p1_b2, p1_c2, p1_d2, p1_a3, p1_b3, p1_c3, p1_d3, profile2_troops, profile2_injured, profile2_killed, p2_a1, p2_b1, p2_c1, p2_d1, p2_a2, p2_b2, p2_c2, p2_d2, p2_a3, p2_b3, p2_c3, p2_d3, i1_a1, i1_a2, i1_a3, i1_b1, i1_b2, i1_b3, i1_c1, i1_c2, i1_c3, i1_d1, i1_d2, i1_d3, k1_a1, k1_a2, k1_a3, k1_b1, k1_b2, k1_b3, k1_c1, k1_c2, k1_c3, k1_d1, k1_d2, k1_d3, i2_a1, i2_a2, i2_a3, i2_b1, i2_b2, i2_b3, i2_c1, i2_c2, i2_c3, i2_d1, i2_d2, i2_d3, k2_a1, k2_a2, k2_a3, k2_b1, k2_b2, k2_b3, k2_c1, k2_c2, k2_c3, k2_d1, k2_d2, k2_d3)
	VALUES (GETUTCDATE(), DATEADD(ss, @march_time, GETUTCDATE()), @p1_profile_id, 0, @p1_base_id, @village_id, @report_type, @victory, @attack_id, 0, @p1_name, @p2_name, @p1_face, @p2_face, @p1_rank, @p2_rank, @p1_tag, @p2_tag, @p1_hero_name, @p2_hero_name, @p1_hero_xp, @p2_hero_xp, @p1_hero_xp_gain, @p2_hero_xp_gain, @p1_base, @p2_base, @p1_x, @p2_x, @p1_y, @p2_y, @r1_max_capture, @r2_max_capture, @r3_max_capture, @r4_max_capture, @r5_max_capture, @p1_troops, @p1_injured, @p1_killed, @p1_a1, @p1_b1, @p1_c1, @p1_d1, @p1_a2, @p1_b2, @p1_c2, @p1_d2, @p1_a3, @p1_b3, @p1_c3, @p1_d3, @p2_troops, @p2_injured, @p2_killed, @p2_a1, @p2_b1, @p2_c1, @p2_d1, @p2_a2, @p2_b2, @p2_c2, @p2_d2, @p2_a3, @p2_b3, @p2_c3, @p2_d3, @i1_a1, @i1_a2, @i1_a3, @i1_b1, @i1_b2, @i1_b3, @i1_c1, @i1_c2, @i1_c3, @i1_d1, @i1_d2, @i1_d3, @k1_a1, @k1_a2, @k1_a3, @k1_b1, @k1_b2, @k1_b3, @k1_c1, @k1_c2, @k1_c3, @k1_d1, @k1_d2, @k1_d3, @i2_a1, @i2_a2, @i2_a3, @i2_b1, @i2_b2, @i2_b3, @i2_c1, @i2_c2, @i2_c3, @i2_d1, @i2_d2, @i2_d3, @k2_a1, @k2_a2, @k2_a3, @k2_b1, @k2_b2, @k2_b3, @k2_c1, @k2_c2, @k2_c3, @k2_d1, @k2_d2, @k2_d3);


	END
GO
/****** Object:  StoredProcedure [dbo].[usp_AttackPvp]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_AttackPvp]
(@attack_id bigint, @is_capture int ,@is_victory int out)
AS
BEGIN

	RAISERROR ('usp_AttackPvp', 10,-1) with nowait;

	DECLARE @victory int = 0, @report_type int = 11;
    
	SET @is_victory = 0;

	DECLARE @p1_base_id bigint, @p1_profile_id bigint, @p2_profile_id bigint, @p2_base_id bigint, @p1_hero int
	DECLARE @p1_a1 int, @p1_b1 int, @p1_c1 int, @p1_d1 int, @p1_a2 int, @p1_b2 int, @p1_c2 int, @p1_d2 int, @p1_a3 int, @p1_b3 int, @p1_c3 int, @p1_d3 int
	DECLARE @p1_name nvarchar(50), @p2_name nvarchar(50), @p1_face int, @p2_face int, @p1_rank int, @p2_rank int
	DECLARE @p1_tag nvarchar(3), @p2_tag nvarchar(3), @p1_hero_name nvarchar(50), @p2_hero_name nvarchar(50), @p1_hero_xp int, @p2_hero_xp int
	DECLARE @p1_base nvarchar(50), @p2_base nvarchar(50), @p1_x int, @p2_x int, @p1_y int, @p2_y int

	SELECT @p1_base_id=from_base_id, @p1_profile_id=from_profile_id, @p2_profile_id=to_profile_id, @p2_base_id=to_base_id, @p1_hero=hero, @p1_a1=a1, @p1_a2=a2, @p1_a3=a3, @p1_b1=b1, @p1_b2=b2, @p1_b3=b3, @p1_c1=c1, @p1_c2=c2, @p1_c3=c3, @p1_d1=d1, @p1_d2=d2, @p1_d3=d3,
	@p1_name=profile1_name, @p1_face=profile1_face, @p1_rank=profile1_rank, @p1_tag=profile1_tag, @p1_hero_name=profile1_hero_name, @p1_hero_xp=profile1_hero_xp, @p1_base=profile1_base_name, @p1_x=profile1_x, @p1_y=profile1_y,
	@p2_name=profile2_name, @p2_face=profile2_face, @p2_rank=profile2_rank, @p2_tag=profile2_tag, @p2_hero_name=profile2_hero_name, @p2_hero_xp=profile2_hero_xp, @p2_base=profile2_base_name, @p2_x=profile2_x, @p2_y=profile2_y
	FROM attack WHERE attack_id=@attack_id;
    
	RAISERROR ('select from attack done', 10,-1) with nowait;
    
    exec usp_BaseUpdate @p1_base_id
    exec usp_BaseUpdate @p2_base_id
    
	IF @is_capture = 1
	BEGIN
		SET @report_type = 61;
	END

	--Resources gained after an attack (r1 is food, r2 is wood, r3 is stone, r4 is iron, r5 is gold)
	DECLARE @r1 int = 0, @r2 int = 0, @r3 int = 0, @r4 int = 0, @r5 int = 0;

	--Troops Injured (i1 prefix is profile1 injured and i2 prefix is profile2 injured)
	DECLARE @i1_a1 int = 0, @i1_b1 int = 0, @i1_c1 int = 0, @i1_d1 int = 0, @i1_a2 int = 0, @i1_b2 int = 0, @i1_c2 int = 0, @i1_d2 int = 0, @i1_a3 int = 0, @i1_b3 int = 0, @i1_c3 int = 0, @i1_d3 int = 0;
	DECLARE @i2_a1 int = 0, @i2_b1 int = 0, @i2_c1 int = 0, @i2_d1 int = 0, @i2_a2 int = 0, @i2_b2 int = 0, @i2_c2 int = 0, @i2_d2 int = 0, @i2_a3 int = 0, @i2_b3 int = 0, @i2_c3 int = 0, @i2_d3 int = 0;

	--Troops Killed (k1 prefix is profile1 killed and k2 prefix is profile2 killed)
	DECLARE @k1_a1 int = 0, @k1_b1 int = 0, @k1_c1 int = 0, @k1_d1 int = 0, @k1_a2 int = 0, @k1_b2 int = 0, @k1_c2 int = 0, @k1_d2 int = 0, @k1_a3 int = 0, @k1_b3 int = 0, @k1_c3 int = 0, @k1_d3 int = 0;
	DECLARE @k2_a1 int = 0, @k2_b1 int = 0, @k2_c1 int = 0, @k2_d1 int = 0, @k2_a2 int = 0, @k2_b2 int = 0, @k2_c2 int = 0, @k2_d2 int = 0, @k2_a3 int = 0, @k2_b3 int = 0, @k2_c3 int = 0, @k2_d3 int = 0;

	--Troops Killed for alliance reinforcements to profile 2
	DECLARE @ak_a1 int = 0, @ak_b1 int = 0, @ak_c1 int = 0, @ak_d1 int = 0, @ak_a2 int = 0, @ak_b2 int = 0, @ak_c2 int = 0, @ak_d2 int = 0, @ak_a3 int = 0, @ak_b3 int = 0, @ak_c3 int = 0, @ak_d3 int = 0;

	--Total troops, injured, killed on both sides
	DECLARE @p1_troops int = 0,  @p1_injured int = 0, @p1_killed int = 0,
	@r1_troops int = 0,  @r1_injured int = 0, @r1_killed int = 0,
	@p2_troops int = 0,  @p2_injured int = 0, @p2_killed int = 0,
	@r2_troops int = 0,  @r2_injured int = 0, @r2_killed int = 0,
	@p1_hero_xp_gain int = 0, @p2_hero_xp_gain int = 0;


	--Profile 2
	DECLARE @p2_total_villages int =0, @p2_base_type int =0;
	
	SELECT @p2_total_villages = COUNT(base_id) FROM base WHERE profile_id = @p2_profile_id AND base_type=2;
	SELECT @p2_base_type = base_type FROM base WHERE base_id = @p2_base_id;
	
	--Profile 2 resources
	DECLARE @p2_r1 bigint = 0, @p2_r2 bigint = 0, @p2_r3 bigint = 0, @p2_r4 bigint = 0, @p2_r5 bigint = 0;

	--Profile 2 troops
	DECLARE @p2_a1 int = 0, @p2_b1 int = 0, @p2_c1 int = 0, @p2_d1 int = 0, @p2_a2 int = 0, @p2_b2 int = 0, @p2_c2 int = 0, @p2_d2 int = 0, @p2_a3 int = 0, @p2_b3 int = 0, @p2_c3 int = 0, @p2_d3 int = 0;

	--Profile 2 injurured troops
	DECLARE @p2_i_a1 int = 0, @p2_i_b1 int = 0, @p2_i_c1 int = 0, @p2_i_d1 int = 0, @p2_i_a2 int = 0, @p2_i_b2 int = 0, @p2_i_c2 int = 0, @p2_i_d2 int = 0, @p2_i_a3 int = 0, @p2_i_b3 int = 0, @p2_i_c3 int = 0, @p2_i_d3 int = 0;

	--Profile 2 reinforcing troops
	DECLARE @p2_r_a1 int = 0, @p2_r_b1 int = 0, @p2_r_c1 int = 0, @p2_r_d1 int = 0, @p2_r_a2 int = 0, @p2_r_b2 int = 0, @p2_r_c2 int = 0, @p2_r_d2 int = 0, @p2_r_a3 int = 0, @p2_r_b3 int = 0, @p2_r_c3 int = 0, @p2_r_d3 int = 0;

	--Update Profile2 troops injured (Standard Operations)

	DECLARE @p2_base_id_AS_STRING varchar(30) = CAST(@p2_base_id AS VARCHAR);
	RAISERROR ('@p2_base_id : %s', 10,-1, @p2_base_id_AS_STRING) with nowait;

	UPDATE base SET i_a1=i_a1-h_a1, i_b1=i_b1-h_b1, i_c1=i_c1-h_c1, i_d1=i_d1-h_d1, i_a2=i_a2-h_a2, i_b2=i_b2-h_b2, i_c2=i_c2-h_c2, i_d2=i_d2-h_d2, i_a3=i_a3-h_a3, i_b3=i_b3-h_b3, i_c3=i_c3-h_c3, i_d3=i_d3-h_d3,
	h_a1=0, h_b1=0, h_c1=0, h_d1=0, h_a2=0, h_b2=0, h_c2=0, h_d2=0, h_a3=0, h_b3=0, h_c3=0, h_d3=0
	WHERE base_id=@p2_base_id AND hospital_queue<GETUTCDATE();

	--Update Profile2 troops training a (Standard Operations)
	UPDATE base SET a1=a1+t_a1, a2=a2+t_a2, a3=a3+t_a3,
	t_a1=0, t_a2=0, t_a3=0
	WHERE base_id=@p2_base_id AND a_queue<GETUTCDATE();

	--Update Profile2 troops training b (Standard Operations)
	UPDATE base SET b1=b1+t_b1, b2=b2+t_b2, b3=b3+t_b3,
	t_b1=0, t_b2=0, t_b3=0
	WHERE base_id=@p2_base_id AND b_queue<GETUTCDATE();

	--Update Profile2 troops training c (Standard Operations)
	UPDATE base SET c1=c1+t_c1, c2=c2+t_c2, c3=c3+t_c3,
	t_c1=0, t_c2=0, t_c3=0
	WHERE base_id=@p2_base_id AND c_queue<GETUTCDATE();

	--Update Profile2 troops training d (Standard Operations)
	UPDATE base SET d1=d1+t_d1, d2=d2+t_d2, d3=d3+t_d3,
	t_d1=0, t_d2=0, t_d3=0
	WHERE base_id=@p2_base_id AND d_queue<GETUTCDATE();

	--Update Profile2 return troops (Standard Operations)
	UPDATE base SET a1=a1+rt_a1, a2=a2+rt_a2, a3=a3+rt_a3, b1=b1+rt_b1, b2=b2+rt_b2, b3=b3+rt_b3, c1=c1+rt_c1, c2=c2+rt_c2, c3=c3+rt_c3, d1=d1+rt_d1, d2=d2+rt_d2, d3=d3+rt_d3,
	rt_a1=0, rt_a2=0, rt_a3=0, rt_b1=0, rt_b2=0, rt_b3=0, rt_c1=0, rt_c2=0, rt_c3=0, rt_d1=0, rt_d2=0, rt_d3=0
	WHERE base_id=@p2_base_id AND ((reinforce_action=2 AND reinforce_queue<GETUTCDATE()) OR (reinforce_action!=2));

	DECLARE @p2_item_defense_ending datetime, @p2_item_defense float = 0, @p2_research_defense float = 0, @p2_research_life float = 0;
    DECLARE @city_last_attacked datetime = GETUTCDATE(); 
    DECLARE @city_last_attacked_seconds float =0; 
    DECLARE @city_resource_refresh_rate float =0; 
    DECLARE @city_resource_rate float =1; 

	SELECT @p2_a1=a1, @p2_a2=a2, @p2_a3=a3, @p2_b1=b1, @p2_b2=b2, @p2_b3=b3, @p2_c1=c1, @p2_c2=c2, @p2_c3=c3, @p2_d1=d1, @p2_d2=d2, @p2_d3=d3,
	@p2_i_a1=i_a1, @p2_i_a2=i_a2, @p2_i_a3=i_a3, @p2_i_b1=i_b1, @p2_i_b2=i_b2, @p2_i_b3=i_b3, @p2_i_c1=i_c1, @p2_i_c2=i_c2, @p2_i_c3=i_c3, @p2_i_d1=i_d1, @p2_i_d2=i_d2, @p2_i_d3=i_d3,
	@p2_r_a1=r_a1, @p2_r_a2=r_a2, @p2_r_a3=r_a3, @p2_r_b1=r_b1, @p2_r_b2=r_b2, @p2_r_b3=r_b3, @p2_r_c1=r_c1, @p2_r_c2=r_c2, @p2_r_c3=r_c3, @p2_r_d1=r_d1, @p2_r_d2=r_d2, @p2_r_d3=r_d3,
	@p2_r1=r1, @p2_r2=r2, @p2_r3=r3, @p2_r4=r4, @p2_r5=r5, @p2_research_defense=research_defense, @p2_item_defense=item_defense, @p2_research_life=research_life,
    @city_last_attacked=last_attacked
	FROM base WHERE base_id=@p2_base_id;

	DECLARE @research_minus_level_after_capture float =1; 
	DECLARE @building_minus_level_after_capture float =1; 
	DECLARE @base_loyalty_conversion_time float =360; 
	
    --RESOURCE RATE (REDUCTION DUE TO PREVIOUS ATTACK)
    SELECT @city_resource_refresh_rate=city_resource_refresh_rate, @research_minus_level_after_capture=research_minus_level_after_capture, @building_minus_level_after_capture=building_minus_level_after_capture
    FROM settings
    WHERE settings_id=1
    
    DECLARE @city_resource_refresh_rate_AS_STRING varchar(30) = CAST(@city_resource_refresh_rate AS VARCHAR);
	RAISERROR ('@city_resource_refresh_rate : %s', 10,-1, @city_resource_refresh_rate_AS_STRING) with nowait;

    SET @city_last_attacked_seconds = DATEDIFF(ss,@city_last_attacked,GETUTCDATE());
	
    DECLARE @city_last_attacked_seconds_AS_STRING varchar(30) = CAST(@city_last_attacked_seconds AS VARCHAR);
	RAISERROR ('@city_last_attacked_seconds : %s', 10,-1, @city_last_attacked_seconds_AS_STRING) with nowait;
     
    SET @city_resource_rate = @city_last_attacked_seconds/@city_resource_refresh_rate;
    IF(@city_resource_rate>1)
    BEGIN
        SET @city_resource_rate=1;
    END
    
    DECLARE @city_resource_rate_AS_STRING varchar(30) = CAST(@city_resource_rate AS VARCHAR);
	RAISERROR ('@city_resource_rate : %s', 10,-1, @city_resource_rate_AS_STRING) with nowait;

    --ARMY
    
	SET @p2_a1 = @p2_a1 - @p2_i_a1 - @p2_r_a1;
	SET @p2_a2 = @p2_a2 - @p2_i_a2 - @p2_r_a2;
	SET @p2_a3 = @p2_a3 - @p2_i_a3 - @p2_r_a3;

	SET @p2_b1 = @p2_b1 - @p2_i_b1 - @p2_r_b1;
	SET @p2_b2 = @p2_b2 - @p2_i_b2 - @p2_r_b2;
	SET @p2_b3 = @p2_b3 - @p2_i_b3 - @p2_r_b3;

	SET @p2_c1 = @p2_c1 - @p2_i_c1 - @p2_r_c1;
	SET @p2_c2 = @p2_c2 - @p2_i_c2 - @p2_r_c2;
	SET @p2_c3 = @p2_c3 - @p2_i_c3 - @p2_r_c3;

	SET @p2_d1 = @p2_d1 - @p2_i_d1 - @p2_r_d1;
	SET @p2_d2 = @p2_d2 - @p2_i_d2 - @p2_r_d2;
	SET @p2_d3 = @p2_d3 - @p2_i_d3 - @p2_r_d3;

	--Make sure no NULLS and no negative VALUES

	IF ISNULL(@p2_a1, 0) < 0
	BEGIN
		SET @p2_a1 = 0;
	END

	IF ISNULL(@p2_a2, 0) < 0
	BEGIN
		SET @p2_a2 = 0;
	END

	IF ISNULL(@p2_a3, 0) < 0
	BEGIN
		SET @p2_a3 = 0;
	END

	IF ISNULL(@p2_b1, 0) < 0
	BEGIN
		SET @p2_b1 = 0;
	END

	IF ISNULL(@p2_b2, 0) < 0
	BEGIN
		SET @p2_b2 = 0;
	END

	IF ISNULL(@p2_b3, 0) < 0
	BEGIN
		SET @p2_b3 = 0;
	END

	IF ISNULL(@p2_c1, 0) < 0
	BEGIN
		SET @p2_c1 = 0;
	END

	IF ISNULL(@p2_c2, 0) < 0
	BEGIN
		SET @p2_c2 = 0;
	END

	IF ISNULL(@p2_c3, 0) < 0
	BEGIN
		SET @p2_c3 = 0;
	END

	IF ISNULL(@p2_d1, 0) < 0
	BEGIN
		SET @p2_d1 = 0;
	END

	IF ISNULL(@p2_d2, 0) < 0
	BEGIN
		SET @p2_d2 = 0;
	END

	IF ISNULL(@p2_d3, 0) < 0
	BEGIN
		SET @p2_d3 = 0;
	END

	RAISERROR ('Temp Table', 10,-1) with nowait;

	--query all reinforcements to profile_2 base
		DECLARE @reinforcements_table TABLE
		(
			reinforce_id bigint,
			from_profile_id bigint,
			from_base_id bigint,
			to_profile_id bigint,
			to_base_id bigint,
			r2_a1 int,
			r2_a2 int,
			r2_a3 int,
			r2_b1 int,
			r2_b2 int,
			r2_b3 int,
			r2_c1 int,
			r2_c2 int,
			r2_c3 int,
			r2_d1 int,
			r2_d2 int,
			r2_d3 int,
			r2_a1_ratio float,
			r2_a2_ratio float,
			r2_a3_ratio float,
			r2_b1_ratio float,
			r2_b2_ratio float,
			r2_b3_ratio float,
			r2_c1_ratio float,
			r2_c2_ratio float,
			r2_c3_ratio float,
			r2_d1_ratio float,
			r2_d2_ratio float,
			r2_d3_ratio float
		)

		INSERT INTO @reinforcements_table
		SELECT reinforce_id,from_profile_id,from_base_id,to_profile_id,to_base_id,a1,a2,a3,b1,b2,b3,c1,c2,c3,d1,d2,d3,0,0,0,0,0,0,0,0,0,0,0,0
		FROM reinforce WHERE (date_arrive < GETUTCDATE()) AND (is_return = 0) AND to_base_id = @p2_base_id

		--Total reinforcement
		DECLARE @r2_a1 int = 0, @r2_b1 int = 0, @r2_c1 int = 0, @r2_d1 int = 0, @r2_a2 int = 0, @r2_b2 int = 0, @r2_c2 int = 0, @r2_d2 int = 0, @r2_a3 int = 0, @r2_b3 int = 0, @r2_c3 int = 0, @r2_d3 int = 0;

		DECLARE @temp_reinforcement_table_count int =0 ;

		SELECT  @temp_reinforcement_table_count = COUNT(*)
		FROM @reinforcements_table

		IF( @temp_reinforcement_table_count>0)
		BEGIN

			SELECT @r2_a1=SUM(r2_a1), @r2_a2=SUM(r2_a2), @r2_a3=SUM(r2_a3), @r2_b1=SUM(r2_b1), @r2_b2=SUM(r2_b2), @r2_b3=SUM(r2_b3), @r2_c1=SUM(r2_c1), @r2_c2=SUM(r2_c2), @r2_c3=SUM(r2_c3), @r2_d1=SUM(r2_d1), @r2_d2=SUM(r2_d2), @r2_d3=SUM(r2_d3)
			FROM @reinforcements_table

			--Reinforcement ratio
			IF(@r2_a1>0)
			BEGIN
				UPDATE @reinforcements_table
				SET r2_a1_ratio = r2_a1/@r2_a1;
			END
			IF(@r2_a2>0)
			BEGIN
				UPDATE @reinforcements_table
				SET r2_a2_ratio = r2_a2/@r2_a2;
			END
			IF(@r2_a3>0)
			BEGIN
				UPDATE @reinforcements_table
				SET r2_a3_ratio = r2_a3/@r2_a3;
			END
			IF(@r2_b1>0)
			BEGIN
				UPDATE @reinforcements_table
				SET r2_b1_ratio = r2_b1/@r2_b1;
			END
			IF(@r2_b2>0)
			BEGIN
				UPDATE @reinforcements_table
				SET r2_b2_ratio = r2_b3/@r2_b2;
			END
			IF(@r2_b3>0)
			BEGIN
				UPDATE @reinforcements_table
				SET r2_b3_ratio = r2_b3/@r2_b3;
			END
			IF(@r2_c1>0)
			BEGIN
				UPDATE @reinforcements_table
				SET r2_c1_ratio = r2_c1/@r2_c1;
			END
			IF(@r2_c2>0)
			BEGIN
				UPDATE @reinforcements_table
				SET r2_b2_ratio = r2_c3/@r2_c2;
			END
			IF(@r2_c3>0)
			BEGIN
				UPDATE @reinforcements_table
				SET r2_c3_ratio = r2_c3/@r2_c3;
			END
			IF(@r2_d1>0)
			BEGIN
				UPDATE @reinforcements_table
				SET r2_d1_ratio = r2_d1/@r2_d1;
			END
			IF(@r2_d2>0)
			BEGIN
				UPDATE @reinforcements_table
				SET r2_d2_ratio = r2_d3/@r2_d2;
			END
			IF(@r2_d3>0)
			BEGIN
				UPDATE @reinforcements_table
				SET r2_d3_ratio = r2_d3/@r2_d3;
			END
		END

		DECLARE @r2_a1_AS_STRING varchar(30) = CAST(@r2_a1 AS VARCHAR);
		RAISERROR ('r2_a1: %s', 10,-1, @r2_a1_AS_STRING) with nowait;
		DECLARE @r2_a2_AS_STRING varchar(30) = CAST(@r2_a2 AS VARCHAR);
		RAISERROR ('r2_a2: %s', 10,-1, @r2_a2_AS_STRING) with nowait;
		DECLARE @r2_a3_AS_STRING varchar(30) = CAST(@r2_a3 AS VARCHAR);
		RAISERROR ('r2_a3: %s', 10,-1, @r2_a3_AS_STRING) with nowait;

		DECLARE @r2_b1_bS_STRING varchar(30) = CAST(@r2_b1 AS VARCHAR);
		RAISERROR ('r2_b1: %s', 10,-1, @r2_b1_bS_STRING) with nowait;
		DECLARE @r2_b2_bS_STRING varchar(30) = CAST(@r2_b2 AS VARCHAR);
		RAISERROR ('r2_b2: %s', 10,-1, @r2_b2_bS_STRING) with nowait;
		DECLARE @r2_b3_bS_STRING varchar(30) = CAST(@r2_b3 AS VARCHAR);
		RAISERROR ('r2_b3: %s', 10,-1, @r2_b3_bS_STRING) with nowait;

		DECLARE @r2_c1_cS_STRING varchar(30) = CAST(@r2_c1 AS VARCHAR);
		RAISERROR ('r2_c1: %s', 10,-1, @r2_c1_cS_STRING) with nowait;
		DECLARE @r2_c2_cS_STRING varchar(30) = CAST(@r2_c2 AS VARCHAR);
		RAISERROR ('r2_c2: %s', 10,-1, @r2_c2_cS_STRING) with nowait;
		DECLARE @r2_c3_cS_STRING varchar(30) = CAST(@r2_c3 AS VARCHAR);
		RAISERROR ('r2_c3: %s', 10,-1, @r2_c3_cS_STRING) with nowait;

		DECLARE @r2_d1_dS_STRING varchar(30) = CAST(@r2_d1 AS VARCHAR);
		RAISERROR ('r2_d1: %s', 10,-1, @r2_d1_dS_STRING) with nowait;
		DECLARE @r2_d2_dS_STRING varchar(30) = CAST(@r2_d2 AS VARCHAR);
		RAISERROR ('r2_d2: %s', 10,-1, @r2_d2_dS_STRING) with nowait;
		DECLARE @r2_d3_dS_STRING varchar(30) = CAST(@r2_d3 AS VARCHAR);
		RAISERROR ('r2_d3: %s', 10,-1, @r2_d3_dS_STRING) with nowait;




	--if boost timer is over set it to 0
	IF @p2_item_defense_ending < GETUTCDATE()
	BEGIN
		SET @p2_item_defense = 0;
	END

	DECLARE @p2_wall_level int = 1;
	--The wall building level (the higher the more defense)
	SELECT @p2_wall_level=building_level
	FROM build WHERE base_id=@p2_base_id AND building_id=102;

	-- Loot Calculation (storehouse buildingid = 11)
	DECLARE @p1_loot_multiplier float= 0;
	DECLARE @p1_load_research_level int = 1;
	SELECT @p1_load_research_level=research_load
	FROM base WHERE base_id=@p1_base_id;

	SET @p1_loot_multiplier = 1+(@p1_load_research_level * 0.01);
	
	DECLARE @p1_loot_multiplier_dS_STRING varchar(30) = CAST(@p1_loot_multiplier AS VARCHAR);
	RAISERROR ('p1_loot_multiplier: %s', 10,-1, @p1_loot_multiplier_dS_STRING) with nowait;
		
	DECLARE @p2_resource_kept bigint= 0;
	DECLARE @p2_storehouse_level int = 0;
	SELECT @p2_storehouse_level=ISNULL(building_level,0)
	FROM build WHERE base_id=@p2_base_id AND building_id=11;

	SET @p2_resource_kept = (@p2_storehouse_level) * 5000;

    --Do a base fetch for p2 to get latest boost
    DECLARE @t2 AS BaseFetchTableType;
    Insert Into @t2 Exec dbo.usp_BaseFetch @p2_base_id, @p2_profile_id;

	--Hero stats for defense and life
	DECLARE @p2_hero_defense float = 0, @p2_hero_life float = 0;

	SELECT @p2_hero_defense=hero_boost_defense, @p2_hero_life=hero_boost_life
	FROM @t2 WHERE profile_id=@p2_profile_id;


	--get profile_1 stats
	DECLARE @p1_item_attack_ending date, @p1_item_attack float = 0, @p1_research_attack float = 0, @p1_research_life float = 0;
	DECLARE @p1_research_a_attack float = 0, @p1_research_b_attack float = 0, @p1_research_c_attack float = 0, @p1_research_d_attack float = 0;

	SELECT @p1_research_attack=research_attack, @p1_item_attack=item_attack, @p1_item_attack_ending=item_attack_ending, @p1_research_life=research_life,
	@p1_research_a_attack=research_a_attack, @p1_research_b_attack=research_b_attack, @p1_research_c_attack=research_c_attack, @p1_research_d_attack=research_d_attack
	FROM base WHERE base_id=@p1_base_id;

	IF @p1_item_attack_ending < GETUTCDATE()
	BEGIN
		SET @p1_item_attack = 0;
	END

	DECLARE @p1_hero_attack float = 0, @p1_hero_life float = 0;
	DECLARE @p1_hero_a_attack float = 0, @p1_hero_b_attack float = 0, @p1_hero_c_attack float = 0, @p1_hero_d_attack float = 0;

    --Do a base fetch for p1 to get latest boost
    DECLARE @t1 AS BaseFetchTableType;
    Insert Into @t1 Exec dbo.usp_BaseFetch @p1_base_id, @p1_profile_id;
    
	SELECT @p1_hero_attack=hero_boost_attack, @p1_hero_life=hero_boost_life,
	@p1_hero_a_attack=hero_boost_a_attack, @p1_hero_b_attack=hero_boost_b_attack, @p1_hero_c_attack=hero_boost_c_attack, @p1_hero_d_attack=hero_boost_d_attack
	FROM @t1 WHERE profile_id=@p1_profile_id;

	RAISERROR ('Before Attack Formula', 10,-1) with nowait;

	RAISERROR ('r2_a1: %s', 10,-1, @r2_a1_AS_STRING) with nowait;
	RAISERROR ('r2_a2: %s', 10,-1, @r2_a2_AS_STRING) with nowait;
	RAISERROR ('r2_a3: %s', 10,-1, @r2_a3_AS_STRING) with nowait;

	RAISERROR ('r2_b1: %s', 10,-1, @r2_b1_bS_STRING) with nowait;
	RAISERROR ('r2_b2: %s', 10,-1, @r2_b2_bS_STRING) with nowait;
	RAISERROR ('r2_b3: %s', 10,-1, @r2_b3_bS_STRING) with nowait;

	RAISERROR ('r2_c1: %s', 10,-1, @r2_c1_cS_STRING) with nowait;
	RAISERROR ('r2_c2: %s', 10,-1, @r2_c2_cS_STRING) with nowait;
	RAISERROR ('r2_c3: %s', 10,-1, @r2_c3_cS_STRING) with nowait;

	RAISERROR ('r2_d1: %s', 10,-1, @r2_d1_dS_STRING) with nowait;
	RAISERROR ('r2_d2: %s', 10,-1, @r2_d2_dS_STRING) with nowait;
	RAISERROR ('r2_d3: %s', 10,-1, @r2_d3_dS_STRING) with nowait;


	DECLARE @village_shared_defense_bonus float = 0;
    SELECT @village_shared_defense_bonus = village_shared_defense_bonus FROM settings WHERE settings_id=1

	--Invoke usp_AttackFormula
	EXECUTE usp_AttackFormula
	0, 0, @is_capture, 0, @village_shared_defense_bonus ,@p1_research_life, @p1_hero_life, @p1_item_attack, @p1_research_attack, @p1_research_a_attack, @p1_research_b_attack, @p1_research_c_attack, @p1_research_d_attack,
	@p1_hero_attack, @p1_hero_a_attack, @p1_hero_b_attack, @p1_hero_c_attack, @p1_hero_d_attack,
	@p1_a1, @p1_b1, @p1_c1, @p1_d1, @p1_a2, @p1_b2, @p1_c2, @p1_d2, @p1_a3, @p1_b3, @p1_c3, @p1_d3,
	@p2_research_life, @p2_hero_life, @p2_item_defense, @p2_research_defense, @p2_hero_defense, @p2_wall_level, @p2_total_villages,@p2_base_type,
	@p2_a1, @p2_b1, @p2_c1, @p2_d1, @p2_a2, @p2_b2, @p2_c2, @p2_d2, @p2_a3, @p2_b3, @p2_c3, @p2_d3,
	@r2_a1, @r2_b1, @r2_c1, @r2_d1, @r2_a2, @r2_b2, @r2_c2, @r2_d2, @r2_a3, @r2_b3, @r2_c3, @r2_d3,
	@k1_a1 = @k1_a1 Output, @k1_b1 = @k1_b1 Output, @k1_c1 = @k1_c1 Output, @k1_d1 = @k1_d1 Output, @k1_a2 = @k1_a2 Output, @k1_b2 = @k1_b2 Output, @k1_c2 = @k1_c2 Output, @k1_d2 = @k1_d2 Output, @k1_a3 = @k1_a3 Output, @k1_b3 = @k1_b3 Output, @k1_c3 = @k1_c3 Output, @k1_d3 = @k1_d3 Output,
	@k2_a1 = @k2_a1 Output, @k2_b1 = @k2_b1 Output, @k2_c1 = @k2_c1 Output, @k2_d1 = @k2_d1 Output, @k2_a2 = @k2_a2 Output, @k2_b2 = @k2_b2 Output, @k2_c2 = @k2_c2 Output, @k2_d2 = @k2_d2 Output, @k2_a3 = @k2_a3 Output, @k2_b3 = @k2_b3 Output, @k2_c3 = @k2_c3 Output, @k2_d3 = @k2_d3 Output,
	@i2_a1 = @i2_a1 Output, @i2_b1 = @i2_b1 Output, @i2_c1 = @i2_c1 Output, @i2_d1 = @i2_d1 Output, @i2_a2 = @i2_a2 Output, @i2_b2 = @i2_b2 Output, @i2_c2 = @i2_c2 Output, @i2_d2 = @i2_d2 Output, @i2_a3 = @i2_a3 Output, @i2_b3 = @i2_b3 Output, @i2_c3 = @i2_c3 Output, @i2_d3 = @i2_d3 Output,
	@rk2_a1 = @ak_a1 Output, @rk2_b1 = @ak_b1 Output, @rk2_c1 = @ak_c1 Output, @rk2_d1 = @ak_d1 Output, @rk2_a2 = @ak_a2 Output, @rk2_b2 = @ak_b2 Output, @rk2_c2 = @ak_c2 Output, @rk2_d2 = @ak_d2 Output, @rk2_a3 = @ak_a3 Output, @rk2_b3 = @ak_b3 Output, @rk2_c3 = @ak_c3 Output, @rk2_d3 = @ak_d3 Output,
	@p1_troops = @p1_troops Output, @p1_injured = @p1_injured Output, @p1_killed = @p1_killed Output,
	@r1_troops = @r1_troops Output, @r1_injured = @r1_injured Output, @r1_killed = @r1_killed Output,
	@p2_troops = @p2_troops Output, @p2_injured = @p2_injured Output, @p2_killed = @p2_killed Output,
	@r2_troops = @r2_troops Output, @r2_injured = @r2_injured Output, @r2_killed = @r2_killed Output,
	@p1_hero_xp_gain = @p1_hero_xp_gain Output, @p2_hero_xp_gain = @p2_hero_xp_gain Output,
	@r1 = @r1 Output, @r2 = @r2 Output, @r3 = @r3 Output, @r4 = @r4 Output, @r5 = @r5 Output, @victory = @victory Output;
 	
    
    SET @r1=@r1*@city_resource_rate;
    SET @r2=@r2*@city_resource_rate;
    SET @r3=@r3*@city_resource_rate;
    SET @r4=@r4*@city_resource_rate;
    SET @r5=@r5*@city_resource_rate;
    
	DECLARE @total_resource_captured bigint = @r1 + @r2 + @r3 + @r4 + @r5;

	DECLARE @k1_a1_AS_STRING varchar(30) = CAST(@k1_a1 AS VARCHAR);
	RAISERROR ('@k1_a1 : %s', 10,-1, @k1_a1_AS_STRING) with nowait;
	DECLARE @k1_a2_AS_STRING varchar(30) = CAST(@k1_a2 AS VARCHAR);
	RAISERROR ('@k1_a2 : %s', 10,-1, @k1_a2_AS_STRING) with nowait;
	DECLARE @k1_a3_AS_STRING varchar(30) = CAST(@k1_a3 AS VARCHAR);
	RAISERROR ('@k1_a3 : %s', 10,-1, @k1_a3_AS_STRING) with nowait;
	DECLARE @k1_b1_AS_STRING varchar(30) = CAST(@k1_b1 AS VARCHAR);
	RAISERROR ('@k1_b1 : %s', 10,-1, @k1_b1_AS_STRING) with nowait;
	DECLARE @k1_b2_AS_STRING varchar(30) = CAST(@k1_b2 AS VARCHAR);
	RAISERROR ('@k1_b2 : %s', 10,-1, @k1_b2_AS_STRING) with nowait;
	DECLARE @k1_b3_AS_STRING varchar(30) = CAST(@k1_b3 AS VARCHAR);
	RAISERROR ('@k1_b3 : %s', 10,-1, @k1_b3_AS_STRING) with nowait;
	DECLARE @k1_c1_AS_STRING varchar(30) = CAST(@k1_c1 AS VARCHAR);
	RAISERROR ('@k1_c1 : %s', 10,-1, @k1_c1_AS_STRING) with nowait;
	DECLARE @k1_c2_AS_STRING varchar(30) = CAST(@k1_c2 AS VARCHAR);
	RAISERROR ('@k1_c2 : %s', 10,-1, @k1_c2_AS_STRING) with nowait;
	DECLARE @k1_c3_AS_STRING varchar(30) = CAST(@k1_c3 AS VARCHAR);
	RAISERROR ('@k1_c3 : %s', 10,-1, @k1_c3_AS_STRING) with nowait;
	DECLARE @k1_d1_AS_STRING varchar(30) = CAST(@k1_a1 AS VARCHAR);
	RAISERROR ('@k1_d1 : %s', 10,-1, @k1_d1_AS_STRING) with nowait;
	DECLARE @k1_d2_AS_STRING varchar(30) = CAST(@k1_d2 AS VARCHAR);
	RAISERROR ('@k1_d2 : %s', 10,-1, @k1_d2_AS_STRING) with nowait;
	DECLARE @k1_d3_AS_STRING varchar(30) = CAST(@k1_d3 AS VARCHAR);
	RAISERROR ('@k1_d3 : %s', 10,-1, @k1_d3_AS_STRING) with nowait;


	DECLARE @k2_a1_AS_STRING varchar(30) = CAST(@k2_a1 AS VARCHAR);
	RAISERROR ('@k2_a1 : %s', 10,-1, @k2_a1_AS_STRING) with nowait;
	DECLARE @k2_a2_AS_STRING varchar(30) = CAST(@k2_a2 AS VARCHAR);
	RAISERROR ('@k2_a2 : %s', 10,-1, @k2_a2_AS_STRING) with nowait;
	DECLARE @k2_a3_AS_STRING varchar(30) = CAST(@k2_a3 AS VARCHAR);
	RAISERROR ('@k2_a3 : %s', 10,-1, @k2_a3_AS_STRING) with nowait;
	DECLARE @k2_b1_AS_STRING varchar(30) = CAST(@k2_b1 AS VARCHAR);
	RAISERROR ('@k2_b1 : %s', 10,-1, @k2_b1_AS_STRING) with nowait;
	DECLARE @k2_b2_AS_STRING varchar(30) = CAST(@k2_b2 AS VARCHAR);
	RAISERROR ('@k2_b2 : %s', 10,-1, @k2_b2_AS_STRING) with nowait;
	DECLARE @k2_b3_AS_STRING varchar(30) = CAST(@k2_b3 AS VARCHAR);
	RAISERROR ('@k2_b3 : %s', 10,-1, @k2_b3_AS_STRING) with nowait;
	DECLARE @k2_c1_AS_STRING varchar(30) = CAST(@k2_c1 AS VARCHAR);
	RAISERROR ('@k2_c1 : %s', 10,-1, @k2_c1_AS_STRING) with nowait;
	DECLARE @k2_c2_AS_STRING varchar(30) = CAST(@k2_c2 AS VARCHAR);
	RAISERROR ('@k2_c2 : %s', 10,-1, @k2_c2_AS_STRING) with nowait;
	DECLARE @k2_c3_AS_STRING varchar(30) = CAST(@k2_c3 AS VARCHAR);
	RAISERROR ('@k2_c3 : %s', 10,-1, @k2_c3_AS_STRING) with nowait;
	DECLARE @k2_d1_AS_STRING varchar(30) = CAST(@k2_a1 AS VARCHAR);
	RAISERROR ('@k2_d1 : %s', 10,-1, @k2_d1_AS_STRING) with nowait;
	DECLARE @k2_d2_AS_STRING varchar(30) = CAST(@k2_d2 AS VARCHAR);
	RAISERROR ('@k2_d2 : %s', 10,-1, @k2_d2_AS_STRING) with nowait;
	DECLARE @k2_d3_AS_STRING varchar(30) = CAST(@k2_d3 AS VARCHAR);
	RAISERROR ('@k2_d3 : %s', 10,-1, @k2_d3_AS_STRING) with nowait;


	SET @total_resource_captured = @total_resource_captured*@p1_loot_multiplier;

	DECLARE @p2_resource_kept_AS_STRING varchar(30) = CAST(@p2_resource_kept AS VARCHAR);
	RAISERROR ('@p2_resource_kept : %s', 10,-1, @p2_resource_kept_AS_STRING) with nowait;

	--SET @r1 = @r1 * @p1_loot_multiplier;
	--SET @r2 = @r2 * @p1_loot_multiplier;
	--SET @r3 = @r3 * @p1_loot_multiplier;
	--SET @r4 = @r4 * @p1_loot_multiplier;
	--SET @r5 = @r5 * @p1_loot_multiplier;

	DECLARE @r1_available bigint = @p2_r1- @p2_resource_kept;
	IF @r1_available <0
		BEGIN
			SET @r1_available = 0;
		END
	DECLARE @r2_available bigint = @p2_r2- @p2_resource_kept;
	IF @r2_available <0
		BEGIN
			SET @r2_available = 0;
		END
	DECLARE @r3_available bigint = @p2_r3- @p2_resource_kept;
	IF @r3_available <0
		BEGIN
			SET @r3_available = 0;
		END
	DECLARE @r4_available bigint = @p2_r4- @p2_resource_kept;
	IF @r4_available <0
		BEGIN
			SET @r4_available = 0;
		END
	DECLARE @r5_available bigint = @p2_r5- @p2_resource_kept;
	IF @r5_available <0
		BEGIN
			SET @r5_available = 0;
		END
        
    DECLARE @r1_available_AS_STRING varchar(30) = CAST(@r1_available AS VARCHAR);
	RAISERROR ('@r1_available : %s', 10,-1, @r1_available_AS_STRING) with nowait;
	DECLARE @r2_available_AS_STRING varchar(30) = CAST(@r2_available AS VARCHAR);
	RAISERROR ('@r2_available : %s', 10,-1, @r2_available_AS_STRING) with nowait;
	DECLARE @r3_available_AS_STRING varchar(30) = CAST(@r3_available AS VARCHAR);
	RAISERROR ('@r3_available : %s', 10,-1, @r3_available_AS_STRING) with nowait;
	DECLARE @r4_available_AS_STRING varchar(30) = CAST(@r4_available AS VARCHAR);
	RAISERROR ('@r4_available : %s', 10,-1, @r4_available_AS_STRING) with nowait;
	DECLARE @r5_available_AS_STRING varchar(30) = CAST(@r5_available AS VARCHAR);
	RAISERROR ('@r5_available : %s', 10,-1, @r5_available_AS_STRING) with nowait;
    
	DECLARE @total_resource_captured_AS_STRING varchar(30) = CAST(@total_resource_captured AS VARCHAR);
	RAISERROR ('@total_resource_captured : %s', 10,-1, @total_resource_captured_AS_STRING) with nowait;

	DECLARE @total_resource_available int = @r1_available + @r2_available + @r3_available + @r4_available + @r5_available;

	DECLARE @total_resource_available_AS_STRING varchar(30) = CAST(@total_resource_available AS VARCHAR);
	RAISERROR ('@total_resource_available : %s', 10,-1, @total_resource_available_AS_STRING) with nowait;

    If(@total_resource_captured > @total_resource_available)
    BEGIN
       SET @total_resource_captured = @total_resource_available;
    END

	DECLARE @r1_ratio float = 0;
	DECLARE @r2_ratio float = 0;
	DECLARE @r3_ratio float = 0;
	DECLARE @r4_ratio float = 0;
	DECLARE @r5_ratio float = 0;

	IF(@total_resource_available>1)
		BEGIN
		SET @r1_ratio = CAST(@r1_available AS float)/ CAST(@total_resource_available AS float);
		SET @r2_ratio = CAST(@r2_available AS float)/ CAST(@total_resource_available AS float);
		SET @r3_ratio = CAST(@r3_available AS float)/ CAST(@total_resource_available AS float);
		SET @r4_ratio = CAST(@r4_available AS float)/ CAST(@total_resource_available AS float);
		SET @r5_ratio = CAST(@r5_available AS float)/ CAST(@total_resource_available AS float);
		END

	DECLARE @r1_ratio_AS_STRING varchar(30) = CAST(@r1_ratio AS VARCHAR);
	RAISERROR ('@r1_ratio : %s', 10,-1, @r1_ratio_AS_STRING) with nowait;
	DECLARE @r2_ratio_AS_STRING varchar(30) = CAST(@r2_ratio AS VARCHAR);
	RAISERROR ('@r2_ratio : %s', 10,-1, @r2_ratio_AS_STRING) with nowait;
	DECLARE @r3_ratio_AS_STRING varchar(30) = CAST(@r3_ratio AS VARCHAR);
	RAISERROR ('@r3_ratio : %s', 10,-1, @r3_ratio_AS_STRING) with nowait;
	DECLARE @r4_ratio_AS_STRING varchar(30) = CAST(@r4_ratio AS VARCHAR);
	RAISERROR ('@r4_ratio : %s', 10,-1, @r4_ratio_AS_STRING) with nowait;
	DECLARE @r5_ratio_AS_STRING varchar(30) = CAST(@r5_ratio AS VARCHAR);
	RAISERROR ('@r5_ratio : %s', 10,-1, @r5_ratio_AS_STRING) with nowait;

	DECLARE @r1_max_capture bigint = @r1_ratio * @total_resource_captured;
	DECLARE @r2_max_capture bigint = @r2_ratio * @total_resource_captured;
	DECLARE @r3_max_capture bigint = @r3_ratio * @total_resource_captured;
	DECLARE @r4_max_capture bigint = @r4_ratio * @total_resource_captured;
	DECLARE @r5_max_capture bigint = @r5_ratio * @total_resource_captured;

    -- not consistent with pve
	SET @r1 = (@r1_max_capture);
	SET @r2 = (@r2_max_capture);
	SET @r3 = (@r3_max_capture);
	SET @r4 = (@r4_max_capture);
	SET @r5 = (@r5_max_capture);

	DECLARE @r1_AS_STRING varchar(30) = CAST(@r1 AS VARCHAR);
	RAISERROR ('@pvp_r1_captured : %s', 10,-1, @r1_AS_STRING) with nowait;
	DECLARE @r2_AS_STRING varchar(30) = CAST(@r2 AS VARCHAR);
	RAISERROR ('@pvp_r2_captured : %s', 10,-1, @r2_AS_STRING) with nowait;
	DECLARE @r3_AS_STRING varchar(30) = CAST(@r3 AS VARCHAR);
	RAISERROR ('@pvp_r3_captured : %s', 10,-1, @r3_AS_STRING) with nowait;
	DECLARE @r4_AS_STRING varchar(30) = CAST(@r3 AS VARCHAR);
	RAISERROR ('@pvp_r4_captured : %s', 10,-1, @r4_AS_STRING) with nowait;
	DECLARE @r5_AS_STRING varchar(30) = CAST(@r5 AS VARCHAR);
	RAISERROR ('@pvp_r5_captured : %s', 10,-1, @r5_AS_STRING) with nowait;

	--Troops Survived
	DECLARE @s1_a1 int = 0, @s1_b1 int = 0, @s1_c1 int = 0, @s1_d1 int = 0, @s1_a2 int = 0, @s1_b2 int = 0, @s1_c2 int = 0, @s1_d2 int = 0, @s1_a3 int = 0, @s1_b3 int = 0, @s1_c3 int = 0, @s1_d3 int = 0;
	SET @s1_a1 = @p1_a1-@k1_a1;
	SET @s1_a2 = @p1_a2-@k1_a2;
	SET @s1_a3 = @p1_a3-@k1_a3;
	SET @s1_b1 = @p1_b1-@k1_b1;
	SET @s1_b2 = @p1_b2-@k1_b2;
	SET @s1_b3 = @p1_b3-@k1_b3;
	SET @s1_c1 = @p1_c1-@k1_c1;
	SET @s1_c2 = @p1_c2-@k1_c2;
	SET @s1_c3 = @p1_c3-@k1_c3;
	SET @s1_d1 = @p1_d1-@k1_d1;
	SET @s1_d2 = @p1_d2-@k1_d2;
	SET @s1_d3 = @p1_d3-@k1_d3;




	DECLARE @is_capture_AS_STRING varchar(30) = CAST(@is_capture AS VARCHAR);
	RAISERROR ('is_capture : %s', 10,-1, @is_capture_AS_STRING) with nowait;

	DECLARE @victory_AS_STRING varchar(30) = CAST(@victory AS VARCHAR);
	RAISERROR ('victory : %s', 10,-1, @victory_AS_STRING) with nowait;

	DECLARE @reinforcements_table_reinforce_id bigint,
	@reinforcements_table_from_profile_id bigint,
	@reinforcements_table_from_base_id bigint,
	@reinforcements_table_to_profile_id bigint,
	@reinforcements_table_to_base_id bigint,
	@reinforcements_table_r2_a1 int,
	@reinforcements_table_r2_a2 int,
	@reinforcements_table_r2_a3 int,
	@reinforcements_table_r2_b1 int,
	@reinforcements_table_r2_b2 int,
	@reinforcements_table_r2_b3 int,
	@reinforcements_table_r2_c1 int,
	@reinforcements_table_r2_c2 int,
	@reinforcements_table_r2_c3 int,
	@reinforcements_table_r2_d1 int,
	@reinforcements_table_r2_d2 int,
	@reinforcements_table_r2_d3 int,
	@reinforcements_table_r2_a1_ratio float,
	@reinforcements_table_r2_a2_ratio float,
	@reinforcements_table_r2_a3_ratio float,
	@reinforcements_table_r2_b1_ratio float,
	@reinforcements_table_r2_b2_ratio float,
	@reinforcements_table_r2_b3_ratio float,
	@reinforcements_table_r2_c1_ratio float,
	@reinforcements_table_r2_c2_ratio float,
	@reinforcements_table_r2_c3_ratio float,
	@reinforcements_table_r2_d1_ratio float,
	@reinforcements_table_r2_d2_ratio float,
	@reinforcements_table_r2_d3_ratio float

    DECLARE @total_survived int= @s1_a1+@s1_a2+@s1_a3+@s1_b1+@s1_b2+@s1_b3+@s1_c1+@s1_c2+@s1_c3+@s1_d1+@s1_d2+@s1_d3;
    DECLARE @survived_AS_STRING varchar(30) = CAST(@total_survived AS VARCHAR);
	RAISERROR ('total survived : %s', 10,-1, @survived_AS_STRING) with nowait;

	IF (@is_capture = 1 AND @victory = 1)
	BEGIN --Successful capture

		DECLARE @dt_return datetime = GETUTCDATE();

		SELECT @dt_return=attack_queue FROM base WHERE base_id=@p1_base_id;

		SET @dt_return = DATEADD(ss, -1, @dt_return); --NO RETURN MARCH

		--update the profile1(atacker) data after attack
		UPDATE base SET attack_return=@dt_return,
		a1=a1-@p1_a1, a2=a2-@p1_a2, a3=a3-@p1_a3, b1=b1-@p1_b1, b2=b2-@p1_b2, b3=b3-@p1_b3, c1=c1-@p1_c1, c2=c2-@p1_c2, c3=c3-@p1_c3, d1=d1-@p1_d1, d2=d2-@p1_d2, d3=d3-@p1_d3,
		a_a1=0, a_a2=0, a_a3=0, a_b1=0, a_b2=0, a_b3=0, a_c1=0, a_c2=0, a_c3=0, a_d1=0, a_d2=0, a_d3=0,
		a_r1=0, a_r2=0, a_r3=0, a_r4=0, a_r5=0
		WHERE base_id=@p1_base_id;

        UPDATE attack SET date_return=date_arrive
        WHERE attack_id=@attack_id;

		/*
		--clear the base to zero
		UPDATE base SET profile_id=@p1_profile_id,
		r1=@p2_r1, r2=@p2_r2, r3=@p2_r3, r4=@p2_r4, r5=@p2_r5,
		a1=@s1_a1, b1=@s1_b1, c1=@s1_c1, d1=@s1_d1, a2=@s1_a2, b2=@s1_b2, c2=@s1_c2, d2=@s1_d2, a3=@s1_a3, b3=@s1_b3, c3=@s1_c3, d3=@s1_d3,
		i_a1=0, i_b1=0, i_c1=0, i_d1=0, i_a2=0, i_b2=0, i_c2=0, i_d2=0, i_a3=0, i_b3=0, i_c3=0, i_d3=0,
		h_a1=0, h_b1=0, h_c1=0, h_d1=0, h_a2=0, h_b2=0, h_c2=0, h_d2=0, h_a3=0, h_b3=0, h_c3=0, h_d3=0,
		t_a1=0, t_a2=0, t_a3=0, t_b1=0, t_b2=0, t_b3=0, t_c1=0, t_c2=0, t_c3=0, t_d1=0, t_d2=0, t_d3=0,
		r_a1=0, r_a2=0, r_a3=0, r_b1=0, r_b2=0, r_b3=0, r_c1=0, r_c2=0, r_c3=0, r_d1=0, r_d2=0, r_d3=0,
		rt_a1=0, rt_a2=0, rt_a3=0, rt_b1=0, rt_b2=0, rt_b3=0, rt_c1=0, rt_c2=0, rt_c3=0, rt_d1=0, rt_d2=0, rt_d3=0,
		a_a1=0, a_a2=0, a_a3=0, a_b1=0, a_b2=0, a_b3=0, a_c1=0, a_c2=0, a_c3=0, a_d1=0, a_d2=0, a_d3=0,
		build_queue=GETUTCDATE(), build_time=0, build_location=0, research_queue=GETUTCDATE(), research_time=0,
		attack_queue=GETUTCDATE(), attack_time=0, attack_return=GETUTCDATE(), attack_id=0, reinforce_queue=GETUTCDATE(),
		reinforce_time=0, reinforce_id=0, reinforce_action=0, transfer_queue=GETUTCDATE(), transfer_time=0, transfer_id=0,
		trade_queue=GETUTCDATE(), trade_time=0, trade_id=0, craft_queue=GETUTCDATE(), craft_time=0, hospital_queue=GETUTCDATE(),
		hospital_time=0, a_queue=GETUTCDATE(), a_time=0, b_queue=GETUTCDATE(), b_time=0, c_queue=GETUTCDATE(), c_time=0,
		d_queue=GETUTCDATE(), d_time=0, spy_queue=GETUTCDATE(), spy_time=0, item_r1_ending=GETUTCDATE(), item_r2_ending=GETUTCDATE(),
		item_r3_ending=GETUTCDATE(), item_r4_ending=GETUTCDATE(), item_r5_ending=GETUTCDATE(), item_attack_ending=GETUTCDATE(),
		item_defense_ending=GETUTCDATE(), research_r1=0, research_r2=0, research_r3=0, research_r4=0, research_r5=0, research_build=0,
		research_research=0, research_march=0, research_trade=0, research_craft=0, research_heal=0, research_training=0, research_a_attack=0,
		research_b_attack=0, research_c_attack=0, research_d_attack=0, research_attack=0, research_defense=0, research_life=0, research_load=0,
		item_r1=0, item_r2=0, item_r3=0, item_r4=0, item_r5=0, item_attack=0, item_defense=0, research_a2=0, research_a3=0, research_b2=0,
		research_b3=0, research_c2=0, research_c3=0, research_d2=0, research_d3=0,
        last_captured=GETUTCDATE(),last_attacked=GETUTCDATE()
		WHERE base_id=@p2_base_id;
		*/
		
		
		-- Capture effect
		
		-- Check of its a recapture
		DECLARE @previous_base_profile_id int =0, @recapture_time_ending datetime =0, @last_captured datetime;
		
		SELECT @previous_base_profile_id=previous_profile_id ,@last_captured=last_captured FROM base WHERE base_id = @p2_base_id
		SET @recapture_time_ending = DATEADD(ss, @base_loyalty_conversion_time, @last_captured)
		IF(@previous_base_profile_id=@p1_profile_id AND @recapture_time_ending<GETUTCDATE())
		BEGIN
			SET @building_minus_level_after_capture=0 
			SET @research_minus_level_after_capture=0
		END
		
		UPDATE base SET profile_id=@p1_profile_id,
		r1=@p2_r1, r2=@p2_r2, r3=@p2_r3, r4=@p2_r4, r5=@p2_r5,
		a1=@s1_a1, b1=@s1_b1, c1=@s1_c1, d1=@s1_d1, a2=@s1_a2, b2=@s1_b2, c2=@s1_c2, d2=@s1_d2, a3=@s1_a3, b3=@s1_b3, c3=@s1_c3, d3=@s1_d3,
		i_a1=0, i_b1=0, i_c1=0, i_d1=0, i_a2=0, i_b2=0, i_c2=0, i_d2=0, i_a3=0, i_b3=0, i_c3=0, i_d3=0,
		h_a1=0, h_b1=0, h_c1=0, h_d1=0, h_a2=0, h_b2=0, h_c2=0, h_d2=0, h_a3=0, h_b3=0, h_c3=0, h_d3=0,
		t_a1=0, t_a2=0, t_a3=0, t_b1=0, t_b2=0, t_b3=0, t_c1=0, t_c2=0, t_c3=0, t_d1=0, t_d2=0, t_d3=0,
		r_a1=0, r_a2=0, r_a3=0, r_b1=0, r_b2=0, r_b3=0, r_c1=0, r_c2=0, r_c3=0, r_d1=0, r_d2=0, r_d3=0,
		rt_a1=0, rt_a2=0, rt_a3=0, rt_b1=0, rt_b2=0, rt_b3=0, rt_c1=0, rt_c2=0, rt_c3=0, rt_d1=0, rt_d2=0, rt_d3=0,
		a_a1=0, a_a2=0, a_a3=0, a_b1=0, a_b2=0, a_b3=0, a_c1=0, a_c2=0, a_c3=0, a_d1=0, a_d2=0, a_d3=0,
		build_queue=GETUTCDATE(), build_time=0, build_location=0, research_queue=GETUTCDATE(), research_time=0,
		attack_queue=GETUTCDATE(), attack_time=0, attack_return=GETUTCDATE(), attack_id=0, reinforce_queue=GETUTCDATE(),
		reinforce_time=0, reinforce_id=0, reinforce_action=0, transfer_queue=GETUTCDATE(), transfer_time=0, transfer_id=0,
		trade_queue=GETUTCDATE(), trade_time=0, trade_id=0, craft_queue=GETUTCDATE(), craft_time=0, hospital_queue=GETUTCDATE(),
		hospital_time=0, a_queue=GETUTCDATE(), a_time=0, b_queue=GETUTCDATE(), b_time=0, c_queue=GETUTCDATE(), c_time=0,
		d_queue=GETUTCDATE(), d_time=0, spy_queue=GETUTCDATE(), spy_time=0, item_r1_ending=GETUTCDATE(), item_r2_ending=GETUTCDATE(),
		item_r3_ending=GETUTCDATE(), item_r4_ending=GETUTCDATE(), item_r5_ending=GETUTCDATE(), item_attack_ending=GETUTCDATE(),
		item_defense_ending=GETUTCDATE(), research_r1=research_r1-@research_minus_level_after_capture, research_r2=research_r2, research_r3=research_r3, research_r4=research_r4, research_r5=research_r5, research_build=research_build,
		research_research=research_research, research_march=research_march, research_trade=research_trade, research_craft=research_craft, research_heal=research_heal, research_training=research_training, research_a_attack=research_a_attack,
		research_b_attack=research_b_attack, research_c_attack=research_c_attack, research_d_attack=research_d_attack, research_attack=research_attack, research_defense=research_defense, research_life=research_life, research_load=research_load,
		item_r1=0, item_r2=0, item_r3=0, item_r4=0, item_r5=0, item_attack=0, item_defense=0, 
		research_a2=research_a2, research_a3=research_a3, research_b2=research_b2, research_b3=research_b3, research_c2=research_b3, research_c3=research_c3, research_d2=research_d2, research_d3=research_d3,
        last_captured=GETUTCDATE(),last_attacked=GETUTCDATE(), previous_profile_id = @p2_profile_id
		WHERE base_id=@p2_base_id;
		
		-- Damage other building
		UPDATE build SET building_level=building_level- @building_minus_level_after_capture WHERE base_id =@p2_base_id
		
		-- Set wall to level 1
		UPDATE build SET building_level=1 WHERE base_id =@p2_base_id AND building_id = 102
		
		-- Destroy low level buildings except for castle
		DELETE FROM build WHERE base_id=@p2_base_id AND building_level <1 AND building_id != 101
		
		-- Set castle to minimum level 1
		UPDATE build SET building_level=1 WHERE base_id =@p2_base_id AND  building_level <1 AND building_id = 101
		
		
		--Free Market
        IF NOT EXISTS(SELECT building_level FROM build WHERE base_id=@p2_base_id AND building_id=12)
        BEGIN
			DECLARE @random_pos1 int = 400 + dbo.fx_generateRandomNumber(newID(), 1, 9); --max 18 building spots for villages
			INSERT INTO build VALUES (@p2_base_id, @random_pos1, 12, 1, GETUTCDATE());
		END
        
        --Free Rallypoint
        IF NOT EXISTS(SELECT building_level FROM build WHERE base_id=@p2_base_id AND building_id=18)
        BEGIN
			DECLARE @random_pos2 int = 400 + dbo.fx_generateRandomNumber(newID(), 10, 18); --max 18 building spots for villages
            INSERT INTO build VALUES (@p2_base_id, @random_pos2, 18, 1, GETUTCDATE());
        END
        
		DECLARE @player_profile_uid nvarchar(50);
		SELECT @player_profile_uid = uid FROM profile WHERE profile_id = @p1_profile_id;
		
        EXECUTE usp_ApplyProtection @player_profile_uid,@p2_base_id,0,0
		
        EXECUTE usp_UpdateRegions @p2_base_id
		--Handle incoming(reinforcement and attack)/outgoing(attack) army

		--Outgoing Attack (redircect to owner capital - update p1 base table , delete attack table)
			DECLARE @owner2_capital_base bigint = 0;
			DECLARE @a1_redirected int =0;
			DECLARE @a2_redirected int =0;
			DECLARE @a3_redirected int =0;
			DECLARE @b1_redirected int =0;
			DECLARE @b2_redirected int =0;
			DECLARE @b3_redirected int =0;
			DECLARE @c1_redirected int =0;
			DECLARE @c2_redirected int =0;
			DECLARE @c3_redirected int =0;
			DECLARE @d1_redirected int =0;
			DECLARE @d2_redirected int =0;
			DECLARE @d3_redirected int =0;
			DECLARE @marchtime int = 0;
			DECLARE @datesent datetime = 0;
			DECLARE @datearrive datetime = 0;
			DECLARE @marchtimecompleted int = 0;

			SELECT @owner2_capital_base=base_id FROM base WHERE profile_id = @p2_profile_id AND base_type = 1;

            IF EXISTS(SELECT * FROM attack WHERE from_profile_id = @p2_profile_id AND from_base_id = @p2_base_id)
            BEGIN

                SELECT @a1_redirected = a1, @a2_redirected = a2, @a3_redirected = a3, @b1_redirected = b1, @b2_redirected = b2, @b3_redirected = b3, @c1_redirected = c1, @c2_redirected = c2, @c3_redirected = c3, @d1_redirected = d1, @d2_redirected = d2, @d3_redirected = d3 ,
                @marchtime = march_time, @datesent = date_sent , @datearrive = date_arrive
                FROM attack WHERE from_profile_id = @p2_profile_id AND from_base_id = @p2_base_id;

                DECLARE @capturetime datetime= GETUTCDATE();

                DECLARE @capturetime_AS_STRING varchar(30) = CAST(@capturetime AS VARCHAR);
                RAISERROR ('capturetime : %s', 10,-1, @capturetime_AS_STRING) with nowait;
                DECLARE @datesent_AS_STRING varchar(30) = CAST(@datesent AS VARCHAR);
                RAISERROR ('datesent : %s', 10,-1, @datesent_AS_STRING) with nowait;

                SET @marchtimecompleted = DATEDIFF(second,@datesent,@capturetime);
                SET @datearrive = @capturetime + @marchtimecompleted;

                --*current hack instant refund

                UPDATE base SET a1=a1+@a1_redirected, b1=b1+@b1_redirected, c1=c1+@c1_redirected, d1=d1+@d1_redirected, a2=a2+@a2_redirected, b2=b2+@b2_redirected, c2=c2+@c2_redirected, d2=d2+@d2_redirected, a3=a3+@a1_redirected, b3=b3+@b3_redirected, c3=c3+@c3_redirected, d3=d3+@d3_redirected
                WHERE base_id = @owner2_capital_base;

                DELETE attack WHERE from_profile_id = @p2_profile_id AND from_base_id = @p2_base_id AND date_return > GETUTCDATE();
            END
		--Incoming Reinforcements (return back to owner - update reinforce table)

			UPDATE reinforce SET date_arrive = GETUTCDATE()+ DATEDIFF(second,date_sent,GETUTCDATE()) , is_return = 1
			WHERE to_profile_id = @p2_profile_id AND to_base_id = @p2_base_id
            --*current hack instant refund
            UPDATE
				SENDER_BASE
			SET
				SENDER_BASE.a1 = SENDER_BASE.a1 + SENDER_REINFORCE.a1,
                SENDER_BASE.r_a1 = SENDER_BASE.r_a1 - SENDER_REINFORCE.a1,
				SENDER_BASE.a2 = SENDER_BASE.a2 + SENDER_REINFORCE.a2,
                SENDER_BASE.r_a2 = SENDER_BASE.r_a2 - SENDER_REINFORCE.a2,
				SENDER_BASE.a3 = SENDER_BASE.a3 + SENDER_REINFORCE.a3,
                SENDER_BASE.r_a3 = SENDER_BASE.r_a3 - SENDER_REINFORCE.a3,
				SENDER_BASE.b1 = SENDER_BASE.b1 + SENDER_REINFORCE.b1,
                SENDER_BASE.r_b1 = SENDER_BASE.r_b1 - SENDER_REINFORCE.b1,
				SENDER_BASE.b2 = SENDER_BASE.b2 + SENDER_REINFORCE.b2,
                SENDER_BASE.r_b2 = SENDER_BASE.r_b2 - SENDER_REINFORCE.b2,
				SENDER_BASE.b3 = SENDER_BASE.b3 + SENDER_REINFORCE.b3,
                SENDER_BASE.r_b3 = SENDER_BASE.r_b3 - SENDER_REINFORCE.b3,
				SENDER_BASE.c1 = SENDER_BASE.c1 + SENDER_REINFORCE.c1,
                SENDER_BASE.r_c1 = SENDER_BASE.r_c1 - SENDER_REINFORCE.c1,
				SENDER_BASE.c2 = SENDER_BASE.c2 + SENDER_REINFORCE.c2,
                SENDER_BASE.r_c2 = SENDER_BASE.r_c2 - SENDER_REINFORCE.c2,
				SENDER_BASE.c3 = SENDER_BASE.c3 + SENDER_REINFORCE.c3,
                SENDER_BASE.r_c3 = SENDER_BASE.r_c3 - SENDER_REINFORCE.c3,
				SENDER_BASE.d1 = SENDER_BASE.d1 + SENDER_REINFORCE.d1,
                SENDER_BASE.r_d1 = SENDER_BASE.r_d1 - SENDER_REINFORCE.d1,
				SENDER_BASE.d2 = SENDER_BASE.d2 + SENDER_REINFORCE.d2,
                SENDER_BASE.r_d2 = SENDER_BASE.r_d2 - SENDER_REINFORCE.d2,
				SENDER_BASE.d3 = SENDER_BASE.d3 + SENDER_REINFORCE.d3,
                SENDER_BASE.r_d3 = SENDER_BASE.r_d3 - SENDER_REINFORCE.d3
				
			FROM
				base SENDER_BASE
			INNER JOIN
				reinforce SENDER_REINFORCE
			ON
				SENDER_BASE.base_id = SENDER_REINFORCE.from_base_id
			WHERE
				SENDER_REINFORCE.to_profile_id = @p2_profile_id AND SENDER_REINFORCE.to_base_id = @p2_base_id AND SENDER_REINFORCE.date_arrive > GETUTCDATE() AND SENDER_REINFORCE.from_profile_id != @p1_profile_id AND SENDER_REINFORCE.from_base_id != @p1_base_id;

		--Incoming Attacks (return back to owner - update owner base table , delete attack table)

			--*current hack instant refund
			UPDATE
				SENDER_BASE
			SET
                SENDER_BASE.attack_return = SENDER_BASE.attack_queue,
                
				SENDER_BASE.a1 = SENDER_BASE.a1 + SENDER_ATTACK.a1,
                SENDER_BASE.a_a1 = 0,
				SENDER_BASE.a2 = SENDER_BASE.a2 + SENDER_ATTACK.a2,
                SENDER_BASE.a_a2 = 0,
				SENDER_BASE.a3 = SENDER_BASE.a3 + SENDER_ATTACK.a3,
                SENDER_BASE.a_a3 = 0,
				SENDER_BASE.b1 = SENDER_BASE.b1 + SENDER_ATTACK.b1,
                SENDER_BASE.a_b1 = 0,
				SENDER_BASE.b2 = SENDER_BASE.b2 + SENDER_ATTACK.b2,
                SENDER_BASE.a_b2 = 0,
				SENDER_BASE.b3 = SENDER_BASE.b3 + SENDER_ATTACK.b3,
                SENDER_BASE.a_b3 = 0,
				SENDER_BASE.c1 = SENDER_BASE.c1 + SENDER_ATTACK.c1,
                SENDER_BASE.a_c1 = 0,
				SENDER_BASE.c2 = SENDER_BASE.c2 + SENDER_ATTACK.c2,
                SENDER_BASE.a_c2 = 0,
				SENDER_BASE.c3 = SENDER_BASE.c3 + SENDER_ATTACK.c3,
                SENDER_BASE.a_c3 = 0,
				SENDER_BASE.d1 = SENDER_BASE.d1 + SENDER_ATTACK.d1,
                SENDER_BASE.a_d1 = 0,
				SENDER_BASE.d2 = SENDER_BASE.d2 + SENDER_ATTACK.d2,
                SENDER_BASE.a_d2 = 0,
				SENDER_BASE.d3 = SENDER_BASE.d3 + SENDER_ATTACK.d3,
                SENDER_BASE.a_d3 = 0
				
			FROM
				base SENDER_BASE
			INNER JOIN
				attack SENDER_ATTACK
			ON
				SENDER_BASE.base_id = SENDER_ATTACK.from_base_id
			WHERE
				SENDER_ATTACK.to_profile_id = @p2_profile_id AND SENDER_ATTACK.to_base_id = @p2_base_id AND SENDER_ATTACK.date_arrive > GETUTCDATE() AND SENDER_ATTACK.from_profile_id != @p1_profile_id AND SENDER_ATTACK.from_base_id != @p1_base_id;

			DELETE attack WHERE to_profile_id = @p2_profile_id AND to_base_id = @p2_base_id AND date_arrive > GETUTCDATE() AND from_profile_id != @p1_profile_id  AND from_base_id != @p1_base_id ;

		--Incoming Trades (return back to owner - update p1 base table , delete trade table)

			--*current hack instant refund
			UPDATE
				SENDER_BASE
			SET
				SENDER_BASE.r1 = SENDER_BASE.r1 + SENDER_TRADE.r1,
				SENDER_BASE.r2 = SENDER_BASE.r2 + SENDER_TRADE.r2,
				SENDER_BASE.r3 = SENDER_BASE.r3 + SENDER_TRADE.r3,
				SENDER_BASE.r4 = SENDER_BASE.r4 + SENDER_TRADE.r4,
				SENDER_BASE.r5 = SENDER_BASE.r5 + SENDER_TRADE.r5
			FROM
				base SENDER_BASE
			INNER JOIN
				trades SENDER_TRADE
			ON
				SENDER_BASE.base_id = SENDER_TRADE.from_base_id
			WHERE
				SENDER_TRADE.to_profile_id = @p2_profile_id AND SENDER_TRADE.to_base_id = @p2_base_id;

			DELETE trades WHERE to_profile_id = @p2_profile_id AND to_base_id = @p2_base_id AND date_arrive > GETUTCDATE() ;

		--Update defender's reinforcement (can be optimized, this one is copied from if defender base still stands)

		DECLARE reinforcements_table_cursor CURSOR
		FOR SELECT reinforce_id,
			from_profile_id,
			from_base_id,
			to_profile_id,
			to_base_id,
			r2_a1,
			r2_a2,
			r2_a3,
			r2_b1,
			r2_b2,
			r2_b3,
			r2_c1,
			r2_c2,
			r2_c3,
			r2_d1,
			r2_d2,
			r2_d3,
			r2_a1_ratio,
			r2_a2_ratio,
			r2_a3_ratio,
			r2_b1_ratio,
			r2_b2_ratio,
			r2_b3_ratio,
			r2_c1_ratio,
			r2_c2_ratio,
			r2_c3_ratio,
			r2_d1_ratio,
			r2_d2_ratio,
			r2_d3_ratio
	  FROM @reinforcements_table

		-- Loop while there are still some rows in the temporary table
		OPEN reinforcements_table_cursor
		FETCH NEXT FROM reinforcements_table_cursor
		INTO @reinforcements_table_reinforce_id,
		@reinforcements_table_from_profile_id,
		@reinforcements_table_from_base_id,
		@reinforcements_table_to_profile_id,
		@reinforcements_table_to_base_id,
		@reinforcements_table_r2_a1,
		@reinforcements_table_r2_a2,
		@reinforcements_table_r2_a3,
		@reinforcements_table_r2_b1,
		@reinforcements_table_r2_b2,
		@reinforcements_table_r2_b3,
		@reinforcements_table_r2_c1,
		@reinforcements_table_r2_c2,
		@reinforcements_table_r2_c3,
		@reinforcements_table_r2_d1,
		@reinforcements_table_r2_d2,
		@reinforcements_table_r2_d3,
		@reinforcements_table_r2_a1_ratio,
		@reinforcements_table_r2_a2_ratio,
		@reinforcements_table_r2_a3_ratio,
		@reinforcements_table_r2_b1_ratio,
		@reinforcements_table_r2_b2_ratio,
		@reinforcements_table_r2_b3_ratio,
		@reinforcements_table_r2_c1_ratio,
		@reinforcements_table_r2_c2_ratio,
		@reinforcements_table_r2_c3_ratio,
		@reinforcements_table_r2_d1_ratio,
		@reinforcements_table_r2_d2_ratio,
		@reinforcements_table_r2_d3_ratio;
		WHILE @@FETCH_STATUS = 0
		BEGIN
			-- Process

			-- Update base table (optimization needed on @r2_killed*@reinforcements_table_r2_a1_ratio)
			UPDATE base
			SET
			a1=a1-(@r2_killed*@reinforcements_table_r2_a1_ratio),
			a2=a2-(@r2_killed*@reinforcements_table_r2_a2_ratio),
			a3=a3-(@r2_killed*@reinforcements_table_r2_a3_ratio),
			b1=b1-(@r2_killed*@reinforcements_table_r2_b1_ratio),
			b2=b2-(@r2_killed*@reinforcements_table_r2_b2_ratio),
			b3=b3-(@r2_killed*@reinforcements_table_r2_b3_ratio),
			c1=c1-(@r2_killed*@reinforcements_table_r2_c1_ratio),
			c2=c2-(@r2_killed*@reinforcements_table_r2_c2_ratio),
			c3=c3-(@r2_killed*@reinforcements_table_r2_c3_ratio),
			d1=d1-(@r2_killed*@reinforcements_table_r2_d1_ratio),
			d2=d2-(@r2_killed*@reinforcements_table_r2_d2_ratio),
			d3=d3-(@r2_killed*@reinforcements_table_r2_d3_ratio),
			r_a1=r_a1-(@r2_killed*@reinforcements_table_r2_a1_ratio),
			r_a2=r_a2-(@r2_killed*@reinforcements_table_r2_a2_ratio),
			r_a3=r_a3-(@r2_killed*@reinforcements_table_r2_a3_ratio),
			r_b1=r_b1-(@r2_killed*@reinforcements_table_r2_b1_ratio),
			r_b2=r_b2-(@r2_killed*@reinforcements_table_r2_b2_ratio),
			r_b3=r_b3-(@r2_killed*@reinforcements_table_r2_b3_ratio),
			r_c1=r_c1-(@r2_killed*@reinforcements_table_r2_c1_ratio),
			r_c2=r_c2-(@r2_killed*@reinforcements_table_r2_c2_ratio),
			r_c3=r_c3-(@r2_killed*@reinforcements_table_r2_c3_ratio),
			r_d1=r_d1-(@r2_killed*@reinforcements_table_r2_d1_ratio),
			r_d2=r_d2-(@r2_killed*@reinforcements_table_r2_d2_ratio),
			r_d3=r_d3-(@r2_killed*@reinforcements_table_r2_d3_ratio)
			WHERE base_id = @reinforcements_table_from_base_id AND profile_id = @reinforcements_table_from_profile_id ;

			-- Update reinforcement table
			DELETE reinforce WHERE reinforce_id = @reinforcements_table_reinforce_id AND date_arrive > GETUTCDATE() ;

			-- Next row
			FETCH NEXT FROM reinforcements_table_cursor
			INTO @reinforcements_table_reinforce_id,
			@reinforcements_table_from_profile_id,
			@reinforcements_table_from_base_id,
			@reinforcements_table_to_profile_id,
			@reinforcements_table_to_base_id,
			@reinforcements_table_r2_a1,
			@reinforcements_table_r2_a2,
			@reinforcements_table_r2_a3,
			@reinforcements_table_r2_b1,
			@reinforcements_table_r2_b2,
			@reinforcements_table_r2_b3,
			@reinforcements_table_r2_c1,
			@reinforcements_table_r2_c2,
			@reinforcements_table_r2_c3,
			@reinforcements_table_r2_d1,
			@reinforcements_table_r2_d2,
			@reinforcements_table_r2_d3,
			@reinforcements_table_r2_a1_ratio,
			@reinforcements_table_r2_a2_ratio,
			@reinforcements_table_r2_a3_ratio,
			@reinforcements_table_r2_b1_ratio,
			@reinforcements_table_r2_b2_ratio,
			@reinforcements_table_r2_b3_ratio,
			@reinforcements_table_r2_c1_ratio,
			@reinforcements_table_r2_c2_ratio,
			@reinforcements_table_r2_c3_ratio,
			@reinforcements_table_r2_d1_ratio,
			@reinforcements_table_r2_d2_ratio,
			@reinforcements_table_r2_d3_ratio;
		END

		CLOSE reinforcements_table_cursor
		DEALLOCATE reinforcements_table_cursor

	END --Successful capture
	ELSE
	BEGIN -- Raid or failed capture
    
    /*
    DECLARE @s1_a1_dS_STRING varchar(30) = CAST(@s1_a1 AS VARCHAR);
	RAISERROR ('s1_a1: %s', 10,-1, @s1_a1_dS_STRING) with nowait;
    DECLARE @s1_a2_dS_STRING varchar(30) = CAST(@s1_a2 AS VARCHAR);
	RAISERROR ('s1_a2: %s', 10,-1, @s1_a2_dS_STRING) with nowait;
    DECLARE @s1_a3_dS_STRING varchar(30) = CAST(@s1_a3 AS VARCHAR);
	RAISERROR ('s1_a3: %s', 10,-1, @s1_a3_dS_STRING) with nowait;
    DECLARE @s1_b1_dS_STRING varchar(30) = CAST(@s1_b1 AS VARCHAR);
	RAISERROR ('s1_b1: %s', 10,-1, @s1_b1_dS_STRING) with nowait;
    DECLARE @s1_b2_dS_STRING varchar(30) = CAST(@s1_b2 AS VARCHAR);
	RAISERROR ('s1_b2: %s', 10,-1, @s1_b2_dS_STRING) with nowait;
    DECLARE @s1_b3_dS_STRING varchar(30) = CAST(@s1_b3 AS VARCHAR);
	RAISERROR ('s1_b3: %s', 10,-1, @s1_b3_dS_STRING) with nowait;
    DECLARE @s1_c1_dS_STRING varchar(30) = CAST(@s1_c1 AS VARCHAR);
	RAISERROR ('s1_c1: %s', 10,-1, @s1_c1_dS_STRING) with nowait;
    DECLARE @s1_c2_dS_STRING varchar(30) = CAST(@s1_c2 AS VARCHAR);
	RAISERROR ('s1_c2: %s', 10,-1, @s1_c2_dS_STRING) with nowait;
    DECLARE @s1_c3_dS_STRING varchar(30) = CAST(@s1_c3 AS VARCHAR);
	RAISERROR ('s1_c3: %s', 10,-1, @s1_c3_dS_STRING) with nowait;
    
    DECLARE @k1_a1_dS_STRING varchar(30) = CAST(@k1_a1 AS VARCHAR);
	RAISERROR ('k1_a1: %s', 10,-1, @k1_a1_dS_STRING) with nowait;
    DECLARE @k1_a2_dS_STRING varchar(30) = CAST(@k1_a2 AS VARCHAR);
	RAISERROR ('k1_a2: %s', 10,-1, @k1_a2_dS_STRING) with nowait;
    DECLARE @k1_a3_dS_STRING varchar(30) = CAST(@k1_a3 AS VARCHAR);
	RAISERROR ('k1_a3: %s', 10,-1, @k1_a3_dS_STRING) with nowait;
    DECLARE @k1_b1_dS_STRING varchar(30) = CAST(@k1_b1 AS VARCHAR);
	RAISERROR ('k1_b1: %s', 10,-1, @k1_b1_dS_STRING) with nowait;
    DECLARE @k1_b2_dS_STRING varchar(30) = CAST(@k1_b2 AS VARCHAR);
	RAISERROR ('k1_b2: %s', 10,-1, @k1_b2_dS_STRING) with nowait;
    DECLARE @k1_b3_dS_STRING varchar(30) = CAST(@k1_b3 AS VARCHAR);
	RAISERROR ('k1_b3: %s', 10,-1, @k1_b3_dS_STRING) with nowait;
    DECLARE @k1_c1_dS_STRING varchar(30) = CAST(@k1_c1 AS VARCHAR);
	RAISERROR ('k1_c1: %s', 10,-1, @k1_c1_dS_STRING) with nowait;
    DECLARE @k1_c2_dS_STRING varchar(30) = CAST(@k1_c2 AS VARCHAR);
	RAISERROR ('k1_c2: %s', 10,-1, @k1_c2_dS_STRING) with nowait;
    DECLARE @k1_c3_dS_STRING varchar(30) = CAST(@k1_c3 AS VARCHAR);
	RAISERROR ('k1_c3: %s', 10,-1, @k1_c3_dS_STRING) with nowait;
    */
    
		--update the profile1(atacker) data after attack
		UPDATE base SET r1=r1+@r1, r2=r2+@r2, r3=r3+@r3, r4=r4+@r4, r5=r5+@r5, a_r1=@r1, a_r2=@r2, a_r3=@r3, a_r4=@r4, a_r5=@r5,
		a_a1=@s1_a1, a_a2=@s1_a2, a_a3=@s1_a3, a_b1=@s1_b1, a_b2=@s1_b2, a_b3=@s1_b3, a_c1=@s1_c1, a_c2=@s1_c2, a_c3=@s1_c3, a_d1=@s1_d1, a_d2=@s1_d2, a_d3=@s1_d3,
		a1=a1-@k1_a1, a2=a2-@k1_a2, a3=a3-@k1_a3, b1=b1-@k1_b1, b2=b2-@k1_b2, b3=b3-@k1_b3, c1=c1-@k1_c1, c2=c2-@k1_c2, c3=c3-@k1_c3, d1=d1-@k1_d1, d2=d2-@k1_d2, d3=d3-@k1_d3
		WHERE base_id=@p1_base_id;

		--update the profile2(victim) data after attack
		UPDATE base SET r1=r1-@r1, r2=r2-@r2, r3=r3-@r3, r4=r4-@r4, r5=r5-@r5,
		a1=a1-@k2_a1, a2=a2-@k2_a2, a3=a3-@k2_a3, b1=b1-@k2_b1, b2=b2-@k2_b2, b3=b3-@k2_b3, c1=c1-@k2_c1, c2=c2-@k2_c2, c3=c3-@k2_c3, d1=d1-@k2_d1, d2=d2-@k2_d2, d3=d3-@k2_d3,
		i_a1=i_a1+@p2_i_a1, i_a2=i_a2+@p2_i_a2, i_a3=i_a3+@p2_i_a3, i_b1=i_b1+@p2_i_b1, i_b2=i_b2+@p2_i_b2, i_b3=i_b3+@p2_i_b3, i_c1=i_c1+@p2_i_c1, i_c2=i_c2+@p2_i_c2, i_c3=i_c3+@p2_i_c3, i_d1=i_d1+@p2_i_d1, i_d2=i_d2+@p2_i_d2, i_d3=i_d3+@p2_i_d3,
        last_attacked=GETUTCDATE()
		WHERE base_id=@p2_base_id;

		--update reinforcements
        /*
		DECLARE reinforcements_table_cursor CURSOR
		FOR SELECT reinforce_id,
			from_profile_id,
			from_base_id,
			to_profile_id,
			to_base_id,
			r2_a1,
			r2_a2,
			r2_a3,
			r2_b1,
			r2_b2,
			r2_b3,
			r2_c1,
			r2_c2,
			r2_c3,
			r2_d1,
			r2_d2,
			r2_d3,
			r2_a1_ratio,
			r2_a2_ratio,
			r2_a3_ratio,
			r2_b1_ratio,
			r2_b2_ratio,
			r2_b3_ratio,
			r2_c1_ratio,
			r2_c2_ratio,
			r2_c3_ratio,
			r2_d1_ratio,
			r2_d2_ratio,
			r2_d3_ratio
	  FROM @reinforcements_table

		-- Loop while there are still some rows in the temporary table
		OPEN reinforcements_table_cursor
		FETCH NEXT FROM reinforcements_table_cursor
		INTO @reinforcements_table_reinforce_id,
		@reinforcements_table_from_profile_id,
		@reinforcements_table_from_base_id,
		@reinforcements_table_to_profile_id,
		@reinforcements_table_to_base_id,
		@reinforcements_table_r2_a1,
		@reinforcements_table_r2_a2,
		@reinforcements_table_r2_a3,
		@reinforcements_table_r2_b1,
		@reinforcements_table_r2_b2,
		@reinforcements_table_r2_b3,
		@reinforcements_table_r2_c1,
		@reinforcements_table_r2_c2,
		@reinforcements_table_r2_c3,
		@reinforcements_table_r2_d1,
		@reinforcements_table_r2_d2,
		@reinforcements_table_r2_d3,
		@reinforcements_table_r2_a1_ratio,
		@reinforcements_table_r2_a2_ratio,
		@reinforcements_table_r2_a3_ratio,
		@reinforcements_table_r2_b1_ratio,
		@reinforcements_table_r2_b2_ratio,
		@reinforcements_table_r2_b3_ratio,
		@reinforcements_table_r2_c1_ratio,
		@reinforcements_table_r2_c2_ratio,
		@reinforcements_table_r2_c3_ratio,
		@reinforcements_table_r2_d1_ratio,
		@reinforcements_table_r2_d2_ratio,
		@reinforcements_table_r2_d3_ratio;
		WHILE @@FETCH_STATUS = 0
		BEGIN
			-- Process

			-- Update base table (optimization needed on @r2_killed*@reinforcements_table_r2_a1_ratio)
			UPDATE base
			SET
			a1=a1-(@r2_killed*@reinforcements_table_r2_a1_ratio),
			a2=a2-(@r2_killed*@reinforcements_table_r2_a2_ratio),
			a3=a3-(@r2_killed*@reinforcements_table_r2_a3_ratio),
			b1=b1-(@r2_killed*@reinforcements_table_r2_b1_ratio),
			b2=b2-(@r2_killed*@reinforcements_table_r2_b2_ratio),
			b3=b3-(@r2_killed*@reinforcements_table_r2_b3_ratio),
			c1=c1-(@r2_killed*@reinforcements_table_r2_c1_ratio),
			c2=c2-(@r2_killed*@reinforcements_table_r2_c2_ratio),
			c3=c3-(@r2_killed*@reinforcements_table_r2_c3_ratio),
			d1=d1-(@r2_killed*@reinforcements_table_r2_d1_ratio),
			d2=d2-(@r2_killed*@reinforcements_table_r2_d2_ratio),
			d3=d3-(@r2_killed*@reinforcements_table_r2_d3_ratio),
			r_a1=r_a1-(@r2_killed*@reinforcements_table_r2_a1_ratio),
			r_a2=r_a2-(@r2_killed*@reinforcements_table_r2_a2_ratio),
			r_a3=r_a3-(@r2_killed*@reinforcements_table_r2_a3_ratio),
			r_b1=r_b1-(@r2_killed*@reinforcements_table_r2_b1_ratio),
			r_b2=r_b2-(@r2_killed*@reinforcements_table_r2_b2_ratio),
			r_b3=r_b3-(@r2_killed*@reinforcements_table_r2_b3_ratio),
			r_c1=r_c1-(@r2_killed*@reinforcements_table_r2_c1_ratio),
			r_c2=r_c2-(@r2_killed*@reinforcements_table_r2_c2_ratio),
			r_c3=r_c3-(@r2_killed*@reinforcements_table_r2_c3_ratio),
			r_d1=r_d1-(@r2_killed*@reinforcements_table_r2_d1_ratio),
			r_d2=r_d2-(@r2_killed*@reinforcements_table_r2_d2_ratio),
			r_d3=r_d3-(@r2_killed*@reinforcements_table_r2_d3_ratio)
			WHERE base_id = @reinforcements_table_from_base_id AND profile_id = @reinforcements_table_from_profile_id;

			-- Update reinforcement table
			UPDATE reinforce
			SET
			a1=a1-(@r2_killed*@reinforcements_table_r2_a1_ratio),
			a2=a2-(@r2_killed*@reinforcements_table_r2_a2_ratio),
			a3=a3-(@r2_killed*@reinforcements_table_r2_a3_ratio),
			b1=b1-(@r2_killed*@reinforcements_table_r2_b1_ratio),
			b2=b2-(@r2_killed*@reinforcements_table_r2_b2_ratio),
			b3=b3-(@r2_killed*@reinforcements_table_r2_b3_ratio),
			c1=c1-(@r2_killed*@reinforcements_table_r2_c1_ratio),
			c2=c2-(@r2_killed*@reinforcements_table_r2_c2_ratio),
			c3=c3-(@r2_killed*@reinforcements_table_r2_c3_ratio),
			d1=d1-(@r2_killed*@reinforcements_table_r2_d1_ratio),
			d2=d2-(@r2_killed*@reinforcements_table_r2_d2_ratio),
			d3=d3-(@r2_killed*@reinforcements_table_r2_d3_ratio)
			WHERE reinforce_id = @reinforcements_table_reinforce_id;

			-- Next row
			FETCH NEXT FROM reinforcements_table_cursor
			INTO @reinforcements_table_reinforce_id,
			@reinforcements_table_from_profile_id,
			@reinforcements_table_from_base_id,
			@reinforcements_table_to_profile_id,
			@reinforcements_table_to_base_id,
			@reinforcements_table_r2_a1,
			@reinforcements_table_r2_a2,
			@reinforcements_table_r2_a3,
			@reinforcements_table_r2_b1,
			@reinforcements_table_r2_b2,
			@reinforcements_table_r2_b3,
			@reinforcements_table_r2_c1,
			@reinforcements_table_r2_c2,
			@reinforcements_table_r2_c3,
			@reinforcements_table_r2_d1,
			@reinforcements_table_r2_d2,
			@reinforcements_table_r2_d3,
			@reinforcements_table_r2_a1_ratio,
			@reinforcements_table_r2_a2_ratio,
			@reinforcements_table_r2_a3_ratio,
			@reinforcements_table_r2_b1_ratio,
			@reinforcements_table_r2_b2_ratio,
			@reinforcements_table_r2_b3_ratio,
			@reinforcements_table_r2_c1_ratio,
			@reinforcements_table_r2_c2_ratio,
			@reinforcements_table_r2_c3_ratio,
			@reinforcements_table_r2_d1_ratio,
			@reinforcements_table_r2_d2_ratio,
			@reinforcements_table_r2_d3_ratio;
		END

		CLOSE reinforcements_table_cursor
		DEALLOCATE reinforcements_table_cursor
*/


	END -- Raid or failed capture

    --- Update attack return if there are no survivors
    IF(@total_survived=0)
    BEGIN
        DECLARE @attack_duration int = 0;
		SELECT @dt_return=date_arrive, @attack_duration=job_time FROM attack WHERE attack_id=@attack_id;
        --hack
        SET @attack_duration = 0;
		SET @dt_return = DATEADD(ss, @attack_duration, @dt_return); --NO RETURN MARCH

		--update the profile1(atacker) data after attack
		UPDATE base SET attack_return=@dt_return
		WHERE base_id=@p1_base_id;

        UPDATE attack SET date_return=date_arrive
        WHERE attack_id=@attack_id;
    END

    UPDATE hero SET hero_xp=hero_xp+@p1_hero_xp_gain, hero_xp_gain=hero_xp_gain+@p1_hero_xp_gain
	WHERE profile_id=@p1_profile_id;

	UPDATE hero SET hero_xp=hero_xp+@p2_hero_xp_gain, hero_xp_gain=hero_xp_gain+@p2_hero_xp_gain
	WHERE profile_id=@p2_profile_id;

	SET @is_victory = @victory;
    
    DECLARE @is_victory_id_AS_STRING varchar(30) = CAST(@is_victory AS VARCHAR);
	RAISERROR ('@is_victory : %s', 10,-1, @is_victory_id_AS_STRING) with nowait;
    
    --create new report so can be viewed inside the game
    

	INSERT INTO report (date_posted, date_arrive, profile1_id, profile2_id, profile1_base_id, profile2_base_id, report_type, victory, row_id, open_read, profile1_name, profile2_name, profile1_face, profile2_face, profile1_rank, profile2_rank, profile1_tag, profile2_tag, profile1_hero_name, profile2_hero_name, profile1_hero_xp, profile2_hero_xp, profile1_hero_xp_gain, profile2_hero_xp_gain, profile1_base_name, profile2_base_name, profile1_x, profile2_x, profile1_y, profile2_y, r1, r2, r3, r4, r5, profile1_troops, profile1_injured, profile1_killed, p1_a1, p1_b1, p1_c1, p1_d1, p1_a2,p1_b2, p1_c2, p1_d2, p1_a3, p1_b3, p1_c3, p1_d3, profile2_troops, profile2_injured, profile2_killed, p2_a1, p2_b1, p2_c1, p2_d1, p2_a2, p2_b2, p2_c2, p2_d2, p2_a3, p2_b3, p2_c3, p2_d3, i1_a1, i1_a2, i1_a3, i1_b1, i1_b2, i1_b3, i1_c1, i1_c2, i1_c3, i1_d1, i1_d2, i1_d3, k1_a1, k1_a2, k1_a3, k1_b1, k1_b2, k1_b3, k1_c1, k1_c2, k1_c3, k1_d1, k1_d2, k1_d3, i2_a1, i2_a2, i2_a3, i2_b1, i2_b2, i2_b3, i2_c1, i2_c2, i2_c3, i2_d1, i2_d2, i2_d3, k2_a1, k2_a2, k2_a3, k2_b1, k2_b2, k2_b3, k2_c1, k2_c2, k2_c3, k2_d1, k2_d2, k2_d3)
	VALUES (GETUTCDATE(), GETUTCDATE(), @p1_profile_id, @p2_profile_id, @p1_base_id, @p2_base_id, @report_type, @victory, @attack_id, 0, @p1_name, @p2_name, @p1_face, @p2_face, @p1_rank, @p2_rank, @p1_tag, @p2_tag, @p1_hero_name, @p2_hero_name, @p1_hero_xp, @p2_hero_xp, @p1_hero_xp_gain, @p2_hero_xp_gain, @p1_base, @p2_base, @p1_x, @p2_x, @p1_y, @p2_y, @r1_max_capture, @r2_max_capture, @r3_max_capture, @r4_max_capture, @r5_max_capture, @p1_troops, @p1_injured, @p1_killed, @p1_a1, @p1_b1, @p1_c1, @p1_d1, @p1_a2, @p1_b2, @p1_c2, @p1_d2, @p1_a3, @p1_b3, @p1_c3, @p1_d3, @p2_troops, @p2_injured, @p2_killed, @p2_a1, @p2_b1, @p2_c1, @p2_d1, @p2_a2, @p2_b2, @p2_c2, @p2_d2, @p2_a3, @p2_b3, @p2_c3, @p2_d3, @i1_a1, @i1_a2, @i1_a3, @i1_b1, @i1_b2, @i1_b3, @i1_c1, @i1_c2, @i1_c3, @i1_d1, @i1_d2, @i1_d3, @k1_a1, @k1_a2, @k1_a3, @k1_b1, @k1_b2, @k1_b3, @k1_c1, @k1_c2, @k1_c3, @k1_d1, @k1_d2, @k1_d3, @i2_a1, @i2_a2, @i2_a3, @i2_b1, @i2_b2, @i2_b3, @i2_c1, @i2_c2, @i2_c3, @i2_d1, @i2_d2, @i2_d3, @k2_a1, @k2_a2, @k2_a3, @k2_b1, @k2_b2, @k2_b3, @k2_c1, @k2_c2, @k2_c3, @k2_d1, @k2_d2, @k2_d3);


	RAISERROR ('AttackPVP_END', 10,-1) with nowait;
END

GO
/****** Object:  StoredProcedure [dbo].[usp_BaseFetch]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_BaseFetch]
(@base_id int, @profile_id int)
AS
BEGIN

    DECLARE @count_base int = 0
    SELECT @count_base = COUNT(*) FROM base WHERE base_id=@base_id AND profile_id=@profile_id
    IF @count_base < 1
        RETURN

    RAISERROR ('@usp_BaseFetch', 10, -1) with nowait;
    
    DECLARE @current_process_time datetime, @last_processed_time datetime;
    
    SET @current_process_time = GETUTCDATE();
    
    SELECT @last_processed_time = last_process 
    FROM base WHERE base_id=@base_id AND build_queue> @last_processed_time AND build_queue<@current_process_time 
    
    --BASE FETCH TABLE
    DECLARE @at_time datetime = @current_process_time
    DECLARE @base_fetch_table AS BaseFetchTableType

    -- FROM Base

        INSERT INTO @base_fetch_table(base_id,base_type,profile_id,base_name,map_x,map_y,
        r1,r2,r3,r4,r5,
        build_location,build_queue,build_time,
        research_queue,research_time,research_id,
        attack_queue,attack_time,attack_job_time,attack_return,attack_id,
        trade_queue,trade_time,trade_id,
        reinforce_queue,reinforce_time,reinforce_id,reinforce_action,
        transfer_queue,transfer_time,transfer_id,
        craft_queue,craft_time,hospital_queue,hospital_time,
        a_queue,a_time,b_queue,b_time,c_queue,c_time,d_queue,d_time,spy_queue,spy_time,
        spy,a1,a2,a3,b1,b2,b3,c1,c2,c3,d1,d2,d3,
        t_a1,t_a2,t_a3,t_b1,t_b2,t_b3,t_c1,t_c2,t_c3,t_d1,t_d2,t_d3,
        i_a1,i_a2,i_a3,i_b1,i_b2,i_b3,i_c1,i_c2,i_c3,i_d1,i_d2,i_d3,
        h_a1,h_a2,h_a3,h_b1,h_b2,h_b3,h_c1,h_c2,h_c3,h_d1,h_d2,h_d3,
        r_a1,r_a2,r_a3,r_b1,r_b2,r_b3,r_c1,r_c2,r_c3,r_d1,r_d2,r_d3,
        rt_a1,rt_a2,rt_a3,rt_b1,rt_b2,rt_b3,rt_c1,rt_c2,rt_c3,rt_d1,rt_d2,rt_d3,
        research_r1,research_r2,research_r3,research_r4,research_r5,
        research_research,research_training,research_march,research_attack,research_defense,research_load,
        research_build,research_trade,research_craft,research_heal,research_a_attack,research_b_attack,research_c_attack,research_d_attack,research_life,
        research_a2,research_a3,research_b2,research_b3,research_c2,research_c3,research_d2,research_d3,
        a_a1,a_a2,a_a3,a_b1,a_b2,a_b3,a_c1,a_c2,a_c3,a_d1,a_d2,a_d3,
        a_r1,a_r2,a_r3,a_r4,a_r5,
        r1_boost_value,r2_boost_value,r3_boost_value,r4_boost_value,r5_boost_value,attack_boost_value,defense_boost_value,
        item_r1,item_r2,item_r3,item_r4,item_r5,item_attack,item_defense,
        item_r1_ending,item_r2_ending,item_r3_ending,item_r4_ending,item_r5_ending,item_attack_ending,item_defense_ending
        )
        SELECT
        base_id,base_type,profile_id,base_name,map_x,map_y,
        r1,r2,r3,r4,r5,
        build_location,build_queue,build_time,
        research_queue,research_time,research_id,
        attack_queue,attack_time,attack_job_time,attack_return,attack_id,
        trade_queue,trade_time,trade_id,
        reinforce_queue,reinforce_time,reinforce_id,reinforce_action,
        transfer_queue,transfer_time,transfer_id,
        craft_queue,craft_time,hospital_queue,hospital_time,
        a_queue,a_time,b_queue,b_time,c_queue,c_time,d_queue,d_time,spy_queue,spy_time,
        spy,a1,a2,a3,b1,b2,b3,c1,c2,c3,d1,d2,d3,
        t_a1,t_a2,t_a3,t_b1,t_b2,t_b3,t_c1,t_c2,t_c3,t_d1,t_d2,t_d3,
        i_a1,i_a2,i_a3,i_b1,i_b2,i_b3,i_c1,i_c2,i_c3,i_d1,i_d2,i_d3,
        h_a1,h_a2,h_a3,h_b1,h_b2,h_b3,h_c1,h_c2,h_c3,h_d1,h_d2,h_d3,
        r_a1,r_a2,r_a3,r_b1,r_b2,r_b3,r_c1,r_c2,r_c3,r_d1,r_d2,r_d3,
        rt_a1,rt_a2,rt_a3,rt_b1,rt_b2,rt_b3,rt_c1,rt_c2,rt_c3,rt_d1,rt_d2,rt_d3,
        research_r1,research_r2,research_r3,research_r4,research_r5,
        research_research,research_training,research_march,research_attack,research_defense,research_load,
        research_build,research_trade,research_craft,research_heal,research_a_attack,research_b_attack,research_c_attack,research_d_attack,research_life,
        research_a2,research_a3,research_b2,research_b3,research_c2,research_c3,research_d2,research_d3,
        a_a1,a_a2,a_a3,a_b1,a_b2,a_b3,a_c1,a_c2,a_c3,a_d1,a_d2,a_d3,
        a_r1,a_r2,a_r3,a_r4,a_r5,
        r1_boost_value,r2_boost_value,r3_boost_value,r4_boost_value,r5_boost_value,attack_boost_value,defense_boost_value,
        item_r1,item_r2,item_r3,item_r4,item_r5,item_attack,item_defense,
        item_r1_ending,item_r2_ending,item_r3_ending,item_r4_ending,item_r5_ending,item_attack_ending,item_defense_ending 
        FROM base
        WHERE base_id=@base_id
        
        --CAPACITY
        
        --capacity r1
        DECLARE @base_capacity_r1  DECIMAL(18,2)= 0, @final_capacity_r1 DECIMAL(18,2)= 0
        SELECT @base_capacity_r1=ISNULL(SUM(BUILDING_LEVEL_TABLE.capacity),0)
        FROM dbo.build BUILD_TABLE
        INNER JOIN dbo.building_level BUILDING_LEVEL_TABLE
        ON BUILD_TABLE.building_id = BUILDING_LEVEL_TABLE.building_id AND
            CASE
            WHEN BUILD_TABLE.build_queue > @at_time
            THEN BUILD_TABLE.building_level-1
            ELSE BUILD_TABLE.building_level
            END
            = BUILDING_LEVEL_TABLE.building_level
        WHERE BUILD_TABLE.base_id=@base_id AND BUILD_TABLE.building_id = 1
        
        SET @final_capacity_r1 = @base_capacity_r1
        
        UPDATE @base_fetch_table
        SET r1_capacity=@final_capacity_r1
        WHERE base_id=@base_id
         
        --capacity r2
        DECLARE @base_capacity_r2  DECIMAL(18,2)= 0, @final_capacity_r2 DECIMAL(18,2)= 0
        SELECT @base_capacity_r2=ISNULL(SUM(BUILDING_LEVEL_TABLE.capacity),0)
        FROM dbo.build BUILD_TABLE
        INNER JOIN dbo.building_level BUILDING_LEVEL_TABLE
        ON BUILD_TABLE.building_id = BUILDING_LEVEL_TABLE.building_id AND
            CASE
            WHEN BUILD_TABLE.build_queue > @at_time
            THEN BUILD_TABLE.building_level-1
            ELSE BUILD_TABLE.building_level
            END
            = BUILDING_LEVEL_TABLE.building_level
        WHERE BUILD_TABLE.base_id=@base_id AND BUILD_TABLE.building_id = 2
        
        SET @final_capacity_r2 = @base_capacity_r2
        
        UPDATE @base_fetch_table
        SET r2_capacity=@final_capacity_r2
        WHERE base_id=@base_id
        
        --capacity r3
        DECLARE @base_capacity_r3  DECIMAL(18,2)= 0, @final_capacity_r3 DECIMAL(18,2)= 0
        SELECT @base_capacity_r3=ISNULL(SUM(BUILDING_LEVEL_TABLE.capacity),0)
        FROM dbo.build BUILD_TABLE
        INNER JOIN dbo.building_level BUILDING_LEVEL_TABLE
        ON BUILD_TABLE.building_id = BUILDING_LEVEL_TABLE.building_id AND
            CASE
            WHEN BUILD_TABLE.build_queue > @at_time
            THEN BUILD_TABLE.building_level-1
            ELSE BUILD_TABLE.building_level
            END
            = BUILDING_LEVEL_TABLE.building_level
        WHERE BUILD_TABLE.base_id=@base_id AND BUILD_TABLE.building_id = 3
        
        SET @final_capacity_r3 = @base_capacity_r3
        
        UPDATE @base_fetch_table
        SET r3_capacity=@final_capacity_r3
        WHERE base_id=@base_id
        
        --capacity r4
        DECLARE @base_capacity_r4  DECIMAL(18,2)= 0, @final_capacity_r4 DECIMAL(18,2)= 0
        SELECT @base_capacity_r4=ISNULL(SUM(BUILDING_LEVEL_TABLE.capacity),0)
        FROM dbo.build BUILD_TABLE
        INNER JOIN dbo.building_level BUILDING_LEVEL_TABLE
        ON BUILD_TABLE.building_id = BUILDING_LEVEL_TABLE.building_id AND
            CASE
            WHEN BUILD_TABLE.build_queue > @at_time
            THEN BUILD_TABLE.building_level-1
            ELSE BUILD_TABLE.building_level
            END
            = BUILDING_LEVEL_TABLE.building_level
        WHERE BUILD_TABLE.base_id=@base_id AND BUILD_TABLE.building_id = 4
        
        SET @final_capacity_r4 = @base_capacity_r4
        
        UPDATE @base_fetch_table
        SET r4_capacity=@final_capacity_r4
        WHERE base_id=@base_id
        
        --capacity r5
        DECLARE @base_capacity_r5  DECIMAL(18,2)= 0, @final_capacity_r5 DECIMAL(18,2)= 0
        SELECT @base_capacity_r5=ISNULL(SUM(BUILDING_LEVEL_TABLE.capacity),0)
        FROM dbo.build BUILD_TABLE
        INNER JOIN dbo.building_level BUILDING_LEVEL_TABLE
        ON BUILD_TABLE.building_id = BUILDING_LEVEL_TABLE.building_id AND
            CASE
            WHEN BUILD_TABLE.build_queue > @at_time
            THEN BUILD_TABLE.building_level-1
            ELSE BUILD_TABLE.building_level
            END
            = BUILDING_LEVEL_TABLE.building_level
        WHERE BUILD_TABLE.base_id=@base_id AND BUILD_TABLE.building_id = 5
        
        SET @final_capacity_r5 = @base_capacity_r5
        
        UPDATE @base_fetch_table
        SET r5_capacity=@final_capacity_r5
        WHERE base_id=@base_id
        
        --END CAPACITY
        
        --HERO BOOST
        
        UPDATE BASE_FETCH_TABLE
        SET   
            BASE_FETCH_TABLE.hero_boost_r1=HERO_TABLE.hero_r1+ISNULL(ITEM_HELMET_TABLE.hero_r1,0)+ISNULL(ITEM_ARMOR_TABLE.hero_r1,0)+ISNULL(ITEM_BOOTS_TABLE.hero_r1,0)+ISNULL(ITEM_WEAPON_TABLE.hero_r1,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_r1,0)+ISNULL(ITEM_GLOVES_TABLE.hero_r1,0),
            BASE_FETCH_TABLE.hero_boost_r2=HERO_TABLE.hero_r2+ISNULL(ITEM_HELMET_TABLE.hero_r2,0)+ISNULL(ITEM_ARMOR_TABLE.hero_r2,0)+ISNULL(ITEM_BOOTS_TABLE.hero_r2,0)+ISNULL(ITEM_WEAPON_TABLE.hero_r2,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_r2,0)+ISNULL(ITEM_GLOVES_TABLE.hero_r2,0),
            BASE_FETCH_TABLE.hero_boost_r3=HERO_TABLE.hero_r3+ISNULL(ITEM_HELMET_TABLE.hero_r3,0)+ISNULL(ITEM_ARMOR_TABLE.hero_r3,0)+ISNULL(ITEM_BOOTS_TABLE.hero_r3,0)+ISNULL(ITEM_WEAPON_TABLE.hero_r3,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_r3,0)+ISNULL(ITEM_GLOVES_TABLE.hero_r3,0),
            BASE_FETCH_TABLE.hero_boost_r4=HERO_TABLE.hero_r4+ISNULL(ITEM_HELMET_TABLE.hero_r4,0)+ISNULL(ITEM_ARMOR_TABLE.hero_r4,0)+ISNULL(ITEM_BOOTS_TABLE.hero_r4,0)+ISNULL(ITEM_WEAPON_TABLE.hero_r4,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_r4,0)+ISNULL(ITEM_GLOVES_TABLE.hero_r4,0),
            BASE_FETCH_TABLE.hero_boost_r5=HERO_TABLE.hero_r5+ISNULL(ITEM_HELMET_TABLE.hero_r5,0)+ISNULL(ITEM_ARMOR_TABLE.hero_r5,0)+ISNULL(ITEM_BOOTS_TABLE.hero_r5,0)+ISNULL(ITEM_WEAPON_TABLE.hero_r5,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_r5,0)+ISNULL(ITEM_GLOVES_TABLE.hero_r5,0),
            BASE_FETCH_TABLE.hero_boost_build=HERO_TABLE.hero_build+ISNULL(ITEM_HELMET_TABLE.hero_build,0)+ISNULL(ITEM_ARMOR_TABLE.hero_build,0)+ISNULL(ITEM_BOOTS_TABLE.hero_build,0)+ISNULL(ITEM_WEAPON_TABLE.hero_build,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_build,0)+ISNULL(ITEM_GLOVES_TABLE.hero_build,0),
            BASE_FETCH_TABLE.hero_boost_research=HERO_TABLE.hero_research+ISNULL(ITEM_HELMET_TABLE.hero_research,0)+ISNULL(ITEM_ARMOR_TABLE.hero_research,0)+ISNULL(ITEM_BOOTS_TABLE.hero_research,0)+ISNULL(ITEM_WEAPON_TABLE.hero_research,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_research,0)+ISNULL(ITEM_GLOVES_TABLE.hero_research,0),
            BASE_FETCH_TABLE.hero_boost_training=HERO_TABLE.hero_training+ISNULL(ITEM_HELMET_TABLE.hero_training,0)+ISNULL(ITEM_ARMOR_TABLE.hero_training,0)+ISNULL(ITEM_BOOTS_TABLE.hero_training,0)+ISNULL(ITEM_WEAPON_TABLE.hero_training,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_training,0)+ISNULL(ITEM_GLOVES_TABLE.hero_training,0),
            BASE_FETCH_TABLE.hero_boost_march=HERO_TABLE.hero_march+ISNULL(ITEM_HELMET_TABLE.hero_march,0)+ISNULL(ITEM_ARMOR_TABLE.hero_march,0)+ISNULL(ITEM_BOOTS_TABLE.hero_march,0)+ISNULL(ITEM_WEAPON_TABLE.hero_march,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_march,0)+ISNULL(ITEM_GLOVES_TABLE.hero_march,0),
            BASE_FETCH_TABLE.hero_boost_trade=HERO_TABLE.hero_trade+ISNULL(ITEM_HELMET_TABLE.hero_trade,0)+ISNULL(ITEM_ARMOR_TABLE.hero_trade,0)+ISNULL(ITEM_BOOTS_TABLE.hero_trade,0)+ISNULL(ITEM_WEAPON_TABLE.hero_trade,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_trade,0)+ISNULL(ITEM_GLOVES_TABLE.hero_trade,0),
            BASE_FETCH_TABLE.hero_boost_craft=HERO_TABLE.hero_craft+ISNULL(ITEM_HELMET_TABLE.hero_craft,0)+ISNULL(ITEM_ARMOR_TABLE.hero_craft,0)+ISNULL(ITEM_BOOTS_TABLE.hero_craft,0)+ISNULL(ITEM_WEAPON_TABLE.hero_craft,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_craft,0)+ISNULL(ITEM_GLOVES_TABLE.hero_craft,0),
            BASE_FETCH_TABLE.hero_boost_attack=HERO_TABLE.hero_attack+ISNULL(ITEM_HELMET_TABLE.hero_attack,0)+ISNULL(ITEM_ARMOR_TABLE.hero_attack,0)+ISNULL(ITEM_BOOTS_TABLE.hero_attack,0)+ISNULL(ITEM_WEAPON_TABLE.hero_attack,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_attack,0)+ISNULL(ITEM_GLOVES_TABLE.hero_attack,0),
            BASE_FETCH_TABLE.hero_boost_defense=HERO_TABLE.hero_defense+ISNULL(ITEM_HELMET_TABLE.hero_defense,0)+ISNULL(ITEM_ARMOR_TABLE.hero_defense,0)+ISNULL(ITEM_BOOTS_TABLE.hero_defense,0)+ISNULL(ITEM_WEAPON_TABLE.hero_defense,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_defense,0)+ISNULL(ITEM_GLOVES_TABLE.hero_defense,0),
            BASE_FETCH_TABLE.hero_boost_life=HERO_TABLE.hero_life+ISNULL(ITEM_HELMET_TABLE.hero_life,0)+ISNULL(ITEM_ARMOR_TABLE.hero_life,0)+ISNULL(ITEM_BOOTS_TABLE.hero_life,0)+ISNULL(ITEM_WEAPON_TABLE.hero_life,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_life,0)+ISNULL(ITEM_GLOVES_TABLE.hero_life,0),
            BASE_FETCH_TABLE.hero_boost_load=HERO_TABLE.hero_load+ISNULL(ITEM_HELMET_TABLE.hero_load,0)+ISNULL(ITEM_ARMOR_TABLE.hero_load,0)+ISNULL(ITEM_BOOTS_TABLE.hero_load,0)+ISNULL(ITEM_WEAPON_TABLE.hero_load,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_load,0)+ISNULL(ITEM_GLOVES_TABLE.hero_load,0),
            BASE_FETCH_TABLE.hero_boost_a_attack=HERO_TABLE.hero_a_attack+ISNULL(ITEM_HELMET_TABLE.hero_a_attack,0)+ISNULL(ITEM_ARMOR_TABLE.hero_a_attack,0)+ISNULL(ITEM_BOOTS_TABLE.hero_a_attack,0)+ISNULL(ITEM_WEAPON_TABLE.hero_a_attack,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_a_attack,0)+ISNULL(ITEM_GLOVES_TABLE.hero_a_attack,0),
            BASE_FETCH_TABLE.hero_boost_b_attack=HERO_TABLE.hero_b_attack+ISNULL(ITEM_HELMET_TABLE.hero_b_attack,0)+ISNULL(ITEM_ARMOR_TABLE.hero_b_attack,0)+ISNULL(ITEM_BOOTS_TABLE.hero_b_attack,0)+ISNULL(ITEM_WEAPON_TABLE.hero_b_attack,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_b_attack,0)+ISNULL(ITEM_GLOVES_TABLE.hero_b_attack,0),
            BASE_FETCH_TABLE.hero_boost_c_attack=HERO_TABLE.hero_c_attack+ISNULL(ITEM_HELMET_TABLE.hero_c_attack,0)+ISNULL(ITEM_ARMOR_TABLE.hero_c_attack,0)+ISNULL(ITEM_BOOTS_TABLE.hero_c_attack,0)+ISNULL(ITEM_WEAPON_TABLE.hero_c_attack,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_c_attack,0)+ISNULL(ITEM_GLOVES_TABLE.hero_c_attack,0),
            BASE_FETCH_TABLE.hero_boost_d_attack=HERO_TABLE.hero_d_attack+ISNULL(ITEM_HELMET_TABLE.hero_d_attack,0)+ISNULL(ITEM_ARMOR_TABLE.hero_d_attack,0)+ISNULL(ITEM_BOOTS_TABLE.hero_d_attack,0)+ISNULL(ITEM_WEAPON_TABLE.hero_d_attack,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_d_attack,0)+ISNULL(ITEM_GLOVES_TABLE.hero_d_attack,0),
            BASE_FETCH_TABLE.hero_boost_heal=HERO_TABLE.hero_heal+ISNULL(ITEM_HELMET_TABLE.hero_heal,0)+ISNULL(ITEM_ARMOR_TABLE.hero_heal,0)+ISNULL(ITEM_BOOTS_TABLE.hero_heal,0)+ISNULL(ITEM_WEAPON_TABLE.hero_heal,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_heal,0)+ISNULL(ITEM_GLOVES_TABLE.hero_heal,0)
        FROM @base_fetch_table BASE_FETCH_TABLE
        INNER JOIN dbo.hero HERO_TABLE
        ON BASE_FETCH_TABLE.profile_id=HERO_TABLE.profile_id
        LEFT JOIN dbo.item ITEM_HELMET_TABLE
        ON HERO_TABLE.hero_helmet=ITEM_HELMET_TABLE.item_id 
        LEFT JOIN dbo.item ITEM_ARMOR_TABLE
        ON HERO_TABLE.hero_armor=ITEM_ARMOR_TABLE.item_id
        LEFT JOIN dbo.item ITEM_BOOTS_TABLE
        ON HERO_TABLE.hero_boots=ITEM_BOOTS_TABLE.item_id
        LEFT JOIN dbo.item ITEM_WEAPON_TABLE
        ON HERO_TABLE.hero_weapon=ITEM_WEAPON_TABLE.item_id
        LEFT JOIN dbo.item ITEM_ACCESSORY_TABLE
        ON HERO_TABLE.hero_accessory=ITEM_ACCESSORY_TABLE.item_id
        LEFT JOIN dbo.item ITEM_GLOVES_TABLE
        ON HERO_TABLE.hero_gloves=ITEM_GLOVES_TABLE.item_id
        
        --END HERO BOOST
        
        --ITEM BOOST
        
        --Item boost hardcoded to extra 100 percent of base production
        UPDATE BASE_FETCH_TABLE
        SET 
            BASE_FETCH_TABLE.item_boost_r1=
            CASE WHEN BASE_FETCH_TABLE.item_r1_ending<@at_time THEN 0
            ELSE BASE_FETCH_TABLE.r1_boost_value 
            END,
            BASE_FETCH_TABLE.item_boost_r2=
            CASE WHEN BASE_FETCH_TABLE.item_r2_ending<@at_time THEN 0
            ELSE BASE_FETCH_TABLE.r2_boost_value 
            END,
            BASE_FETCH_TABLE.item_boost_r3=
            CASE WHEN BASE_FETCH_TABLE.item_r3_ending<@at_time THEN 0
            ELSE BASE_FETCH_TABLE.r3_boost_value 
            END,
            BASE_FETCH_TABLE.item_boost_r4=
            CASE WHEN BASE_FETCH_TABLE.item_r4_ending<@at_time THEN 0
            ELSE BASE_FETCH_TABLE.r4_boost_value 
            END,
            BASE_FETCH_TABLE.item_boost_r5=
            CASE WHEN BASE_FETCH_TABLE.item_r5_ending<@at_time THEN 0
            ELSE BASE_FETCH_TABLE.r5_boost_value 
            END,
            BASE_FETCH_TABLE.item_boost_attack=
            CASE WHEN BASE_FETCH_TABLE.item_attack_ending<@at_time THEN 0
            ELSE BASE_FETCH_TABLE.attack_boost_value 
            END,
            BASE_FETCH_TABLE.item_boost_defense=
            CASE WHEN BASE_FETCH_TABLE.item_defense_ending<@at_time THEN 0
            ELSE BASE_FETCH_TABLE.defense_boost_value
            END

        FROM @base_fetch_table BASE_FETCH_TABLE
        WHERE BASE_FETCH_TABLE.base_id = @base_id
        
        --END ITEM BOOST
        
        --PRODUCTION 
        
        --production r1
        
        DECLARE @base_production_r1 float(53) = 0, @base_consumption_r1 float(53) = 0, @production_boost_r1 float(53) = 0, @consumption_boost_r1 float(53) = 0, @final_production_r1 float(53) = 0, @final_consumption_r1 float(53) =0
        
        SELECT @base_production_r1=ISNULL(SUM(BUILDING_LEVEL_TABLE.production),0)
        FROM dbo.build BUILD_TABLE
        INNER JOIN dbo.building_level BUILDING_LEVEL_TABLE
        ON BUILD_TABLE.building_id = BUILDING_LEVEL_TABLE.building_id AND
            CASE
            WHEN BUILD_TABLE.build_queue > @at_time
            THEN BUILD_TABLE.building_level-1
            ELSE BUILD_TABLE.building_level
            END
            = BUILDING_LEVEL_TABLE.building_level
        WHERE BUILD_TABLE.base_id=@base_id AND BUILD_TABLE.building_id = 1
        
        --HARDCODE consumption per unit is 1 food
        SELECT @base_consumption_r1 = 
        ISNULL(BASE_TABLE.a1, 0) + (1 * CASE WHEN BASE_TABLE.a_queue<@at_time THEN + BASE_TABLE.t_a1 ELSE 0 END) +
        ISNULL(BASE_TABLE.a2, 0) + (1 * CASE WHEN BASE_TABLE.a_queue<@at_time THEN + BASE_TABLE.t_a2 ELSE 0 END) +
        ISNULL(BASE_TABLE.a3, 0) + (1 * CASE WHEN BASE_TABLE.a_queue<@at_time THEN + BASE_TABLE.t_a3 ELSE 0 END) +
        ISNULL(BASE_TABLE.b1, 0) + (1 * CASE WHEN BASE_TABLE.b_queue<@at_time THEN + BASE_TABLE.t_b1 ELSE 0 END) + 
        ISNULL(BASE_TABLE.b2, 0) + (1 * CASE WHEN BASE_TABLE.b_queue<@at_time THEN + BASE_TABLE.t_b2 ELSE 0 END) +
        ISNULL(BASE_TABLE.b3, 0) + (1 * CASE WHEN BASE_TABLE.b_queue<@at_time THEN + BASE_TABLE.t_b3 ELSE 0 END) +
        ISNULL(BASE_TABLE.c1, 0) + (1 * CASE WHEN BASE_TABLE.c_queue<@at_time THEN + BASE_TABLE.t_c1 ELSE 0 END) +
        ISNULL(BASE_TABLE.c2, 0) + (1 * CASE WHEN BASE_TABLE.c_queue<@at_time THEN + BASE_TABLE.t_c2 ELSE 0 END) +
        ISNULL(BASE_TABLE.c3, 0) + (1 * CASE WHEN BASE_TABLE.c_queue<@at_time THEN + BASE_TABLE.t_c3 ELSE 0 END) +
        ISNULL(BASE_TABLE.d1, 0) + (1 * CASE WHEN BASE_TABLE.d_queue<@at_time THEN + BASE_TABLE.t_d1 ELSE 0 END) +
        ISNULL(BASE_TABLE.d2, 0) + (1 * CASE WHEN BASE_TABLE.d_queue<@at_time THEN + BASE_TABLE.t_d2 ELSE 0 END) +
        ISNULL(BASE_TABLE.d3, 0) + (1 * CASE WHEN BASE_TABLE.d_queue<@at_time THEN + BASE_TABLE.t_d3 ELSE 0 END)
        FROM @base_fetch_table BASE_TABLE      
        WHERE BASE_TABLE.base_id = @base_id
        
        SELECT @production_boost_r1= BASE_FETCH_TABLE.research_r1 + BASE_FETCH_TABLE.hero_boost_r1 + BASE_FETCH_TABLE.item_boost_r1
        FROM @base_fetch_table BASE_FETCH_TABLE
        WHERE BASE_FETCH_TABLE.base_id = @base_id
        
        SET @final_consumption_r1 = @base_consumption_r1*(1+(@consumption_boost_r1/100))
        SET @final_production_r1 = (@base_production_r1*(1+(@production_boost_r1/100))-@final_consumption_r1)

        --production r2
        
        DECLARE @base_production_r2 float(53) = 0, @base_consumption_r2 float(53) = 0, @production_boost_r2 float(53) = 0, @consumption_boost_r2 float(53) = 0, @final_production_r2 float(53) = 0
        
        SELECT @base_production_r2=ISNULL(SUM(BUILDING_LEVEL_TABLE.production),0)
        FROM dbo.build BUILD_TABLE
        INNER JOIN dbo.building_level BUILDING_LEVEL_TABLE
        ON BUILD_TABLE.building_id = BUILDING_LEVEL_TABLE.building_id AND
            CASE
            WHEN BUILD_TABLE.build_queue > @at_time
            THEN BUILD_TABLE.building_level-1
            ELSE BUILD_TABLE.building_level
            END
            = BUILDING_LEVEL_TABLE.building_level
        WHERE BUILD_TABLE.base_id=@base_id AND BUILD_TABLE.building_id = 2
        
        SELECT @production_boost_r2= BASE_FETCH_TABLE.research_r2 + BASE_FETCH_TABLE.hero_boost_r2 + BASE_FETCH_TABLE.item_boost_r2
        FROM @base_fetch_table BASE_FETCH_TABLE
        WHERE BASE_FETCH_TABLE.base_id = @base_id
        
        SET @final_production_r2 = (@base_production_r2*(1+(@production_boost_r2/100))-@base_consumption_r2*(1+(@consumption_boost_r2/100)))

        --production r3
        
        DECLARE @base_production_r3 float(53) = 0, @base_consumption_r3 float(53) = 0, @production_boost_r3 float(53) = 0, @consumption_boost_r3 float(53) = 0, @final_production_r3 float(53) = 0
        
        SELECT @base_production_r3=ISNULL(SUM(BUILDING_LEVEL_TABLE.production),0)
        FROM dbo.build BUILD_TABLE
        INNER JOIN dbo.building_level BUILDING_LEVEL_TABLE
        ON BUILD_TABLE.building_id = BUILDING_LEVEL_TABLE.building_id AND
            CASE
            WHEN BUILD_TABLE.build_queue > @at_time
            THEN BUILD_TABLE.building_level-1
            ELSE BUILD_TABLE.building_level
            END
            = BUILDING_LEVEL_TABLE.building_level
        WHERE BUILD_TABLE.base_id=@base_id AND BUILD_TABLE.building_id = 3
        
        SELECT @production_boost_r3= BASE_FETCH_TABLE.research_r3 + BASE_FETCH_TABLE.hero_boost_r3 + BASE_FETCH_TABLE.item_boost_r3
        FROM @base_fetch_table BASE_FETCH_TABLE
        WHERE BASE_FETCH_TABLE.base_id = @base_id
        
        SET @final_production_r3 = (@base_production_r3*(1+(@production_boost_r3/100))-@base_consumption_r3*(1+(@consumption_boost_r3/100)))
    
        --production r4
        
        DECLARE @base_production_r4 float(53) = 0, @base_consumption_r4 float(53) = 0, @production_boost_r4 float(53) = 0, @consumption_boost_r4 float(53) = 0, @final_production_r4 float(53) = 0
        
        SELECT @base_production_r4=ISNULL(SUM(BUILDING_LEVEL_TABLE.production),0)
        FROM dbo.build BUILD_TABLE
        INNER JOIN dbo.building_level BUILDING_LEVEL_TABLE
        ON BUILD_TABLE.building_id = BUILDING_LEVEL_TABLE.building_id AND
            CASE
            WHEN BUILD_TABLE.build_queue > @at_time
            THEN BUILD_TABLE.building_level-1
            ELSE BUILD_TABLE.building_level
            END
            = BUILDING_LEVEL_TABLE.building_level
        WHERE BUILD_TABLE.base_id=@base_id AND BUILD_TABLE.building_id = 4
        
        SELECT @production_boost_r4= BASE_FETCH_TABLE.research_r4 + BASE_FETCH_TABLE.hero_boost_r4 + BASE_FETCH_TABLE.item_boost_r4
        FROM @base_fetch_table BASE_FETCH_TABLE
        WHERE BASE_FETCH_TABLE.base_id = @base_id
        
        SET @final_production_r4 = (@base_production_r4*(1+(@production_boost_r4/100))-@base_consumption_r4*(1+(@consumption_boost_r4/100)))
    
        --production r5
        
        DECLARE @base_production_r5 float(53) = 0, @base_consumption_r5 float(53) = 0, @production_boost_r5 float(53) = 0, @consumption_boost_r5 float(53) = 0, @final_production_r5 float(53) = 0
        
        SELECT @base_production_r5=ISNULL(SUM(BUILDING_LEVEL_TABLE.production),0)
        FROM dbo.build BUILD_TABLE
        INNER JOIN dbo.building_level BUILDING_LEVEL_TABLE
        ON BUILD_TABLE.building_id = BUILDING_LEVEL_TABLE.building_id AND
            CASE
            WHEN BUILD_TABLE.build_queue > @at_time
            THEN BUILD_TABLE.building_level-1
            ELSE BUILD_TABLE.building_level
            END
            = BUILDING_LEVEL_TABLE.building_level
        WHERE BUILD_TABLE.base_id=@base_id AND BUILD_TABLE.building_id = 5    
        
        SELECT @production_boost_r5= BASE_FETCH_TABLE.research_r5 + BASE_FETCH_TABLE.hero_boost_r5 + BASE_FETCH_TABLE.item_boost_r5
        FROM @base_fetch_table BASE_FETCH_TABLE
        WHERE BASE_FETCH_TABLE.base_id = @base_id
        
        SET @final_production_r5 = (@base_production_r5*(1+(@production_boost_r5/100))-@base_consumption_r5*(1+(@consumption_boost_r5/100)))
    
    
        UPDATE BASE_FETCH_TABLE
        SET r1_production = @final_production_r1,
            r2_production = @final_production_r2,
            r3_production = @final_production_r3,
            r4_production = @final_production_r4,
            r5_production = @final_production_r5,
            upkeep = @final_consumption_r1
        FROM @base_fetch_table BASE_FETCH_TABLE
        WHERE BASE_FETCH_TABLE.base_id=@base_id
        
        -- END PRODUCTION
        
        --RESEARCH OFFSET
        UPDATE @base_fetch_table
        SET 
                            research_r1= research_r1 - (CASE WHEN research_id=201 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_r2= research_r2 - (CASE WHEN research_id=202 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_r3= research_r3 - (CASE WHEN research_id=203 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_r4= research_r4 - (CASE WHEN research_id=204 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_r5= research_r5 - (CASE WHEN research_id=205 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_build= research_build - (CASE WHEN research_id=101 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_research= research_research - (CASE WHEN research_id=102 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_training= research_training - (CASE WHEN research_id=107 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_trade= research_trade - (CASE WHEN research_id=104 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_craft= research_craft - (CASE WHEN research_id=105 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_heal= research_heal - (CASE WHEN research_id=106 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_attack= research_attack - (CASE WHEN research_id=301 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_defense= research_defense - (CASE WHEN research_id=302 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_march= research_march - (CASE WHEN research_id=103 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_life= research_life - (CASE WHEN research_id=303 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_load= research_load - (CASE WHEN research_id=205 AND research_queue>@at_time THEN 1 ELSE 0 END), 
                            research_a_attack= research_a_attack - (CASE WHEN research_id=401 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_b_attack= research_b_attack - (CASE WHEN research_id=402 AND research_queue>@at_time THEN 1 ELSE 0 END), 
                            research_c_attack= research_c_attack - (CASE WHEN research_id=403 AND research_queue>@at_time THEN 1 ELSE 0 END), 
                            research_d_attack= research_d_attack - (CASE WHEN research_id=404 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_a2= research_a2 - (CASE WHEN research_id=1101 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_a3= research_a3 - (CASE WHEN research_id=1102 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_b2= research_b2 - (CASE WHEN research_id=1201 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_b3= research_b3 - (CASE WHEN research_id=1202 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_c2= research_c2 - (CASE WHEN research_id=1301 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_c3= research_c3 - (CASE WHEN research_id=1302 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_d2= research_d2 - (CASE WHEN research_id=1401 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_d3= research_d3 - (CASE WHEN research_id=1402 AND research_queue>@at_time THEN 1 ELSE 0 END)
        WHERE base_id=@base_id
        
        --FINAL BOOSTS
        
        UPDATE @base_fetch_table
        SET 
            boost_r1=@production_boost_r1,
            boost_r2=@production_boost_r2,
            boost_r3=@production_boost_r3,
            boost_r4=@production_boost_r4,
            boost_r5=@production_boost_r5,
            boost_attack = hero_boost_attack+research_attack+item_boost_attack,
            boost_defense = hero_boost_defense+research_defense+item_boost_defense,
            boost_build = hero_boost_build+research_build,
            boost_research = hero_boost_research+research_research,
            boost_training = hero_boost_training+research_training,
            boost_march = hero_boost_march+research_march,
            boost_trade = hero_boost_trade+research_trade,
            boost_craft = hero_boost_craft+research_craft,
            boost_life = hero_boost_life+research_life,
            boost_load = hero_boost_load+research_load,
            boost_a_attack = hero_boost_a_attack+research_a_attack,
            boost_b_attack = hero_boost_b_attack+research_b_attack,
            boost_c_attack = hero_boost_c_attack+research_c_attack,
            boost_d_attack = hero_boost_d_attack+research_d_attack,
            boost_heal = hero_boost_heal+research_heal
        WHERE base_id=@base_id
        
        --END FINAL BOOSTS
        
        -- CASTLE LEVEL
        UPDATE BASE_FETCH_TABLE
        SET castle_level= ISNULL(BUILD_TABLE.building_level, 1)
            FROM @base_fetch_table BASE_FETCH_TABLE
            INNER JOIN dbo.build BUILD_TABLE
            ON BASE_FETCH_TABLE.base_id = BUILD_TABLE.base_id AND BUILD_TABLE.location = 101 AND BUILD_TABLE.building_id = 101
        WHERE BASE_FETCH_TABLE.base_id=@base_id
    
    
    --END BASE FETCH TABLE
    
    DECLARE @update_table TABLE
		(
			item_to_update varchar(30),
            date_to_update datetime
		)
    --normal_refresh
    INSERT INTO @update_table (item_to_update,date_to_update)
    VALUES ('normal_refresh',GETUTCDATE())

    --build_queue
    INSERT INTO @update_table
    SELECT item_to_update='build_queue', date_to_update=build_queue 
    FROM base WHERE base_id=@base_id AND build_queue> @last_processed_time AND build_queue<@current_process_time 
    
    --research_queue
    INSERT INTO @update_table
    SELECT item_to_update='research_queue', date_to_update=research_queue 
    FROM base WHERE base_id=@base_id AND research_queue> @last_processed_time AND research_queue<@current_process_time
    
    --attack_queue
    INSERT INTO @update_table
    SELECT item_to_update='attack_queue', date_to_update=attack_queue 
    FROM base WHERE base_id=@base_id AND attack_queue> @last_processed_time AND attack_queue<@current_process_time
    
    --attack_return
    INSERT INTO @update_table
    SELECT item_to_update='attack_return', date_to_update=attack_return 
    FROM base WHERE base_id=@base_id AND attack_return> @last_processed_time AND attack_return<@current_process_time
    
    --reinforce_queue
    INSERT INTO @update_table
    SELECT item_to_update='reinforce_queue', date_to_update=reinforce_queue 
    FROM base WHERE base_id=@base_id AND reinforce_queue> @last_processed_time AND reinforce_queue<@current_process_time
    
    --transfer_queue
    INSERT INTO @update_table
    SELECT item_to_update='transfer_queue', date_to_update=transfer_queue 
    FROM base WHERE base_id=@base_id AND transfer_queue> @last_processed_time AND transfer_queue<@current_process_time
    
    --trade_queue
    INSERT INTO @update_table
    SELECT item_to_update='trade_queue', date_to_update=trade_queue 
    FROM base WHERE base_id=@base_id AND trade_queue> @last_processed_time AND trade_queue<@current_process_time
    
    --craft_queue
    INSERT INTO @update_table
    SELECT item_to_update='craft_queue', date_to_update=craft_queue 
    FROM base WHERE base_id=@base_id AND craft_queue> @last_processed_time AND craft_queue<@current_process_time
    
    --hospital_queue
    INSERT INTO @update_table
    SELECT item_to_update='hospital_queue', date_to_update=hospital_queue 
    FROM base WHERE base_id=@base_id AND hospital_queue> @last_processed_time AND hospital_queue<@current_process_time
    
    --a_queue
    INSERT INTO @update_table
    SELECT item_to_update='a_queue', date_to_update=a_queue 
    FROM base WHERE base_id=@base_id AND a_queue> @last_processed_time AND a_queue<@current_process_time
    
    --b_queue
    INSERT INTO @update_table
    SELECT item_to_update='b_queue', date_to_update=b_queue 
    FROM base WHERE base_id=@base_id AND b_queue> @last_processed_time AND b_queue<@current_process_time
    
    --c_queue
    INSERT INTO @update_table
    SELECT item_to_update='c_queue', date_to_update=c_queue 
    FROM base WHERE base_id=@base_id AND c_queue> @last_processed_time AND c_queue<@current_process_time
    
    --d_queue
    INSERT INTO @update_table
    SELECT item_to_update='d_queue', date_to_update=d_queue 
    FROM base WHERE base_id=@base_id AND d_queue> @last_processed_time AND d_queue<@current_process_time
    
    --spy_queue
    INSERT INTO @update_table
    SELECT item_to_update='spy_queue', date_to_update=spy_queue 
    FROM base WHERE base_id=@base_id AND spy_queue> @last_processed_time AND spy_queue<@current_process_time
    
    --item_r1_ending
    INSERT INTO @update_table
    SELECT item_to_update='item_r1_ending', date_to_update=item_r1_ending 
    FROM base WHERE base_id=@base_id AND item_r1_ending> @last_processed_time AND item_r1_ending<@current_process_time
    
    --item_r2_ending
    INSERT INTO @update_table
    SELECT item_to_update='item_r2_ending', date_to_update=item_r2_ending 
    FROM base WHERE base_id=@base_id AND item_r2_ending> @last_processed_time AND item_r2_ending<@current_process_time
    
    --item_r3_ending
    INSERT INTO @update_table
    SELECT item_to_update='item_r3_ending', date_to_update=item_r3_ending 
    FROM base WHERE base_id=@base_id AND item_r3_ending> @last_processed_time AND item_r3_ending<@current_process_time
    
    --item_r4_ending
    INSERT INTO @update_table
    SELECT item_to_update='item_r4_ending', date_to_update=item_r4_ending 
    FROM base WHERE base_id=@base_id AND item_r4_ending> @last_processed_time AND item_r4_ending<@current_process_time
    
    --item_r5_ending
    INSERT INTO @update_table
    SELECT item_to_update='item_r5_ending', date_to_update=item_r5_ending 
    FROM base WHERE base_id=@base_id AND item_r5_ending> @last_processed_time AND item_r5_ending<@current_process_time
    
    --item_attack_ending
    INSERT INTO @update_table
    SELECT item_to_update='item_attack_ending', date_to_update=item_attack_ending 
    FROM base WHERE base_id=@base_id AND item_attack_ending> @last_processed_time AND item_attack_ending<@current_process_time
    
    --item_defense_ending
    INSERT INTO @update_table
    SELECT item_to_update='item_defense_ending', date_to_update=item_defense_ending 
    FROM base WHERE base_id=@base_id AND item_defense_ending> @last_processed_time AND item_defense_ending<@current_process_time
    
    
    DECLARE @sorted_update_table TABLE
		(
            table_index int NOT NULL identity(1,1),
			item_to_update varchar(30),
            date_to_update datetime
            PRIMARY KEY(table_index)
		)
    
    INSERT INTO @sorted_update_table
    SELECT item_to_update,date_to_update
    FROM @update_table 

    /*Logic To Sort then Loop through table to process 1 at a time */
    
    DECLARE @rows_to_process int,@current_processing_row int,@current_item_to_update varchar(30),@current_date_to_update datetime
    
    SELECT @rows_to_process = COUNT(*) FROM @sorted_update_table
    
    SET @current_processing_row=0
    WHILE @current_processing_row<@rows_to_process
    BEGIN
        SET @current_processing_row=@current_processing_row+1
        SELECT 
            @current_item_to_update=item_to_update,@current_date_to_update=date_to_update
            FROM @sorted_update_table
            WHERE table_index=@current_processing_row
    
        --PROCESS

        --CURRENTLY THE APPROACH IS TO DO NOTHING ON END, CHANGES ARE MADE UP FRONT
        
        DECLARE @base_id_AS_STRING varchar(30) = CAST(@base_id AS VARCHAR);
	    RAISERROR ('@base_id : %s', 10,-1, @base_id_AS_STRING) with nowait;
        DECLARE @current_date_to_update_AS_STRING varchar(30) = CAST(@current_date_to_update AS VARCHAR);
        RAISERROR ('@current_date_to_update : %s', 10,-1, @current_date_to_update_AS_STRING) with nowait;
        -- RETRIEVE DATA
        
        exec usp_Process_UpdateResources @base_fetch_table_at_latest_time=@base_fetch_table,@base_id= @base_id, @to_date =@current_date_to_update
        
        UPDATE @base_fetch_table
        SET BASE_FETCH_TABLE.r1=BASE_TABLE.r1,BASE_FETCH_TABLE.r2=BASE_TABLE.r2,BASE_FETCH_TABLE.r3=BASE_TABLE.r3,BASE_FETCH_TABLE.r4=BASE_TABLE.r4,BASE_FETCH_TABLE.r5=BASE_TABLE.r5
        FROM @base_fetch_table BASE_FETCH_TABLE
        INNER JOIN dbo.base BASE_TABLE
        ON BASE_TABLE.base_id = @base_id
        
        END
    END
    /*return row of fields as base_view*/
    SELECT * FROM @base_fetch_table
GO
/****** Object:  StoredProcedure [dbo].[usp_BaseUpdate]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_BaseUpdate]
(@base_id int)
AS
BEGIN

    DECLARE @base_id_AS_STRING varchar(30) = CAST(@base_id AS VARCHAR);
    RAISERROR ('usp_BaseUpdate for @base_id : %s', 10,-1, @base_id_AS_STRING) with nowait;
        
    DECLARE @current_process_time datetime, @last_processed_time datetime;
    
    SET @current_process_time = GETUTCDATE();
    
    SELECT @last_processed_time= last_process 
    FROM base WHERE base_id=@base_id AND build_queue> @last_processed_time AND build_queue<@current_process_time 
    
    --BASE FETCH TABLE
    DECLARE @at_time datetime = @current_process_time
    DECLARE @base_fetch_table AS BaseFetchTableType

    -- FROM Base

        INSERT INTO @base_fetch_table(base_id,base_type,profile_id,base_name,map_x,map_y,
        r1,r2,r3,r4,r5,
        build_location,build_queue,build_time,
        research_queue,research_time,research_id,
        attack_queue,attack_time,attack_job_time,attack_return,attack_id,
        trade_queue,trade_time,trade_id,
        reinforce_queue,reinforce_time,reinforce_id,reinforce_action,
        transfer_queue,transfer_time,transfer_id,
        craft_queue,craft_time,hospital_queue,hospital_time,
        a_queue,a_time,b_queue,b_time,c_queue,c_time,d_queue,d_time,spy_queue,spy_time,
        spy,a1,a2,a3,b1,b2,b3,c1,c2,c3,d1,d2,d3,
        t_a1,t_a2,t_a3,t_b1,t_b2,t_b3,t_c1,t_c2,t_c3,t_d1,t_d2,t_d3,
        i_a1,i_a2,i_a3,i_b1,i_b2,i_b3,i_c1,i_c2,i_c3,i_d1,i_d2,i_d3,
        h_a1,h_a2,h_a3,h_b1,h_b2,h_b3,h_c1,h_c2,h_c3,h_d1,h_d2,h_d3,
        r_a1,r_a2,r_a3,r_b1,r_b2,r_b3,r_c1,r_c2,r_c3,r_d1,r_d2,r_d3,
        rt_a1,rt_a2,rt_a3,rt_b1,rt_b2,rt_b3,rt_c1,rt_c2,rt_c3,rt_d1,rt_d2,rt_d3,
        research_r1,research_r2,research_r3,research_r4,research_r5,
        research_research,research_training,research_march,research_attack,research_defense,research_load,
        research_build,research_trade,research_craft,research_heal,research_a_attack,research_b_attack,research_c_attack,research_d_attack,research_life,
        research_a2,research_a3,research_b2,research_b3,research_c2,research_c3,research_d2,research_d3,
        a_a1,a_a2,a_a3,a_b1,a_b2,a_b3,a_c1,a_c2,a_c3,a_d1,a_d2,a_d3,
        a_r1,a_r2,a_r3,a_r4,a_r5,
        r1_boost_value,r2_boost_value,r3_boost_value,r4_boost_value,r5_boost_value,attack_boost_value,defense_boost_value,
        item_r1,item_r2,item_r3,item_r4,item_r5,item_attack,item_defense,
        item_r1_ending,item_r2_ending,item_r3_ending,item_r4_ending,item_r5_ending,item_attack_ending,item_defense_ending
        )
        SELECT
        base_id,base_type,profile_id,base_name,map_x,map_y,
        r1,r2,r3,r4,r5,
        build_location,build_queue,build_time,
        research_queue,research_time,research_id,
        attack_queue,attack_time,attack_job_time,attack_return,attack_id,
        trade_queue,trade_time,trade_id,
        reinforce_queue,reinforce_time,reinforce_id,reinforce_action,
        transfer_queue,transfer_time,transfer_id,
        craft_queue,craft_time,hospital_queue,hospital_time,
        a_queue,a_time,b_queue,b_time,c_queue,c_time,d_queue,d_time,spy_queue,spy_time,
        spy,a1,a2,a3,b1,b2,b3,c1,c2,c3,d1,d2,d3,
        t_a1,t_a2,t_a3,t_b1,t_b2,t_b3,t_c1,t_c2,t_c3,t_d1,t_d2,t_d3,
        i_a1,i_a2,i_a3,i_b1,i_b2,i_b3,i_c1,i_c2,i_c3,i_d1,i_d2,i_d3,
        h_a1,h_a2,h_a3,h_b1,h_b2,h_b3,h_c1,h_c2,h_c3,h_d1,h_d2,h_d3,
        r_a1,r_a2,r_a3,r_b1,r_b2,r_b3,r_c1,r_c2,r_c3,r_d1,r_d2,r_d3,
        rt_a1,rt_a2,rt_a3,rt_b1,rt_b2,rt_b3,rt_c1,rt_c2,rt_c3,rt_d1,rt_d2,rt_d3,
        research_r1,research_r2,research_r3,research_r4,research_r5,
        research_research,research_training,research_march,research_attack,research_defense,research_load,
        research_build,research_trade,research_craft,research_heal,research_a_attack,research_b_attack,research_c_attack,research_d_attack,research_life,
        research_a2,research_a3,research_b2,research_b3,research_c2,research_c3,research_d2,research_d3,
        a_a1,a_a2,a_a3,a_b1,a_b2,a_b3,a_c1,a_c2,a_c3,a_d1,a_d2,a_d3,
        a_r1,a_r2,a_r3,a_r4,a_r5,
        r1_boost_value,r2_boost_value,r3_boost_value,r4_boost_value,r5_boost_value,attack_boost_value,defense_boost_value,
        item_r1,item_r2,item_r3,item_r4,item_r5,item_attack,item_defense,
        item_r1_ending,item_r2_ending,item_r3_ending,item_r4_ending,item_r5_ending,item_attack_ending,item_defense_ending 
        FROM base
        WHERE base_id=@base_id
        
        --CAPACITY
        
        --capacity r1
        DECLARE @base_capacity_r1  DECIMAL(18,2)= 0, @final_capacity_r1 DECIMAL(18,2)= 0
        SELECT @base_capacity_r1=SUM(BUILDING_LEVEL_TABLE.capacity)
        FROM dbo.build BUILD_TABLE
        INNER JOIN dbo.building_level BUILDING_LEVEL_TABLE
        ON BUILD_TABLE.building_id = BUILDING_LEVEL_TABLE.building_id AND
            CASE
            WHEN BUILD_TABLE.build_queue > @at_time
            THEN BUILD_TABLE.building_level-1
            ELSE BUILD_TABLE.building_level
            END
            = BUILDING_LEVEL_TABLE.building_level
        WHERE BUILD_TABLE.base_id=@base_id AND BUILD_TABLE.building_id = 1
        
        SET @final_capacity_r1 = @base_capacity_r1
        
        UPDATE @base_fetch_table
        SET r1_capacity=@final_capacity_r1
        WHERE base_id=@base_id
        
        --capacity r2
        DECLARE @base_capacity_r2  DECIMAL(18,2)= 0, @final_capacity_r2 DECIMAL(18,2)= 0
        SELECT @base_capacity_r2=SUM(BUILDING_LEVEL_TABLE.capacity)
        FROM dbo.build BUILD_TABLE
        INNER JOIN dbo.building_level BUILDING_LEVEL_TABLE
        ON BUILD_TABLE.building_id = BUILDING_LEVEL_TABLE.building_id AND
            CASE
            WHEN BUILD_TABLE.build_queue > @at_time
            THEN BUILD_TABLE.building_level-1
            ELSE BUILD_TABLE.building_level
            END
            = BUILDING_LEVEL_TABLE.building_level
        WHERE BUILD_TABLE.base_id=@base_id AND BUILD_TABLE.building_id = 2
        
        SET @final_capacity_r2 = @base_capacity_r2
        
        UPDATE @base_fetch_table
        SET r2_capacity=@final_capacity_r2
        WHERE base_id=@base_id
        
        --capacity r3
        DECLARE @base_capacity_r3  DECIMAL(18,2)= 0, @final_capacity_r3 DECIMAL(18,2)= 0
        SELECT @base_capacity_r3=SUM(BUILDING_LEVEL_TABLE.capacity)
        FROM dbo.build BUILD_TABLE
        INNER JOIN dbo.building_level BUILDING_LEVEL_TABLE
        ON BUILD_TABLE.building_id = BUILDING_LEVEL_TABLE.building_id AND
            CASE
            WHEN BUILD_TABLE.build_queue > @at_time
            THEN BUILD_TABLE.building_level-1
            ELSE BUILD_TABLE.building_level
            END
            = BUILDING_LEVEL_TABLE.building_level
        WHERE BUILD_TABLE.base_id=@base_id AND BUILD_TABLE.building_id = 3
        
        SET @final_capacity_r3 = @base_capacity_r3
        
        UPDATE @base_fetch_table
        SET r3_capacity=@final_capacity_r3
        WHERE base_id=@base_id
        
        --capacity r4
        DECLARE @base_capacity_r4  DECIMAL(18,2)= 0, @final_capacity_r4 DECIMAL(18,2)= 0
        SELECT @base_capacity_r4=SUM(BUILDING_LEVEL_TABLE.capacity)
        FROM dbo.build BUILD_TABLE
        INNER JOIN dbo.building_level BUILDING_LEVEL_TABLE
        ON BUILD_TABLE.building_id = BUILDING_LEVEL_TABLE.building_id AND
            CASE
            WHEN BUILD_TABLE.build_queue > @at_time
            THEN BUILD_TABLE.building_level-1
            ELSE BUILD_TABLE.building_level
            END
            = BUILDING_LEVEL_TABLE.building_level
        WHERE BUILD_TABLE.base_id=@base_id AND BUILD_TABLE.building_id = 4
        
        SET @final_capacity_r4 = @base_capacity_r4
        
        UPDATE @base_fetch_table
        SET r4_capacity=@final_capacity_r4
        WHERE base_id=@base_id
        
        --capacity r5
        DECLARE @base_capacity_r5  DECIMAL(18,2)= 0, @final_capacity_r5 DECIMAL(18,2)= 0
        SELECT @base_capacity_r5=SUM(BUILDING_LEVEL_TABLE.capacity)
        FROM dbo.build BUILD_TABLE
        INNER JOIN dbo.building_level BUILDING_LEVEL_TABLE
        ON BUILD_TABLE.building_id = BUILDING_LEVEL_TABLE.building_id AND
            CASE
            WHEN BUILD_TABLE.build_queue > @at_time
            THEN BUILD_TABLE.building_level-1
            ELSE BUILD_TABLE.building_level
            END
            = BUILDING_LEVEL_TABLE.building_level
        WHERE BUILD_TABLE.base_id=@base_id AND BUILD_TABLE.building_id = 5
        
        SET @final_capacity_r5 = @base_capacity_r5
        
        UPDATE @base_fetch_table
        SET r5_capacity=@final_capacity_r5
        WHERE base_id=@base_id
        
        --END CAPACITY
        
        --HERO BOOST
        
        
        --Base Boost
        /*
        UPDATE BASE_FETCH_TABLE
        SET 
            BASE_FETCH_TABLE.hero_boost_r1=HERO_TABLE.hero_r1,
            BASE_FETCH_TABLE.hero_boost_r2=HERO_TABLE.hero_r2,
            BASE_FETCH_TABLE.hero_boost_r3=HERO_TABLE.hero_r3,
            BASE_FETCH_TABLE.hero_boost_r4=HERO_TABLE.hero_r4,
            BASE_FETCH_TABLE.hero_boost_r5=HERO_TABLE.hero_r5,
            BASE_FETCH_TABLE.hero_boost_build=HERO_TABLE.hero_build,
            BASE_FETCH_TABLE.hero_boost_research=HERO_TABLE.hero_research,
            BASE_FETCH_TABLE.hero_boost_training=HERO_TABLE.hero_training,
            BASE_FETCH_TABLE.hero_boost_march=HERO_TABLE.hero_march,
            BASE_FETCH_TABLE.hero_boost_trade=HERO_TABLE.hero_trade,
            BASE_FETCH_TABLE.hero_boost_craft=HERO_TABLE.hero_craft,
            BASE_FETCH_TABLE.hero_boost_attack=HERO_TABLE.hero_attack,
            BASE_FETCH_TABLE.hero_boost_defense=HERO_TABLE.hero_defense,
            BASE_FETCH_TABLE.hero_boost_life=HERO_TABLE.hero_life,
            BASE_FETCH_TABLE.hero_boost_a_attack=HERO_TABLE.hero_a_attack,
            BASE_FETCH_TABLE.hero_boost_b_attack=HERO_TABLE.hero_b_attack,
            BASE_FETCH_TABLE.hero_boost_c_attack=HERO_TABLE.hero_c_attack,
            BASE_FETCH_TABLE.hero_boost_d_attack=HERO_TABLE.hero_d_attack,
            BASE_FETCH_TABLE.hero_boost_heal=HERO_TABLE.hero_heal
        FROM @base_fetch_table BASE_FETCH_TABLE
        INNER JOIN dbo.hero HERO_TABLE
        ON BASE_FETCH_TABLE.profile_id=HERO_TABLE.profile_id
        
        */
        
        UPDATE BASE_FETCH_TABLE
        SET   
            BASE_FETCH_TABLE.hero_boost_r1=HERO_TABLE.hero_r1+ISNULL(ITEM_HELMET_TABLE.hero_r1,0)+ISNULL(ITEM_ARMOR_TABLE.hero_r1,0)+ISNULL(ITEM_BOOTS_TABLE.hero_r1,0)+ISNULL(ITEM_WEAPON_TABLE.hero_r1,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_r1,0)+ISNULL(ITEM_GLOVES_TABLE.hero_r1,0),
            BASE_FETCH_TABLE.hero_boost_r2=HERO_TABLE.hero_r2+ISNULL(ITEM_HELMET_TABLE.hero_r2,0)+ISNULL(ITEM_ARMOR_TABLE.hero_r2,0)+ISNULL(ITEM_BOOTS_TABLE.hero_r2,0)+ISNULL(ITEM_WEAPON_TABLE.hero_r2,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_r2,0)+ISNULL(ITEM_GLOVES_TABLE.hero_r2,0),
            BASE_FETCH_TABLE.hero_boost_r3=HERO_TABLE.hero_r3+ISNULL(ITEM_HELMET_TABLE.hero_r3,0)+ISNULL(ITEM_ARMOR_TABLE.hero_r3,0)+ISNULL(ITEM_BOOTS_TABLE.hero_r3,0)+ISNULL(ITEM_WEAPON_TABLE.hero_r3,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_r3,0)+ISNULL(ITEM_GLOVES_TABLE.hero_r3,0),
            BASE_FETCH_TABLE.hero_boost_r4=HERO_TABLE.hero_r4+ISNULL(ITEM_HELMET_TABLE.hero_r4,0)+ISNULL(ITEM_ARMOR_TABLE.hero_r4,0)+ISNULL(ITEM_BOOTS_TABLE.hero_r4,0)+ISNULL(ITEM_WEAPON_TABLE.hero_r4,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_r4,0)+ISNULL(ITEM_GLOVES_TABLE.hero_r4,0),
            BASE_FETCH_TABLE.hero_boost_r5=HERO_TABLE.hero_r5+ISNULL(ITEM_HELMET_TABLE.hero_r5,0)+ISNULL(ITEM_ARMOR_TABLE.hero_r5,0)+ISNULL(ITEM_BOOTS_TABLE.hero_r5,0)+ISNULL(ITEM_WEAPON_TABLE.hero_r5,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_r5,0)+ISNULL(ITEM_GLOVES_TABLE.hero_r5,0),
            BASE_FETCH_TABLE.hero_boost_build=HERO_TABLE.hero_build+ISNULL(ITEM_HELMET_TABLE.hero_build,0)+ISNULL(ITEM_ARMOR_TABLE.hero_build,0)+ISNULL(ITEM_BOOTS_TABLE.hero_build,0)+ISNULL(ITEM_WEAPON_TABLE.hero_build,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_build,0)+ISNULL(ITEM_GLOVES_TABLE.hero_build,0),
            BASE_FETCH_TABLE.hero_boost_research=HERO_TABLE.hero_research+ISNULL(ITEM_HELMET_TABLE.hero_research,0)+ISNULL(ITEM_ARMOR_TABLE.hero_research,0)+ISNULL(ITEM_BOOTS_TABLE.hero_research,0)+ISNULL(ITEM_WEAPON_TABLE.hero_research,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_research,0)+ISNULL(ITEM_GLOVES_TABLE.hero_research,0),
            BASE_FETCH_TABLE.hero_boost_training=HERO_TABLE.hero_training+ISNULL(ITEM_HELMET_TABLE.hero_training,0)+ISNULL(ITEM_ARMOR_TABLE.hero_training,0)+ISNULL(ITEM_BOOTS_TABLE.hero_training,0)+ISNULL(ITEM_WEAPON_TABLE.hero_training,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_training,0)+ISNULL(ITEM_GLOVES_TABLE.hero_training,0),
            BASE_FETCH_TABLE.hero_boost_march=HERO_TABLE.hero_march+ISNULL(ITEM_HELMET_TABLE.hero_march,0)+ISNULL(ITEM_ARMOR_TABLE.hero_march,0)+ISNULL(ITEM_BOOTS_TABLE.hero_march,0)+ISNULL(ITEM_WEAPON_TABLE.hero_march,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_march,0)+ISNULL(ITEM_GLOVES_TABLE.hero_march,0),
            BASE_FETCH_TABLE.hero_boost_trade=HERO_TABLE.hero_trade+ISNULL(ITEM_HELMET_TABLE.hero_trade,0)+ISNULL(ITEM_ARMOR_TABLE.hero_trade,0)+ISNULL(ITEM_BOOTS_TABLE.hero_trade,0)+ISNULL(ITEM_WEAPON_TABLE.hero_trade,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_trade,0)+ISNULL(ITEM_GLOVES_TABLE.hero_trade,0),
            BASE_FETCH_TABLE.hero_boost_craft=HERO_TABLE.hero_craft+ISNULL(ITEM_HELMET_TABLE.hero_craft,0)+ISNULL(ITEM_ARMOR_TABLE.hero_craft,0)+ISNULL(ITEM_BOOTS_TABLE.hero_craft,0)+ISNULL(ITEM_WEAPON_TABLE.hero_craft,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_craft,0)+ISNULL(ITEM_GLOVES_TABLE.hero_craft,0),
            BASE_FETCH_TABLE.hero_boost_attack=HERO_TABLE.hero_attack+ISNULL(ITEM_HELMET_TABLE.hero_attack,0)+ISNULL(ITEM_ARMOR_TABLE.hero_attack,0)+ISNULL(ITEM_BOOTS_TABLE.hero_attack,0)+ISNULL(ITEM_WEAPON_TABLE.hero_attack,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_attack,0)+ISNULL(ITEM_GLOVES_TABLE.hero_attack,0),
            BASE_FETCH_TABLE.hero_boost_defense=HERO_TABLE.hero_defense+ISNULL(ITEM_HELMET_TABLE.hero_defense,0)+ISNULL(ITEM_ARMOR_TABLE.hero_defense,0)+ISNULL(ITEM_BOOTS_TABLE.hero_defense,0)+ISNULL(ITEM_WEAPON_TABLE.hero_defense,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_defense,0)+ISNULL(ITEM_GLOVES_TABLE.hero_defense,0),
            BASE_FETCH_TABLE.hero_boost_life=HERO_TABLE.hero_life+ISNULL(ITEM_HELMET_TABLE.hero_life,0)+ISNULL(ITEM_ARMOR_TABLE.hero_life,0)+ISNULL(ITEM_BOOTS_TABLE.hero_life,0)+ISNULL(ITEM_WEAPON_TABLE.hero_life,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_life,0)+ISNULL(ITEM_GLOVES_TABLE.hero_life,0),
            BASE_FETCH_TABLE.hero_boost_a_attack=HERO_TABLE.hero_a_attack+ISNULL(ITEM_HELMET_TABLE.hero_a_attack,0)+ISNULL(ITEM_ARMOR_TABLE.hero_a_attack,0)+ISNULL(ITEM_BOOTS_TABLE.hero_a_attack,0)+ISNULL(ITEM_WEAPON_TABLE.hero_a_attack,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_a_attack,0)+ISNULL(ITEM_GLOVES_TABLE.hero_a_attack,0),
            BASE_FETCH_TABLE.hero_boost_b_attack=HERO_TABLE.hero_b_attack+ISNULL(ITEM_HELMET_TABLE.hero_b_attack,0)+ISNULL(ITEM_ARMOR_TABLE.hero_b_attack,0)+ISNULL(ITEM_BOOTS_TABLE.hero_b_attack,0)+ISNULL(ITEM_WEAPON_TABLE.hero_b_attack,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_b_attack,0)+ISNULL(ITEM_GLOVES_TABLE.hero_b_attack,0),
            BASE_FETCH_TABLE.hero_boost_c_attack=HERO_TABLE.hero_c_attack+ISNULL(ITEM_HELMET_TABLE.hero_c_attack,0)+ISNULL(ITEM_ARMOR_TABLE.hero_c_attack,0)+ISNULL(ITEM_BOOTS_TABLE.hero_c_attack,0)+ISNULL(ITEM_WEAPON_TABLE.hero_c_attack,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_c_attack,0)+ISNULL(ITEM_GLOVES_TABLE.hero_c_attack,0),
            BASE_FETCH_TABLE.hero_boost_d_attack=HERO_TABLE.hero_d_attack+ISNULL(ITEM_HELMET_TABLE.hero_d_attack,0)+ISNULL(ITEM_ARMOR_TABLE.hero_d_attack,0)+ISNULL(ITEM_BOOTS_TABLE.hero_d_attack,0)+ISNULL(ITEM_WEAPON_TABLE.hero_d_attack,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_d_attack,0)+ISNULL(ITEM_GLOVES_TABLE.hero_d_attack,0),
            BASE_FETCH_TABLE.hero_boost_heal=HERO_TABLE.hero_heal+ISNULL(ITEM_HELMET_TABLE.hero_heal,0)+ISNULL(ITEM_ARMOR_TABLE.hero_heal,0)+ISNULL(ITEM_BOOTS_TABLE.hero_heal,0)+ISNULL(ITEM_WEAPON_TABLE.hero_heal,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_heal,0)+ISNULL(ITEM_GLOVES_TABLE.hero_heal,0)
        FROM @base_fetch_table BASE_FETCH_TABLE
        INNER JOIN dbo.hero HERO_TABLE
        ON BASE_FETCH_TABLE.profile_id=HERO_TABLE.profile_id
        LEFT JOIN dbo.item ITEM_HELMET_TABLE
        ON HERO_TABLE.hero_helmet=ITEM_HELMET_TABLE.item_id 
        LEFT JOIN dbo.item ITEM_ARMOR_TABLE
        ON HERO_TABLE.hero_armor=ITEM_ARMOR_TABLE.item_id
        LEFT JOIN dbo.item ITEM_BOOTS_TABLE
        ON HERO_TABLE.hero_boots=ITEM_BOOTS_TABLE.item_id
        LEFT JOIN dbo.item ITEM_WEAPON_TABLE
        ON HERO_TABLE.hero_weapon=ITEM_WEAPON_TABLE.item_id
        LEFT JOIN dbo.item ITEM_ACCESSORY_TABLE
        ON HERO_TABLE.hero_accessory=ITEM_ACCESSORY_TABLE.item_id
        LEFT JOIN dbo.item ITEM_GLOVES_TABLE
        ON HERO_TABLE.hero_gloves=ITEM_GLOVES_TABLE.item_id
        
        --END HERO BOOST
        
        --ITEM BOOST
        
        --Item boost hardcoded to extra 100 percent of base production
        UPDATE BASE_FETCH_TABLE
        SET 
            BASE_FETCH_TABLE.item_boost_r1=
            CASE WHEN BASE_FETCH_TABLE.item_r1_ending<@at_time THEN 0
            ELSE BASE_FETCH_TABLE.r1_boost_value 
            END,
            BASE_FETCH_TABLE.item_boost_r2=
            CASE WHEN BASE_FETCH_TABLE.item_r2_ending<@at_time THEN 0
            ELSE BASE_FETCH_TABLE.r2_boost_value 
            END,
            BASE_FETCH_TABLE.item_boost_r3=
            CASE WHEN BASE_FETCH_TABLE.item_r3_ending<@at_time THEN 0
            ELSE BASE_FETCH_TABLE.r3_boost_value 
            END,
            BASE_FETCH_TABLE.item_boost_r4=
            CASE WHEN BASE_FETCH_TABLE.item_r4_ending<@at_time THEN 0
            ELSE BASE_FETCH_TABLE.r4_boost_value 
            END,
            BASE_FETCH_TABLE.item_boost_r5=
            CASE WHEN BASE_FETCH_TABLE.item_r5_ending<@at_time THEN 0
            ELSE BASE_FETCH_TABLE.r5_boost_value 
            END,
            BASE_FETCH_TABLE.item_boost_attack=
            CASE WHEN BASE_FETCH_TABLE.item_attack_ending<@at_time THEN 0
            ELSE BASE_FETCH_TABLE.attack_boost_value 
            END,
            BASE_FETCH_TABLE.item_boost_defense=
            CASE WHEN BASE_FETCH_TABLE.item_defense_ending<@at_time THEN 0
            ELSE BASE_FETCH_TABLE.defense_boost_value
            END

        FROM @base_fetch_table BASE_FETCH_TABLE
        WHERE BASE_FETCH_TABLE.base_id = @base_id
        
        --END ITEM BOOST
        
        --PRODUCTION 
        
        --production r1
        
        DECLARE @base_production_r1 float(53) = 0, @base_consumption_r1 float(53) = 0, @production_boost_r1 float(53) = 0, @consumption_boost_r1 float(53) = 0, @final_production_r1 float(53) = 0, @final_consumption_r1 float(53) =0
        
        SELECT @base_production_r1=SUM(BUILDING_LEVEL_TABLE.production)
        FROM dbo.build BUILD_TABLE
        INNER JOIN dbo.building_level BUILDING_LEVEL_TABLE
        ON BUILD_TABLE.building_id = BUILDING_LEVEL_TABLE.building_id AND
            CASE
            WHEN BUILD_TABLE.build_queue > @at_time
            THEN BUILD_TABLE.building_level-1
            ELSE BUILD_TABLE.building_level
            END
            = BUILDING_LEVEL_TABLE.building_level
        WHERE BUILD_TABLE.base_id=@base_id AND BUILD_TABLE.building_id = 1
        
        --HARDCODE consumption per unit is 1 food
        SELECT @base_consumption_r1 = 
        ISNULL(BASE_TABLE.a1, 0) + (1 * CASE WHEN BASE_TABLE.a_queue<@at_time THEN + BASE_TABLE.t_a1 ELSE 0 END) +
        ISNULL(BASE_TABLE.a2, 0) + (1 * CASE WHEN BASE_TABLE.a_queue<@at_time THEN + BASE_TABLE.t_a2 ELSE 0 END) +
        ISNULL(BASE_TABLE.a3, 0) + (1 * CASE WHEN BASE_TABLE.a_queue<@at_time THEN + BASE_TABLE.t_a3 ELSE 0 END) +
        ISNULL(BASE_TABLE.b1, 0) + (1 * CASE WHEN BASE_TABLE.b_queue<@at_time THEN + BASE_TABLE.t_b1 ELSE 0 END) + 
        ISNULL(BASE_TABLE.b2, 0) + (1 * CASE WHEN BASE_TABLE.b_queue<@at_time THEN + BASE_TABLE.t_b2 ELSE 0 END) +
        ISNULL(BASE_TABLE.b3, 0) + (1 * CASE WHEN BASE_TABLE.b_queue<@at_time THEN + BASE_TABLE.t_b3 ELSE 0 END) +
        ISNULL(BASE_TABLE.c1, 0) + (1 * CASE WHEN BASE_TABLE.c_queue<@at_time THEN + BASE_TABLE.t_c1 ELSE 0 END) +
        ISNULL(BASE_TABLE.c2, 0) + (1 * CASE WHEN BASE_TABLE.c_queue<@at_time THEN + BASE_TABLE.t_c2 ELSE 0 END) +
        ISNULL(BASE_TABLE.c3, 0) + (1 * CASE WHEN BASE_TABLE.c_queue<@at_time THEN + BASE_TABLE.t_c3 ELSE 0 END) +
        ISNULL(BASE_TABLE.d1, 0) + (1 * CASE WHEN BASE_TABLE.d_queue<@at_time THEN + BASE_TABLE.t_d1 ELSE 0 END) +
        ISNULL(BASE_TABLE.d2, 0) + (1 * CASE WHEN BASE_TABLE.d_queue<@at_time THEN + BASE_TABLE.t_d2 ELSE 0 END) +
        ISNULL(BASE_TABLE.d3, 0) + (1 * CASE WHEN BASE_TABLE.d_queue<@at_time THEN + BASE_TABLE.t_d3 ELSE 0 END)
        FROM @base_fetch_table BASE_TABLE      
        WHERE BASE_TABLE.base_id = @base_id
        
        SELECT @production_boost_r1= BASE_FETCH_TABLE.research_r1 + BASE_FETCH_TABLE.hero_boost_r1 + BASE_FETCH_TABLE.item_boost_r1
        FROM @base_fetch_table BASE_FETCH_TABLE
        WHERE BASE_FETCH_TABLE.base_id = @base_id
        
        SET @final_consumption_r1 = @base_consumption_r1*(1+(@consumption_boost_r1/100))
        SET @final_production_r1 = (@base_production_r1*(1+(@production_boost_r1/100))-@final_consumption_r1)
    
        
        --production r2
        
        DECLARE @base_production_r2 float(53) = 0, @base_consumption_r2 float(53) = 0, @production_boost_r2 float(53) = 0, @consumption_boost_r2 float(53) = 0, @final_production_r2 float(53) = 0
        
        SELECT @base_production_r2=SUM(BUILDING_LEVEL_TABLE.production)
        FROM dbo.build BUILD_TABLE
        INNER JOIN dbo.building_level BUILDING_LEVEL_TABLE
        ON BUILD_TABLE.building_id = BUILDING_LEVEL_TABLE.building_id AND
            CASE
            WHEN BUILD_TABLE.build_queue > @at_time
            THEN BUILD_TABLE.building_level-1
            ELSE BUILD_TABLE.building_level
            END
            = BUILDING_LEVEL_TABLE.building_level
        WHERE BUILD_TABLE.base_id=@base_id AND BUILD_TABLE.building_id = 2
        
        SELECT @production_boost_r2= BASE_FETCH_TABLE.research_r2 + BASE_FETCH_TABLE.hero_boost_r2 + BASE_FETCH_TABLE.item_boost_r2
        FROM @base_fetch_table BASE_FETCH_TABLE
        WHERE BASE_FETCH_TABLE.base_id = @base_id
        
        SET @final_production_r2 = (@base_production_r2*(1+(@production_boost_r2/100))-@base_consumption_r2*(1+(@consumption_boost_r2/100)))
    
        --production r3
        
        DECLARE @base_production_r3 float(53) = 0, @base_consumption_r3 float(53) = 0, @production_boost_r3 float(53) = 0, @consumption_boost_r3 float(53) = 0, @final_production_r3 float(53) = 0
        
        SELECT @base_production_r3=SUM(BUILDING_LEVEL_TABLE.production)
        FROM dbo.build BUILD_TABLE
        INNER JOIN dbo.building_level BUILDING_LEVEL_TABLE
        ON BUILD_TABLE.building_id = BUILDING_LEVEL_TABLE.building_id AND
            CASE
            WHEN BUILD_TABLE.build_queue > @at_time
            THEN BUILD_TABLE.building_level-1
            ELSE BUILD_TABLE.building_level
            END
            = BUILDING_LEVEL_TABLE.building_level
        WHERE BUILD_TABLE.base_id=@base_id AND BUILD_TABLE.building_id = 3
        
        SELECT @production_boost_r3= BASE_FETCH_TABLE.research_r3 + BASE_FETCH_TABLE.hero_boost_r3 + BASE_FETCH_TABLE.item_boost_r3
        FROM @base_fetch_table BASE_FETCH_TABLE
        WHERE BASE_FETCH_TABLE.base_id = @base_id
        
        SET @final_production_r3 = (@base_production_r3*(1+(@production_boost_r3/100))-@base_consumption_r3*(1+(@consumption_boost_r3/100)))
    
        --production r4
        
        DECLARE @base_production_r4 float(53) = 0, @base_consumption_r4 float(53) = 0, @production_boost_r4 float(53) = 0, @consumption_boost_r4 float(53) = 0, @final_production_r4 float(53) = 0
        
        SELECT @base_production_r4=SUM(BUILDING_LEVEL_TABLE.production)
        FROM dbo.build BUILD_TABLE
        INNER JOIN dbo.building_level BUILDING_LEVEL_TABLE
        ON BUILD_TABLE.building_id = BUILDING_LEVEL_TABLE.building_id AND
            CASE
            WHEN BUILD_TABLE.build_queue > @at_time
            THEN BUILD_TABLE.building_level-1
            ELSE BUILD_TABLE.building_level
            END
            = BUILDING_LEVEL_TABLE.building_level
        WHERE BUILD_TABLE.base_id=@base_id AND BUILD_TABLE.building_id = 4
        
        SELECT @production_boost_r4= BASE_FETCH_TABLE.research_r4 + BASE_FETCH_TABLE.hero_boost_r4 + BASE_FETCH_TABLE.item_boost_r4
        FROM @base_fetch_table BASE_FETCH_TABLE
        WHERE BASE_FETCH_TABLE.base_id = @base_id
        
        SET @final_production_r4 = (@base_production_r4*(1+(@production_boost_r4/100))-@base_consumption_r4*(1+(@consumption_boost_r4/100)))
    
        --production r5
        
        DECLARE @base_production_r5 float(53) = 0, @base_consumption_r5 float(53) = 0, @production_boost_r5 float(53) = 0, @consumption_boost_r5 float(53) = 0, @final_production_r5 float(53) = 0
        
        SELECT @base_production_r5=SUM(BUILDING_LEVEL_TABLE.production)
        FROM dbo.build BUILD_TABLE
        INNER JOIN dbo.building_level BUILDING_LEVEL_TABLE
        ON BUILD_TABLE.building_id = BUILDING_LEVEL_TABLE.building_id AND
            CASE
            WHEN BUILD_TABLE.build_queue > @at_time
            THEN BUILD_TABLE.building_level-1
            ELSE BUILD_TABLE.building_level
            END
            = BUILDING_LEVEL_TABLE.building_level
        WHERE BUILD_TABLE.base_id=@base_id AND BUILD_TABLE.building_id = 5    
        
        SELECT @production_boost_r5= BASE_FETCH_TABLE.research_r5 + BASE_FETCH_TABLE.hero_boost_r5 + BASE_FETCH_TABLE.item_boost_r5
        FROM @base_fetch_table BASE_FETCH_TABLE
        WHERE BASE_FETCH_TABLE.base_id = @base_id
        
        SET @final_production_r5 = (@base_production_r5*(1+(@production_boost_r5/100))-@base_consumption_r5*(1+(@consumption_boost_r5/100)))
    
    
        UPDATE BASE_FETCH_TABLE
        SET r1_production = @final_production_r1,
            r2_production = @final_production_r2,
            r3_production = @final_production_r3,
            r4_production = @final_production_r4,
            r5_production = @final_production_r5,
            upkeep = @final_consumption_r1
        FROM @base_fetch_table BASE_FETCH_TABLE
        WHERE BASE_FETCH_TABLE.base_id=@base_id
        
        -- END PRODUCTION
        
        --RESEARCH OFFSET
        UPDATE @base_fetch_table
        SET 
                            research_r1= research_r1 - (CASE WHEN research_id=201 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_r2= research_r2 - (CASE WHEN research_id=202 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_r3= research_r3 - (CASE WHEN research_id=203 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_r4= research_r4 - (CASE WHEN research_id=204 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_r5= research_r5 - (CASE WHEN research_id=205 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_build= research_build - (CASE WHEN research_id=101 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_research= research_research - (CASE WHEN research_id=102 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_training= research_training - (CASE WHEN research_id=107 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_trade= research_trade - (CASE WHEN research_id=104 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_craft= research_craft - (CASE WHEN research_id=105 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_heal= research_heal - (CASE WHEN research_id=106 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_attack= research_attack - (CASE WHEN research_id=301 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_defense= research_defense - (CASE WHEN research_id=302 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_march= research_march - (CASE WHEN research_id=103 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_life= research_life - (CASE WHEN research_id=303 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_load= research_load - (CASE WHEN research_id=205 AND research_queue>@at_time THEN 1 ELSE 0 END), 
                            research_a_attack= research_a_attack - (CASE WHEN research_id=401 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_b_attack= research_b_attack - (CASE WHEN research_id=402 AND research_queue>@at_time THEN 1 ELSE 0 END), 
                            research_c_attack= research_c_attack - (CASE WHEN research_id=403 AND research_queue>@at_time THEN 1 ELSE 0 END), 
                            research_d_attack= research_d_attack - (CASE WHEN research_id=404 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_a2= research_a2 - (CASE WHEN research_id=1101 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_a3= research_a3 - (CASE WHEN research_id=1102 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_b2= research_b2 - (CASE WHEN research_id=1201 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_b3= research_b3 - (CASE WHEN research_id=1202 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_c2= research_c2 - (CASE WHEN research_id=1301 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_c3= research_c3 - (CASE WHEN research_id=1302 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_d2= research_d2 - (CASE WHEN research_id=1401 AND research_queue>@at_time THEN 1 ELSE 0 END),
                            research_d3= research_d3 - (CASE WHEN research_id=1402 AND research_queue>@at_time THEN 1 ELSE 0 END)
        WHERE base_id=@base_id
        
        --FINAL BOOSTS
        
        UPDATE @base_fetch_table
        SET 
            boost_r1=@production_boost_r1,
            boost_r2=@production_boost_r2,
            boost_r3=@production_boost_r3,
            boost_r4=@production_boost_r4,
            boost_r5=@production_boost_r5,
            boost_attack = hero_boost_attack+research_attack+item_boost_attack,
            boost_defense = hero_boost_defense+research_defense+item_boost_defense,
            boost_build = hero_boost_build+research_build,
            boost_research = hero_boost_research+research_research,
            boost_training = hero_boost_training+research_training,
            boost_march = hero_boost_march+research_march,
            boost_trade = hero_boost_trade+research_trade,
            boost_craft = hero_boost_craft+research_craft,
            boost_life = hero_boost_life+research_life,
            boost_load = research_load,
            boost_a_attack = hero_boost_a_attack+research_a_attack,
            boost_b_attack = hero_boost_b_attack+research_b_attack,
            boost_c_attack = hero_boost_c_attack+research_c_attack,
            boost_d_attack = hero_boost_d_attack+research_d_attack,
            boost_heal = hero_boost_heal+research_heal
        WHERE base_id=@base_id
        
        --END FINAL BOOSTS
        
        -- CASTLE LEVEL
        UPDATE BASE_FETCH_TABLE
        SET castle_level= ISNULL(BUILD_TABLE.building_level, 1)
            FROM @base_fetch_table BASE_FETCH_TABLE
            INNER JOIN dbo.build BUILD_TABLE
            ON BASE_FETCH_TABLE.base_id = BUILD_TABLE.base_id AND BUILD_TABLE.location = 101 AND BUILD_TABLE.building_id = 101
        WHERE BASE_FETCH_TABLE.base_id=@base_id
        
        
    
    
    --END BASE FETCH TABLE
    
    /*
    build_queue
    research_queue
    attack_queue
    attack_return
    reinforce_queue
    transfer_queue
    trade_queue
    craft_queue
    hospital_queue
    a_queue
    b_queue
    c_queue
    d_queue
    spy_queue
    item_r1_ending
    item_r2_ending
    item_r3_ending
    item_r4_ending
    item_r5_ending
    item_attack_ending
    item_defense_ending
    */
    
    DECLARE @update_table TABLE
		(
			item_to_update varchar(30),
            date_to_update datetime
		)
    --normal_refresh
    INSERT INTO @update_table (item_to_update,date_to_update)
    VALUES ('normal_refresh',GETUTCDATE())

    --build_queue
    INSERT INTO @update_table
    SELECT item_to_update='build_queue', date_to_update=build_queue 
    FROM base WHERE base_id=@base_id AND build_queue> @last_processed_time AND build_queue<@current_process_time 
    
    --research_queue
    INSERT INTO @update_table
    SELECT item_to_update='research_queue', date_to_update=research_queue 
    FROM base WHERE base_id=@base_id AND research_queue> @last_processed_time AND research_queue<@current_process_time
    
    --attack_queue
    INSERT INTO @update_table
    SELECT item_to_update='attack_queue', date_to_update=attack_queue 
    FROM base WHERE base_id=@base_id AND attack_queue> @last_processed_time AND attack_queue<@current_process_time
    
    --attack_return
    INSERT INTO @update_table
    SELECT item_to_update='attack_return', date_to_update=attack_return 
    FROM base WHERE base_id=@base_id AND attack_return> @last_processed_time AND attack_return<@current_process_time
    
    --reinforce_queue
    INSERT INTO @update_table
    SELECT item_to_update='reinforce_queue', date_to_update=reinforce_queue 
    FROM base WHERE base_id=@base_id AND reinforce_queue> @last_processed_time AND reinforce_queue<@current_process_time
    
    --transfer_queue
    INSERT INTO @update_table
    SELECT item_to_update='transfer_queue', date_to_update=transfer_queue 
    FROM base WHERE base_id=@base_id AND transfer_queue> @last_processed_time AND transfer_queue<@current_process_time
    
    --trade_queue
    INSERT INTO @update_table
    SELECT item_to_update='trade_queue', date_to_update=trade_queue 
    FROM base WHERE base_id=@base_id AND trade_queue> @last_processed_time AND trade_queue<@current_process_time
    
    --craft_queue
    INSERT INTO @update_table
    SELECT item_to_update='craft_queue', date_to_update=craft_queue 
    FROM base WHERE base_id=@base_id AND craft_queue> @last_processed_time AND craft_queue<@current_process_time
    
    --hospital_queue
    INSERT INTO @update_table
    SELECT item_to_update='hospital_queue', date_to_update=hospital_queue 
    FROM base WHERE base_id=@base_id AND hospital_queue> @last_processed_time AND hospital_queue<@current_process_time
    
    --a_queue
    INSERT INTO @update_table
    SELECT item_to_update='a_queue', date_to_update=a_queue 
    FROM base WHERE base_id=@base_id AND a_queue> @last_processed_time AND a_queue<@current_process_time
    
    --b_queue
    INSERT INTO @update_table
    SELECT item_to_update='b_queue', date_to_update=b_queue 
    FROM base WHERE base_id=@base_id AND b_queue> @last_processed_time AND b_queue<@current_process_time
    
    --c_queue
    INSERT INTO @update_table
    SELECT item_to_update='c_queue', date_to_update=c_queue 
    FROM base WHERE base_id=@base_id AND c_queue> @last_processed_time AND c_queue<@current_process_time
    
    --d_queue
    INSERT INTO @update_table
    SELECT item_to_update='d_queue', date_to_update=d_queue 
    FROM base WHERE base_id=@base_id AND d_queue> @last_processed_time AND d_queue<@current_process_time
    
    --spy_queue
    INSERT INTO @update_table
    SELECT item_to_update='spy_queue', date_to_update=spy_queue 
    FROM base WHERE base_id=@base_id AND spy_queue> @last_processed_time AND spy_queue<@current_process_time
    
    --item_r1_ending
    INSERT INTO @update_table
    SELECT item_to_update='item_r1_ending', date_to_update=item_r1_ending 
    FROM base WHERE base_id=@base_id AND item_r1_ending> @last_processed_time AND item_r1_ending<@current_process_time
    
    --item_r2_ending
    INSERT INTO @update_table
    SELECT item_to_update='item_r2_ending', date_to_update=item_r2_ending 
    FROM base WHERE base_id=@base_id AND item_r2_ending> @last_processed_time AND item_r2_ending<@current_process_time
    
    --item_r3_ending
    INSERT INTO @update_table
    SELECT item_to_update='item_r3_ending', date_to_update=item_r3_ending 
    FROM base WHERE base_id=@base_id AND item_r3_ending> @last_processed_time AND item_r3_ending<@current_process_time
    
    --item_r4_ending
    INSERT INTO @update_table
    SELECT item_to_update='item_r4_ending', date_to_update=item_r4_ending 
    FROM base WHERE base_id=@base_id AND item_r4_ending> @last_processed_time AND item_r4_ending<@current_process_time
    
    --item_r5_ending
    INSERT INTO @update_table
    SELECT item_to_update='item_r5_ending', date_to_update=item_r5_ending 
    FROM base WHERE base_id=@base_id AND item_r5_ending> @last_processed_time AND item_r5_ending<@current_process_time
    
    --item_attack_ending
    INSERT INTO @update_table
    SELECT item_to_update='item_attack_ending', date_to_update=item_attack_ending 
    FROM base WHERE base_id=@base_id AND item_attack_ending> @last_processed_time AND item_attack_ending<@current_process_time
    
    --item_defense_ending
    INSERT INTO @update_table
    SELECT item_to_update='item_defense_ending', date_to_update=item_defense_ending 
    FROM base WHERE base_id=@base_id AND item_defense_ending> @last_processed_time AND item_defense_ending<@current_process_time
 
    
    DECLARE @sorted_update_table TABLE
		(
            table_index int NOT NULL identity(1,1),
			item_to_update varchar(30),
            date_to_update datetime
            PRIMARY KEY(table_index)
		)
    
    INSERT INTO @sorted_update_table
    SELECT item_to_update,date_to_update
    FROM @update_table 

    /*Logic To Sort then Loop through table to process 1 at a time */
    
    DECLARE @rows_to_process int,@current_processing_row int,@current_item_to_update varchar(30),@current_date_to_update datetime
    
    SELECT @rows_to_process = COUNT(*) FROM @sorted_update_table
    
    SET @current_processing_row=0
    WHILE @current_processing_row<@rows_to_process
    BEGIN
        SET @current_processing_row=@current_processing_row+1
        SELECT 
            @current_item_to_update=item_to_update,@current_date_to_update=date_to_update
            FROM @sorted_update_table
            WHERE table_index=@current_processing_row
    
        --PROCESS
        
        
        /* CURRENTLY THE APPROACH IS TO DO NOTHING ON END, CHANGES ARE MADE UP FRONT
        
        --build_queue
        IF( @current_item_to_update = 'build_queue')
        BEGIN
            --EXEC usp_Process_BuildQueue_Ended @base_id
            SET @current_item_to_update = ''
        END
        
        --research_queue
        ELSE IF( @current_item_to_update = 'research_queue')
        BEGIN
            SET @current_item_to_update = ''
        END
        
        --attack_queue
        ELSE IF( @current_item_to_update = 'attack_queue')
        BEGIN
            SET @current_item_to_update = ''
        END
        
        --attack_return
        ELSE IF( @current_item_to_update = 'attack_return')
        BEGIN
            SET @current_item_to_update = ''
        END
        
        --reinforce_queue
        ELSE IF( @current_item_to_update = 'reinforce_queue')
        BEGIN
            SET @current_item_to_update = ''
        END
        
        --transfer_queue
        ELSE IF( @current_item_to_update = 'transfer_queue')
        BEGIN
            SET @current_item_to_update = ''
        END
        
        --trade_queue
        ELSE IF( @current_item_to_update = 'trade_queue')
        BEGIN
            SET @current_item_to_update = ''
        END
        
        --craft_queue
        ELSE IF( @current_item_to_update = 'craft_queue')
        BEGIN
            SET @current_item_to_update = ''
        END
        
        --hospital_queue
        ELSE IF( @current_item_to_update = 'hospital_queue')
        BEGIN
            SET @current_item_to_update = ''
        END
        
        --a_queue
        ELSE IF( @current_item_to_update = 'a_queue')
        BEGIN
            SET @current_item_to_update = ''
        END
        
        --b_queue
        ELSE IF( @current_item_to_update = 'b_queue')
        BEGIN
            SET @current_item_to_update = ''
        END
        
        --c_queue
        ELSE IF( @current_item_to_update = 'c_queue')
        BEGIN
            SET @current_item_to_update = ''
        END
        
        --d_queue
        ELSE IF( @current_item_to_update = 'd_queue')
        BEGIN
            SET @current_item_to_update = ''
        END
        
        --spy_queue
        ELSE IF( @current_item_to_update = 'spy_queue')
        BEGIN
            SET @current_item_to_update = ''
        END
        
        --item_r1_ending
        ELSE IF( @current_item_to_update = 'item_r1_ending')
        BEGIN
            SET @current_item_to_update = ''
        END
        
        --item_r2_ending
        ELSE IF( @current_item_to_update = 'item_r2_ending')
        BEGIN
            SET @current_item_to_update = ''
        END
        
        --item_r3_ending
        ELSE IF( @current_item_to_update = 'item_r3_ending')
        BEGIN
            SET @current_item_to_update = ''
        END
        
        --item_r4_ending
        ELSE IF( @current_item_to_update = 'item_r4_ending')
        BEGIN
            SET @current_item_to_update = ''
        END
        
        --item_r5_ending
        ELSE IF( @current_item_to_update = 'item_r5_ending')
        BEGIN
            SET @current_item_to_update = ''
        END
        
        --item_attack_ending
        ELSE IF( @current_item_to_update = 'item_attack_ending')
        BEGIN
            SET @current_item_to_update = ''
        END
        
        --item_defense_ending
        ELSE IF( @current_item_to_update = 'item_defense_ending')
        BEGIN
            SET @current_item_to_update = ''
        END
        
        */
        
	    RAISERROR ('@base_id : %s', 10,-1, @base_id_AS_STRING) with nowait;
        DECLARE @current_date_to_update_AS_STRING varchar(30) = CAST(@current_date_to_update AS VARCHAR);
        RAISERROR ('@current_date_to_update : %s', 10,-1, @current_date_to_update_AS_STRING) with nowait;
        -- RETRIEVE DATA
        
        exec usp_Process_UpdateResources @base_fetch_table_at_latest_time=@base_fetch_table,@base_id= @base_id, @to_date =@current_date_to_update
    END
    /*return row of fields as base_view*/
END
GO
/****** Object:  StoredProcedure [dbo].[usp_BookmarkCreate]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_BookmarkCreate]
(@profile_uid nvarchar(50), @title nvarchar(100), @label int, @map_x int, @map_y int, @r int out)
AS
BEGIN

DECLARE @profile_id int

SET @r = -1;
SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid), 0);

IF @profile_id > 0
BEGIN

INSERT INTO bookmark (profile_id, map_x, map_y, label, title) VALUES (@profile_id, @map_x, @map_y, @label, @title);

SET @r = 1;

END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_BookmarkDelete]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_BookmarkDelete]
(@profile_uid nvarchar(50), @bookmark_id int, @r int out)
AS
BEGIN

DECLARE @profile_id int

SET @r = -1;
SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid), 0);

IF @profile_id > 0
BEGIN

DELETE bookmark WHERE bookmark_id=@bookmark_id AND profile_id=@profile_id;

SET @r = 1;

END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_BuildBuilding]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_BuildBuilding]
(@profile_uid nvarchar(50), @base_id int, @b_id int, @b_level int, @b_location int, @r int out, @quest_done int out)
AS
BEGIN

RAISERROR ('usp_BuildBuilding', 10,-1) with nowait;

exec usp_BaseUpdate @base_id

DECLARE @profile_id int, @queue_b datetime, @b_time int, @b_r1 int, @b_r2 int, @b_r3 int, @b_r4 int, @b_r5 int, @b_hero_xp int, @b_power int, @view_boost float, @c_boost float


DECLARE @profile_uid_AS_STRING varchar(30) = CAST(@profile_uid AS VARCHAR);
RAISERROR ('@profile_uid : %s', 10,-1, @profile_uid_AS_STRING) with nowait;

SET @r = -1;
SET @quest_done = 0;
SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid), 0);

SET @queue_b = (SELECT build_queue FROM base WHERE base_id=@base_id);

SET @b_time = ISNULL((SELECT [time] FROM building_level WHERE building_id=@b_id AND building_level=@b_level), 0);

DECLARE @t AS BaseFetchTableType

Insert Into @t Exec dbo.usp_BaseFetch @base_id, @profile_id

SET @view_boost = ISNULL((SELECT boost_build FROM @t WHERE base_id=@base_id), 0);

SET @c_boost = (@view_boost / 100.0) + 1;


DECLARE @b_time_AS_STRING varchar(30) = CAST(@b_time AS VARCHAR);
RAISERROR ('@b_time : %s', 10,-1, @b_time_AS_STRING) with nowait;

DECLARE @c_boost_AS_STRING varchar(30) = CAST(@c_boost AS VARCHAR);
RAISERROR ('@c_boost : %s', 10,-1, @c_boost_AS_STRING) with nowait;

IF @c_boost >= 1
BEGIN
SET @b_time = @b_time/@c_boost
END

SET @b_time_AS_STRING = CAST(@b_time AS VARCHAR);
RAISERROR ('@b_time after boost: %s', 10,-1, @b_time_AS_STRING) with nowait;

SET @b_r1 = ISNULL((SELECT r1 FROM building_level WHERE building_id=@b_id AND building_level=@b_level), 0);
SET @b_r2 = ISNULL((SELECT r2 FROM building_level WHERE building_id=@b_id AND building_level=@b_level), 0);
SET @b_r3 = ISNULL((SELECT r3 FROM building_level WHERE building_id=@b_id AND building_level=@b_level), 0);
SET @b_r4 = ISNULL((SELECT r4 FROM building_level WHERE building_id=@b_id AND building_level=@b_level), 0);
SET @b_r5 = ISNULL((SELECT r5 FROM building_level WHERE building_id=@b_id AND building_level=@b_level), 0);
SET @b_hero_xp = ISNULL((SELECT hero_xp FROM building_level WHERE building_id=@b_id AND building_level=@b_level), 0);
SET @b_power = ISNULL((SELECT [power] FROM building_level WHERE building_id=@b_id AND building_level=@b_level), 0);

DECLARE @profile_id_AS_STRING varchar(30) = CAST(@profile_id AS VARCHAR);
RAISERROR ('@profile_id : %s', 10,-1, @profile_id_AS_STRING) with nowait;

DECLARE @queue_b_AS_STRING varchar(30) = CAST(@queue_b AS VARCHAR);
RAISERROR ('@queue_b : %s', 10,-1, @queue_b_AS_STRING) with nowait;

DECLARE @current_time_AS_STRING varchar(30) = CAST(GETUTCDATE() AS VARCHAR);
RAISERROR ('@current_time : %s', 10,-1, @current_time_AS_STRING) with nowait;

--If not already building
IF @profile_id > 0 AND @queue_b < GETUTCDATE()
BEGIN

    DECLARE @existing_building_id int=0, @row_count int =0;
    SELECT @existing_building_id=building_id FROM build WHERE location=@b_location AND base_id=@base_id
    SET @row_count = @@ROWCOUNT;
    SET @queue_b=DATEADD(ss, @b_time, GETUTCDATE())
    RAISERROR ('@queue_b in: %s', 10,-1, @queue_b_AS_STRING) with nowait;
    


    ----wrong building_id for upgrade
    IF @row_count > 0 AND @existing_building_id!=@b_id
    BEGIN
        SET @r = -1;
        SET @quest_done = 0;
    END
    --correct data
    ELSE
    BEGIN
        IF @row_count=0
        --new building   
        BEGIN
            INSERT INTO build VALUES (@base_id, @b_location, @b_id, @b_level,@queue_b);
        END
        ELSE
        --upgrade
        BEGIN
            --Special case
            IF ((@b_level = 2) AND ((@b_id = 101) OR (@b_id = 102)))
            BEGIN
                INSERT INTO build VALUES (@base_id, @b_location, @b_id, 2,@queue_b);
            END
            ELSE
            BEGIN
                UPDATE build SET building_level=@b_level, build_queue=@queue_b WHERE base_id=@base_id AND building_id=@b_id AND location=@b_location;
            END
        END
    
        UPDATE base SET r1=r1-@b_r1, r2=r2-@b_r2, r3=r3-@b_r3, r4=r4-@b_r4, r5=r5-@b_r5, build_location=@b_location, build_queue=@queue_b, build_time=@b_time, building_id=@b_id WHERE base_id=@base_id AND profile_id=@profile_id;

        UPDATE [profile] SET xp=xp+@b_power, xp_gain=xp_gain+@b_power, xp_gain_a=xp_gain_a+@b_power WHERE profile_id=@profile_id;

        UPDATE hero SET hero_xp=hero_xp+@b_hero_xp, hero_xp_gain=hero_xp_gain+@b_hero_xp WHERE hero_status=1 AND profile_id=@profile_id;

        IF(@b_id = 101)
        BEGIN
            EXECUTE usp_UpdateRegions @base_id
        END
        ------------------------------QUEST-----------------------------------------------------------------------------------------------
        
        -- could be inside the conditioned bracket
        DECLARE @quest_type_id int

        --QUEST Build a Farm
        IF(@b_level = 1 AND @b_id = 1)
            BEGIN
                SET @quest_type_id = 1001
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Build a Sawmill
        IF(@b_level = 1 AND @b_id = 2)
            BEGIN
                SET @quest_type_id = 1002
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END 
            END

        --QUEST Build a Quarry
        IF(@b_level = 1 AND @b_id = 3)
            BEGIN
                SET @quest_type_id = 1003
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Build an Iron Mine

        IF(@b_level = 1 AND @b_id = 4)
            BEGIN
                SET @quest_type_id = 1004
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Build a House

        IF(@b_level = 1 AND @b_id = 5)
            BEGIN
                SET @quest_type_id = 1005
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Build a Barracks
        IF(@b_level = 1 AND @b_id = 6)
            BEGIN
                SET @quest_type_id = 1006
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Build an Archery Range
        IF(@b_level = 1 AND @b_id = 7)
            BEGIN
                SET @quest_type_id = 1007
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Build a Stable
        IF(@b_level = 1 AND @b_id = 8)
            BEGIN
                SET @quest_type_id = 1008
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Build a Siege Workshop
        IF(@b_level = 1 AND @b_id = 9)
            BEGIN
                SET @quest_type_id = 1009
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END
        
        --QUEST Build a Hospital
        IF(@b_level = 1 AND @b_id = 10)
            BEGIN
                SET @quest_type_id = 1010
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Build a Storehouse
        IF(@b_level = 1 AND @b_id = 11)
            BEGIN
                SET @quest_type_id = 1011
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Build a Market
        IF(@b_level = 1 AND @b_id = 12)
            BEGIN
                SET @quest_type_id = 1012
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Build an Embassy
        IF(@b_level = 1 AND @b_id = 13)
            BEGIN
                SET @quest_type_id = 1013
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Build a Watchtower
        IF(@b_level = 1 AND @b_id = 14)
            BEGIN
                SET @quest_type_id = 1014
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Build a Library
        IF(@b_level = 1 AND @b_id = 15)
            BEGIN
                SET @quest_type_id = 1015
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Build a Blacksmith
        IF(@b_level = 1 AND @b_id = 16)
            BEGIN
                SET @quest_type_id = 1016
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Build a Tavern
        IF(@b_level = 1 AND @b_id = 17)
            BEGIN
                SET @quest_type_id = 1017
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Build a Rally Point
        IF(@b_level = 1 AND @b_id = 18)
            BEGIN
                SET @quest_type_id = 1018
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Upgrade Castle to Lv. 2
        IF(@b_level = 2 AND @b_id = 101)
            BEGIN
                SET @quest_type_id = 1019    
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Upgrade Wall to Lv. 2
        IF(@b_level = 2 AND @b_id = 102)
            BEGIN
                SET @quest_type_id = 1020
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Upgrade Farm to Level 8
        IF(@b_level = 8 AND @b_id = 1)
            BEGIN
                SET @quest_type_id = 1021
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Upgrade Sawmill to Level 8
        IF(@b_level = 8 AND @b_id = 2)
            BEGIN
                SET @quest_type_id = 1022
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END 
            END

        --QUEST Upgrade Quarry to Level 8
        IF(@b_level = 8 AND @b_id = 3)
            BEGIN
                SET @quest_type_id = 1023
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Upgrade Iron Mine to Level 8

        IF(@b_level = 8 AND @b_id = 4)
            BEGIN
                SET @quest_type_id = 1024
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Upgrade House to Level 8

        IF(@b_level = 8 AND @b_id = 5)
            BEGIN
                SET @quest_type_id = 1025
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Upgrade Barracks to Level 8
        IF(@b_level = 8 AND @b_id = 6)
            BEGIN
                SET @quest_type_id = 1026
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Upgrade Archery Range to Level 8
        IF(@b_level = 8 AND @b_id = 7)
            BEGIN
                SET @quest_type_id = 1027
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Upgrade Stable to Level 8
        IF(@b_level = 8 AND @b_id = 8)
            BEGIN
                SET @quest_type_id = 1028
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Upgrade Siege Workshop to Level 8
        IF(@b_level = 8 AND @b_id = 9)
            BEGIN
                SET @quest_type_id = 1029
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END
        
        --QUEST Upgrade Hospital to Level 8
        IF(@b_level = 8 AND @b_id = 10)
            BEGIN
                SET @quest_type_id = 1030
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Upgrade Storehouse to Level 8
        IF(@b_level = 8 AND @b_id = 11)
            BEGIN
                SET @quest_type_id = 1031
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Upgrade Market to Level 8
        IF(@b_level = 8 AND @b_id = 12)
            BEGIN
                SET @quest_type_id = 1032
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Upgrade Embassy to Level 8
        IF(@b_level = 8 AND @b_id = 13)
            BEGIN
                SET @quest_type_id = 1033
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Upgrade Watchtower to Level 8
        IF(@b_level = 8 AND @b_id = 14)
            BEGIN
                SET @quest_type_id = 1034
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Upgrade Library to Level 8
        IF(@b_level = 8 AND @b_id = 15)
            BEGIN
                SET @quest_type_id = 1035
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Upgrade Blacksmith to Level 8
        IF(@b_level = 8 AND @b_id = 16)
            BEGIN
                SET @quest_type_id = 1036
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Upgrade Tavern to Level 8
        IF(@b_level = 8 AND @b_id = 17)
            BEGIN
                SET @quest_type_id = 1037
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Upgrade Rally Point to Level 8
        IF(@b_level = 8 AND @b_id = 18)
            BEGIN
                SET @quest_type_id = 1038
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Upgrade Castle to Level 8
        IF(@b_level = 8 AND @b_id = 101)
            BEGIN
                SET @quest_type_id = 1039    
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Upgrade Wall to Level 8
        IF(@b_level = 8 AND @b_id = 102)
            BEGIN
                SET @quest_type_id = 1040
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END
            
        --QUEST Upgrade Farm to Level 15
        IF(@b_level = 15 AND @b_id = 1)
            BEGIN
                SET @quest_type_id = 1041
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Upgrade Sawmill to Level 15
        IF(@b_level = 15 AND @b_id = 2)
            BEGIN
                SET @quest_type_id = 1042
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END 
            END

        --QUEST Upgrade Quarry to Level 15
        IF(@b_level = 15 AND @b_id = 3)
            BEGIN
                SET @quest_type_id = 1043
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Upgrade Iron Mine to Level 15

        IF(@b_level = 15 AND @b_id = 4)
            BEGIN
                SET @quest_type_id = 1044
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Upgrade House to Level 15

        IF(@b_level = 15 AND @b_id = 5)
            BEGIN
                SET @quest_type_id = 1045
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Upgrade Barracks to Level 15
        IF(@b_level = 15 AND @b_id = 6)
            BEGIN
                SET @quest_type_id = 1046
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Upgrade Archery Range to Level 15
        IF(@b_level = 15 AND @b_id = 7)
            BEGIN
                SET @quest_type_id = 1047
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Upgrade Stable to Level 15
        IF(@b_level = 15 AND @b_id = 8)
            BEGIN
                SET @quest_type_id = 1048
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Upgrade Siege Workshop to Level 15
        IF(@b_level = 15 AND @b_id = 9)
            BEGIN
                SET @quest_type_id = 1049
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END
        
        --QUEST Upgrade Hospital to Level 15
        IF(@b_level = 15 AND @b_id = 10)
            BEGIN
                SET @quest_type_id = 1050
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Upgrade Storehouse to Level 15
        IF(@b_level = 15 AND @b_id = 11)
            BEGIN
                SET @quest_type_id = 1051
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Upgrade Market to Level 15
        IF(@b_level = 15 AND @b_id = 12)
            BEGIN
                SET @quest_type_id = 1052
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Upgrade Embassy to Level 15
        IF(@b_level = 15 AND @b_id = 13)
            BEGIN
                SET @quest_type_id = 1053
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Upgrade Watchtower to Level 15
        IF(@b_level = 15 AND @b_id = 14)
            BEGIN
                SET @quest_type_id = 1054
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Upgrade Library to Level 15
        IF(@b_level = 15 AND @b_id = 15)
            BEGIN
                SET @quest_type_id = 1055
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Upgrade Blacksmith to Level 15
        IF(@b_level = 15 AND @b_id = 16)
            BEGIN
                SET @quest_type_id = 1056
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Upgrade Tavern to Level 15
        IF(@b_level = 15 AND @b_id = 17)
            BEGIN
                SET @quest_type_id = 1057
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Upgrade Rally Point to Level 15
        IF(@b_level = 15 AND @b_id = 18)
            BEGIN
                SET @quest_type_id = 1058
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Upgrade Castle to Level 15
        IF(@b_level = 15 AND @b_id = 101)
            BEGIN
                SET @quest_type_id = 1059    
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END

        --QUEST Upgrade Wall to Level 15
        IF(@b_level = 15 AND @b_id = 102)
            BEGIN
                SET @quest_type_id = 1060
                IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
                BEGIN
                    INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
                    SET @quest_done = @quest_done + 1;
                END
            END
        ------------------------------QUEST-----------------------------------------------------------------------------------------------


        SET @r = 1;

        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_BuyItem]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_BuyItem]
(@profile_uid nvarchar(50), @item_id int, @r int out)
AS
BEGIN

DECLARE @profile_id int, @item_cost int, @cs int

SET @r = -1;
SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid), 0);
SET @item_cost = ISNULL((SELECT item_cost FROM item WHERE item_id=@item_id), 0);
SET @cs = ISNULL((SELECT currency_second FROM [profile] WHERE profile_id=@profile_id), 0);

IF @cs >= @item_cost
BEGIN

DECLARE @itemprofile_count int

SET @itemprofile_count = ISNULL((SELECT COUNT(*) FROM itemprofile WHERE item_id=@item_id AND profile_id=@profile_id), 0);

IF @itemprofile_count = 0
BEGIN
	INSERT INTO itemprofile VALUES (@profile_id, @item_id, 1);
END
ELSE
BEGIN
	UPDATE itemprofile set quantity=quantity+1 WHERE item_id=@item_id AND profile_id=@profile_id;
END

UPDATE [profile] SET currency_second=currency_second-@item_cost WHERE profile_id=@profile_id;

SET @r = 1;

END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_ClaimMission]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ClaimMission]
(@profile_id bigint,@mission_id int,@mission_type_id int,@r int out)
AS
BEGIN
    SET @r = -1;

    IF EXISTS(SELECT mission_id FROM mission WHERE mission_id=@mission_id)
    BEGIN
        DECLARE @claimed int,@current_time datetime = GETUTCDATE(), @current_mission_ending datetime;

        SELECT @current_mission_ending = date_ending, @claimed=claimed FROM mission WHERE mission_id = @mission_id

        DECLARE @current_mission_ending_AS_STRING varchar(30) = CAST(@current_mission_ending AS VARCHAR);
	    RAISERROR ('@current_mission_ending : %s', 10,-1, @current_mission_ending_AS_STRING) with nowait;
        
        DECLARE @claimed_AS_STRING varchar(30) = CAST(@claimed AS VARCHAR);
	    RAISERROR ('@claimed : %s', 10,-1, @claimed_AS_STRING) with nowait;


        IF((@current_mission_ending<@current_time) AND (@claimed=0))
        BEGIN
            UPDATE mission
            SET claimed='TRUE'
            WHERE mission_id = @mission_id

            DECLARE @reward_1 int,@reward_2 int,@reward_3 int,@reward_4 int,@reward_5 int,@reward_6 int,@reward_7 int,@reward_8 int,@reward_9 int,@reward_10 int,@reward_11 int,@reward_12 int,@reward_13 int,@reward_14 int,@reward_15 int,@reward_16 int,@reward_17 int,@reward_18 int
            
            SELECT @reward_1=reward_value_1,@reward_2=reward_value_2,@reward_3=reward_value_3,@reward_4=reward_value_4,@reward_5=reward_value_5,@reward_6=reward_value_6,@reward_7=reward_value_7,@reward_8=reward_value_8,@reward_9=reward_value_9,@reward_10=reward_value_10,@reward_11=reward_value_11,@reward_12=reward_value_12,@reward_13=reward_value_13,@reward_14=reward_value_14,@reward_15=reward_value_15,@reward_16=reward_value_16,@reward_17=reward_value_17,@reward_18=reward_value_18
            FROM mission_type
            WHERE mission_type_id=@mission_type_id
            
            IF(@reward_1>0)
            BEGIN
                UPDATE profile
                SET currency_second=currency_second+@reward_1
                WHERE profile_id=@profile_id
            END
            
            --Currently all base specific rewards are given to capital city
            DECLARE @base_id int=0;
            
            SELECT @base_id=base_id
            FROM base BASE_TABLE
            WHERE BASE_TABLE.profile_id=@profile_id AND BASE_TABLE.base_type=1
            
            UPDATE base
            SET
            r1=r1+@reward_2,
            r2=r2+@reward_3,
            r3=r3+@reward_4,
            r4=r4+@reward_5,
            r5=r5+@reward_6,
            a1=a1+@reward_7,
            a2=a2+@reward_8,
            a3=a3+@reward_9,
            b1=b1+@reward_10,
            b2=b2+@reward_11,
            b3=b3+@reward_12,
            c1=c1+@reward_13,
            c2=c2+@reward_14,
            c3=c3+@reward_15,
            d1=d1+@reward_16,
            d2=d2+@reward_17,
            d3=d3+@reward_18
            WHERE base_id=@base_id
            
            SET @r = 1;
        END
    END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_ClaimQuest]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ClaimQuest]
(@profile_id int, @quest_id int, @quest_type_id int, @r int out)
AS
BEGIN

DECLARE @reward_value int

SET @r = -1;

SET @reward_value = ISNULL((SELECT quest_type.reward FROM quest INNER JOIN quest_type ON quest.quest_type_id=quest_type.quest_type_id AND quest.quest_id=@quest_id AND quest.profile_id=@profile_id AND quest.claimed=0), 0);

IF @reward_value > 0
BEGIN

UPDATE quest SET claimed=1 WHERE quest_id=@quest_id;

UPDATE [profile] SET currency_second=currency_second+@reward_value WHERE profile_id=@profile_id;

SET @r = 1;

END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_DestroyBuilding]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_DestroyBuilding]
(@profile_uid nvarchar(50), @base_id int, @location int, @r int out)
AS
BEGIN

exec usp_BaseUpdate @base_id

DECLARE @profile_id int, @item_quantity int

SET @r = -1;
SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid), 0);
SET @item_quantity = ISNULL((SELECT quantity FROM itemprofile WHERE item_id=707 AND profile_id=@profile_id), 0);

IF @item_quantity > 0
BEGIN

DELETE build WHERE base_id=@base_id AND location=@location;

UPDATE itemprofile set quantity=quantity-1 WHERE item_id=707 AND profile_id=@profile_id;

UPDATE base SET build_location=0, build_queue=GETUTCDATE() WHERE base_id=@base_id AND profile_id=@profile_id AND build_location=@location;

SET @r = 1;

END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_EventAllianceRandom]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_EventAllianceRandom]
AS
BEGIN
DECLARE @counter int, @event_duration int

SET @counter = (SELECT COUNT(*) FROM event_alliance WHERE event_active = 1 AND event_starting < GETUTCDATE() AND event_ending > GETUTCDATE());

--No active events
IF @counter = 0
BEGIN

SET @counter = (SELECT COUNT(*) FROM event_alliance WHERE event_active = 1 AND event_starting < GETUTCDATE() AND event_ending < GETUTCDATE());
--Event ended so reward winners
IF @counter = 1
BEGIN

SET @counter = (SELECT COUNT(*) FROM [profile] WHERE xp_history_a > 0);
--Make sure not to reward winners more then once
IF @counter > 1
BEGIN

DECLARE @row int, @alliance_id int, @prize1 int, @prize2 int, @prize3 int, @prize4 int, @prize5 int, @news varchar(MAX)
SET @prize1 = (SELECT prize1 FROM event_alliance WHERE event_id=1);
SET @prize2 = (SELECT prize2 FROM event_alliance WHERE event_id=1);
SET @prize3 = (SELECT prize3 FROM event_alliance WHERE event_id=1);
SET @prize4 = (SELECT prize4 FROM event_alliance WHERE event_id=1);
SET @prize5 = (SELECT prize5 FROM event_alliance WHERE event_id=1);
SET @row=0;

DECLARE @r int

Declare c Cursor For SELECT TOP(20) alliance_id FROM View_AllianceEventResult ORDER BY xp_gain DESC
Open c
Fetch next From c into @alliance_id
While @@Fetch_Status=0
Begin
	SET @row=@row+1;

	IF @row = 1
	BEGIN
		UPDATE profile SET currency_second=currency_second+@prize1 WHERE alliance_id=@alliance_id;
		SET @news = 'Congratulations! You have won 1st place in the Alliance Tournament and have been rewarded with the 1st prize of ' + CAST(@prize1 AS varchar(12)) + ' Diamonds';
		EXECUTE usp_SendMailAlliance @alliance_id, @news, 0, @r;
	END
	ELSE IF @row = 2
	BEGIN
		UPDATE profile SET currency_second=currency_second+@prize2 WHERE alliance_id=@alliance_id;
		SET @news = 'Congratulations! You have won 2nd place in the Alliance Tournament and have been rewarded with the 2nd prize of ' + CAST(@prize2 AS varchar(12)) + ' Diamonds';
		EXECUTE usp_SendMailAlliance @alliance_id, @news, 0, @r;
	END
	ELSE IF @row = 3
	BEGIN
		UPDATE profile SET currency_second=currency_second+@prize3 WHERE alliance_id=@alliance_id;
		SET @news = 'Congratulations! You have won 3rd place in the Alliance Tournament and have been rewarded with the 3rd prize of ' + CAST(@prize3 AS varchar(12)) + ' Diamonds';
		EXECUTE usp_SendMailAlliance @alliance_id, @news, 0, @r;
	END
	ELSE IF (@row > 3 AND @row < 11)
	BEGIN
		UPDATE profile SET currency_second=currency_second+@prize4 WHERE alliance_id=@alliance_id;
		SET @news = 'Congratulations! You have achieved between the 4th to 10th place in the Alliance Tournament and have been rewarded with the consolation prize of ' + CAST(@prize4 AS varchar(12)) + ' Diamonds';
		EXECUTE usp_SendMailAlliance @alliance_id, @news, 0, @r;
	END
	ELSE IF (@row > 10 AND @row < 21)
	BEGIN
		UPDATE profile SET currency_second=currency_second+@prize5 WHERE alliance_id=@alliance_id;
		SET @news = 'Congratulations! You have achieved between the 10th to 20th place in the Alliance Tournament and have been rewarded with the consolation prize of ' + CAST(@prize5 AS varchar(12)) + ' Diamonds';
		EXECUTE usp_SendMailAlliance @alliance_id, @news, 0, @r;
	END

	Fetch next From c into @alliance_id
End
Close c
Deallocate c

UPDATE profile SET xp_history_a=0;
END

END

--Create new event
SET @event_duration = dbo.fx_generateRandomNumber(newID(), 1, 3);
UPDATE event_alliance SET event_active=1, event_starting=GETUTCDATE(), event_duration=@event_duration, event_ending=GETUTCDATE()+@event_duration WHERE event_id=1;
UPDATE profile SET xp_gain_a=0;

END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_EventAllianceResult]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_EventAllianceResult]
AS
BEGIN
DECLARE @counter int

SET @counter = (SELECT COUNT(*) FROM event_alliance WHERE event_active = 1 AND event_starting < GETUTCDATE() AND event_ending < GETUTCDATE());
--Event ended so save results to xp_history_a
IF @counter = 1
BEGIN

SET @counter = (SELECT COUNT(*) FROM [profile] WHERE xp_history_a > 0);
--Make sure not to transfer to xp_history_a more then once
IF @counter < 5
BEGIN
UPDATE [profile] SET xp_history_a=xp_gain_a WHERE xp_gain_a is not NULL;
END

END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_EventSoloRandom]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_EventSoloRandom]
AS
BEGIN
DECLARE @counter int, @event_duration int

SET @counter = (SELECT COUNT(*) FROM event_solo WHERE event_active = 1 AND event_starting < GETUTCDATE() AND event_ending > GETUTCDATE());

--No active events
IF @counter = 0
BEGIN

SET @counter = (SELECT COUNT(*) FROM event_solo WHERE event_active = 1 AND event_starting < GETUTCDATE() AND event_ending < GETUTCDATE());
--Event ended so reward winners
IF @counter = 1
BEGIN

SET @counter = (SELECT COUNT(*) FROM [profile] WHERE xp_history > 0);
--Make sure not to reward winners more then once
IF @counter > 1
BEGIN

DECLARE @row int, @profile_id int, @prize1 int, @prize2 int, @prize3 int, @prize4 int, @prize5 int, @news varchar(MAX)
SET @prize1 = (SELECT prize1 FROM event_solo WHERE event_id=1);
SET @prize2 = (SELECT prize2 FROM event_solo WHERE event_id=1);
SET @prize3 = (SELECT prize3 FROM event_solo WHERE event_id=1);
SET @prize4 = (SELECT prize4 FROM event_solo WHERE event_id=1);
SET @prize5 = (SELECT prize5 FROM event_solo WHERE event_id=1);
SET @row=0;

DECLARE @r int

Declare c Cursor For SELECT TOP(20) profile_id FROM [profile] ORDER BY xp_history DESC
Open c
Fetch next From c into @profile_id
While @@Fetch_Status=0
Begin
	SET @row=@row+1;

	IF @row = 1
	BEGIN
		UPDATE profile SET currency_second=currency_second+@prize1 WHERE profile_id=@profile_id;
		SET @news = 'Congratulations! You have won 1st place in the Solo Tournament and have been rewarded with the 1st prize of ' + CAST(@prize1 AS varchar(12)) + ' Diamonds';
		EXECUTE usp_SendMailNews @profile_id, @news, @r;
	END
	ELSE IF @row = 2
	BEGIN
		UPDATE profile SET currency_second=currency_second+@prize2 WHERE profile_id=@profile_id;
		SET @news = 'Congratulations! You have won 2nd place in the Solo Tournament and have been rewarded with the 2nd prize of ' + CAST(@prize2 AS varchar(12)) + ' Diamonds';
		EXECUTE usp_SendMailNews @profile_id, @news, @r;
	END
	ELSE IF @row = 3
	BEGIN
		UPDATE profile SET currency_second=currency_second+@prize3 WHERE profile_id=@profile_id;
		SET @news = 'Congratulations! You have won 3rd place in the Solo Tournament and have been rewarded with the 3rd prize of ' + CAST(@prize3 AS varchar(12)) + ' Diamonds';
		EXECUTE usp_SendMailNews @profile_id, @news, @r;
	END
	ELSE IF (@row > 3 AND @row < 11)
	BEGIN
		UPDATE profile SET currency_second=currency_second+@prize4 WHERE profile_id=@profile_id;
		SET @news = 'Congratulations! You have achieved between the 4th to 10th place in the Solo Tournament and have been rewarded with the consolation prize of ' + CAST(@prize4 AS varchar(12)) + ' Diamonds';
		EXECUTE usp_SendMailNews @profile_id, @news, @r;
	END
	ELSE IF (@row > 10 AND @row < 21)
	BEGIN
		UPDATE profile SET currency_second=currency_second+@prize5 WHERE profile_id=@profile_id;
		SET @news = 'Congratulations! You have achieved between the 10th to 20th place in the Solo Tournament and have been rewarded with the consolation prize of ' + CAST(@prize5 AS varchar(12)) + ' Diamonds';
		EXECUTE usp_SendMailNews @profile_id, @news, @r;
	END

	Fetch next From c into @profile_id
End
Close c
Deallocate c

UPDATE profile SET xp_history=0;
END

END

--Create new event
SET @event_duration = dbo.fx_generateRandomNumber(newID(), 1, 2);
UPDATE event_solo SET event_active=1, event_starting=GETUTCDATE(), event_duration=@event_duration, event_ending=GETUTCDATE()+@event_duration WHERE event_id=1;
UPDATE profile SET xp_gain=0;

END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_EventSoloResult]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_EventSoloResult]
AS
BEGIN
DECLARE @counter int

SET @counter = (SELECT COUNT(*) FROM event_solo WHERE event_active = 1 AND event_starting < GETUTCDATE() AND event_ending < GETUTCDATE());
--Event ended so save results to xp_history
IF @counter = 1
BEGIN

SET @counter = (SELECT COUNT(*) FROM [profile] WHERE xp_history > 0);
--Make sure not to transfer to xp_history more then once
IF @counter < 5
BEGIN
UPDATE [profile] SET xp_history=xp_gain WHERE xp_gain is not NULL;
END

END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ExecGrantViewDefinition]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ExecGrantViewDefinition]  
(@login VARCHAR(30))  
AS  
/* 
Included Object Types are:  
P - Stored Procedure  
V - View  
FN - SQL scalar-function 
TR - Trigger  
IF - SQL inlined table-valued function 
TF - SQL table-valued function 
U - Table (user-defined) 
*/  
SET NOCOUNT ON  

CREATE TABLE #runSQL 
(runSQL VARCHAR(2000) NOT NULL)  

--Declare @execSQL varchar(2000), @login varchar(30), @space char (1), @TO char (2)  
DECLARE @execSQL VARCHAR(2000), @space CHAR (1), @TO CHAR (2)  

SET @to = 'TO' 
SET @execSQL = 'Grant View Definition ON '  
SET @login = REPLACE(REPLACE (@login, '[', ''), ']', '') 
SET @login = '[' + @login + ']' 
SET @space = ' ' 

INSERT INTO #runSQL  
SELECT @execSQL + schema_name(schema_id) + '.' + [name] + @space + @TO + @space + @login  
FROM sys.all_objects s  
WHERE type IN ('V', 'U')  
AND is_ms_shipped = 0  
ORDER BY s.type, s.name  

SET @execSQL = ''  

Execute_SQL:  

SET ROWCOUNT 1  

SELECT @execSQL = runSQL FROM #runSQL 

PRINT @execSQL --Comment out if you don't want to see the output 

EXEC (@execSQL) 

DELETE FROM #runSQL WHERE runSQL = @execSQL 

IF EXISTS (SELECT * FROM #runSQL)  
   GOTO Execute_SQL  

SET ROWCOUNT 0 

DROP TABLE #runSQL
GO
/****** Object:  StoredProcedure [dbo].[usp_FunctionTesting]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_FunctionTesting]
(@base_id int)
AS
BEGIN

--View_Base
SELECT * FROM            dbo.func_Get_Base_View(@base_id,GETUTCDATE())

END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAttack]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_GetAttack]
(@attack_id int, @from_profile_id int out, @from_base_id int out, @to_profile_id int out, @to_base_id int out, @is_capture int out, @r int out)
AS
BEGIN
    DECLARE @row_count int = 0;
    
    SELECT @row_count=@@ROWCOUNT, @from_profile_id=from_profile_id,@from_base_id=from_base_id,@to_profile_id=to_profile_id,@to_base_id=to_base_id,@is_capture=is_capture
    FROM attack
    WHERE attack_id =@attack_id

    IF  @row_count> 0
    BEGIN
        RAISERROR ('Rows found', 10,-1) with nowait;
        SET @r=1
    END
    ELSE
    BEGIN
        RAISERROR ('No Rows', 10,-1) with nowait;
        SET @r=-99
    END 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetChat]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_GetChat]
(@table_name VARCHAR(30), @chat_count int,@alliance_id int,@r int out)
AS
BEGIN
    SET @r = 0;
    IF(@table_name='chat')
    BEGIN
        SELECT TOP(@chat_count) chat_id,profile_id,profile_name,profile_face,message,date_posted,alliance_id,alliance_tag,alliance_logo,target_alliance_id
        FROM chat ORDER BY chat_id DESC
    END
    ELSE IF(@table_name='alliance_chat')
    BEGIN
        SELECT TOP(@chat_count) chat_id,profile_id,profile_name,profile_face,message,date_posted,alliance_id,alliance_tag,alliance_logo,target_alliance_id
        FROM alliance_chat WHERE alliance_id=@alliance_id ORDER BY chat_id DESC
    END
    ELSE IF(@table_name='alliance_wall')
    BEGIN
        SELECT TOP(@chat_count) chat_id,profile_id,profile_name,profile_face,message,date_posted,alliance_id,alliance_tag,alliance_logo,target_alliance_id
        FROM alliance_wall WHERE target_alliance_id=@alliance_id ORDER BY chat_id DESC
    END
    SET @r = 1;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetMapCities]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_GetMapCities]
(@region_id bigint, @profile_id int= 0)
AS
BEGIN
    
    DECLARE @profile_id_AS_STRING varchar(30) = CAST(@profile_id AS VARCHAR);
	RAISERROR ('@profile_id : %s', 10,-1, @profile_id_AS_STRING) with nowait;

    DECLARE @coordinate_x_min int =0,@coordinate_x_max int =0,@coordinate_y_min int=0,@coordinate_y_max int=0,@region_width int=0,@region_height int=0,@formula_variable_x DECIMAL(18,2)=0

    SELECT @formula_variable_x=tile_id_x_multiplier,@region_width=region_width,@region_height=region_height
    FROM dbo.settings
    WHERE settings_id=1
    
    SET @coordinate_x_min = (@region_id/@formula_variable_x)*@region_width
    SET @coordinate_y_min = (@region_id%@formula_variable_x)*@region_height
    SET @coordinate_x_max = @coordinate_x_min+@region_width
    SET @coordinate_y_max = @coordinate_y_min+@region_height
    
    DECLARE @coordinate_x_min_AS_STRING varchar(30) = CAST(@coordinate_x_min AS VARCHAR);
	RAISERROR ('@coordinate_x_min : %s', 10,-1, @coordinate_x_min_AS_STRING) with nowait;
    DECLARE @coordinate_x_max_AS_STRING varchar(30) = CAST(@coordinate_x_max AS VARCHAR);
	RAISERROR ('@coordinate_x_max : %s', 10,-1, @coordinate_x_max_AS_STRING) with nowait;
    
    DECLARE @coordinate_y_min_AS_STRING varchar(30) = CAST(@coordinate_y_min AS VARCHAR);
	RAISERROR ('@coordinate_y_min : %s', 10,-1, @coordinate_y_min_AS_STRING) with nowait;
    DECLARE @coordinate_y_max_AS_STRING varchar(30) = CAST(@coordinate_y_max AS VARCHAR);
	RAISERROR ('@coordinate_y_max : %s', 10,-1, @coordinate_y_max_AS_STRING) with nowait;
    
    
    SELECT          dbo.base.base_id, dbo.base.base_type, dbo.base.base_name, dbo.base.map_x, dbo.base.map_y,dbo.base.previous_profile_id,dbo.base.last_captured,dbo.base.protection_time,dbo.base.protection_ending ,CASE WHEN dbo.base.protection_ending<GETUTCDATE() THEN 0 ELSE 1 END AS under_protection,ISNULL(dbo.build.building_level, 1) AS building_level, 
                         dbo.profile.profile_id, dbo.profile.profile_name, dbo.profile.profile_face, dbo.profile.alliance_rank, dbo.profile.xp, dbo.profile.kills, dbo.alliance.alliance_id, 
                         dbo.alliance.alliance_name, dbo.alliance.alliance_tag, dbo.alliance.alliance_logo
    FROM            dbo.base LEFT OUTER JOIN
                         dbo.build ON dbo.base.base_id = dbo.build.base_id AND dbo.build.location = 101 AND dbo.build.building_id = 101 LEFT OUTER JOIN
                         dbo.profile ON dbo.base.profile_id = dbo.profile.profile_id LEFT OUTER JOIN
                         dbo.alliance ON dbo.profile.alliance_id = dbo.alliance.alliance_id
    WHERE           (dbo.base.map_x >= @coordinate_x_min AND dbo.base.map_x <= @coordinate_x_max AND dbo.base.map_y >= @coordinate_y_min AND dbo.base.map_y <= @coordinate_y_max AND dbo.base.last_captured <=GETUTCDATE()) AND (dbo.profile.tutorial_on =0 OR dbo.profile.profile_id=@profile_id) 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetMapTerrain]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_GetMapTerrain]
(@region_id bigint)
AS
BEGIN
	DECLARE @coordinate_x_min int =0,@coordinate_x_max int =0,@coordinate_y_min int=0,@coordinate_y_max int=0,@region_width int=0,@region_height int=0,@formula_variable_x DECIMAL(18,2)=0

    SELECT map_id,x_coordinate AS x,y_coordinate AS y,terrain FROM dbo.map_terrain
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetMapVillages]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_GetMapVillages]
(@region_id bigint)
AS
BEGIN
	DECLARE @coordinate_x_min int =0,@coordinate_x_max int =0,@coordinate_y_min int=0,@coordinate_y_max int=0,@region_width int=0,@region_height int=0,@formula_variable_x DECIMAL(18,2)=0

    SELECT village_id,village_level,map_x,map_y FROM dbo.village
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetMissions]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_GetMissions]
(@profile_id bigint)
AS
BEGIN
    EXECUTE usp_UpdatePlayerMissions @profile_id;
    
    SELECT MISSION_TABLE.mission_id,
    MISSION_TABLE.profile_id,
    MISSION_TABLE.mission_type_id,
    MISSION_TABLE.claimed,
    MISSION_TABLE.started,
    cast(NULLIF(MISSION_TABLE.date_ending,'') AS datetime) AS date_ending,
    MISSION_TYPE_TABLE.name,
    MISSION_TYPE_TABLE.description,
    MISSION_TYPE_TABLE.image_url,
    MISSION_TYPE_TABLE.mission_duration,
    MISSION_TYPE_TABLE.requirement_value_1,
    MISSION_TYPE_TABLE.requirement_value_2,
    MISSION_TYPE_TABLE.requirement_value_3,
    MISSION_TYPE_TABLE.requirement_value_4,
    MISSION_TYPE_TABLE.requirement_value_5,
    MISSION_TYPE_TABLE.requirement_value_6,
    MISSION_TYPE_TABLE.requirement_value_7,
    MISSION_TYPE_TABLE.requirement_value_8,
    MISSION_TYPE_TABLE.requirement_value_9,
    MISSION_TYPE_TABLE.requirement_value_10,
    MISSION_TYPE_TABLE.requirement_value_11,
    MISSION_TYPE_TABLE.requirement_value_12,
    MISSION_TYPE_TABLE.requirement_value_13,
    MISSION_TYPE_TABLE.requirement_value_14,
    MISSION_TYPE_TABLE.reward_value_1,
    MISSION_TYPE_TABLE.reward_value_2,
    MISSION_TYPE_TABLE.reward_value_3,
    MISSION_TYPE_TABLE.reward_value_4,
    MISSION_TYPE_TABLE.reward_value_5,
    MISSION_TYPE_TABLE.reward_value_6,
    MISSION_TYPE_TABLE.reward_value_7,
    MISSION_TYPE_TABLE.reward_value_8,
    MISSION_TYPE_TABLE.reward_value_9,
    MISSION_TYPE_TABLE.reward_value_10,
    MISSION_TYPE_TABLE.reward_value_11,
    MISSION_TYPE_TABLE.reward_value_12,
    MISSION_TYPE_TABLE.reward_value_13,
    MISSION_TYPE_TABLE.reward_value_14,
    MISSION_TYPE_TABLE.reward_value_15,
    MISSION_TYPE_TABLE.reward_value_16,
    MISSION_TYPE_TABLE.reward_value_17
    FROM mission MISSION_TABLE
    LEFT OUTER JOIN dbo.mission_type MISSION_TYPE_TABLE
    ON MISSION_TYPE_TABLE.mission_type_id=MISSION_TABLE.mission_type_id
    WHERE MISSION_TABLE.profile_id=@profile_id
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetNearestVillage]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_GetNearestVillage]
(@coordinate_x bigint,@coordinate_y bigint)
AS
BEGIN
	DECLARE @coordinate_x_min int =0,@coordinate_x_max int =0,@coordinate_y_min int=0,@coordinate_y_max int=0, @current_range_iteration int =0, @max_range_iteration int =0, @map_width int =0, @map_height int=0

    SELECT @map_width = map_width,@map_height=map_height
    FROM settings WHERE settings_id=1
    /*
    DECLARE @map_width_AS_STRING varchar(30) = CAST(@map_width AS VARCHAR);
	RAISERROR ('@map_width : %s', 10,-1, @map_width_AS_STRING) with nowait;
    DECLARE @map_height_AS_STRING varchar(30) = CAST(@map_height AS VARCHAR);
	RAISERROR ('@map_height : %s', 10,-1, @map_height_AS_STRING) with nowait;
    */
    SET @max_range_iteration = @map_height;
    IF(@map_width >@max_range_iteration )
    BEGIN
        SET @max_range_iteration = @map_width;
    END
    /*
    DECLARE @max_range_iteration_AS_STRING varchar(30) = CAST(@max_range_iteration AS VARCHAR);
	RAISERROR ('@max_range_iteration : %s', 10,-1, @max_range_iteration_AS_STRING) with nowait;
    */
    WHILE @current_range_iteration<@max_range_iteration
    BEGIN
        /*
        DECLARE @current_range_iteration_AS_STRING varchar(30) = CAST(@current_range_iteration AS VARCHAR);
	    RAISERROR ('@current_range_iteration : %s', 10,-1, @current_range_iteration_AS_STRING) with nowait;
        */
        SET @coordinate_x_max = @coordinate_x+@current_range_iteration
        SET @coordinate_x_min = @coordinate_x-@current_range_iteration
        SET @coordinate_y_max = @coordinate_y+@current_range_iteration
        SET @coordinate_y_min = @coordinate_y-@current_range_iteration

        IF EXISTS (SELECT TOP 1 village_id,village_level,map_x,map_y FROM dbo.village WHERE map_x>= @coordinate_x_min AND map_x <= @coordinate_x_max AND map_y>= @coordinate_y_min AND map_y <= @coordinate_y_max)
        BEGIN
            SELECT TOP 1 village_id,village_level,map_x,map_y FROM dbo.village WHERE map_x>= @coordinate_x_min AND map_x <= @coordinate_x_max AND map_y>= @coordinate_y_min AND map_y <= @coordinate_y_max
            SET @current_range_iteration=@max_range_iteration;
        END
        ELSE
        BEGIN
            SET @current_range_iteration=@current_range_iteration+1;
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetRegions]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_GetRegions]
(@coordinate_x int,@coordinate_y int,@width int, @height int)
AS
BEGIN
	DECLARE @topleft_coordinate_of_view_x int, @topleft_coordinate_of_view_y int
    DECLARE @topright_coordinate_of_view_x int, @topright_coordinate_of_view_y int
    DECLARE @bottomleft_coordinate_of_view_x int, @bottomleft_coordinate_of_view_y int
    DECLARE @bottonright_coordinate_of_view_x int, @bottonright_coordinate_of_view_y int
    
    DECLARE @region_table TABLE
		(
			region_id bigint
		)
    DECLARE @region_distict_table TABLE
		(
			region_id bigint,
            last_process datetime
		)
    
    DECLARE @topleft_region_id bigint =0,@topright_region_id bigint =0,@bottomleft_region_id bigint =0,@bottonright_region_id bigint =0,@region_width int=0,@region_height int=0,@formula_variable_x DECIMAL(18,2)=0
    
    SELECT @formula_variable_x=tile_id_x_multiplier,@region_width=region_width,@region_height=region_height
    FROM dbo.settings
    WHERE settings_id=1
    
    DECLARE @coordinate_x_AS_STRING varchar(30) = CAST(@coordinate_x AS VARCHAR);
	RAISERROR ('@coordinate_x : %s', 10,-1, @coordinate_x_AS_STRING) with nowait;
    DECLARE @coordinate_y_AS_STRING varchar(30) = CAST(@coordinate_y AS VARCHAR);
	RAISERROR ('@coordinate_y : %s', 10,-1, @coordinate_y_AS_STRING) with nowait;
    
    DECLARE @region_width_AS_STRING varchar(30) = CAST(@region_width AS VARCHAR);
	RAISERROR ('@region_width : %s', 10,-1, @region_width_AS_STRING) with nowait;
    DECLARE @region_height_AS_STRING varchar(30) = CAST(@region_height AS VARCHAR);
	RAISERROR ('@region_height : %s', 10,-1, @region_height_AS_STRING) with nowait;
    DECLARE @formula_variable_x_AS_STRING varchar(30) = CAST(@formula_variable_x AS VARCHAR);
	RAISERROR ('@formula_variable_x : %s', 10,-1, @formula_variable_x_AS_STRING) with nowait;
    
    SET @topleft_coordinate_of_view_x=@coordinate_x-(@width/2)
    SET @topleft_coordinate_of_view_y=@coordinate_y+(@height/2)
    
    SET @topright_coordinate_of_view_x=@coordinate_x+(@width/2)
    SET @topright_coordinate_of_view_y=@coordinate_y+(@height/2)
    
    SET @bottomleft_coordinate_of_view_x=@coordinate_x-(@width/2)
    SET @bottomleft_coordinate_of_view_y=@coordinate_y-(@height/2)
    
    SET @bottonright_coordinate_of_view_x=@coordinate_x+(@width/2)
    SET @bottonright_coordinate_of_view_y=@coordinate_y-(@height/2)
    
    SET @topleft_region_id = CAST((@topleft_coordinate_of_view_x/@region_width) AS int)*@formula_variable_x + CAST((@topleft_coordinate_of_view_y/@region_height) AS int)
    SET @topright_region_id = CAST((@topright_coordinate_of_view_x/@region_width) AS int)*@formula_variable_x + CAST((@topright_coordinate_of_view_y/@region_height) AS int)
    SET @bottomleft_region_id = CAST((@bottomleft_coordinate_of_view_x/@region_width) AS int)*@formula_variable_x + CAST((@bottomleft_coordinate_of_view_y/@region_height) AS int)
    SET @bottonright_region_id = CAST((@bottonright_coordinate_of_view_x/@region_width) AS int)*@formula_variable_x + CAST((@bottonright_coordinate_of_view_y/@region_height) AS int)  
    
    DECLARE @topleft_region_id_AS_STRING varchar(30) = CAST(@topleft_region_id AS VARCHAR);
	RAISERROR ('@topleft_region_id : %s', 10,-1, @topleft_region_id_AS_STRING) with nowait;
    DECLARE @topright_region_id_AS_STRING varchar(30) = CAST(@topright_region_id AS VARCHAR);
	RAISERROR ('@topright_region_id : %s', 10,-1, @topright_region_id_AS_STRING) with nowait;
    DECLARE @bottomleft_region_id_AS_STRING varchar(30) = CAST(@bottomleft_region_id AS VARCHAR);
	RAISERROR ('@bottomleft_region_id : %s', 10,-1, @bottomleft_region_id_AS_STRING) with nowait;
    DECLARE @bottonright_region_id_AS_STRING varchar(30) = CAST(@bottonright_region_id AS VARCHAR);
	RAISERROR ('@bottonright_region_id : %s', 10,-1, @bottonright_region_id_AS_STRING) with nowait;
    
    INSERT INTO @region_table(region_id)
    VALUES (@topleft_region_id)
    INSERT INTO @region_table(region_id)
    VALUES (@topright_region_id)
    INSERT INTO @region_table(region_id)
    VALUES (@bottomleft_region_id)
    INSERT INTO @region_table(region_id)
    VALUES (@bottonright_region_id)
    
    INSERT INTO @region_distict_table(region_id)
    SELECT DISTINCT region_id
    FROM @region_table
    
    UPDATE CLIENT_REGION_DISTICT_TABLE
    SET last_process= REGION_TABLE.last_process
        FROM @region_distict_table CLIENT_REGION_DISTICT_TABLE
        INNER JOIN dbo.region REGION_TABLE
        ON CLIENT_REGION_DISTICT_TABLE.region_id = REGION_TABLE.region_id
    
    SELECT * FROM @region_distict_table
END
GO
/****** Object:  StoredProcedure [dbo].[usp_HealTroops]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Shankar Nathan
-- Create date: 08 March 2014
-- Description:	Heal Troops
-- =============================================
CREATE PROCEDURE [dbo].[usp_HealTroops]
(@profile_uid nvarchar(50), @base_id int, @a1 int, @b1 int, @c1 int, @d1 int, @a2 int, @b2 int, @c2 int, @d2 int, @a3 int, @b3 int, @c3 int, @d3 int, @r int out)
AS
BEGIN

DECLARE @profile_id int, @h_time int, @h_r5 int, @boost float, @view_boost float

SET @r = -1;
SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid), 0);

SET @h_time = (@a1 * 1) + (@b1 * 1) + (@c1 * 1) +( @d1 * 1) + (@a2 * 1) + (@b2 * 1) + (@c2 * 1) + (@d2 * 1) + (@a3 * 1) + (@b3 * 1) + (@c3 * 1) + (@d3 * 1);

DECLARE @t AS BaseFetchTableType

Insert Into @t Exec dbo.usp_BaseFetch @base_id, @profile_id

SET @view_boost = ISNULL((SELECT boost_heal FROM @t WHERE base_id=@base_id), 0);

SET @boost = (@view_boost / 100.0) + 1;
IF @boost >= 1
BEGIN
SET @h_time = @h_time/@boost
END

SET @h_r5 = (@a1 * 1) + (@b1 * 1) + (@c1 * 1) + (@d1 * 1) + (@a2 * 1) + (@b2 * 1) + (@c2 * 1) + (@d2 * 1) + (@a3 * 1) + (@b3 * 1) + (@c3 * 1) + (@d3 * 1);

IF @h_time > 0
BEGIN
--Reduce the injured from previous heal, set current healing troops and update hospital que
	UPDATE base SET i_a1=i_a1-h_a1, i_b1=i_b1-h_b1, i_c1=i_c1-h_c1, i_d1=i_d1-h_d1, i_a2=i_a2-h_a2, i_b2=i_b2-h_b2, i_c2=i_c2-h_c2, i_d2=i_d2-h_d2, i_a3=i_a3-h_a3, i_b3=i_b3-h_b3, i_c3=i_c3-h_c3, i_d3=i_d3-h_d3, 
	h_a1=@a1, h_b1=@b1, h_c1=@c1, h_d1=@d1, h_a2=@a2, h_b2=@b2, h_c2=@c2, h_d2=@d2, h_a3=@a3, h_b3=@b3, h_c3=@c3, h_d3=@d3, 
	hospital_queue=DATEADD(ss, @h_time, GETUTCDATE()), r5=r5-@h_r5, hospital_time=@h_time WHERE base_id=@base_id AND profile_id=@profile_id AND hospital_queue<GETUTCDATE() 
	AND i_a1>=@a1 AND i_b1>=@b1 AND i_c1>=@c1 AND i_d1>=@d1 AND i_a2>=@a2 AND i_b2>=@b2 AND i_c2>=@c2 AND i_d2>=@d2 AND i_a3>=@a3 AND i_b3>=@b3 AND i_c3>=@c3 AND i_d3>=@d3;

	SET @r = 1;
END

END


GO
/****** Object:  StoredProcedure [dbo].[usp_HeroEquip]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_HeroEquip]
(@profile_uid nvarchar(50), @hero_field nvarchar(50), @item_id int, @r int out)
AS
BEGIN

DECLARE @profile_id int

SET @r = -1;
SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid), 0);

IF @profile_id > 0
BEGIN

DECLARE @item_quantity int

IF @item_id = 0
BEGIN
	SET @item_quantity = 1;
END
ELSE
BEGIN
	SET @item_quantity = ISNULL((SELECT quantity FROM itemprofile WHERE item_id=@item_id AND profile_id=@profile_id), 0);
END

IF @item_quantity > 0
BEGIN
	DECLARE @sqlText nvarchar(1000); 
	SET @sqlText = N'UPDATE hero SET ' + @hero_field + '=' + CONVERT(varchar(10),@item_id) + ' WHERE hero_status=1 AND profile_id=' + CONVERT(varchar(10),@profile_id);
	Exec (@sqlText);
	SET @r = 1;
END

END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_HeroSpendPoint]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_HeroSpendPoint]
(@profile_uid nvarchar(50), @hero_field nvarchar(50), @r int out)
AS
BEGIN

DECLARE @profile_id int

SET @r = -1;
SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid), 0);

IF @profile_id > 0
BEGIN

DECLARE @sqlText nvarchar(1000); 
SET @sqlText = N'UPDATE hero SET ' + @hero_field + '=' + @hero_field + '+1 WHERE hero_status=1 AND profile_id=' + CONVERT(varchar(10),@profile_id);
Exec (@sqlText);

SET @r = 1;

END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_HeroType]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_HeroType]
(@profile_uid nvarchar(50), @hero_type int, @r int out)
AS
BEGIN

DECLARE @profile_id int, @item_quantity int

SET @r = -1;
SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid), 0);
SET @item_quantity = ISNULL((SELECT quantity FROM itemprofile WHERE item_id=705 AND profile_id=@profile_id), 0);

IF @item_quantity > 0
BEGIN

UPDATE hero SET hero_type=@hero_type WHERE hero_status=1 AND profile_id=@profile_id;

UPDATE itemprofile SET quantity=quantity-1 WHERE item_id=705 AND profile_id=@profile_id;

SET @r = 1;

END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_MailCompose]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_MailCompose]
(@profile_id bigint, @profile_name nvarchar(MAX), @profile_face int, @message nvarchar(MAX), @to_id bigint, @to_name nvarchar(MAX), @is_alliance int, @r int out)
AS
BEGIN

SET @r = -1;

DECLARE @mail_id int;

IF @message is not NULL AND @profile_id > 0
BEGIN

IF @is_alliance = 0
BEGIN

INSERT INTO mail VALUES (GETUTCDATE(), N'', @message, 0, -1, @to_id, @to_name, @profile_id, @profile_name, @profile_face, 0, 0);

SELECT @mail_id = SCOPE_IDENTITY();
INSERT INTO dbo.mailprofile VALUES (@mail_id, @to_id);
SET @r = @mail_id;

END
ELSE
BEGIN

INSERT INTO mail VALUES (GETUTCDATE(), N'', @message, 0, @to_id, @to_id, @to_name, @profile_id, @profile_name, @profile_face, 0, 0);

SELECT @mail_id = SCOPE_IDENTITY();
SET @r = @mail_id;

END


END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_MailDelete]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_MailDelete]
(@profile_id bigint, @mail_id bigint, @r int out)
AS
BEGIN

SET @r = -1;

IF @profile_id > 0 AND @mail_id > 0
BEGIN

DELETE FROM mailprofile WHERE mail_id=@mail_id AND profile_id=@profile_id;

SET @r = 1;
END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_MailReply]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_MailReply]
(@profile_id bigint, @profile_name nvarchar(MAX), @profile_face int, @message nvarchar(MAX), @mail_id bigint, @from_id bigint, @reply_counter bigint, @r int out)
AS
BEGIN

SET @r = -1;

IF @message is not NULL AND @profile_id > 0 AND @mail_id > 0 AND @from_id > 0
BEGIN

INSERT INTO mail_reply VALUES (@mail_id, GETUTCDATE(), @message, @profile_id, @profile_name, @profile_face);
UPDATE mail SET reply_counter=reply_counter+1 WHERE mail_id=@mail_id;

IF @reply_counter=0
BEGIN

DECLARE @mailprofile_count int
SET @mailprofile_count = ISNULL((SELECT COUNT(*) FROM mailprofile WHERE mail_id=@mail_id AND profile_id=@from_id), 0);

IF @mailprofile_count=0
BEGIN
INSERT INTO mailprofile VALUES (@mail_id, @from_id);
END

END

SET @r = 1;
END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_MapGenerator]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_MapGenerator]
AS
BEGIN
DECLARE @current_index int=0, @to_index int = -1, @from_index int = -1, @map_width int =0, @map_height int=0

SELECT @map_width = map_width, @map_height = map_height
FROM dbo.settings
WHERE settings_id = 1

DECLARE @map_width_AS_STRING varchar(30)= CAST(@map_width AS VARCHAR);
RAISERROR ('@map_width: %s', 10,-1, @map_width_AS_STRING) with nowait;

DECLARE @map_height_AS_STRING varchar(30)= CAST(@map_height AS VARCHAR);
RAISERROR ('@map_height: %s', 10,-1, @map_height_AS_STRING) with nowait;

IF(@from_index<0)
BEGIN
    SET @from_index = 0;
END

IF(@to_index<0)
BEGIN
    SET @to_index = @map_width*@map_height;
END


SET @current_index = @from_index + 1;

DECLARE @current_index_AS_STRING varchar(30)= CAST(@current_index AS VARCHAR);
RAISERROR ('@current_index: %s', 10,-1, @current_index_AS_STRING) with nowait;

DECLARE @to_index_AS_STRING varchar(30)= CAST(@to_index AS VARCHAR);
RAISERROR ('@to_index: %s', 10,-1, @to_index_AS_STRING) with nowait;


WHILE @current_index < @to_index+1
    BEGIN
        IF(EXISTS(SELECT map_id FROM dbo.map_terrain WHERE map_id=@current_index))
        BEGIN
            /*
            DECLARE @x_coordinate_AS_STRING varchar(30)= CAST((@current_index-1)/@map_height AS VARCHAR);
            DECLARE @y_coordinate_AS_STRING varchar(30)= CAST((@current_index-1)%@map_height AS VARCHAR);
            RAISERROR ('@coordinate : %s ,%s', 10,-1, @x_coordinate_AS_STRING,@y_coordinate_AS_STRING) with nowait;
            */
            UPDATE dbo.map_terrain
            SET terrain = dbo.fx_randTile(newID(),newID()), x_coordinate=(@current_index-1)/@map_height, y_coordinate=(@current_index-1)%@map_height
            WHERE map_id = @current_index
        END
        ELSE
        BEGIN
            -- Create New Vertical
            --1-6 as type, 1-3 as level
            INSERT INTO dbo.map_terrain VALUES(@current_index,dbo.fx_randTile(newID(),newID()),(@current_index-1)/@map_height,(@current_index-1)%@map_height)
        END
        SET @current_index=@current_index+1;
    END
DELETE FROM dbo.map_terrain WHERE map_id > @to_index

END
GO
/****** Object:  StoredProcedure [dbo].[usp_MapVillageRandom]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_MapVillageRandom]
(@from_block_column_index int = -1,@to_block_column_index int = -1, @from_block_row_index int = -1,@to_block_row_index int=-1)
AS
BEGIN
    DECLARE @parameters_all_or_nothing bit = 0;
    
    DECLARE @block_column_index int, @block_row_index int, @range_x int, @range_y int, @random_x int, @random_y int, @offset_x int, @offset_y int, @block_width int, @block_height int, @map_x int, @map_y int
    DECLARE @rand_level int,@rand_army_type int, @rand_resources_type int

    SET @offset_x = 1;
    SET @offset_y = 1;

    SET @block_width = 4;
    SET @block_height = 4;
    
    SET @range_x = 1;
    SET @range_y = 1;
        
    IF(@from_block_column_index<0 AND @to_block_column_index<0 AND @from_block_row_index<0 AND @to_block_row_index<0)
    BEGIN
        SET @from_block_column_index =0;
        SET @from_block_row_index =0;
        
        SELECT @to_block_column_index= map_width/village_population_formula_block_width, @to_block_row_index= map_height/village_population_formula_block_height,@block_width= village_population_formula_block_width, @block_height = village_population_formula_block_height
        FROM dbo.settings
        WHERE settings_id = 1
        
        SET @parameters_all_or_nothing = 1
    END
    ELSE IF(@from_block_column_index>=0 AND @to_block_column_index>=0 AND @from_block_row_index>=0 AND @to_block_row_index>=0)
    BEGIN
        SELECT @block_width= village_population_formula_block_width, @block_height = village_population_formula_block_height
        FROM dbo.settings
        WHERE settings_id = 1
        
        SET @parameters_all_or_nothing = 1
    END
    
    IF(@parameters_all_or_nothing=1)
    BEGIN
        /*
        DECLARE @from_block_column_index_AS_STRING varchar(30) = CAST(@from_block_column_index  AS VARCHAR);
        RAISERROR ('@from_block_column_index : %s', 10,-1, @from_block_column_index_AS_STRING) with nowait;
        DECLARE @from_block_row_index_AS_STRING varchar(30) = CAST(@from_block_row_index  AS VARCHAR);
        RAISERROR ('@from_block_row_index: %s ', 10,-1, @from_block_row_index_AS_STRING) with nowait;
        DECLARE @to_block_column_index_AS_STRING varchar(30) = CAST(@to_block_column_index  AS VARCHAR);
        RAISERROR ('@to_block_column_index : %s', 10,-1, @to_block_column_index_AS_STRING) with nowait;
        DECLARE @to_block_row_index_AS_STRING varchar(30) = CAST(@to_block_row_index  AS VARCHAR);
        RAISERROR ('@to_block_row_index: %s ', 10,-1, @to_block_row_index_AS_STRING) with nowait;
        */
        SET @block_column_index = @from_block_column_index;
        SET @block_row_index = @from_block_row_index;
    
        WHILE @block_column_index < @to_block_column_index --exclude TO index
        BEGIN
            /*
            DECLARE @block_column_index_AS_STRING varchar(30) = CAST(@block_column_index  AS VARCHAR);
            RAISERROR ('@current block_column_index: %s ', 10,-1, @block_column_index_AS_STRING) with nowait;
            */
            WHILE @block_row_index < @to_block_row_index --exclude TO index
            BEGIN
                /*
                DECLARE @block_row_index_AS_STRING varchar(30) = CAST(@block_row_index  AS VARCHAR);
                RAISERROR ('@current block_row_index: %s ', 10,-1, @block_row_index_AS_STRING) with nowait;
                */
                SET @random_x = dbo.fx_generateRandomNumber(newID(), -@range_x, @range_x);

                SET @random_y = dbo.fx_generateRandomNumber(newID(), -@range_y, @range_y);

                SET @map_x = @offset_x + @block_width*@block_column_index + @random_x;

                SET @map_y = @offset_y + @block_height*@block_row_index + @random_y;
                /*
                DECLARE @map_x_AS_STRING varchar(30) = CAST(@map_x  AS VARCHAR);
                RAISERROR ('@current map_x: %s ', 10,-1, @map_x_AS_STRING) with nowait;
               
                DECLARE @map_y_AS_STRING varchar(30) = CAST(@map_y  AS VARCHAR);
                RAISERROR ('@current map_y: %s ', 10,-1, @map_y_AS_STRING) with nowait;
                */
                IF(EXISTS(SELECT village_id FROM dbo.village WHERE map_x >= @block_width*@block_column_index AND map_x <= @block_width*@block_column_index +@block_width AND map_y >= @block_height*@block_row_index AND map_y <= @block_height*@block_row_index + @block_height))
                BEGIN
                    DECLARE @column_index_AS_STRING varchar(30) = CAST(@block_column_index  AS VARCHAR);
                    DECLARE @row_index_AS_STRING varchar(30) = CAST(@block_row_index  AS VARCHAR);
                    RAISERROR ('@village exists in this block : %s , %s', 10,-1, @column_index_AS_STRING,@row_index_AS_STRING) with nowait;
                END
                ELSE
                BEGIN
                    -- Create New village
                    
                    SET @rand_level = dbo.fx_generateRandomNumber(newID(), 1, 15);
                    IF(@rand_level>10)
                    BEGIN
                        SET @rand_level = @rand_level-10
                    END
                    SET @rand_army_type = dbo.fx_generateRandomNumber(newID(), 1, 4);
                    SET @rand_resources_type = dbo.fx_generateRandomNumber(newID(), 1, 6);
                    INSERT INTO dbo.village (village_level,map_x,map_y,army_type,resources_type) VALUES(@rand_level, @map_x, @map_y,@rand_army_type,@rand_resources_type);
                END
                SET @block_row_index=@block_row_index+1;
            END
            SET @block_row_index = @from_block_row_index;
            SET @block_column_index=@block_column_index+1;
        END                 
    END
    ELSE
    BEGIN
        RAISERROR ('@Incompatible parameters set given', 10,-1)with nowait;
    END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_PostChat]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_PostChat]
(@table_name VARCHAR(MAX), @poster_profile_id int, @poster_profile_name VARCHAR(MAX), @poster_profile_face int, @message VARCHAR(MAX), @poster_alliance_id bigint, @poster_alliance_tag VARCHAR(MAX), @poster_alliance_logo int, @target_alliance_id bigint, @chat_id bigint out, @r int out)
AS
BEGIN
    IF(@table_name='chat')
    BEGIN
        INSERT INTO chat VALUES(@poster_profile_id,@poster_profile_name,@poster_profile_face,@message,GETUTCDATE(),@poster_alliance_id,@poster_alliance_tag,@poster_alliance_logo,@target_alliance_id)
    END
    ELSE IF(@table_name='alliance_chat')
    BEGIN
        INSERT INTO alliance_chat VALUES(@poster_profile_id,@poster_profile_name,@poster_profile_face,@message,GETUTCDATE(),@poster_alliance_id,@poster_alliance_tag,@poster_alliance_logo,@target_alliance_id)
    END
    ELSE IF(@table_name='alliance_wall')
    BEGIN
        INSERT INTO alliance_wall VALUES(@poster_profile_id,@poster_profile_name,@poster_profile_face,@message,GETUTCDATE(),@poster_alliance_id,@poster_alliance_tag,@poster_alliance_logo,@target_alliance_id)
    END

    SELECT @chat_id=SCOPE_IDENTITY();
    SET @r=1;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_PremiumCurrencyPurchased]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_PremiumCurrencyPurchased]
(@profile_uid nvarchar(50), @transaction_id text, @product_code nvarchar(50), @r int out)
AS
    DECLARE @amount_gained int = 0;

    IF NOT EXISTS(SELECT * FROM receipt WHERE transaction_id LIKE @transaction_id)
    BEGIN
        
        IF @product_code=6145148
        BEGIN
            SET @amount_gained=750
            SET @r=10
        END
        ELSE IF @product_code=9425144
        BEGIN
            SET @amount_gained=1500
            SET @r=22
        END
        ELSE IF @product_code=1736703
        BEGIN
            SET @amount_gained=3000
            SET @r=60
        END
        ELSE IF @product_code=6597164
        BEGIN
            SET @amount_gained=8650
            SET @r=150
        END
        ELSE IF @product_code=2792559
        BEGIN
            SET @amount_gained=18000
            SET @r=275
        END
    
        UPDATE profile SET currency_second=currency_second+@amount_gained, purchase_times=purchase_times+1 WHERE uid=@profile_uid
        
        INSERT INTO receipt (uid,transaction_id,product_id,purchase_date) VALUES (@profile_uid,@transaction_id,@product_code,GETUTCDATE())
        
    END
   

GO
/****** Object:  StoredProcedure [dbo].[usp_Process_AttackQueue_Ended]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Process_AttackQueue_Ended]
(@base_id int)
AS
BEGIN
	UPDATE base
	SET attack_queue= 01-01-1900
	WHERE base_id=@base_id 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Process_AttackReturn_Ended]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Process_AttackReturn_Ended]
(@base_id int)
AS
BEGIN
	UPDATE base
	SET attack_return= 01-01-1900
	WHERE base_id=@base_id 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Process_BuildQueue_Ended]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Process_BuildQueue_Ended]
(@base_id int)
AS
BEGIN
	UPDATE base
	SET build_queue= 01-01-1900
	WHERE base_id=@base_id 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Process_CraftQueue_Ended]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[usp_Process_CraftQueue_Ended]
(@base_id int)
AS
BEGIN
	UPDATE base
	SET craft_queue= 01-01-1900
	WHERE base_id=@base_id
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Process_HospitalQueue_Ended]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Process_HospitalQueue_Ended]
(@base_id int)
AS
BEGIN
	UPDATE base
	SET hospital_queue= 01-01-1900
	WHERE base_id=@base_id 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Process_ItemAttackEnding_Ended]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Process_ItemAttackEnding_Ended]
(@base_id int)
AS
BEGIN
	UPDATE base
	SET item_attack_ending= 01-01-1900
	WHERE base_id=@base_id 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Process_ItemDefenseEnding_Ended]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Process_ItemDefenseEnding_Ended]
(@base_id int)
AS
BEGIN
	UPDATE base
	SET item_defense_ending= 01-01-1900
	WHERE base_id=@base_id 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Process_ItemR1Ending_Ended]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Process_ItemR1Ending_Ended]
(@base_id int)
AS
BEGIN
	UPDATE base
	SET item_r1_ending= 01-01-1900
	WHERE base_id=@base_id 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Process_ItemR2Ending_Ended]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Process_ItemR2Ending_Ended]
(@base_id int)
AS
BEGIN
	UPDATE base
	SET item_r2_ending= 01-01-1900
	WHERE base_id=@base_id 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Process_ItemR3Ending_Ended]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Process_ItemR3Ending_Ended]
(@base_id int)
AS
BEGIN
	UPDATE base
	SET item_r3_ending= 01-01-1900
	WHERE base_id=@base_id 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Process_ItemR4Ending_Ended]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Process_ItemR4Ending_Ended]
(@base_id int)
AS
BEGIN
	UPDATE base
	SET item_r4_ending= 01-01-1900
	WHERE base_id=@base_id 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Process_ItemR5Ending_Ended]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Process_ItemR5Ending_Ended]
(@base_id int)
AS
BEGIN
	UPDATE base
	SET item_r5_ending= 01-01-1900
	WHERE base_id=@base_id 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Process_ReinforceQueue_Ended]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Process_ReinforceQueue_Ended]
(@base_id int)
AS
BEGIN
	UPDATE base
	SET reinforce_queue= 01-01-1900
	WHERE base_id=@base_id 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Process_ResearchQueue_Ended]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Process_ResearchQueue_Ended]
(@base_id int)
AS
BEGIN
	UPDATE base
	SET research_queue= 01-01-1900
	WHERE base_id=@base_id 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Process_TradeQueue_Ended]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Process_TradeQueue_Ended]
(@base_id int)
AS
BEGIN
	UPDATE base
	SET trade_queue= 01-01-1900
	WHERE base_id=@base_id 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Process_TrainingAQueue_Ended]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Process_TrainingAQueue_Ended]
(@base_id int)
AS
BEGIN
	UPDATE base
	SET a_queue= 01-01-1900
	WHERE base_id=@base_id 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Process_TrainingBQueue_Ended]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Process_TrainingBQueue_Ended]
(@base_id int)
AS
BEGIN
	UPDATE base
	SET b_queue= 01-01-1900
	WHERE base_id=@base_id 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Process_TrainingCQueue_Ended]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Process_TrainingCQueue_Ended]
(@base_id int)
AS
BEGIN
	UPDATE base
	SET c_queue= 01-01-1900
	WHERE base_id=@base_id 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Process_TrainingDQueue_Ended]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Process_TrainingDQueue_Ended]
(@base_id int)
AS
BEGIN
	UPDATE base
	SET d_queue= 01-01-1900
	WHERE base_id=@base_id 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Process_TrainingSpyQueue_Ended]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Process_TrainingSpyQueue_Ended]
(@base_id int)
AS
BEGIN
	UPDATE base
	SET spy_queue= 01-01-1900
	WHERE base_id=@base_id 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Process_TransferQueue_Ended]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Process_TransferQueue_Ended]
(@base_id int)
AS
BEGIN
	UPDATE base
	SET transfer_queue= 01-01-1900
	WHERE base_id=@base_id 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Process_UpdateResources]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Process_UpdateResources]
--(@base_id int,@from_date datetime,@to_date datetime)
(@base_fetch_table_at_latest_time BaseFetchTableType READONLY,@base_id int,@to_date datetime)
AS
BEGIN
    DECLARE @base_fetch_table BaseFetchTableType
    DECLARE @at_time datetime
	DECLARE @from_date datetime
	DECLARE @hours_passed float = 0
	DECLARE @r1_generated int = 0,@r2_generated int = 0,@r3_generated int = 0,@r4_generated int = 0,@r5_generated int = 0
	DECLARE @r1_consumed int = 0,@r2_consumed int = 0,@r3_consumed int = 0,@r4_consumed int = 0,@r5_consumed int = 0
	
    INSERT INTO @base_fetch_table(base_id,base_type,profile_id,base_name,map_x,map_y,
    r1,r2,r3,r4,r5,
    build_location,build_queue,build_time,
    research_queue,research_time,research_id,
    attack_queue,attack_time,attack_job_time,attack_return,attack_id,
    trade_queue,trade_time,trade_id,
    reinforce_queue,reinforce_time,reinforce_id,reinforce_action,
    transfer_queue,transfer_time,transfer_id,
    craft_queue,craft_time,hospital_queue,hospital_time,
    a_queue,a_time,b_queue,b_time,c_queue,c_time,d_queue,d_time,spy_queue,spy_time,
    spy,a1,a2,a3,b1,b2,b3,c1,c2,c3,d1,d2,d3,
    t_a1,t_a2,t_a3,t_b1,t_b2,t_b3,t_c1,t_c2,t_c3,t_d1,t_d2,t_d3,
    i_a1,i_a2,i_a3,i_b1,i_b2,i_b3,i_c1,i_c2,i_c3,i_d1,i_d2,i_d3,
    h_a1,h_a2,h_a3,h_b1,h_b2,h_b3,h_c1,h_c2,h_c3,h_d1,h_d2,h_d3,
    r_a1,r_a2,r_a3,r_b1,r_b2,r_b3,r_c1,r_c2,r_c3,r_d1,r_d2,r_d3,
    rt_a1,rt_a2,rt_a3,rt_b1,rt_b2,rt_b3,rt_c1,rt_c2,rt_c3,rt_d1,rt_d2,rt_d3,
    research_r1,research_r2,research_r3,research_r4,research_r5,
    research_research,research_training,research_march,research_attack,research_defense,research_load,
    research_build,research_trade,research_craft,research_heal,research_a_attack,research_b_attack,research_c_attack,research_d_attack,research_life,
    research_a2,research_a3,research_b2,research_b3,research_c2,research_c3,research_d2,research_d3,
    a_a1,a_a2,a_a3,a_b1,a_b2,a_b3,a_c1,a_c2,a_c3,a_d1,a_d2,a_d3,
    a_r1,a_r2,a_r3,a_r4,a_r5,
    item_r1,item_r2,item_r3,item_r4,item_r5,item_attack,item_defense,
    item_r1_ending,item_r2_ending,item_r3_ending,item_r4_ending,item_r5_ending,item_attack_ending,item_defense_ending
    )
    SELECT
    base_id,base_type,profile_id,base_name,map_x,map_y,
    r1,r2,r3,r4,r5,
    build_location,build_queue,build_time,
    research_queue,research_time,research_id,
    attack_queue,attack_time,attack_job_time,attack_return,attack_id,
    trade_queue,trade_time,trade_id,
    reinforce_queue,reinforce_time,reinforce_id,reinforce_action,
    transfer_queue,transfer_time,transfer_id,
    craft_queue,craft_time,hospital_queue,hospital_time,
    a_queue,a_time,b_queue,b_time,c_queue,c_time,d_queue,d_time,spy_queue,spy_time,
    spy,a1,a2,a3,b1,b2,b3,c1,c2,c3,d1,d2,d3,
    t_a1,t_a2,t_a3,t_b1,t_b2,t_b3,t_c1,t_c2,t_c3,t_d1,t_d2,t_d3,
    i_a1,i_a2,i_a3,i_b1,i_b2,i_b3,i_c1,i_c2,i_c3,i_d1,i_d2,i_d3,
    h_a1,h_a2,h_a3,h_b1,h_b2,h_b3,h_c1,h_c2,h_c3,h_d1,h_d2,h_d3,
    r_a1,r_a2,r_a3,r_b1,r_b2,r_b3,r_c1,r_c2,r_c3,r_d1,r_d2,r_d3,
    rt_a1,rt_a2,rt_a3,rt_b1,rt_b2,rt_b3,rt_c1,rt_c2,rt_c3,rt_d1,rt_d2,rt_d3,
    research_r1,research_r2,research_r3,research_r4,research_r5,
    research_research,research_training,research_march,research_attack,research_defense,research_load,
    research_build,research_trade,research_craft,research_heal,research_a_attack,research_b_attack,research_c_attack,research_d_attack,research_life,
    research_a2,research_a3,research_b2,research_b3,research_c2,research_c3,research_d2,research_d3,
    a_a1,a_a2,a_a3,a_b1,a_b2,a_b3,a_c1,a_c2,a_c3,a_d1,a_d2,a_d3,
    a_r1,a_r2,a_r3,a_r4,a_r5,
    item_r1,item_r2,item_r3,item_r4,item_r5,item_attack,item_defense,
    item_r1_ending,item_r2_ending,item_r3_ending,item_r4_ending,item_r5_ending,item_attack_ending,item_defense_ending 
    FROM @base_fetch_table_at_latest_time
    
	SELECT @from_date=last_process 
	FROM base
	WHERE base_id = @base_id
	
	SET @hours_passed = DATEDIFF(second,@from_date,@to_date)
	SET @hours_passed = @hours_passed/360
	
    SET @at_time = @to_date
	--Positives
    
    --HERO BOOST
    UPDATE BASE_FETCH_TABLE
    SET   
        BASE_FETCH_TABLE.hero_boost_r1=HERO_TABLE.hero_r1+ISNULL(ITEM_HELMET_TABLE.hero_r1,0)+ISNULL(ITEM_ARMOR_TABLE.hero_r1,0)+ISNULL(ITEM_BOOTS_TABLE.hero_r1,0)+ISNULL(ITEM_WEAPON_TABLE.hero_r1,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_r1,0)+ISNULL(ITEM_GLOVES_TABLE.hero_r1,0),
        BASE_FETCH_TABLE.hero_boost_r2=HERO_TABLE.hero_r2+ISNULL(ITEM_HELMET_TABLE.hero_r2,0)+ISNULL(ITEM_ARMOR_TABLE.hero_r2,0)+ISNULL(ITEM_BOOTS_TABLE.hero_r2,0)+ISNULL(ITEM_WEAPON_TABLE.hero_r2,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_r2,0)+ISNULL(ITEM_GLOVES_TABLE.hero_r2,0),
        BASE_FETCH_TABLE.hero_boost_r3=HERO_TABLE.hero_r3+ISNULL(ITEM_HELMET_TABLE.hero_r3,0)+ISNULL(ITEM_ARMOR_TABLE.hero_r3,0)+ISNULL(ITEM_BOOTS_TABLE.hero_r3,0)+ISNULL(ITEM_WEAPON_TABLE.hero_r3,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_r3,0)+ISNULL(ITEM_GLOVES_TABLE.hero_r3,0),
        BASE_FETCH_TABLE.hero_boost_r4=HERO_TABLE.hero_r4+ISNULL(ITEM_HELMET_TABLE.hero_r4,0)+ISNULL(ITEM_ARMOR_TABLE.hero_r4,0)+ISNULL(ITEM_BOOTS_TABLE.hero_r4,0)+ISNULL(ITEM_WEAPON_TABLE.hero_r4,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_r4,0)+ISNULL(ITEM_GLOVES_TABLE.hero_r4,0),
        BASE_FETCH_TABLE.hero_boost_r5=HERO_TABLE.hero_r5+ISNULL(ITEM_HELMET_TABLE.hero_r5,0)+ISNULL(ITEM_ARMOR_TABLE.hero_r5,0)+ISNULL(ITEM_BOOTS_TABLE.hero_r5,0)+ISNULL(ITEM_WEAPON_TABLE.hero_r5,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_r5,0)+ISNULL(ITEM_GLOVES_TABLE.hero_r5,0),
        BASE_FETCH_TABLE.hero_boost_build=HERO_TABLE.hero_build+ISNULL(ITEM_HELMET_TABLE.hero_build,0)+ISNULL(ITEM_ARMOR_TABLE.hero_build,0)+ISNULL(ITEM_BOOTS_TABLE.hero_build,0)+ISNULL(ITEM_WEAPON_TABLE.hero_build,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_build,0)+ISNULL(ITEM_GLOVES_TABLE.hero_build,0),
        BASE_FETCH_TABLE.hero_boost_research=HERO_TABLE.hero_research+ISNULL(ITEM_HELMET_TABLE.hero_research,0)+ISNULL(ITEM_ARMOR_TABLE.hero_research,0)+ISNULL(ITEM_BOOTS_TABLE.hero_research,0)+ISNULL(ITEM_WEAPON_TABLE.hero_research,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_research,0)+ISNULL(ITEM_GLOVES_TABLE.hero_research,0),
        BASE_FETCH_TABLE.hero_boost_training=HERO_TABLE.hero_training+ISNULL(ITEM_HELMET_TABLE.hero_training,0)+ISNULL(ITEM_ARMOR_TABLE.hero_training,0)+ISNULL(ITEM_BOOTS_TABLE.hero_training,0)+ISNULL(ITEM_WEAPON_TABLE.hero_training,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_training,0)+ISNULL(ITEM_GLOVES_TABLE.hero_training,0),
        BASE_FETCH_TABLE.hero_boost_march=HERO_TABLE.hero_march+ISNULL(ITEM_HELMET_TABLE.hero_march,0)+ISNULL(ITEM_ARMOR_TABLE.hero_march,0)+ISNULL(ITEM_BOOTS_TABLE.hero_march,0)+ISNULL(ITEM_WEAPON_TABLE.hero_march,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_march,0)+ISNULL(ITEM_GLOVES_TABLE.hero_march,0),
        BASE_FETCH_TABLE.hero_boost_trade=HERO_TABLE.hero_trade+ISNULL(ITEM_HELMET_TABLE.hero_trade,0)+ISNULL(ITEM_ARMOR_TABLE.hero_trade,0)+ISNULL(ITEM_BOOTS_TABLE.hero_trade,0)+ISNULL(ITEM_WEAPON_TABLE.hero_trade,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_trade,0)+ISNULL(ITEM_GLOVES_TABLE.hero_trade,0),
        BASE_FETCH_TABLE.hero_boost_craft=HERO_TABLE.hero_craft+ISNULL(ITEM_HELMET_TABLE.hero_craft,0)+ISNULL(ITEM_ARMOR_TABLE.hero_craft,0)+ISNULL(ITEM_BOOTS_TABLE.hero_craft,0)+ISNULL(ITEM_WEAPON_TABLE.hero_craft,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_craft,0)+ISNULL(ITEM_GLOVES_TABLE.hero_craft,0),
        BASE_FETCH_TABLE.hero_boost_attack=HERO_TABLE.hero_attack+ISNULL(ITEM_HELMET_TABLE.hero_attack,0)+ISNULL(ITEM_ARMOR_TABLE.hero_attack,0)+ISNULL(ITEM_BOOTS_TABLE.hero_attack,0)+ISNULL(ITEM_WEAPON_TABLE.hero_attack,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_attack,0)+ISNULL(ITEM_GLOVES_TABLE.hero_attack,0),
        BASE_FETCH_TABLE.hero_boost_defense=HERO_TABLE.hero_defense+ISNULL(ITEM_HELMET_TABLE.hero_defense,0)+ISNULL(ITEM_ARMOR_TABLE.hero_defense,0)+ISNULL(ITEM_BOOTS_TABLE.hero_defense,0)+ISNULL(ITEM_WEAPON_TABLE.hero_defense,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_defense,0)+ISNULL(ITEM_GLOVES_TABLE.hero_defense,0),
        BASE_FETCH_TABLE.hero_boost_life=HERO_TABLE.hero_life+ISNULL(ITEM_HELMET_TABLE.hero_life,0)+ISNULL(ITEM_ARMOR_TABLE.hero_life,0)+ISNULL(ITEM_BOOTS_TABLE.hero_life,0)+ISNULL(ITEM_WEAPON_TABLE.hero_life,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_life,0)+ISNULL(ITEM_GLOVES_TABLE.hero_life,0),
        BASE_FETCH_TABLE.hero_boost_a_attack=HERO_TABLE.hero_a_attack+ISNULL(ITEM_HELMET_TABLE.hero_a_attack,0)+ISNULL(ITEM_ARMOR_TABLE.hero_a_attack,0)+ISNULL(ITEM_BOOTS_TABLE.hero_a_attack,0)+ISNULL(ITEM_WEAPON_TABLE.hero_a_attack,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_a_attack,0)+ISNULL(ITEM_GLOVES_TABLE.hero_a_attack,0),
        BASE_FETCH_TABLE.hero_boost_b_attack=HERO_TABLE.hero_b_attack+ISNULL(ITEM_HELMET_TABLE.hero_b_attack,0)+ISNULL(ITEM_ARMOR_TABLE.hero_b_attack,0)+ISNULL(ITEM_BOOTS_TABLE.hero_b_attack,0)+ISNULL(ITEM_WEAPON_TABLE.hero_b_attack,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_b_attack,0)+ISNULL(ITEM_GLOVES_TABLE.hero_b_attack,0),
        BASE_FETCH_TABLE.hero_boost_c_attack=HERO_TABLE.hero_c_attack+ISNULL(ITEM_HELMET_TABLE.hero_c_attack,0)+ISNULL(ITEM_ARMOR_TABLE.hero_c_attack,0)+ISNULL(ITEM_BOOTS_TABLE.hero_c_attack,0)+ISNULL(ITEM_WEAPON_TABLE.hero_c_attack,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_c_attack,0)+ISNULL(ITEM_GLOVES_TABLE.hero_c_attack,0),
        BASE_FETCH_TABLE.hero_boost_d_attack=HERO_TABLE.hero_d_attack+ISNULL(ITEM_HELMET_TABLE.hero_d_attack,0)+ISNULL(ITEM_ARMOR_TABLE.hero_d_attack,0)+ISNULL(ITEM_BOOTS_TABLE.hero_d_attack,0)+ISNULL(ITEM_WEAPON_TABLE.hero_d_attack,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_d_attack,0)+ISNULL(ITEM_GLOVES_TABLE.hero_d_attack,0),
        BASE_FETCH_TABLE.hero_boost_heal=HERO_TABLE.hero_heal+ISNULL(ITEM_HELMET_TABLE.hero_heal,0)+ISNULL(ITEM_ARMOR_TABLE.hero_heal,0)+ISNULL(ITEM_BOOTS_TABLE.hero_heal,0)+ISNULL(ITEM_WEAPON_TABLE.hero_heal,0)+ISNULL(ITEM_ACCESSORY_TABLE.hero_heal,0)+ISNULL(ITEM_GLOVES_TABLE.hero_heal,0)
    FROM @base_fetch_table BASE_FETCH_TABLE
    INNER JOIN dbo.hero HERO_TABLE
    ON BASE_FETCH_TABLE.profile_id=HERO_TABLE.profile_id
    LEFT JOIN dbo.item ITEM_HELMET_TABLE
    ON HERO_TABLE.hero_helmet=ITEM_HELMET_TABLE.item_id 
    LEFT JOIN dbo.item ITEM_ARMOR_TABLE
    ON HERO_TABLE.hero_armor=ITEM_ARMOR_TABLE.item_id
    LEFT JOIN dbo.item ITEM_BOOTS_TABLE
    ON HERO_TABLE.hero_boots=ITEM_BOOTS_TABLE.item_id
    LEFT JOIN dbo.item ITEM_WEAPON_TABLE
    ON HERO_TABLE.hero_weapon=ITEM_WEAPON_TABLE.item_id
    LEFT JOIN dbo.item ITEM_ACCESSORY_TABLE
    ON HERO_TABLE.hero_accessory=ITEM_ACCESSORY_TABLE.item_id
    LEFT JOIN dbo.item ITEM_GLOVES_TABLE
    ON HERO_TABLE.hero_gloves=ITEM_GLOVES_TABLE.item_id
    
    --END HERO BOOST
    
    --ITEM BOOST
        
    --Item boost hardcoded to extra 100 percent of base production
    UPDATE BASE_FETCH_TABLE
    SET 
        BASE_FETCH_TABLE.item_boost_r1=
        CASE WHEN BASE_FETCH_TABLE.item_r1_ending<@at_time THEN 0
        ELSE 100 
        END,
        BASE_FETCH_TABLE.item_boost_r2=
        CASE WHEN BASE_FETCH_TABLE.item_r2_ending<@at_time THEN 0
        ELSE 100 
        END,
        BASE_FETCH_TABLE.item_boost_r3=
        CASE WHEN BASE_FETCH_TABLE.item_r3_ending<@at_time THEN 0
        ELSE 100 
        END,
        BASE_FETCH_TABLE.item_boost_r4=
        CASE WHEN BASE_FETCH_TABLE.item_r4_ending<@at_time THEN 0
        ELSE 100 
        END,
        BASE_FETCH_TABLE.item_boost_r5=
        CASE WHEN BASE_FETCH_TABLE.item_r5_ending<@at_time THEN 0
        ELSE 100 
        END,
        BASE_FETCH_TABLE.item_boost_attack=
        CASE WHEN BASE_FETCH_TABLE.item_attack_ending<@at_time THEN 0
        ELSE 100 
        END,
        BASE_FETCH_TABLE.item_boost_defense=
        CASE WHEN BASE_FETCH_TABLE.item_defense_ending<@at_time THEN 0
        ELSE 100
        END

    FROM @base_fetch_table BASE_FETCH_TABLE
    WHERE BASE_FETCH_TABLE.base_id = @base_id
    
    --END ITEM BOOST
    
    --CAPACITY
        
    --capacity r1
    DECLARE @base_capacity_r1  DECIMAL(18,2)= 0, @final_capacity_r1 DECIMAL(18,2)= 0
    SELECT @base_capacity_r1=ISNULL(SUM(BUILDING_LEVEL_TABLE.capacity),0)
    FROM dbo.build BUILD_TABLE
    INNER JOIN dbo.building_level BUILDING_LEVEL_TABLE
    ON BUILD_TABLE.building_id = BUILDING_LEVEL_TABLE.building_id AND
        CASE
        WHEN BUILD_TABLE.build_queue > @at_time
        THEN BUILD_TABLE.building_level-1
        ELSE BUILD_TABLE.building_level
        END
        = BUILDING_LEVEL_TABLE.building_level
    WHERE BUILD_TABLE.base_id=@base_id AND BUILD_TABLE.building_id = 1
    
    SET @final_capacity_r1 = @base_capacity_r1
        
    --capacity r2
    DECLARE @base_capacity_r2  DECIMAL(18,2)= 0, @final_capacity_r2 DECIMAL(18,2)= 0
    SELECT @base_capacity_r2=ISNULL(SUM(BUILDING_LEVEL_TABLE.capacity),0)
    FROM dbo.build BUILD_TABLE
    INNER JOIN dbo.building_level BUILDING_LEVEL_TABLE
    ON BUILD_TABLE.building_id = BUILDING_LEVEL_TABLE.building_id AND
        CASE
        WHEN BUILD_TABLE.build_queue > @at_time
        THEN BUILD_TABLE.building_level-1
        ELSE BUILD_TABLE.building_level
        END
        = BUILDING_LEVEL_TABLE.building_level
    WHERE BUILD_TABLE.base_id=@base_id AND BUILD_TABLE.building_id = 2
    
    SET @final_capacity_r2 = @base_capacity_r2
    
    --capacity r3
    DECLARE @base_capacity_r3  DECIMAL(18,2)= 0, @final_capacity_r3 DECIMAL(18,2)= 0
    SELECT @base_capacity_r3=ISNULL(SUM(BUILDING_LEVEL_TABLE.capacity),0)
    FROM dbo.build BUILD_TABLE
    INNER JOIN dbo.building_level BUILDING_LEVEL_TABLE
    ON BUILD_TABLE.building_id = BUILDING_LEVEL_TABLE.building_id AND
        CASE
        WHEN BUILD_TABLE.build_queue > @at_time
        THEN BUILD_TABLE.building_level-1
        ELSE BUILD_TABLE.building_level
        END
        = BUILDING_LEVEL_TABLE.building_level
    WHERE BUILD_TABLE.base_id=@base_id AND BUILD_TABLE.building_id = 3
    
    SET @final_capacity_r3 = @base_capacity_r3
    
    --capacity r4
    DECLARE @base_capacity_r4  DECIMAL(18,2)= 0, @final_capacity_r4 DECIMAL(18,2)= 0
    SELECT @base_capacity_r4=ISNULL(SUM(BUILDING_LEVEL_TABLE.capacity),0)
    FROM dbo.build BUILD_TABLE
    INNER JOIN dbo.building_level BUILDING_LEVEL_TABLE
    ON BUILD_TABLE.building_id = BUILDING_LEVEL_TABLE.building_id AND
        CASE
        WHEN BUILD_TABLE.build_queue > @at_time
        THEN BUILD_TABLE.building_level-1
        ELSE BUILD_TABLE.building_level
        END
        = BUILDING_LEVEL_TABLE.building_level
    WHERE BUILD_TABLE.base_id=@base_id AND BUILD_TABLE.building_id = 4
    
    SET @final_capacity_r4 = @base_capacity_r4
    
    --capacity r5
    DECLARE @base_capacity_r5  DECIMAL(18,2)= 0, @final_capacity_r5 DECIMAL(18,2)= 0
    SELECT @base_capacity_r5=ISNULL(SUM(BUILDING_LEVEL_TABLE.capacity),0)
    FROM dbo.build BUILD_TABLE
    INNER JOIN dbo.building_level BUILDING_LEVEL_TABLE
    ON BUILD_TABLE.building_id = BUILDING_LEVEL_TABLE.building_id AND
        CASE
        WHEN BUILD_TABLE.build_queue > @at_time
        THEN BUILD_TABLE.building_level-1
        ELSE BUILD_TABLE.building_level
        END
        = BUILDING_LEVEL_TABLE.building_level
    WHERE BUILD_TABLE.base_id=@base_id AND BUILD_TABLE.building_id = 5
    
    SET @final_capacity_r5 = @base_capacity_r5
    
    --END CAPACITY

    --PRODUCTION
    
    --production r1
    
    DECLARE @base_production_r1 float(53) = 0, @base_consumption_r1 float(53) = 0, @production_boost_r1 float(53) = 0, @consumption_boost_r1 float(53) = 0, @final_production_r1 float(53) = 0, @final_consumption_r1 float(53) =0
    
    SELECT @base_production_r1=SUM(BUILDING_LEVEL_TABLE.production)
    FROM dbo.build BUILD_TABLE
    INNER JOIN dbo.building_level BUILDING_LEVEL_TABLE
    ON BUILD_TABLE.building_id = BUILDING_LEVEL_TABLE.building_id AND
        CASE
        WHEN BUILD_TABLE.build_queue > @at_time
        THEN BUILD_TABLE.building_level-1
        ELSE BUILD_TABLE.building_level
        END
        = BUILDING_LEVEL_TABLE.building_level
    WHERE BUILD_TABLE.base_id=@base_id AND BUILD_TABLE.building_id = 1
    
    --HARDCODE consumption per unit is 1 food
    SELECT @base_consumption_r1 = 
    ISNULL(BASE_TABLE.a1, 0) + (1 * CASE WHEN BASE_TABLE.a_queue<@at_time THEN + BASE_TABLE.t_a1 ELSE 0 END) +
    ISNULL(BASE_TABLE.a2, 0) + (1 * CASE WHEN BASE_TABLE.a_queue<@at_time THEN + BASE_TABLE.t_a2 ELSE 0 END) +
    ISNULL(BASE_TABLE.a3, 0) + (1 * CASE WHEN BASE_TABLE.a_queue<@at_time THEN + BASE_TABLE.t_a3 ELSE 0 END) +
    ISNULL(BASE_TABLE.b1, 0) + (1 * CASE WHEN BASE_TABLE.b_queue<@at_time THEN + BASE_TABLE.t_b1 ELSE 0 END) + 
    ISNULL(BASE_TABLE.b2, 0) + (1 * CASE WHEN BASE_TABLE.b_queue<@at_time THEN + BASE_TABLE.t_b2 ELSE 0 END) +
    ISNULL(BASE_TABLE.b3, 0) + (1 * CASE WHEN BASE_TABLE.b_queue<@at_time THEN + BASE_TABLE.t_b3 ELSE 0 END) +
    ISNULL(BASE_TABLE.c1, 0) + (1 * CASE WHEN BASE_TABLE.c_queue<@at_time THEN + BASE_TABLE.t_c1 ELSE 0 END) +
    ISNULL(BASE_TABLE.c2, 0) + (1 * CASE WHEN BASE_TABLE.c_queue<@at_time THEN + BASE_TABLE.t_c2 ELSE 0 END) +
    ISNULL(BASE_TABLE.c3, 0) + (1 * CASE WHEN BASE_TABLE.c_queue<@at_time THEN + BASE_TABLE.t_c3 ELSE 0 END) +
    ISNULL(BASE_TABLE.d1, 0) + (1 * CASE WHEN BASE_TABLE.d_queue<@at_time THEN + BASE_TABLE.t_d1 ELSE 0 END) +
    ISNULL(BASE_TABLE.d2, 0) + (1 * CASE WHEN BASE_TABLE.d_queue<@at_time THEN + BASE_TABLE.t_d2 ELSE 0 END) +
    ISNULL(BASE_TABLE.d3, 0) + (1 * CASE WHEN BASE_TABLE.d_queue<@at_time THEN + BASE_TABLE.t_d3 ELSE 0 END)
    FROM @base_fetch_table BASE_TABLE      
    WHERE BASE_TABLE.base_id = @base_id
    
    SELECT @production_boost_r1= BASE_FETCH_TABLE.research_r1 + BASE_FETCH_TABLE.hero_boost_r1 + BASE_FETCH_TABLE.item_boost_r1
    FROM @base_fetch_table BASE_FETCH_TABLE
    WHERE BASE_FETCH_TABLE.base_id = @base_id
    
    SET @final_consumption_r1 = @base_consumption_r1*(1+(@consumption_boost_r1/100))
    SET @final_production_r1 = (@base_production_r1*(1+(@production_boost_r1/100))-@final_consumption_r1)

    --production r2
    
    DECLARE @base_production_r2 float(53) = 0, @base_consumption_r2 float(53) = 0, @production_boost_r2 float(53) = 0, @consumption_boost_r2 float(53) = 0, @final_production_r2 float(53) = 0
    
    SELECT @base_production_r2=SUM(BUILDING_LEVEL_TABLE.production)
    FROM dbo.build BUILD_TABLE
    INNER JOIN dbo.building_level BUILDING_LEVEL_TABLE
    ON BUILD_TABLE.building_id = BUILDING_LEVEL_TABLE.building_id AND
        CASE
        WHEN BUILD_TABLE.build_queue > @at_time
        THEN BUILD_TABLE.building_level-1
        ELSE BUILD_TABLE.building_level
        END
        = BUILDING_LEVEL_TABLE.building_level
    WHERE BUILD_TABLE.base_id=@base_id AND BUILD_TABLE.building_id = 2
    
    SELECT @production_boost_r2= BASE_FETCH_TABLE.research_r2 + BASE_FETCH_TABLE.hero_boost_r2 + BASE_FETCH_TABLE.item_boost_r2
    FROM @base_fetch_table BASE_FETCH_TABLE
    WHERE BASE_FETCH_TABLE.base_id = @base_id
    
    SET @final_production_r2 = (@base_production_r2*(1+(@production_boost_r2/100))-@base_consumption_r2*(1+(@consumption_boost_r2/100)))
  
    --production r3
    
    DECLARE @base_production_r3 float(53) = 0, @base_consumption_r3 float(53) = 0, @production_boost_r3 float(53) = 0, @consumption_boost_r3 float(53) = 0, @final_production_r3 float(53) = 0
    
    SELECT @base_production_r3=SUM(BUILDING_LEVEL_TABLE.production)
    FROM dbo.build BUILD_TABLE
    INNER JOIN dbo.building_level BUILDING_LEVEL_TABLE
    ON BUILD_TABLE.building_id = BUILDING_LEVEL_TABLE.building_id AND
        CASE
        WHEN BUILD_TABLE.build_queue > @at_time
        THEN BUILD_TABLE.building_level-1
        ELSE BUILD_TABLE.building_level
        END
        = BUILDING_LEVEL_TABLE.building_level
    WHERE BUILD_TABLE.base_id=@base_id AND BUILD_TABLE.building_id = 3
    
    SELECT @production_boost_r3= BASE_FETCH_TABLE.research_r3 + BASE_FETCH_TABLE.hero_boost_r3 + BASE_FETCH_TABLE.item_boost_r3
    FROM @base_fetch_table BASE_FETCH_TABLE
    WHERE BASE_FETCH_TABLE.base_id = @base_id
    
    SET @final_production_r3 = (@base_production_r3*(1+(@production_boost_r3/100))-@base_consumption_r3*(1+(@consumption_boost_r3/100)))
  
    --production r4
    
    DECLARE @base_production_r4 float(53) = 0, @base_consumption_r4 float(53) = 0, @production_boost_r4 float(53) = 0, @consumption_boost_r4 float(53) = 0, @final_production_r4 float(53) = 0
    
    SELECT @base_production_r4=SUM(BUILDING_LEVEL_TABLE.production)
    FROM dbo.build BUILD_TABLE
    INNER JOIN dbo.building_level BUILDING_LEVEL_TABLE
    ON BUILD_TABLE.building_id = BUILDING_LEVEL_TABLE.building_id AND
        CASE
        WHEN BUILD_TABLE.build_queue > @at_time
        THEN BUILD_TABLE.building_level-1
        ELSE BUILD_TABLE.building_level
        END
        = BUILDING_LEVEL_TABLE.building_level
    WHERE BUILD_TABLE.base_id=@base_id AND BUILD_TABLE.building_id = 4
    
    SELECT @production_boost_r4= BASE_FETCH_TABLE.research_r4 + BASE_FETCH_TABLE.hero_boost_r4 + BASE_FETCH_TABLE.item_boost_r4
    FROM @base_fetch_table BASE_FETCH_TABLE
    WHERE BASE_FETCH_TABLE.base_id = @base_id
    
    SET @final_production_r4 = (@base_production_r4*(1+(@production_boost_r4/100))-@base_consumption_r4*(1+(@consumption_boost_r4/100)))
  
    --production r5
    
    DECLARE @base_production_r5 float(53) = 0, @base_consumption_r5 float(53) = 0, @production_boost_r5 float(53) = 0, @consumption_boost_r5 float(53) = 0, @final_production_r5 float(53) = 0
    
    SELECT @base_production_r5=SUM(BUILDING_LEVEL_TABLE.production)
    FROM dbo.build BUILD_TABLE
    INNER JOIN dbo.building_level BUILDING_LEVEL_TABLE
    ON BUILD_TABLE.building_id = BUILDING_LEVEL_TABLE.building_id AND
        CASE
        WHEN BUILD_TABLE.build_queue > @at_time
        THEN BUILD_TABLE.building_level-1
        ELSE BUILD_TABLE.building_level
        END
        = BUILDING_LEVEL_TABLE.building_level
    WHERE BUILD_TABLE.base_id=@base_id AND BUILD_TABLE.building_id = 5    
    
    SELECT @production_boost_r5= BASE_FETCH_TABLE.research_r5 + BASE_FETCH_TABLE.hero_boost_r5 + BASE_FETCH_TABLE.item_boost_r5
    FROM @base_fetch_table BASE_FETCH_TABLE
    WHERE BASE_FETCH_TABLE.base_id = @base_id
    
    SET @final_production_r5 = (@base_production_r5*(1+(@production_boost_r5/100))-@base_consumption_r5*(1+(@consumption_boost_r5/100)))
    
    --END PRODUCTION
   
    --GENERATION 
	SET @r1_generated = @hours_passed*ISNULL(@final_production_r1,0)
	SET @r2_generated = @hours_passed*ISNULL(@final_production_r2,0)
	SET @r3_generated = @hours_passed*ISNULL(@final_production_r3,0)
	SET @r4_generated = @hours_passed*ISNULL(@final_production_r4,0)
	SET @r5_generated = @hours_passed*ISNULL(@final_production_r5,0)
	
	--Negatives
	
	DECLARE @base_id_AS_STRING varchar(30) = CAST(@base_id AS VARCHAR);
	RAISERROR ('@base_id : %s', 10,-1, @base_id_AS_STRING) with nowait;
	DECLARE @from_date_AS_STRING varchar(30) = CAST(@from_date AS VARCHAR);
	RAISERROR ('@from_date : %s', 10,-1, @from_date_AS_STRING) with nowait;
	DECLARE @to_date_AS_STRING varchar(30) = CAST(@to_date AS VARCHAR);
	RAISERROR ('@to_date : %s', 10,-1, @to_date_AS_STRING) with nowait;
	
	IF(@from_date>@to_date)
	BEGIN
		RAISERROR ('@ERROR: from_date is more after to_date', 5,-1) with nowait;
	END
	
	DECLARE @r1_generated_AS_STRING varchar(30) = CAST(@r1_generated AS VARCHAR);
	RAISERROR ('@r1_generated : %s', 10,-1, @r1_generated_AS_STRING) with nowait;
	DECLARE @r2_generated_AS_STRING varchar(30) = CAST(@r2_generated AS VARCHAR);
	RAISERROR ('@r2_generated : %s', 10,-1, @r2_generated_AS_STRING) with nowait;
	DECLARE @r3_generated_AS_STRING varchar(30) = CAST(@r3_generated AS VARCHAR);
	RAISERROR ('@r3_generated : %s', 10,-1, @r3_generated_AS_STRING) with nowait;
	DECLARE @r4_generated_AS_STRING varchar(30) = CAST(@r4_generated AS VARCHAR);
	RAISERROR ('@r4_generated : %s', 10,-1, @r4_generated_AS_STRING) with nowait;
	DECLARE @r5_generated_AS_STRING varchar(30) = CAST(@r5_generated AS VARCHAR);
	RAISERROR ('@r5_generated : %s', 10,-1, @r5_generated_AS_STRING) with nowait;
    
    DECLARE @new_r1 DECIMAL(18,2),@new_r2 DECIMAL(18,2),@new_r3 DECIMAL(18,2),@new_r4 DECIMAL(18,2),@new_r5 DECIMAL(18,2)
    
    SELECT @new_r1=r1,@new_r2=r2,@new_r3=r3,@new_r4=r4,@new_r5=r5
    FROM base 
    WHERE base_id=@base_id 
    
    DECLARE @available_space_r1 DECIMAL(18,2),@available_space_r2 DECIMAL(18,2),@available_space_r3 DECIMAL(18,2),@available_space_r4 DECIMAL(18,2),@available_space_r5 DECIMAL(18,2)
    
    SET @available_space_r1 = @final_capacity_r1-@new_r1;
    SET @available_space_r2 = @final_capacity_r2-@new_r2;
    SET @available_space_r3 = @final_capacity_r3-@new_r3;
    SET @available_space_r4 = @final_capacity_r4-@new_r4;
    SET @available_space_r5 = @final_capacity_r5-@new_r5;
    
    --CHECK AVAILABLE SPACE
    IF(@available_space_r1<0)
    BEGIN
        SET @available_space_r1=0;
    END
    IF(@available_space_r2<0)
    BEGIN
        SET @available_space_r2=0;
    END
    IF(@available_space_r3<0)
    BEGIN
        SET @available_space_r3=0;
    END
    IF(@available_space_r4<0)
    BEGIN
        SET @available_space_r4=0;
    END
    IF(@available_space_r5<0)
    BEGIN
        SET @available_space_r5=0;
    END
    
    DECLARE @available_space_r1_AS_STRING varchar(30) = CAST(@available_space_r1 AS VARCHAR);
	RAISERROR ('@available_space_r1 : %s', 10,-1, @available_space_r1_AS_STRING) with nowait;
    DECLARE @available_space_r2_AS_STRING varchar(30) = CAST(@available_space_r2 AS VARCHAR);
	RAISERROR ('@available_space_r2 : %s', 10,-1, @available_space_r2_AS_STRING) with nowait;
    DECLARE @available_space_r3_AS_STRING varchar(30) = CAST(@available_space_r3 AS VARCHAR);
	RAISERROR ('@available_space_r3 : %s', 10,-1, @available_space_r3_AS_STRING) with nowait;
    DECLARE @available_space_r4_AS_STRING varchar(30) = CAST(@available_space_r4 AS VARCHAR);
	RAISERROR ('@available_space_r4 : %s', 10,-1, @available_space_r4_AS_STRING) with nowait;
    DECLARE @available_space_r5_AS_STRING varchar(30) = CAST(@available_space_r5 AS VARCHAR);
	RAISERROR ('@available_space_r5 : %s', 10,-1, @available_space_r5_AS_STRING) with nowait;
    
    --ADD UP TO AVAILABLE SPACE
    IF(@available_space_r1>@r1_generated)
    BEGIN
        SET @new_r1=@new_r1+@r1_generated
    END
    ELSE
    BEGIN
        SET @new_r1=@new_r1+@available_space_r1
    END
    
    IF(@available_space_r2>@r2_generated)
    BEGIN
        SET @new_r2=@new_r2+@r2_generated
    END
    ELSE
    BEGIN
        SET @new_r2=@new_r2+@available_space_r2
    END
    
    IF(@available_space_r3>@r3_generated)
    BEGIN
        SET @new_r3=@new_r3+@r3_generated
    END
    ELSE
    BEGIN
        SET @new_r3=@new_r3+@available_space_r3
    END
    
    IF(@available_space_r4>@r4_generated)
    BEGIN
        SET @new_r4=@new_r4+@r4_generated
    END
    ELSE
    BEGIN
        SET @new_r4=@new_r4+@available_space_r4
    END
    
    IF(@available_space_r5>@r5_generated)
    BEGIN
        SET @new_r5=@new_r5+@r5_generated
    END
    ELSE
    BEGIN
        SET @new_r5=@new_r5+@available_space_r5
    END
    
    --CHECK NEGATIVE VALUES
    IF(@new_r1<0)
    BEGIN
        SET @new_r1=0
    END
    IF(@new_r2<0)
    BEGIN
        SET @new_r2=0
    END
    IF(@new_r3<0)
    BEGIN
        SET @new_r3=0
    END
    IF(@new_r4<0)
    BEGIN
        SET @new_r4=0
    END
    IF(@new_r5<0)
    BEGIN
        SET @new_r5=0
    END
    
	UPDATE base 
	SET r1= @new_r1,r2= @new_r2,r3= @new_r3,r4= @new_r4,r5= @new_r5,last_process=@to_date
	WHERE base_id=@base_id 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProfileFace]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ProfileFace]
(@profile_uid nvarchar(50), @face_type int, @r int out)
AS
BEGIN

DECLARE @profile_id int, @item_quantity int

SET @r = -1;
SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid), 0);
SET @item_quantity = ISNULL((SELECT quantity FROM itemprofile WHERE item_id=704 AND profile_id=@profile_id), 0);

IF @item_quantity > 0
BEGIN

UPDATE [profile] SET profile_face=@face_type WHERE profile_id=@profile_id;

UPDATE itemprofile SET quantity=quantity-1 WHERE item_id=704 AND profile_id=@profile_id;

SET @r = 1;

END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProfileNew]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ProfileNew]
(@profile_uid nvarchar(50), @r int out)
AS
BEGIN

    DECLARE @kingdom_count int, @profile_count int, @profile_face int, @profile_id int, @str_profile_id varchar(12)

    SET @r = -1;
    SET @kingdom_count = (SELECT COUNT(*) FROM tapfantasy.dbo.profile WHERE [uid]=@profile_uid);

    SET @profile_count = (SELECT COUNT(*) FROM profile WHERE [uid]=@profile_uid);

    --Check if id already exist on main db
    IF ((@kingdom_count > 0) AND (@profile_count = 0))
    BEGIN

        SET @profile_face = dbo.fx_generateRandomNumber(newID(), 1, 470);
        INSERT INTO profile ([uid], date_found, profile_name, profile_face, currency_second, tutorial_on) VALUES (@profile_uid, GETUTCDATE(), 'Player', @profile_face, 100, 1);

        SELECT @profile_id = SCOPE_IDENTITY();

        SET @str_profile_id = CAST(@profile_id AS varchar(12));

        INSERT INTO hero (profile_id, hero_name) VALUES (@profile_id, 'Hero '+@str_profile_id );
        DECLARE @base_id int
        DECLARE @village_id int, @map_x int, @map_y int

        SELECT TOP 1 @village_id=village_id, @map_x=map_x, @map_y=map_y FROM village WHERE (village_id % 2) = 0;
        DELETE village WHERE village_id=@village_id;

        INSERT INTO base (profile_id, base_name, map_x, map_y, r1, r2, r3, r4, r5, a1, spy) 
        VALUES (@profile_id, 'City '+@str_profile_id, @map_x, @map_y, 10000, 10000, 10000, 10000, 10000, 0, 1);
        
        SELECT @base_id = base_id
        FROM base 
        WHERE profile_id = @profile_id
        
        INSERT INTO build VALUES (@base_id, 207, 1, 1,GETUTCDATE());
        INSERT INTO build VALUES (@base_id, 211, 2, 1,GETUTCDATE());
        INSERT INTO build VALUES (@base_id, 213, 3, 1,GETUTCDATE());
        INSERT INTO build VALUES (@base_id, 212, 4, 1,GETUTCDATE());
        INSERT INTO build VALUES (@base_id, 301, 5, 1,GETUTCDATE());
        
        UPDATE profile SET profile_name='Player '+@str_profile_id WHERE profile_id=@profile_id;

        --Free items for first timer
        DECLARE @free_item_id int =0;

        SET  @free_item_id = 701;
        IF NOT EXISTS(SELECT * FROM itemprofile WHERE profile_id=@profile_id AND item_id=@free_item_id)
        BEGIN
            INSERT INTO itemprofile VALUES (@profile_id, @free_item_id, 1);
        END
        ELSE
        BEGIN
            UPDATE itemprofile set quantity=quantity+1 WHERE item_id=@free_item_id AND profile_id=@profile_id;
        END

        SET  @free_item_id = 702;
        IF NOT EXISTS(SELECT * FROM itemprofile WHERE profile_id=@profile_id AND item_id=@free_item_id)
        BEGIN
            INSERT INTO itemprofile VALUES (@profile_id, @free_item_id, 1);
        END
        ELSE
        BEGIN
            UPDATE itemprofile set quantity=quantity+1 WHERE item_id=@free_item_id AND profile_id=@profile_id;
        END

        SET  @free_item_id = 703;
        IF NOT EXISTS(SELECT * FROM itemprofile WHERE profile_id=@profile_id AND item_id=@free_item_id)
        BEGIN
            INSERT INTO itemprofile VALUES (@profile_id, @free_item_id, 1);
        END
        ELSE
        BEGIN
            UPDATE itemprofile set quantity=quantity+1 WHERE item_id=@free_item_id AND profile_id=@profile_id;
        END

        SET  @free_item_id = 704;
        IF NOT EXISTS(SELECT * FROM itemprofile WHERE profile_id=@profile_id AND item_id=@free_item_id)
        BEGIN
            INSERT INTO itemprofile VALUES (@profile_id, @free_item_id, 1);
        END
        ELSE
        BEGIN
            UPDATE itemprofile set quantity=quantity+1 WHERE item_id=@free_item_id AND profile_id=@profile_id; 
        END

        SET  @free_item_id = 705;
        IF NOT EXISTS(SELECT * FROM itemprofile WHERE profile_id=@profile_id AND item_id=@free_item_id)
        BEGIN
            INSERT INTO itemprofile VALUES (@profile_id, @free_item_id, 1);
        END
        ELSE
        BEGIN
            UPDATE itemprofile set quantity=quantity+1 WHERE item_id=@free_item_id AND profile_id=@profile_id; 
        END

        SET  @free_item_id = 709;
        IF NOT EXISTS(SELECT * FROM itemprofile WHERE profile_id=@profile_id AND item_id=@free_item_id)
        BEGIN
            INSERT INTO itemprofile VALUES (@profile_id, @free_item_id, 1);
        END
        ELSE
        BEGIN
            UPDATE itemprofile set quantity=quantity+1 WHERE item_id=@free_item_id AND profile_id=@profile_id; 
        END
        
        SET  @free_item_id = 717;
        IF NOT EXISTS(SELECT * FROM itemprofile WHERE profile_id=@profile_id AND item_id=@free_item_id)
        BEGIN
            INSERT INTO itemprofile VALUES (@profile_id, @free_item_id, 1);
        END
        ELSE
        BEGIN
            UPDATE itemprofile set quantity=quantity+1 WHERE item_id=@free_item_id AND profile_id=@profile_id; 
        END
        
        SET  @free_item_id = 801;
        IF NOT EXISTS(SELECT * FROM itemprofile WHERE profile_id=@profile_id AND item_id=@free_item_id)
        BEGIN
            INSERT INTO itemprofile VALUES (@profile_id, @free_item_id, 3);
        END
        ELSE
        BEGIN
            UPDATE itemprofile set quantity=quantity+2 WHERE item_id=@free_item_id AND profile_id=@profile_id; 
        END

        SET  @free_item_id = 802;
        IF NOT EXISTS(SELECT * FROM itemprofile WHERE profile_id=@profile_id AND item_id=@free_item_id)
        BEGIN
            INSERT INTO itemprofile VALUES (@profile_id, @free_item_id, 5);
        END
        ELSE
        BEGIN
            UPDATE itemprofile set quantity=quantity+3 WHERE item_id=@free_item_id AND profile_id=@profile_id;
        END

        SET  @free_item_id = 803;
        IF NOT EXISTS(SELECT * FROM itemprofile WHERE profile_id=@profile_id AND item_id=@free_item_id)
        BEGIN
            INSERT INTO itemprofile VALUES (@profile_id, @free_item_id, 1);
        END
        ELSE
        BEGIN
            UPDATE itemprofile set quantity=quantity+1 WHERE item_id=@free_item_id AND profile_id=@profile_id;
        END

        SET  @free_item_id = 1101;
        IF NOT EXISTS(SELECT * FROM itemprofile WHERE profile_id=@profile_id AND item_id=@free_item_id)
        BEGIN
            INSERT INTO itemprofile VALUES (@profile_id, @free_item_id, 1);
        END
        ELSE
        BEGIN
            UPDATE itemprofile set quantity=quantity+1 WHERE item_id=@free_item_id AND profile_id=@profile_id;
        END

        SET  @free_item_id = 1201;
        IF NOT EXISTS(SELECT * FROM itemprofile WHERE profile_id=@profile_id AND item_id=@free_item_id)
        BEGIN
            INSERT INTO itemprofile VALUES (@profile_id, @free_item_id, 1);
        END
        ELSE
        BEGIN
            UPDATE itemprofile set quantity=quantity+1 WHERE item_id=@free_item_id AND profile_id=@profile_id;
        END

        SET  @free_item_id = 1301;
        IF NOT EXISTS(SELECT * FROM itemprofile WHERE profile_id=@profile_id AND item_id=@free_item_id)
        BEGIN
            INSERT INTO itemprofile VALUES (@profile_id, @free_item_id, 1);
        END
        ELSE
        BEGIN
            UPDATE itemprofile set quantity=quantity+1 WHERE item_id=@free_item_id AND profile_id=@profile_id;
        END

        SET  @free_item_id = 1401;
        IF NOT EXISTS(SELECT * FROM itemprofile WHERE profile_id=@profile_id AND item_id=@free_item_id)
        BEGIN
            INSERT INTO itemprofile VALUES (@profile_id, @free_item_id, 1);
        END
        ELSE
        BEGIN
            UPDATE itemprofile set quantity=quantity+1 WHERE item_id=@free_item_id AND profile_id=@profile_id;
        END

        SET  @free_item_id = 1501;
        IF NOT EXISTS(SELECT * FROM itemprofile WHERE profile_id=@profile_id AND item_id=@free_item_id)
        BEGIN
            INSERT INTO itemprofile VALUES (@profile_id, @free_item_id, 1);
        END
        ELSE
        
        
        BEGIN
            UPDATE itemprofile set quantity=quantity+1 WHERE item_id=@free_item_id AND profile_id=@profile_id; 
        END
        
        --Welcome Mail

        DECLARE @WorldName NVARCHAR(MAX) = ''

        DECLARE @curr_world NVARCHAR(MAX) = ''
        SELECT @curr_world = world_id
        FROM [tapfantasy].[dbo].[profile]
        WHERE uid = @profile_uid


        SELECT @WorldName = world_name
        FROM [tapfantasy].[dbo].[world]
        WHERE world_id = @curr_world

        DECLARE @message NVARCHAR(MAX) = CONCAT ( 'Welcome to the', @WorldName)

        DECLARE @mail_id int;
        
        INSERT INTO mail VALUES (GETUTCDATE(), N'', @message , 0, -1, @profile_id, 'Player '+@str_profile_id, 0, 'System', 1, 0, 0);

        SELECT @mail_id = SCOPE_IDENTITY();
        INSERT INTO dbo.mailprofile VALUES (@mail_id, @profile_id);
        
        SET @r = 1;

    END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_RecruitSpy]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_RecruitSpy]
(@profile_uid nvarchar(50), @base_id int, @r int out)
AS
BEGIN

exec usp_BaseUpdate @base_id

DECLARE @profile_id int, @h_time int

SET @h_time = 300;

SET @r = -1;
SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid), 0);

IF @profile_id > 0
BEGIN

UPDATE base SET spy=spy+1, r5=r5-500, spy_time=@h_time WHERE base_id=@base_id AND r5>0 AND spy_queue<GETUTCDATE();
SET @r = 1;

END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_RegisterSale]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_RegisterSale]
(@profile_uid nvarchar(50), @sale_id int, @r int out)
AS
BEGIN

DECLARE @profile_id int

SET @r = -1;
SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM profile WHERE [uid]=@profile_uid), 0);

IF @profile_id > 0
BEGIN

DECLARE @sale_sql1 nvarchar(MAX), @sale_sql2 nvarchar(MAX)

SET @sale_sql1 = (SELECT sale_sql1 FROM sales WHERE sale_id=@sale_id);
SET @sale_sql2 = (SELECT sale_sql2 FROM sales WHERE sale_id=@sale_id);

IF (@sale_sql1 IS NOT NULL AND @sale_sql1 != '')
BEGIN
	SET @sale_sql1 = @sale_sql1 + CAST(@profile_id AS varchar(12));
	EXECUTE (@sale_sql1);
END

IF (@sale_sql2 IS NOT NULL AND @sale_sql2 != '')
BEGIN
	SET @sale_sql2 = @sale_sql2 + CAST(@profile_id AS varchar(12));
	EXECUTE (@sale_sql2);
END

UPDATE sales SET sale_sold=sale_sold+1 WHERE sale_id=@sale_id;

SET @r = 1;

END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_ReinforcementsReturn]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ReinforcementsReturn]
(@profile_uid nvarchar(50), @base_id int, @row_id int, @r int out)
AS
BEGIN

DECLARE @profile_id int, @march_time int, @a1 int, @b1 int, @c1 int, @d1 int, @a2 int, @b2 int, @c2 int, @d2 int, @a3 int, @b3 int, @c3 int, @d3 int
/*
DECLARE @boost DECIMAL(18,2)=0
SET @boost = ISNULL((SELECT boost_march FROM View_Boost WHERE base_id=@base_id), 0);
SET @boost = (@boost / 100.0)+1;
IF @boost > 0
BEGIN
SET @march_time = @march_time/@boost
END
*/
SET @r = -1;
SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid), 0);
SET @march_time = ISNULL((SELECT march_time FROM reinforce WHERE from_base_id=@base_id AND from_profile_id=@profile_id AND reinforce_id=@row_id), 0);
SET @a1 = ISNULL((SELECT a1 FROM reinforce WHERE from_base_id=@base_id AND from_profile_id=@profile_id AND reinforce_id=@row_id), 0);
SET @a2 = ISNULL((SELECT a2 FROM reinforce WHERE from_base_id=@base_id AND from_profile_id=@profile_id AND reinforce_id=@row_id), 0);
SET @a3 = ISNULL((SELECT a3 FROM reinforce WHERE from_base_id=@base_id AND from_profile_id=@profile_id AND reinforce_id=@row_id), 0);
SET @b1 = ISNULL((SELECT b1 FROM reinforce WHERE from_base_id=@base_id AND from_profile_id=@profile_id AND reinforce_id=@row_id), 0);
SET @b2 = ISNULL((SELECT b2 FROM reinforce WHERE from_base_id=@base_id AND from_profile_id=@profile_id AND reinforce_id=@row_id), 0);
SET @b3 = ISNULL((SELECT b3 FROM reinforce WHERE from_base_id=@base_id AND from_profile_id=@profile_id AND reinforce_id=@row_id), 0);
SET @c1 = ISNULL((SELECT c1 FROM reinforce WHERE from_base_id=@base_id AND from_profile_id=@profile_id AND reinforce_id=@row_id), 0);
SET @c2 = ISNULL((SELECT c2 FROM reinforce WHERE from_base_id=@base_id AND from_profile_id=@profile_id AND reinforce_id=@row_id), 0);
SET @c3 = ISNULL((SELECT c3 FROM reinforce WHERE from_base_id=@base_id AND from_profile_id=@profile_id AND reinforce_id=@row_id), 0);
SET @d1 = ISNULL((SELECT d1 FROM reinforce WHERE from_base_id=@base_id AND from_profile_id=@profile_id AND reinforce_id=@row_id), 0);
SET @d2 = ISNULL((SELECT d2 FROM reinforce WHERE from_base_id=@base_id AND from_profile_id=@profile_id AND reinforce_id=@row_id), 0);
SET @d3 = ISNULL((SELECT d3 FROM reinforce WHERE from_base_id=@base_id AND from_profile_id=@profile_id AND reinforce_id=@row_id), 0);

IF @march_time > 0
BEGIN

UPDATE reinforce SET is_return=1, date_sent=GETUTCDATE(), date_arrive=DATEADD(ss, @march_time, GETUTCDATE()) WHERE from_base_id=@base_id AND from_profile_id=@profile_id AND reinforce_id=@row_id;

UPDATE base SET r_a1=r_a1-@a1, r_a2=r_a2-@a2, r_a3=r_a3-@a3, r_b1=r_b1-@b1, r_b2=r_b2-@b2, r_b3=r_b3-@b3, r_c1=r_c1-@c1, r_c2=r_c2-@c2, r_c3=r_c3-@c3, r_d1=r_d1-@d1, r_d2=r_d2-@d2, r_d3=r_d3-@d3, 
rt_a1=@a1, rt_a2=@a2, rt_a3=@a3, rt_b1=@b1, rt_b2=@b2, rt_b3=@b3, rt_c1=@c1, rt_c2=@c2, rt_c3=@c3, rt_d1=@d1, rt_d2=@d2, rt_d3=@d3, 
reinforce_action=2, reinforce_id=@row_id, reinforce_time=@march_time, reinforce_queue=DATEADD(ss, @march_time, GETUTCDATE()) WHERE base_id=@base_id;

SET @r = 1;

END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_RenameBase]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_RenameBase]
(@profile_uid nvarchar(50), @text nvarchar(50), @base_id int, @r int out)
AS
BEGIN

DECLARE @profile_id int

SET @r = -1;
SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid), 0);

UPDATE base set base_name=@text WHERE profile_id=@profile_id AND base_id=@base_id;

UPDATE itemprofile set quantity=quantity-1 WHERE item_id=702 AND profile_id=@profile_id;

SET @r = 1;

exec usp_UpdateRegions @base_id

END
GO
/****** Object:  StoredProcedure [dbo].[usp_RenameHero]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_RenameHero]
(@profile_uid nvarchar(50), @text nvarchar(50), @r int out)
AS
BEGIN

DECLARE @profile_id int

SET @r = -1;
SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid), 0);

UPDATE hero set hero_name=@text WHERE hero_status=1 AND profile_id=@profile_id;

UPDATE itemprofile set quantity=quantity-1 WHERE item_id=703 AND profile_id=@profile_id;

SET @r = 1;

END
GO
/****** Object:  StoredProcedure [dbo].[usp_RenameProfile]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_RenameProfile]
(@profile_uid nvarchar(50), @text nvarchar(50), @r int out)
AS
BEGIN

DECLARE @profile_id int

SET @r = -1;
SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid), 0);

IF @profile_id > 0
BEGIN
UPDATE [profile] set profile_name=@text WHERE [uid]=@profile_uid;
UPDATE itemprofile set quantity=quantity-1 WHERE item_id=701 AND profile_id=@profile_id;
SET @r = 1;
END

    DECLARE @base_id int
    DECLARE base_table_cursor CURSOR
    FOR SELECT base_id
    FROM base 
    WHERE profile_id = @profile_id
    OPEN base_table_cursor
    FETCH NEXT FROM base_table_cursor
    INTO @base_id
    WHILE @@FETCH_STATUS = 0
		BEGIN
            exec usp_UpdateRegions @base_id
            FETCH NEXT FROM base_table_cursor
            INTO @base_id
        END
        
    CLOSE base_table_cursor
    DEALLOCATE base_table_cursor
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ResearchTech]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ResearchTech]
(@profile_uid nvarchar(50), @base_id int, @research_id int, @r int out, @quest_done int out)
AS
BEGIN

exec usp_BaseUpdate @base_id

DECLARE @research_column varchar(1000), @profile_id int, @queue_r datetime, @r_level int, @r_production int, @r_time int, @r_r1 int, @r_r2 int, @r_r3 int, @r_r4 int, @r_r5 int, @r_hero_xp int, @r_power int, @r_boost float, @view_boost float

SET @r = -1;
SET @quest_done = 0;
SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid), 0);

SET @queue_r = (SELECT research_queue FROM base WHERE base_id=@base_id);

SET @research_column = (SELECT base_column FROM research WHERE research_id=@research_id);

SET @r_production = ISNULL((SELECT production FROM research WHERE research_id=@research_id), 0);

DECLARE @sqlText nvarchar(1000);
SET @sqlText = N'SET @out_param = ISNULL((SELECT ' + @research_column + ' FROM base WHERE base_id=' + CONVERT(varchar(10),@base_id) + '), 0)';
EXEC sp_executesql @sqlText, N'@out_param int OUTPUT', @out_param=@r_level OUTPUT;

SELECT @r_level;

SET @r_level = @r_level / @r_production;

SET @r_level = @r_level + 1;

SET @r_production = @r_production*@r_level;

DECLARE @geo_p int
SET @geo_p = POWER(2,@r_level-1);

SET @r_time = ISNULL((SELECT [time] FROM research WHERE research_id=@research_id), 0)*@geo_p;

DECLARE @t AS BaseFetchTableType

Insert Into @t Exec dbo.usp_BaseFetch @base_id, @profile_id

SET @view_boost = ISNULL((SELECT boost_research FROM @t WHERE base_id=@base_id), 0);

SET @r_boost = (@view_boost / 100.0) + 1;

IF @r_boost >= 1
BEGIN
SET @r_time = @r_time/@r_boost
END

SET @r_r1 = ISNULL((SELECT r1 FROM research WHERE research_id=@research_id), 0)*@geo_p;
SET @r_r2 = ISNULL((SELECT r2 FROM research WHERE research_id=@research_id), 0)*@geo_p;
SET @r_r3 = ISNULL((SELECT r3 FROM research WHERE research_id=@research_id), 0)*@geo_p;
SET @r_r4 = ISNULL((SELECT r4 FROM research WHERE research_id=@research_id), 0)*@geo_p;
SET @r_r5 = ISNULL((SELECT r5 FROM research WHERE research_id=@research_id), 0)*@geo_p;
SET @r_hero_xp = ISNULL((SELECT hero_xp FROM research WHERE research_id=@research_id), 0)*@r_level;
SET @r_power = ISNULL((SELECT [power] FROM research WHERE research_id=@research_id), 0)*@geo_p;

IF @profile_id > 0 AND @queue_r < GETUTCDATE()
BEGIN

UPDATE base SET r1=r1-@r_r1, r2=r2-@r_r2, r3=r3-@r_r3, r4=r4-@r_r4, r5=r5-@r_r5, research_id=@research_id, research_time=@r_time, research_queue=DATEADD(ss, @r_time, GETUTCDATE()) WHERE base_id=@base_id;

SET @sqlText = N'UPDATE base SET ' + @research_column + '=' + CONVERT(varchar(10),@r_production) + ' WHERE base_id=' + CONVERT(varchar(10),@base_id) + ' AND profile_id=' + CONVERT(varchar(10),@profile_id);
EXEC (@sqlText);

UPDATE [profile] SET xp=xp+@r_power, xp_gain=xp_gain+@r_power, xp_gain_a=xp_gain_a+@r_power WHERE profile_id=@profile_id;

UPDATE hero SET hero_xp=hero_xp+@r_hero_xp, hero_xp_gain=hero_xp_gain+@r_hero_xp WHERE hero_status=1 AND profile_id=@profile_id;

	------------------------------QUEST-----------------------------------------------------------------------------------------------

	DECLARE @quest_type_id int
    
    SET @quest_type_id = 3001
	IF @research_id = 201 AND @r_level = 1
	BEGIN
	IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
	BEGIN
		INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
		SET @quest_done = @quest_done + 1;
	END
	END
    
    SET @quest_type_id = 3002
	IF @research_id = 202 AND @r_level = 1
	BEGIN
	IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
	BEGIN
		INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
		SET @quest_done = @quest_done + 1;
	END
	END
    
    SET @quest_type_id = 3003
	IF @research_id = 203 AND @r_level = 1
	BEGIN
	IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
	BEGIN
		INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
		SET @quest_done = @quest_done + 1;
	END
	END
    
    SET @quest_type_id = 3004
	IF @research_id = 204 AND @r_level = 1
	BEGIN
	IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
	BEGIN
		INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
		SET @quest_done = @quest_done + 1;
	END
	END
    
    SET @quest_type_id = 3005
	IF @research_id = 205 AND @r_level = 1
	BEGIN
	IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
	BEGIN
		INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
		SET @quest_done = @quest_done + 1;
	END
	END
    
    SET @quest_type_id = 3006
	IF @research_id = 101 AND @r_level = 8
	BEGIN
	IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
	BEGIN
		INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
		SET @quest_done = @quest_done + 1;
	END
	END
    
    SET @quest_type_id = 3007
	IF @research_id = 102 AND @r_level = 8
	BEGIN
	IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
	BEGIN
		INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
		SET @quest_done = @quest_done + 1;
	END
	END
    
    SET @quest_type_id = 3008
	IF @research_id = 103 AND @r_level = 8
	BEGIN
	IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
	BEGIN
		INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
		SET @quest_done = @quest_done + 1;
	END
	END
    
    SET @quest_type_id = 3009
	IF @research_id = 104 AND @r_level = 8
	BEGIN
	IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
	BEGIN
		INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
		SET @quest_done = @quest_done + 1;
	END
	END
    
    SET @quest_type_id = 3010
	IF @research_id = 105 AND @r_level = 8
	BEGIN
	IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
	BEGIN
		INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
		SET @quest_done = @quest_done + 1;
	END
	END
    
    SET @quest_type_id = 3011
	IF @research_id = 106 AND @r_level = 8
	BEGIN
	IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
	BEGIN
		INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
		SET @quest_done = @quest_done + 1;
	END
	END
    
    SET @quest_type_id = 3012
	IF @research_id = 107 AND @r_level = 8
	BEGIN
	IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
	BEGIN
		INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
		SET @quest_done = @quest_done + 1;
	END
	END
    
    SET @quest_type_id = 3013
	IF @research_id = 301 AND @r_level = 15
	BEGIN
	IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
	BEGIN
		INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
		SET @quest_done = @quest_done + 1;
	END
	END
    
    SET @quest_type_id = 3014
	IF @research_id = 302 AND @r_level = 15
	BEGIN
	IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
	BEGIN
		INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
		SET @quest_done = @quest_done + 1;
	END
	END
    
    SET @quest_type_id = 3015
	IF @research_id = 303 AND @r_level = 15
	BEGIN
	IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
	BEGIN
		INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
		SET @quest_done = @quest_done + 1;
	END
	END
    
    SET @quest_type_id = 3016
	IF @research_id = 304 AND @r_level = 15
	BEGIN
	IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
	BEGIN
		INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
		SET @quest_done = @quest_done + 1;
	END
	END
	------------------------------QUEST-----------------------------------------------------------------------------------------------
    
SET @r = 1;

END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_SalesRandom]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_SalesRandom]
AS
BEGIN
DECLARE @counter int, @sale_id int, 
@sale_row3 nvarchar(250), @sale_row4 nvarchar(250), @sale_price nvarchar(250), @sale_identifier nvarchar(250), @sale_sql1 nvarchar(1000), @sale_sql2 nvarchar(1000), 
@bundle1_quantity nvarchar(250), @bundle2_quantity nvarchar(250), @bundle3_quantity nvarchar(250), @bundle4_quantity nvarchar(250),
@sale_duration int, @sale_start int, @sale_random int

SET @sale_id = ISNULL((SELECT MAX(sale_id) FROM sales), 0);
SET @counter = (SELECT COUNT(*) FROM sales WHERE sale_starting < GETUTCDATE() AND sale_ending > GETUTCDATE())

IF @counter = 0
BEGIN

SET @sale_start = dbo.fx_generateRandomNumber(newID(), 0, 2);
SET @sale_duration = dbo.fx_generateRandomNumber(newID(), 3, 5);
SET @sale_row4 = '';

SET @sale_random = dbo.fx_generateRandomNumber(newID(), 1, 5);

IF @sale_random = 1
BEGIN
SET @sale_row3 = '2000 DIAMONDS';
SET @sale_price = '$99.99';
SET @sale_identifier = 'sale1';
SET @bundle1_quantity = '250';
SET @bundle2_quantity = '50,000';
SET @bundle3_quantity = '3';
SET @bundle4_quantity = '2,000';
SET @sale_sql1 = 'UPDATE profile SET currency_second=currency_second+2250, balance=balance+50000, fan_members=fan_members+2000 WHERE profile_id=';
SET @sale_sql2 = 'EXECUTE usp_PlayerBundle 3, ';
END

IF @sale_random = 2
BEGIN
SET @sale_row3 = '1000 DIAMONDS';
SET @sale_price = '$49.99';
SET @sale_identifier = 'sale2';
SET @bundle1_quantity = '100';
SET @bundle2_quantity = '35,000';
SET @bundle3_quantity = '2';
SET @bundle4_quantity = '1,000';
SET @sale_sql1 = 'UPDATE profile SET currency_second=currency_second+1100, balance=balance+35000, fan_members=fan_members+1000 WHERE profile_id=';
SET @sale_sql2 = 'EXECUTE usp_PlayerBundle 2, ';
END

IF @sale_random = 3
BEGIN
SET @sale_row3 = '275 DIAMONDS';
SET @sale_price = '$19.99';
SET @sale_identifier = 'sc5';
SET @bundle1_quantity = '50';
SET @bundle2_quantity = '20,000';
SET @bundle3_quantity = '1';
SET @bundle4_quantity = '500';
SET @sale_sql1 = 'UPDATE profile SET currency_second=currency_second+325, balance=balance+20000, fan_members=fan_members+500 WHERE profile_id=';
SET @sale_sql2 = 'EXECUTE usp_PlayerBundle 1, ';
END

IF @sale_random = 4
BEGIN
SET @sale_row3 = '150 DIAMONDS';
SET @sale_price = '$9.99';
SET @sale_identifier = 'sc4';
SET @bundle1_quantity = '30';
SET @bundle2_quantity = '15,000';
SET @bundle3_quantity = '0';
SET @bundle4_quantity = '500';
SET @sale_sql1 = 'UPDATE profile SET currency_second=currency_second+180, balance=balance+15000, fan_members=fan_members+500 WHERE profile_id=';
SET @sale_sql2 = '';
END

IF @sale_random = 5
BEGIN
SET @sale_row3 = '60 DIAMONDS';
SET @sale_price = '$4.99';
SET @sale_identifier = 'sc3';
SET @bundle1_quantity = '20';
SET @bundle2_quantity = '10,000';
SET @bundle3_quantity = '0';
SET @bundle4_quantity = '300';
SET @sale_sql1 = 'UPDATE profile SET currency_second=currency_second+80, balance=balance+10000, fan_members=fan_members+300 WHERE profile_id=';
SET @sale_sql2 = '';
END

INSERT INTO dbo.sales VALUES (@sale_id+1, 1, 0, '', '', @sale_row3, @sale_row4, @sale_duration, GETUTCDATE()+@sale_start, GETUTCDATE()+@sale_start+@sale_duration, @sale_price, @sale_identifier, @sale_sql1, @sale_sql2, '', @bundle1_quantity, @bundle2_quantity, @bundle3_quantity, @bundle4_quantity)

END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_SendAttack]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_SendAttack]
(@tutorial_step int = 0,@is_capture int, @profile_uid nvarchar(50), @base_id bigint, @to_profile_id bigint, @to_base_id bigint, @hero int, @a1 int, @b1 int, @c1 int, @d1 int, @a2 int, @b2 int, @c2 int, @d2 int, @a3 int, @b3 int, @c3 int, @d3 int, @march_time int, @r int out, @row_id int out, @quest_done int out)
AS
BEGIN

exec usp_BaseUpdate @base_id
exec usp_BaseUpdate @to_base_id

RAISERROR ('usp_SendAttack', 10,-1) with nowait;

DECLARE @profile_id bigint = 0, @dt_sent datetime, @dt_arrive datetime, @dt_return datetime, @attack_id bigint = 0, @job_time int = 30, @return_time int = 0, @victory int = 0, @report_type int = 10
/*
DECLARE @boost DECIMAL(18,2)=0
SET @boost = ISNULL((SELECT boost_march FROM View_Boost WHERE base_id=@base_id), 0);
SET @boost = (@boost / 100.0)+1;
IF @boost > 0
BEGIN
SET @march_time = @march_time/@boost
END
*/

--TUTORIAL HARDCODE
IF(@tutorial_step=35)
BEGIN
	SET @job_time=5;
	SET @march_time=5;
END
ELSE IF(@tutorial_step=62)
BEGIN
	SET @job_time=5;
	SET @march_time=5;
END
	
IF @is_capture = 1
BEGIN
	SET @report_type = 60;
END

SET @r = -1;
SET @quest_done = 0;
SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid), 0);

DECLARE @profile_id_AS_STRING varchar(30) = CAST(@profile_id AS VARCHAR);
RAISERROR ('profile_id: %s', 10,-1, @profile_id_AS_STRING) with nowait;

DECLARE @to_profile_id_AS_STRING varchar(30) = CAST(@to_profile_id AS VARCHAR);
RAISERROR ('target_profile_id: %s', 10,-1, @to_profile_id_AS_STRING) with nowait;

--Cost of capture

IF(@is_capture=1)
	BEGIN
        DECLARE @formula_variable_a DECIMAL(18,2),@formula_variable_b DECIMAL(18,2),@formula_variable_c DECIMAL(18,2),@formula_variable_d DECIMAL(18,2)
		DECLARE @costofcapture int = 0;
		DECLARE @numberofvillage int = 0;
		SELECT @numberofvillage = (COUNT(*))  FROM base WHERE profile_id = @profile_id;
	
		--SET @costofcapture	= CAST((40.5*POWER(@numberofvillage,2) - (112.5*@numberofvillage) + 73.0) AS int)*1000000
	    
        SELECT @formula_variable_a=capture_require_formula_a,@formula_variable_b=capture_require_formula_b,@formula_variable_c=capture_require_formula_c,@formula_variable_d=capture_require_formula_d
        FROM dbo.settings
        
        SET @costofcapture	= CAST((@formula_variable_a*POWER(@numberofvillage,@formula_variable_b) + (@formula_variable_c*@numberofvillage) +@formula_variable_d) AS int)
        
		UPDATE base
		SET r5=r5-@costofcapture
		WHERE base_id = @base_id
	END

DECLARE @numberofvillage_AS_STRING varchar(30) = CAST(@numberofvillage AS VARCHAR);
RAISERROR ('numberofvillage: %s', 10,-1, @numberofvillage_AS_STRING) with nowait;

DECLARE @costofcapture_AS_STRING varchar(30) = CAST(@costofcapture AS VARCHAR);
RAISERROR ('costofcapture: %s', 10,-1, @costofcapture_AS_STRING) with nowait;


IF @profile_id > 0
BEGIN

DECLARE @p2_base nvarchar(50) = 'Barbarian Village', @p2_x int = 0, @p2_y int = 0

--it's a PVP so prepare data for execution after Hangfire
	IF @to_profile_id > 0
	BEGIN
	
		--TODO: Double check march_time incase it's a Hack!
		
		SET @dt_sent = GETUTCDATE();
		SET @dt_arrive = DATEADD(ss, @march_time, @dt_sent);
		SET @return_time = @job_time + @march_time;
		SET @dt_return = DATEADD(ss, @return_time, @dt_arrive);
		--SET @dt_return = DATEADD(ss, -1, @dt_sent); --NO RETURN MARCH
		
		--Report
		DECLARE @p1_name nvarchar(50), @p2_name nvarchar(50), @p1_face int, @p2_face int, @p1_rank int, @p2_rank int
		DECLARE @p1_base nvarchar(50), @p1_x int, @p1_y int
		DECLARE @p1_tag nvarchar(3), @p2_tag nvarchar(3)
		DECLARE @p1_hero_name nvarchar(50), @p2_hero_name nvarchar(50), @p1_hero_xp int, @p2_hero_xp int
		
		SET @p1_name = (SELECT profile_name FROM [profile] WHERE profile_id=@profile_id);
		SET @p1_face = ISNULL((SELECT profile_face FROM [profile] WHERE profile_id=@profile_id), 0);
		SET @p1_rank = ISNULL((SELECT alliance_rank FROM [profile] WHERE profile_id=@profile_id), 0);
		SET @p1_base = (SELECT base_name FROM base WHERE base_id=@base_id);
		SET @p1_x = ISNULL((SELECT map_x FROM base WHERE base_id=@base_id), 0);
		SET @p1_y = ISNULL((SELECT map_y FROM base WHERE base_id=@base_id), 0);
		SELECT @p1_tag=alliance_tag, @p1_hero_name=hero_name, @p1_hero_xp=hero_xp FROM View_Profile WHERE profile_id=@profile_id;
		
		SET @p2_name = (SELECT profile_name FROM [profile] WHERE profile_id=@to_profile_id);
		SET @p2_face = ISNULL((SELECT profile_face FROM [profile] WHERE profile_id=@to_profile_id), 0);
		SET @p2_rank = ISNULL((SELECT alliance_rank FROM [profile] WHERE profile_id=@to_profile_id), 0);
		SET @p2_base = (SELECT base_name FROM base WHERE base_id=@to_base_id);
		SET @p2_x = ISNULL((SELECT map_x FROM base WHERE base_id=@to_base_id), 0);
		SET @p2_y = ISNULL((SELECT map_y FROM base WHERE base_id=@to_base_id), 0);
		SELECT @p2_tag=alliance_tag, @p2_hero_name=hero_name, @p2_hero_xp=hero_xp FROM View_Profile WHERE profile_id=@to_profile_id;
		
		RAISERROR ('INSERT ATTACK', 10,-1) with nowait;
		
		--Attack
		INSERT INTO attack (is_capture,march_time, date_sent, date_arrive, job_time, date_return, from_profile_id, to_profile_id, from_base_id, to_base_id, hero, a1, b1, c1, d1, a2, b2, c2, d2, a3, b3, c3, d3, profile1_name, profile2_name, profile1_face, profile2_face, profile1_rank, profile2_rank, profile1_tag, profile2_tag, profile1_hero_name, profile2_hero_name, profile1_hero_xp, profile2_hero_xp, profile1_base_name, profile2_base_name, profile1_x, profile2_x, profile1_y, profile2_y) 
		VALUES (@is_capture,@march_time, @dt_sent, @dt_arrive, @job_time, @dt_return, @profile_id, @to_profile_id, @base_id, @to_base_id, @hero, @a1, @b1, @c1, @d1, @a2, @b2, @c2, @d2, @a3, @b3, @c3, @d3, @p1_name, @p2_name, @p1_face, @p2_face, @p1_rank, @p2_rank, @p1_tag, @p2_tag, @p1_hero_name, @p2_hero_name, @p1_hero_xp, @p2_hero_xp, @p1_base, @p2_base, @p1_x, @p2_x, @p1_y, @p2_y);
		
		SELECT @attack_id = SCOPE_IDENTITY();
		
		SET @row_id = @attack_id;

		UPDATE base SET attack_id=@attack_id, attack_time=@march_time,attack_job_time= @job_time, attack_queue=@dt_arrive, attack_return=@dt_return, 
		a_a1=@a1, a_a2=@a2, a_a3=@a3, a_b1=@b1, a_b2=@b2, a_b3=@b3, a_c1=@c1, a_c2=@c2, a_c3=@c3, a_d1=@d1, a_d2=@d2, a_d3=@d3, 
		a_r1=0, a_r2=0, a_r3=0, a_r4=0, a_r5=0 WHERE base_id=@base_id;
		
		
		DECLARE @TempTable TABLE(
			[attack_id] [bigint] NOT NULL,
			[profile2_base_name] [nvarchar](50) NULL,
			[profile2_x] [bigint] NULL,
			[profile2_y] [bigint] NULL
			)
		
		INSERT INTO @TempTable (attack_id, profile2_base_name, profile2_x, profile2_y) 
		VALUES (@attack_id, @p2_base, @p2_x, @p2_y);
		
		SELECT * FROM @TempTable;
		
		SET @r = 1;
	END
	ELSE -- This is a PVE
		BEGIN
		
		SET @row_id = 1;
		
		EXECUTE usp_AttackPve 
		@tutorial_step, 0, @is_capture, @profile_id, @base_id, @to_base_id, 
		0, 0, 0, 0, 
		0, 0, 0, 0, 0, 
		0, 0, 0, 0, 0, 
		0, 0, 0, 
		@a1, @b1, @c1, @d1, @a2, @b2, @c2, @d2, @a3, @b3, @c3, @d3, 
		@march_time,@job_time;
		
		INSERT INTO attack (is_capture,march_time, date_sent, date_arrive, job_time, date_return, from_profile_id, to_profile_id, from_base_id, to_base_id, hero, a1, b1, c1, d1, a2, b2, c2, d2, a3, b3, c3, d3, profile1_name, profile2_name, profile1_face, profile2_face, profile1_rank, profile2_rank, profile1_tag, profile2_tag, profile1_hero_name, profile2_hero_name, profile1_hero_xp, profile2_hero_xp, profile1_base_name, profile2_base_name, profile1_x, profile2_x, profile1_y, profile2_y) 
		VALUES (@is_capture,@march_time, @dt_sent, @dt_arrive, @job_time, @dt_return, @profile_id, @to_profile_id, @base_id, @to_base_id, @hero, @a1, @b1, @c1, @d1, @a2, @b2, @c2, @d2, @a3, @b3, @c3, @d3, @p1_name, @p2_name, @p1_face, @p2_face, @p1_rank, @p2_rank, @p1_tag, @p2_tag, @p1_hero_name, @p2_hero_name, @p1_hero_xp, @p2_hero_xp, @p1_base, @p2_base, @p1_x, @p2_x, @p1_y, @p2_y);
		
		SELECT @attack_id = SCOPE_IDENTITY();
		
		UPDATE base SET attack_id=@attack_id WHERE base_id=@base_id;
		
		SET @r = 1;
		
		END
	END
    
    
    --QUEST Attack a Player
    DECLARE @quest_type_id int
    BEGIN
        SET @quest_type_id = 4002
        IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
        BEGIN
            INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
            SET @quest_done = @quest_done + 1;
        END
    END
        
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SendMailAlliance]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_SendMailAlliance]
(@a_id int, @msg nvarchar(MAX), @profile_id int, @r int out)
AS
BEGIN

SET @r = -1;

IF @a_id != 0
BEGIN

INSERT INTO dbo.mail VALUES (GETUTCDATE(), N'', @msg, 0, @a_id, 0, N'', 0, N'', 0, 0, 0);

SET @r = 1;

END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_SendMailNews]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_SendMailNews]
(@profile_id int, @msg nvarchar(MAX), @r int out)
AS
BEGIN

SET @r = -1;

IF @msg is not NULL
BEGIN

IF @profile_id = 0
BEGIN
INSERT INTO dbo.mail VALUES (GETUTCDATE(), N'', @msg, 1, -1, 0, N'', 0, N'', 0, 0, 0);
END
ELSE
BEGIN
INSERT INTO dbo.mail VALUES (GETUTCDATE(), N'', @msg, 0, -1, 0, N'', @profile_id, N'', 0, 0, 0);
END

SET @r = 1;

END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_SendReinforcements]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_SendReinforcements]
(@profile_uid nvarchar(50), @base_id bigint, @to_profile_id bigint, @to_base_id bigint, @hero int, @a1 int, @b1 int, @c1 int, @d1 int, @a2 int, @b2 int, @c2 int, @d2 int, @a3 int, @b3 int, @c3 int, @d3 int, @march_time int, @r int out, @row_id int out, @quest_done int out)
AS
BEGIN

exec usp_BaseUpdate @base_id
exec usp_BaseUpdate @to_base_id

DECLARE @profile_id bigint, @dt_send datetime, @dt_arrive datetime, @reinforce_id bigint, @report_id bigint

SET @r = -1;
SET @quest_done = 0;
SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid), 0);

IF @profile_id > 0
BEGIN

--TODO: Double check march_time incase it's a Hack!
/*
DECLARE @boost DECIMAL(18,2)=0
SET @boost = ISNULL((SELECT boost_march FROM View_Boost WHERE base_id=@base_id), 0);
SET @boost = (@boost / 100.0)+1;
IF @boost > 0
BEGIN
SET @march_time = @march_time/@boost
END
*/

INSERT INTO reinforce (is_return, march_time, date_sent, date_arrive, from_profile_id, to_profile_id, from_base_id, to_base_id, a1, b1, c1, d1, a2, b2, c2, d2, a3, b3, c3, d3) 
VALUES (0, @march_time, GETUTCDATE(), DATEADD(ss, @march_time, GETUTCDATE()), @profile_id, @to_profile_id, @base_id, @to_base_id, @a1, @b1, @c1, @d1, @a2, @b2, @c2, @d2, @a3, @b3, @c3, @d3);

SELECT @reinforce_id = SCOPE_IDENTITY();

SET @row_id = @reinforce_id;

UPDATE base SET r_a1=r_a1+@a1, r_a2=r_a2+@a2, r_a3=r_a3+@a3, r_b1=r_b1+@b1, r_b2=r_b2+@b2, r_b3=r_b3+@b3, r_c1=r_c1+@c1, r_c2=r_c2+@c2, r_c3=r_c3+@c3, r_d1=r_d1+@d1, r_d2=r_d2+@d2, r_d3=r_d3+@d3, reinforce_action=1, reinforce_id=@reinforce_id, reinforce_time=@march_time, reinforce_queue=DATEADD(ss, @march_time, GETUTCDATE()) WHERE base_id=@base_id;

--Report
DECLARE @profile1_name nvarchar(50), @profile2_name nvarchar(50), @profile1_face int, @profile2_face int

SET @profile1_name = (SELECT profile_name FROM [profile] WHERE profile_id=@profile_id);
SET @profile2_name = (SELECT profile_name FROM [profile] WHERE profile_id=@to_profile_id);

SET @profile1_face = ISNULL((SELECT profile_face FROM [profile] WHERE profile_id=@profile_id), 0);
SET @profile2_face = ISNULL((SELECT profile_face FROM [profile] WHERE profile_id=@to_profile_id), 0);

DECLARE @profile1_base nvarchar(50), @profile2_base nvarchar(50), @profile1_x int, @profile2_x int, @profile1_y int, @profile2_y int

SET @profile1_base = (SELECT base_name FROM base WHERE base_id=@base_id);
SET @profile2_base = (SELECT base_name FROM base WHERE base_id=@to_base_id);

SET @profile1_x = ISNULL((SELECT map_x FROM base WHERE base_id=@base_id), 0);
SET @profile2_x = ISNULL((SELECT map_x FROM base WHERE base_id=@to_base_id), 0);

SET @profile1_y = ISNULL((SELECT map_y FROM base WHERE base_id=@base_id), 0);
SET @profile2_y = ISNULL((SELECT map_y FROM base WHERE base_id=@to_base_id), 0);

INSERT INTO report (date_posted, date_arrive, profile1_id, profile2_id, profile1_base_id, profile2_base_id, report_type, victory, row_id, open_read, profile1_name, profile2_name, profile1_face, profile2_face, profile1_base_name, profile2_base_name, profile1_x, profile2_x, profile1_y, profile2_y, p1_a1, p1_b1, p1_c1, p1_d1, p1_a2, p1_b2, p1_c2, p1_d2, p1_a3, p1_b3, p1_c3, p1_d3) 
VALUES (GETUTCDATE(), DATEADD(ss, @march_time, GETUTCDATE()), @profile_id, @to_profile_id, @base_id, @to_base_id, 40, 1, @reinforce_id, 0, @profile1_name, @profile2_name, @profile1_face, @profile2_face, @profile1_base, @profile2_base, @profile1_x, @profile2_x, @profile1_y, @profile2_y, @a1, @b1, @c1, @d1, @a2, @b2, @c2, @d2, @a3, @b3, @c3, @d3);

SELECT @report_id = SCOPE_IDENTITY();

DECLARE @TempTable TABLE(
	[report_id] [bigint] NOT NULL,
	[profile2_base_name] [nvarchar](50) NULL,
	[profile2_x] [bigint] NULL,
	[profile2_y] [bigint] NULL
	)

INSERT INTO @TempTable (report_id, profile2_base_name, profile2_x, profile2_y) 
VALUES (@report_id, @profile2_base, @profile2_x, @profile2_y);

SELECT * FROM @TempTable;

SET @r = 1;

END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_SendResources]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_SendResources]
(@profile_uid nvarchar(50), @base_id int, @to_profile_id int, @to_base_id int, @r1 int, @r2 int, @r3 int, @r4 int, @r5 int, @march_time int, @r int out, @quest_done int out)
AS
BEGIN

exec usp_BaseUpdate @base_id
exec usp_BaseUpdate @to_base_id

/*
DECLARE @boost DECIMAL(18,2)=0

SET @boost = ISNULL((SELECT boost_trade FROM View_Boost WHERE base_id=@base_id), 0);
SET @boost = (@boost / 100.0)+1;

DECLARE @march_time_AS_STRING varchar(30) = CAST(@march_time AS VARCHAR);
RAISERROR ('@march_time : %s', 10,-1, @march_time_AS_STRING) with nowait;

IF @boost > 0
BEGIN
SET @march_time = @march_time/@boost
END

SET @march_time_AS_STRING = CAST(@march_time AS VARCHAR);
RAISERROR ('@march_time after: %s', 10,-1, @march_time_AS_STRING) with nowait;
*/
DECLARE @profile_id int, @dt_send datetime, @dt_arrive datetime, @row_id int, @report_id bigint

SET @r = -1;
SET @quest_done = 0;
SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid), 0);

IF @profile_id > 0
BEGIN

--TODO: Double check march_time incase it is a Hack!

DECLARE @r1_tax float, @r2_tax float, @r3_tax float, @r4_tax float, @r5_tax float, @building_level int, @tax_rate int, @tax_percent float
SET @building_level = ISNULL((SELECT building_level FROM build WHERE base_id=@base_id AND building_id=12), 1);
SET @tax_rate = ISNULL((SELECT production FROM building_level WHERE building_id=12 AND building_level=@building_level), 30);
SET @tax_percent = (100.0 - @tax_rate) / 100.0;

IF @r1 > 0
BEGIN
	SET @r1_tax = @r1 * @tax_percent;
END
ELSE
BEGIN
	SET @r1_tax = 0;
END

IF @r2 > 0
BEGIN
	SET @r2_tax = @r2 * @tax_percent;
END
ELSE
BEGIN
	SET @r2_tax = 0;
END

IF @r3 > 0
BEGIN
	SET @r3_tax = @r3 * @tax_percent;
END
ELSE
BEGIN
	SET @r3_tax = 0;
END

IF @r4 > 0
BEGIN
	SET @r4_tax = @r4 * @tax_percent;
END
ELSE
BEGIN
	SET @r4_tax = 0;
END

IF @r5 > 0
BEGIN
	SET @r5_tax = @r5 * @tax_percent;
END
ELSE
BEGIN
	SET @r5_tax = 0;
END

INSERT INTO trades (march_time, date_sent, date_arrive, from_profile_id, to_profile_id, from_base_id, to_base_id, r1, r2, r3, r4, r5) 
VALUES (@march_time, GETUTCDATE(), DATEADD(ss, @march_time, GETUTCDATE()), @profile_id, @to_profile_id, @base_id, @to_base_id, @r1_tax, @r2_tax, @r3_tax, @r4_tax, @r5_tax);
SELECT @row_id = SCOPE_IDENTITY();

UPDATE base SET r1=r1-@r1, r2=r2-@r2, r3=r3-@r3, r4=r4-@r4, r5=r5-@r5, trade_id=@row_id, trade_time=@march_time, trade_queue=DATEADD(ss, @march_time, GETUTCDATE()) WHERE base_id=@base_id;

UPDATE base SET r1=r1+@r1_tax, r2=r2+@r2_tax, r3=r3+@r3_tax, r4=r4+@r4_tax, r5=r5+@r5_tax WHERE base_id=@to_base_id;

--Report
DECLARE @profile1_name nvarchar(50), @profile2_name nvarchar(50), @profile1_face int, @profile2_face int

SET @profile1_name = (SELECT profile_name FROM [profile] WHERE profile_id=@profile_id);
SET @profile2_name = (SELECT profile_name FROM [profile] WHERE profile_id=@to_profile_id);

SET @profile1_face = ISNULL((SELECT profile_face FROM [profile] WHERE profile_id=@profile_id), 0);
SET @profile2_face = ISNULL((SELECT profile_face FROM [profile] WHERE profile_id=@to_profile_id), 0);

DECLARE @profile1_base nvarchar(50), @profile2_base nvarchar(50), @profile1_x int, @profile2_x int, @profile1_y int, @profile2_y int

SET @profile1_base = (SELECT base_name FROM base WHERE base_id=@base_id);
SET @profile2_base = (SELECT base_name FROM base WHERE base_id=@to_base_id);

SET @profile1_x = ISNULL((SELECT map_x FROM base WHERE base_id=@base_id), 0);
SET @profile2_x = ISNULL((SELECT map_x FROM base WHERE base_id=@to_base_id), 0);

SET @profile1_y = ISNULL((SELECT map_y FROM base WHERE base_id=@base_id), 0);
SET @profile2_y = ISNULL((SELECT map_y FROM base WHERE base_id=@to_base_id), 0);

INSERT INTO report (date_posted, date_arrive, profile1_id, profile2_id, profile1_base_id, profile2_base_id, r1, r2, r3, r4, r5, report_type, victory, row_id, open_read, profile1_name, profile2_name, profile1_face, profile2_face, profile1_base_name, profile2_base_name, profile1_x, profile2_x, profile1_y, profile2_y) 
VALUES (GETUTCDATE(), DATEADD(ss, @march_time, GETUTCDATE()), @profile_id, @to_profile_id, @base_id, @to_base_id, @r1_tax, @r2_tax, @r3_tax, @r4_tax, @r5_tax, 30, 1, @row_id, 0, @profile1_name, @profile2_name, @profile1_face, @profile2_face, @profile1_base, @profile2_base, @profile1_x, @profile2_x, @profile1_y, @profile2_y);

SELECT @report_id = SCOPE_IDENTITY();

DECLARE @TempTable TABLE(
	[report_id] [bigint] NOT NULL,
	[profile2_base_name] [nvarchar](50) NULL,
	[profile2_x] [bigint] NULL,
	[profile2_y] [bigint] NULL
	)

INSERT INTO @TempTable (report_id, profile2_base_name, profile2_x, profile2_y) 
VALUES (@report_id, @profile2_base, @profile2_x, @profile2_y);

SELECT * FROM @TempTable;

SET @r = 1;

END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_SendSpies]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_SendSpies]
(@profile_uid nvarchar(50), @base_id int, @to_profile_id int, @to_base_id int, @spy_sent int, @march_time int, @r int out, @quest_done int out)
AS
BEGIN

exec usp_BaseUpdate @base_id
exec usp_BaseUpdate @to_base_id

DECLARE @profile_id int, @dt_send datetime, @dt_arrive datetime, @report_id bigint, @spy_successful int

SET @r = -1;
SET @quest_done = 0;
SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid), 0);

--Report
DECLARE @profile1_name nvarchar(50), @profile2_name nvarchar(50), @profile1_face int, @profile2_face int

SET @profile1_name = (SELECT profile_name FROM [profile] WHERE profile_id=@profile_id);
SET @profile2_name = (SELECT profile_name FROM [profile] WHERE profile_id=@to_profile_id);

SET @profile1_face = ISNULL((SELECT profile_face FROM [profile] WHERE profile_id=@profile_id), 0);
SET @profile2_face = ISNULL((SELECT profile_face FROM [profile] WHERE profile_id=@to_profile_id), 0);

DECLARE @profile1_base nvarchar(50), @profile2_base nvarchar(50), @profile1_x int, @profile2_x int, @profile1_y int, @profile2_y int

SET @profile1_base = (SELECT base_name FROM base WHERE base_id=@base_id);
SET @profile2_base = (SELECT base_name FROM base WHERE base_id=@to_base_id);

SET @profile1_x = ISNULL((SELECT map_x FROM base WHERE base_id=@base_id), 0);
SET @profile2_x = ISNULL((SELECT map_x FROM base WHERE base_id=@to_base_id), 0);

SET @profile1_y = ISNULL((SELECT map_y FROM base WHERE base_id=@base_id), 0);
SET @profile2_y = ISNULL((SELECT map_y FROM base WHERE base_id=@to_base_id), 0);

--Resources
DECLARE @r1 int, @r2 int, @r3 int, @r4 int, @r5 int
--Troops
DECLARE @a1 int, @b1 int, @c1 int, @d1 int, @a2 int, @b2 int, @c2 int, @d2 int, @a3 int, @b3 int, @c3 int, @d3 int
--Troops Injured
DECLARE @i_a1 int, @i_b1 int, @i_c1 int, @i_d1 int, @i_a2 int, @i_b2 int, @i_c2 int, @i_d2 int, @i_a3 int, @i_b3 int, @i_c3 int, @i_d3 int
--Troops Reinforcing
DECLARE @r_a1 int, @r_b1 int, @r_c1 int, @r_d1 int, @r_a2 int, @r_b2 int, @r_c2 int, @r_d2 int, @r_a3 int, @r_b3 int, @r_c3 int, @r_d3 int
--Troops Reinforce Pullback
--Spy
DECLARE @spy int =0

DECLARE @reinforce_action int, @reinforce_queue datetime
--Advance formula will calculate multibase transfer

--Reduce injured amount with healed troop
UPDATE base SET i_a1=i_a1-h_a1, i_b1=i_b1-h_b1, i_c1=i_c1-h_c1, i_d1=i_d1-h_d1, i_a2=i_a2-h_a2, i_b2=i_b2-h_b2, i_c2=i_c2-h_c2, i_d2=i_d2-h_d2, i_a3=i_a3-h_a3, i_b3=i_b3-h_b3, i_c3=i_c3-h_c3, i_d3=i_d3-h_d3, 
	h_a1=0, h_b1=0, h_c1=0, h_d1=0, h_a2=0, h_b2=0, h_c2=0, h_d2=0, h_a3=0, h_b3=0, h_c3=0, h_d3=0 
	WHERE base_id=@to_base_id AND profile_id=@to_profile_id AND hospital_queue<GETUTCDATE();
--Add trained to troops type a
UPDATE base SET a1=a1+t_a1, a2=a2+t_a2, a3=a3+t_a3, 
	t_a1=0, t_a2=0, t_a3=0 
	WHERE base_id=@to_base_id AND profile_id=@to_profile_id AND a_queue<GETUTCDATE();
--Add trained to troops type b
UPDATE base SET b1=b1+t_b1, b2=b2+t_b2, b3=b3+t_b3, 
	t_b1=0, t_b2=0, t_b3=0 
	WHERE base_id=@to_base_id AND profile_id=@to_profile_id AND b_queue<GETUTCDATE();
--Add trained to troops type c
UPDATE base SET c1=c1+t_c1, c2=c2+t_c2, c3=c3+t_c3, 
	t_c1=0, t_c2=0, t_c3=0 
	WHERE base_id=@to_base_id AND profile_id=@to_profile_id AND c_queue<GETUTCDATE();
--Add trained to troops type d
UPDATE base SET d1=d1+t_d1, d2=d2+t_d2, d3=d3+t_d3, 
	t_d1=0, t_d2=0, t_d3=0 
	WHERE base_id=@to_base_id AND profile_id=@to_profile_id AND d_queue<GETUTCDATE();

/*
--Add trained spy to type spy
UPDATE base SET spy=spy+t_spy ,
	t_spy=0
	WHERE base_id=@to_base_id AND profile_id=@to_profile_id AND spy_queue<GETUTCDATE();
*/	
SELECT @a1=a1, @a2=a2, @a3=a3, @b1=b1, @b2=b2, @b3=b3, @c1=c1, @c2=c2, @c3=c3, @d1=d1, @d2=d2, @d3=d3, 
@i_a1=i_a1, @i_a2=i_a2, @i_a3=i_a3, @i_b1=i_b1, @i_b2=i_b2, @i_b3=i_b3, @i_c1=i_c1, @i_c2=i_c2, @i_c3=i_c3, @i_d1=i_d1, @i_d2=i_d2, @i_d3=i_d3, 
@r_a1=r_a1, @r_a2=r_a2, @r_a3=r_a3, @r_b1=r_b1, @r_b2=r_b2, @r_b3=r_b3, @r_c1=r_c1, @r_c2=r_c2, @r_c3=r_c3, @r_d1=r_d1, @r_d2=r_d2, @r_d3=r_d3, 
@r1=r1, @r2=r2, @r3=r3, @r4=r4, @r5=r5, @reinforce_action=reinforce_action, @reinforce_queue=reinforce_queue  , @spy = spy
FROM base WHERE base_id=@to_base_id

IF @reinforce_queue>GETUTCDATE() AND @reinforce_action=2
BEGIN
--Troops Reinforce Pullback
DECLARE @rt_a1 int, @rt_b1 int, @rt_c1 int, @rt_d1 int, @rt_a2 int, @rt_b2 int, @rt_c2 int, @rt_d2 int, @rt_a3 int, @rt_b3 int, @rt_c3 int, @rt_d3 int

SELECT @rt_a1=rt_a1, @rt_a2=rt_a2, @rt_a3=rt_a3, @rt_b1=rt_b1, @rt_b2=rt_b2, @rt_b3=rt_b3, @rt_c1=rt_c1, @rt_c2=rt_c2, @rt_c3=rt_c3, @rt_d1=rt_d1, @rt_d2=rt_d2, @rt_d3=rt_d3 
FROM base WHERE base_id=@to_base_id

SET @a1 = @a1 - @i_a1 - @r_a1 - @rt_a1;
SET @a2 = @a2 - @i_a2 - @r_a2 - @rt_a2;
SET @a3 = @a3 - @i_a3 - @r_a3 - @rt_a3;

SET @b1 = @b1 - @i_b1 - @r_b1 - @rt_b1;
SET @b2 = @b2 - @i_b2 - @r_b2 - @rt_b2;
SET @b3 = @b3 - @i_b3 - @r_b3 - @rt_b3;

SET @c1 = @c1 - @i_c1 - @r_c1 - @rt_c1;
SET @c2 = @c2 - @i_c2 - @r_c2 - @rt_c2;
SET @c3 = @c3 - @i_c3 - @r_c3 - @rt_c3;

SET @d1 = @d1 - @i_d1 - @r_d1 - @rt_d1;
SET @d2 = @d2 - @i_d2 - @r_d2 - @rt_d2;
SET @d3 = @d3 - @i_d3 - @r_d3 - @rt_d3;

END
ELSE
BEGIN

SET @a1 = @a1 - @i_a1 - @r_a1;
SET @a2 = @a2 - @i_a2 - @r_a2;
SET @a3 = @a3 - @i_a3 - @r_a3;

SET @b1 = @b1 - @i_b1 - @r_b1;
SET @b2 = @b2 - @i_b2 - @r_b2;
SET @b3 = @b3 - @i_b3 - @r_b3;

SET @c1 = @c1 - @i_c1 - @r_c1;
SET @c2 = @c2 - @i_c2 - @r_c2;
SET @c3 = @c3 - @i_c3 - @r_c3;

SET @d1 = @d1 - @i_d1 - @r_d1;
SET @d2 = @d2 - @i_d2 - @r_d2;
SET @d3 = @d3 - @i_d3 - @r_d3;

END

DECLARE @total_troops int, @total_reinforcements int
SET @total_troops = @a1+@b1+@c1+@d1+@a2+@b2+@c2+@d2+@a3+@b3+@c3+@d3;

--Reinforcements from allies
DECLARE @k_a1 int, @k_b1 int, @k_c1 int, @k_d1 int, @k_a2 int, @k_b2 int, @k_c2 int, @k_d2 int, @k_a3 int, @k_b3 int, @k_c3 int, @k_d3 int

SELECT @k_a1=SUM(a1), @k_a2=SUM(a2), @k_a3=SUM(a3), @k_b1=SUM(b1), @k_b2=SUM(b2), @k_b3=SUM(b3), @k_c1=SUM(c1), @k_c2=SUM(c2), @k_c3=SUM(c3), @k_d1=SUM(d1), @k_d2=SUM(d2), @k_d3=SUM(d3)
FROM dbo.reinforce
WHERE (date_arrive < GETUTCDATE()) AND (is_return = 0) AND to_base_id=@to_base_id

SET @total_reinforcements = @k_a1+@k_b1+@k_c1+@k_d1+@k_a2+@k_b2+@k_c2+@k_d2+@k_a3+@k_b3+@k_c3+@k_d3;

--Spy Formula

SELECT @Spy = spy
FROM dbo.base
WHERE base_id = @base_id

SET @spy_successful = 0;

DECLARE @spy_chance float = 0;
DECLARE @spy_attempt float = 0;
DECLARE @spy_difference int = 0;
SET @spy_difference = @spy_sent - @spy;
IF(@spy_difference<-24)
	BEGIN
		SET @spy_difference=-24;
	END
SET @spy_chance = 0.0005*POWER(@spy_difference,2) + (0.019*@spy_difference) + 0.2937;
SET @spy_attempt = dbo.fx_generateRandomNumber(newID(), 0, 100) * 0.01;

IF(@spy_attempt < @spy_chance)
	BEGIN
		SET @spy_successful = 1;
	END

DECLARE @spy_AS_STRING varchar(30) = CAST(@spy_sent AS VARCHAR);
RAISERROR ('@spy : %s', 10,-1, @spy_AS_STRING) with nowait;

DECLARE @spy_sent_AS_STRING varchar(30) = CAST(@spy_sent AS VARCHAR);
RAISERROR ('@spy_sent : %s', 10,-1, @spy_sent_AS_STRING) with nowait;

DECLARE @spy_chance_AS_STRING varchar(30) = CAST(@spy_chance AS VARCHAR);
RAISERROR ('@spy_chance : %s', 10,-1, @spy_chance_AS_STRING) with nowait;

DECLARE @spy_attempt_AS_STRING varchar(30) = CAST(@spy_attempt AS VARCHAR);
RAISERROR ('@spy_attempt : %s', 10,-1, @spy_attempt_AS_STRING) with nowait;

DECLARE @spy_difference_AS_STRING varchar(30) = CAST(@spy_difference AS VARCHAR);
RAISERROR ('@spy_difference : %s', 10,-1, @spy_difference_AS_STRING) with nowait;

DECLARE @spy_successful_AS_STRING varchar(30) = CAST(@spy_successful AS VARCHAR);
RAISERROR ('@spy_successful : %s', 10,-1, @spy_successful_AS_STRING) with nowait;

--Reduce your spy
DECLARE @spy_remaining int = @spy-@spy_sent;

IF(@spy_remaining<0)
	BEGIN
		SET @spy_remaining = 0;
	END

UPDATE base SET spy=@spy_remaining WHERE base_id=@base_id;

INSERT INTO report (date_posted, date_arrive, profile1_id, profile2_id, profile1_base_id, profile2_base_id, report_type, victory, row_id, open_read, profile1_name, profile2_name, profile1_face, profile2_face, profile1_base_name, profile2_base_name, profile1_x, profile2_x, profile1_y, profile2_y, r1, r2, r3, r4, r5, profile2_troops, profile2_killed, p2_a1, p2_b1, p2_c1, p2_d1, p2_a2, p2_b2, p2_c2, p2_d2, p2_a3, p2_b3, p2_c3, p2_d3, profile1_spy_sent, profile1_spy_captured, k2_a1, k2_b1, k2_c1, k2_d1, k2_a2, k2_b2, k2_c2, k2_d2, k2_a3, k2_b3, k2_c3, k2_d3) 
VALUES (GETUTCDATE(), GETUTCDATE(), @profile_id, @to_profile_id, @base_id, @to_base_id, 21, @spy_successful, 0, 0, @profile1_name, @profile2_name, @profile1_face, @profile2_face, @profile1_base, @profile2_base, @profile1_x, @profile2_x, @profile1_y, @profile2_y, @r1, @r2, @r3, @r4, @r5, @total_troops, @total_reinforcements, @a1, @b1, @c1, @d1, @a2, @b2, @c2, @d2, @a3, @b3, @c3, @d3, @spy_sent, @spy_sent, @k_a1, @k_b1, @k_c1, @k_d1, @k_a2, @k_b2, @k_c2, @k_d2, @k_a3, @k_b3, @k_c3, @k_d3);

SELECT @report_id = SCOPE_IDENTITY();

DECLARE @TempTable TABLE(
	[report_id] [bigint] NOT NULL,
	[report_type] [int] NULL,
	[victory] [int] NULL,
	[row_id] [bigint] NULL,
	[open_read] [int] NULL,
	[date_posted] [datetime] NULL,
	[date_arrive] [datetime] NULL,
	[title] [nvarchar](max) NULL,
	[alliance_id] [bigint] NULL,
	[profile1_id] [bigint] NULL,
	[profile2_id] [bigint] NULL,
	[profile1_name] [nvarchar](50) NULL,
	[profile2_name] [nvarchar](50) NULL,
	[profile1_tag] [nvarchar](3) NULL,
	[profile2_tag] [nvarchar](3) NULL,
	[profile1_rank] [int] NULL,
	[profile2_rank] [int] NULL,
	[profile1_face] [int] NULL,
	[profile2_face] [int] NULL,
	[profile1_base_id] [bigint] NULL,
	[profile2_base_id] [bigint] NULL,
	[profile1_base_name] [nvarchar](50) NULL,
	[profile2_base_name] [nvarchar](50) NULL,
	[profile1_power] [int] NULL,
	[profile2_power] [int] NULL,
	[profile1_x] [bigint] NULL,
	[profile2_x] [bigint] NULL,
	[profile1_y] [bigint] NULL,
	[profile2_y] [bigint] NULL,
	[profile1_troops] [int] NULL,
	[profile2_troops] [int] NULL,
	[profile1_killed] [int] NULL,
	[profile2_killed] [int] NULL,
	[profile1_spy_sent] [int] NULL,
	[profile1_spy_captured] [int] NULL,
	[r1] [int] NULL,
	[r2] [int] NULL,
	[r3] [int] NULL,
	[r4] [int] NULL,
	[r5] [int] NULL,
	[p2_a1] [int] NULL,
	[p2_a2] [int] NULL,
	[p2_a3] [int] NULL,
	[p2_b1] [int] NULL,
	[p2_b2] [int] NULL,
	[p2_b3] [int] NULL,
	[p2_c1] [int] NULL,
	[p2_c2] [int] NULL,
	[p2_c3] [int] NULL,
	[p2_d1] [int] NULL,
	[p2_d2] [int] NULL,
	[p2_d3] [int] NULL,
	[k2_a1] [int] NULL,
	[k2_a2] [int] NULL,
	[k2_a3] [int] NULL,
	[k2_b1] [int] NULL,
	[k2_b2] [int] NULL,
	[k2_b3] [int] NULL,
	[k2_c1] [int] NULL,
	[k2_c2] [int] NULL,
	[k2_c3] [int] NULL,
	[k2_d1] [int] NULL,
	[k2_d2] [int] NULL,
	[k2_d3] [int] NULL
	)

INSERT INTO @TempTable (report_id, date_posted, date_arrive, profile1_id, profile2_id, profile1_base_id, profile2_base_id, report_type, victory, row_id, open_read, profile1_name, profile2_name, profile1_face, profile2_face, profile1_base_name, profile2_base_name, profile1_x, profile2_x, profile1_y, profile2_y, r1, r2, r3, r4, r5, profile2_troops, profile2_killed, p2_a1, p2_b1, p2_c1, p2_d1, p2_a2, p2_b2, p2_c2, p2_d2, p2_a3, p2_b3, p2_c3, p2_d3, profile1_spy_sent, profile1_spy_captured, k2_a1, k2_b1, k2_c1, k2_d1, k2_a2, k2_b2, k2_c2, k2_d2, k2_a3, k2_b3, k2_c3, k2_d3) 
VALUES (@report_id, GETUTCDATE(), GETUTCDATE(), @profile_id, @to_profile_id, @base_id, @to_base_id, 21, @spy_successful, 0, 0, @profile1_name, @profile2_name, @profile1_face, @profile2_face, @profile1_base, @profile2_base, @profile1_x, @profile2_x, @profile1_y, @profile2_y, @r1, @r2, @r3, @r4, @r5, @total_troops, @total_reinforcements, @a1, @b1, @c1, @d1, @a2, @b2, @c2, @d2, @a3, @b3, @c3, @d3, @spy_sent, @spy_sent, @k_a1, @k_b1, @k_c1, @k_d1, @k_a2, @k_b2, @k_c2, @k_d2, @k_a3, @k_b3, @k_c3, @k_d3);

SELECT * FROM @TempTable;

SET @r = 1;

DECLARE  @r_AS_STRING varchar(30) = CAST( @r AS VARCHAR);
RAISERROR (' @r : %s', 10,-1,  @r_AS_STRING) with nowait;

END

--QUEST Spy a Player
    DECLARE @quest_type_id int
    BEGIN
        SET @quest_type_id = 4001
        IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
        BEGIN
            INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
            SET @quest_done = @quest_done + 1;
        END
    END
GO
/****** Object:  StoredProcedure [dbo].[usp_SendTransfer]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_SendTransfer]
(@profile_uid nvarchar(50), @base_id bigint, @to_profile_id bigint, @to_base_id bigint, @hero int, @a1 int, @b1 int, @c1 int, @d1 int, @a2 int, @b2 int, @c2 int, @d2 int, @a3 int, @b3 int, @c3 int, @d3 int, @march_time int, @r int out, @row_id int out, @quest_done int out)
AS
BEGIN


DECLARE @profile_id bigint, @dt_send datetime, @dt_arrive datetime, @transfer_id bigint, @report_id bigint

SET @r = -1;
SET @quest_done = 0;
SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid), 0);

IF @profile_id > 0
BEGIN

exec usp_BaseUpdate @base_id
exec usp_BaseUpdate @to_base_id

/*
--TODO: Double check march_time incase it is a Hack!
DECLARE @boost DECIMAL(18,2)=0
SET @boost = ISNULL((SELECT boost_march FROM View_Boost WHERE base_id=@base_id), 0);
SET @boost = (@boost / 100.0)+1;
IF @boost > 0
BEGIN
SET @march_time = @march_time/@boost
END
*/
INSERT INTO transfer_troops (march_time, date_sent, date_arrive, from_profile_id, to_profile_id, from_base_id, to_base_id, a1, b1, c1, d1, a2, b2, c2, d2, a3, b3, c3, d3) 
VALUES (@march_time, GETUTCDATE(), DATEADD(ss, @march_time, GETUTCDATE()), @profile_id, @to_profile_id, @base_id, @to_base_id, @a1, @b1, @c1, @d1, @a2, @b2, @c2, @d2, @a3, @b3, @c3, @d3);

SELECT @transfer_id = SCOPE_IDENTITY();

SET @row_id = @transfer_id;

UPDATE base SET a1=a1-@a1, a2=a2-@a2, a3=a3-@a3, b1=b1-@b1, b2=b2-@b2, b3=b3-@b3, c1=c1-@c1, c2=c2-@c2, c3=c3-@c3, d1=d1-@d1, d2=d2-@d2, d3=d3-@d3, transfer_id=@transfer_id, transfer_time=@march_time, transfer_queue=DATEADD(ss, @march_time, GETUTCDATE()) WHERE base_id=@base_id;

UPDATE base SET a1=a1+@a1, a2=a2+@a2, a3=a3+@a3, b1=b1+@b1, b2=b2+@b2, b3=b3+@b3, c1=c1+@c1, c2=c2+@c2, c3=c3+@c3, d1=d1+@d1, d2=d2+@d2, d3=d3+@d3 WHERE base_id=@to_base_id;

--Report
DECLARE @profile1_name nvarchar(50), @profile2_name nvarchar(50), @profile1_face int, @profile2_face int

SET @profile1_name = (SELECT profile_name FROM [profile] WHERE profile_id=@profile_id);
SET @profile2_name = (SELECT profile_name FROM [profile] WHERE profile_id=@to_profile_id);

SET @profile1_face = ISNULL((SELECT profile_face FROM [profile] WHERE profile_id=@profile_id), 0);
SET @profile2_face = ISNULL((SELECT profile_face FROM [profile] WHERE profile_id=@to_profile_id), 0);

DECLARE @profile1_base nvarchar(50), @profile2_base nvarchar(50), @profile1_x int, @profile2_x int, @profile1_y int, @profile2_y int

SET @profile1_base = (SELECT base_name FROM base WHERE base_id=@base_id);
SET @profile2_base = (SELECT base_name FROM base WHERE base_id=@to_base_id);

SET @profile1_x = ISNULL((SELECT map_x FROM base WHERE base_id=@base_id), 0);
SET @profile2_x = ISNULL((SELECT map_x FROM base WHERE base_id=@to_base_id), 0);

SET @profile1_y = ISNULL((SELECT map_y FROM base WHERE base_id=@base_id), 0);
SET @profile2_y = ISNULL((SELECT map_y FROM base WHERE base_id=@to_base_id), 0);

INSERT INTO report (date_posted, date_arrive, profile1_id, profile2_id, profile1_base_id, profile2_base_id, report_type, victory, row_id, open_read, profile1_name, profile2_name, profile1_face, profile2_face, profile1_base_name, profile2_base_name, profile1_x, profile2_x, profile1_y, profile2_y, p1_a1, p1_b1, p1_c1, p1_d1, p1_a2, p1_b2, p1_c2, p1_d2, p1_a3, p1_b3, p1_c3, p1_d3) 
VALUES (GETUTCDATE(), DATEADD(ss, @march_time, GETUTCDATE()), @profile_id, @to_profile_id, @base_id, @to_base_id, 50, 1, @transfer_id, 0, @profile1_name, @profile2_name, @profile1_face, @profile2_face, @profile1_base, @profile2_base, @profile1_x, @profile2_x, @profile1_y, @profile2_y, @a1, @b1, @c1, @d1, @a2, @b2, @c2, @d2, @a3, @b3, @c3, @d3);

SELECT @report_id = SCOPE_IDENTITY();

DECLARE @TempTable TABLE(
	[report_id] [bigint] NOT NULL,
	[profile2_base_name] [nvarchar](50) NULL,
	[profile2_x] [bigint] NULL,
	[profile2_y] [bigint] NULL
	)

INSERT INTO @TempTable (report_id, profile2_base_name, profile2_x, profile2_y) 
VALUES (@report_id, @profile2_base, @profile2_x, @profile2_y);

SELECT * FROM @TempTable;

SET @r = 1;

END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_Speedup]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Speedup]
(@profile_uid nvarchar(50), @base_id int, @item_id int, @type int,@attack_id int out, @background_job_id int out,@new_time_span_from_now int out,@r int out)
AS
BEGIN

    exec usp_BaseUpdate @base_id

    DECLARE @profile_id int, @item_quantity int, @item_value int, @item_id_sped_up int
    
    DECLARE @item_id_AS_STRING varchar(30) = CAST(@item_id AS VARCHAR);
	RAISERROR ('item_id : %s', 10,-1, @item_id_AS_STRING) with nowait;
    DECLARE @type_AS_STRING varchar(30) = CAST(@type AS VARCHAR);
	RAISERROR ('type : %s', 10,-1, @type_AS_STRING) with nowait;
    
    SET @r = -1;
    SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid), 0);
    DECLARE @profile_id_AS_STRING varchar(30) = CAST(@profile_id AS VARCHAR);
	RAISERROR ('profile_id : %s', 10,-1, @profile_id_AS_STRING) with nowait;
    SET @item_quantity = ISNULL((SELECT quantity FROM itemprofile WHERE item_id=@item_id AND profile_id=@profile_id), 0);

    DECLARE @item_quantity_AS_STRING varchar(30) = CAST(@item_quantity AS VARCHAR);
	RAISERROR ('item_quantity : %s', 10,-1, @item_quantity_AS_STRING) with nowait;
    
    IF @item_quantity > 0--Item Available
    BEGIN
        SET @item_value = ISNULL((SELECT item_value FROM item WHERE item_id=@item_id), 0);
        
        DECLARE @item_value_AS_STRING varchar(30) = CAST(@item_value AS VARCHAR);
	    RAISERROR ('item_value : %s', 10,-1, @item_value_AS_STRING) with nowait;
    
        IF @item_value > 0 --Valid speedup
        BEGIN
            DECLARE @old_arrive_date datetime = GETUTCDATE();
            DECLARE @new_arrive_date datetime = GETUTCDATE();
            DECLARE @old_return_date datetime = GETUTCDATE();
            DECLARE @new_return_date datetime = GETUTCDATE();
            DECLARE @remaining_march_time float = 0;
            DECLARE @reduction_percentage float =0;
            DECLARE @reduced_march_time float = 0;
            DECLARE @new_march_time float = 0;  
              
            UPDATE itemprofile SET quantity=quantity-1 WHERE item_id=@item_id AND profile_id=@profile_id;

            IF @type = 0 --TV_BUILD
            BEGIN
                SET @item_id_sped_up = ISNULL((SELECT build_location FROM base WHERE base_id=@base_id),0);
                UPDATE base SET build_queue=DATEADD(ss, @item_value*-1, build_queue) WHERE base_id=@base_id AND profile_id=@profile_id;

                UPDATE build SET build_queue=DATEADD(ss, @item_value*-1, build_queue) WHERE base_id=@base_id AND location=@item_id_sped_up;
                SET @r = 1;
            END

            ELSE IF @type = 1 --TV_RESEARCH
                BEGIN
                UPDATE base SET research_queue=DATEADD(ss, @item_value*-1, research_queue) WHERE base_id=@base_id AND profile_id=@profile_id;
                SET @r = 1;
            END

            ELSE IF @type = 6 --TV_HEAL
                BEGIN
                UPDATE base SET hospital_queue=DATEADD(ss, @item_value*-1, hospital_queue) WHERE base_id=@base_id AND profile_id=@profile_id;
                SET @r = 1;
            END

            ELSE IF @type = 7 --TV_A
            BEGIN
                UPDATE base SET a_queue=DATEADD(ss, @item_value*-1, a_queue) WHERE base_id=@base_id AND profile_id=@profile_id;
                SET @r = 1;
            END

            ELSE IF @type = 8 --TV_B
            BEGIN
                UPDATE base SET b_queue=DATEADD(ss, @item_value*-1, b_queue) WHERE base_id=@base_id AND profile_id=@profile_id;
                SET @r = 1;
            END

            ELSE IF @type = 9 --TV_C
            BEGIN
                UPDATE base SET c_queue=DATEADD(ss, @item_value*-1, c_queue) WHERE base_id=@base_id AND profile_id=@profile_id;
                SET @r = 1;
            END

            ELSE IF @type = 10 --TV_D
            BEGIN
                UPDATE base SET d_queue=DATEADD(ss, @item_value*-1, d_queue) WHERE base_id=@base_id AND profile_id=@profile_id;
                SET @r = 1;
            END

            ELSE IF @type = 11 --TV_SPY
            BEGIN
                UPDATE base SET spy_queue=DATEADD(ss, @item_value*-1, spy_queue) WHERE base_id=@base_id AND profile_id=@profile_id;
                SET @r = 1;
            END
            
            --Speeds up whatever existing march(to and fro) and attack time
            ELSE IF @type = 2 --TV_ATTACK
            BEGIN
                DECLARE @current_time datetime=GETUTCDATE(), @job_time int =0;
                --latest_captured_base_id column onky for PVE
                DECLARE @pve_captured_base_id int, @is_attack_capture int
                
                SELECT  @attack_id = attack_id, @new_march_time = attack_time , @old_arrive_date = attack_queue, @old_return_date = attack_return, @job_time = attack_job_time, @pve_captured_base_id= latest_captured_base_id, @is_attack_capture=is_attack_capture
                FROM base WHERE base_id=@base_id AND profile_id=@profile_id;
                
                SET @reduction_percentage =CAST(@item_value AS float)/100;      
                --Determine which part of the attack it is in
                
                IF(DATEDIFF(ss,@current_time,@old_arrive_date)>0)
                --before arriving to the attack
                BEGIN
                    
                    SET @remaining_march_time = DATEDIFF(ss,GETUTCDATE(),@old_arrive_date)
                    SET @reduced_march_time = @remaining_march_time*@reduction_percentage;
                    
                    SET @new_march_time = @new_march_time*(1-@reduction_percentage);
                    SET @new_arrive_date = DATEADD(ss,@reduced_march_time*-1,@old_arrive_date) 
                    SET @new_return_date =  DATEADD(ss,(@new_march_time+@job_time),@new_arrive_date) 
                
                    UPDATE base SET attack_time=@new_march_time,attack_queue=@new_arrive_date, attack_return=@new_return_date WHERE base_id=@base_id AND profile_id=@profile_id;

                    SET @r = 3; 
                    
                    
                    DECLARE @attack_to_profile_id int =0
                    SELECT @background_job_id=background_job_id,@attack_to_profile_id =to_profile_id
                    FROM attack WHERE attack_id = @attack_id  
                        
                    --Nonbarbarian
                    IF(@attack_to_profile_id>1)
                    BEGIN
                        UPDATE attack SET march_time= @new_march_time, date_arrive=@new_arrive_date, date_return=@new_return_date WHERE attack_id=@attack_id

                        SET @new_time_span_from_now =@remaining_march_time-@reduced_march_time;
                        SET @r = 2; 
                    END
                    ELSE
                    BEGIN
                        IF(@pve_captured_base_id>0 AND @is_attack_capture=1)
                        BEGIN
                            UPDATE base
                            SET last_captured = DATEADD(ss,-1*@reduced_march_time,last_captured)
                            WHERE base_id=@pve_captured_base_id
                            
                            EXECUTE usp_UpdateRegionsAdjustment  @pve_captured_base_id,@reduced_march_time
                        END
                    END
                END
                ELSE IF(DATEDIFF(ss,@current_time,DATEADD(ss,@job_time,@old_arrive_date))>0)
                --during the attack
                BEGIN
                    SET @new_march_time = @new_march_time*(1-@reduction_percentage);
                    SET @new_return_date =  DATEADD(ss,(@new_march_time+@job_time),@old_arrive_date)
                    
                    UPDATE base SET attack_time=@new_march_time, attack_return=@new_return_date WHERE base_id=@base_id AND profile_id=@profile_id;
                    
                    --Nonbarbarian
                    IF(@attack_id>1)
                    BEGIN
                        UPDATE attack SET march_time= @new_march_time, date_return=@new_return_date WHERE attack_id=@attack_id
                    END
                    SET @r = 1; 
                END
                ELSE
                --after the attack
                BEGIN
                    SET @remaining_march_time = DATEDIFF(ss,GETUTCDATE(),@old_return_date)
                    SET @reduced_march_time = @remaining_march_time*@reduction_percentage;
                    
                    SET @new_march_time = @new_march_time*(1-@reduction_percentage);
                    SET @new_return_date = DATEADD(ss,@reduced_march_time*-1,@old_return_date) 
                    
                    UPDATE base SET attack_time=@new_march_time, attack_return=@new_return_date WHERE base_id=@base_id AND profile_id=@profile_id;
                    
                    --Nonbarbarian
                    IF(@attack_id>1)
                    BEGIN
                        UPDATE attack SET march_time= @new_march_time, date_return=@new_return_date WHERE attack_id=@attack_id
                    END
                    SET @r = 1; 
                END
                /*
                DECLARE @remaining_march_time_AS_STRING varchar(30) = CAST(@remaining_march_time AS VARCHAR);
                RAISERROR ('@remaining_march_time : %s', 10,-1, @remaining_march_time_AS_STRING) with nowait;
                */

            END

            ELSE IF @type = 3 --TV_TRADE
            BEGIN
                
                DECLARE @trade_id int = 0;
                
                SELECT  @trade_id = trade_id, @new_march_time = trade_time , @old_arrive_date = trade_queue
                FROM base WHERE base_id=@base_id AND profile_id=@profile_id;
                
                --SELECT @old_arrive_date = date_arrive
                --FROM trades WHERE trade_id = @trade_id
                
                SET @remaining_march_time = DATEDIFF(ss,GETUTCDATE(),@old_arrive_date)
                
                SET @reduction_percentage =CAST(@item_value AS float)/100;

                SET @reduced_march_time = @remaining_march_time*@reduction_percentage;

                SET @new_arrive_date = DATEADD(ss,@reduced_march_time*-1,@old_arrive_date)
                
                SET @new_march_time = @new_march_time*(1-@reduction_percentage);
                
                UPDATE trades SET march_time= @new_march_time, date_arrive=@new_arrive_date WHERE trade_id=@trade_id
                
                UPDATE base SET trade_time=@new_march_time, trade_queue=@new_arrive_date WHERE base_id=@base_id AND profile_id=@profile_id;
                
                SET @r = 1;
            END

            ELSE IF @type = 4 --TV_REINFORCE
            BEGIN
                DECLARE @reinforce_id int = 0;
                
                SELECT  @reinforce_id = reinforce_id , @new_march_time = reinforce_time , @old_arrive_date = reinforce_queue
                FROM base WHERE base_id=@base_id AND profile_id=@profile_id;
                
                --SELECT @old_arrive_date = date_arrive
                --FROM reinforce WHERE reinforce_id = @reinforce_id
                
                SET @remaining_march_time = DATEDIFF(ss,GETUTCDATE(),@old_arrive_date)
                
                SET @reduction_percentage =CAST(@item_value AS float)/100;

                SET @reduced_march_time = @remaining_march_time*@reduction_percentage;

                SET @new_arrive_date = DATEADD(ss,@reduced_march_time*-1,@old_arrive_date)
                
                SET @new_march_time = @new_march_time*(1-@reduction_percentage);
                
                UPDATE reinforce SET march_time= @new_march_time, date_arrive=@new_arrive_date WHERE reinforce_id=@reinforce_id
                
                UPDATE base SET reinforce_time=@new_march_time, reinforce_queue=@new_arrive_date WHERE base_id=@base_id AND profile_id=@profile_id;

                SET @r = 1;
            END

            ELSE IF @type = 5 --TV_TRANSFER
            BEGIN
                DECLARE @transfer_id int = 0;
                
                SELECT  @transfer_id = transfer_id, @new_march_time = transfer_time , @old_arrive_date = transfer_queue 
                FROM base WHERE base_id=@base_id AND profile_id=@profile_id;
                
                --SELECT @old_arrive_date = date_arrive
                --FROM transfer_troops WHERE transfer_id = @transfer_id
                
                SET @remaining_march_time = DATEDIFF(ss,GETUTCDATE(),@old_arrive_date)
                
                SET @reduction_percentage =CAST(@item_value AS float)/100;

                SET @reduced_march_time = @remaining_march_time*@reduction_percentage;

                SET @new_arrive_date = DATEADD(ss,@reduced_march_time*-1,@old_arrive_date)
                
                SET @new_march_time = @new_march_time*(1-@reduction_percentage);
                
                UPDATE transfer_troops SET march_time= @new_march_time, date_arrive=@new_arrive_date WHERE transfer_id=@transfer_id
                
                UPDATE base SET transfer_time=@new_march_time, transfer_queue=@new_arrive_date WHERE base_id=@base_id AND profile_id=@profile_id;

                SET @r = 1;
            END 
        END
        ELSE
        BEGIN --Type Not Valid
            RAISERROR ('Type Not Valid', 10,-1) with nowait;
                
            SET @r = -1;
        END
    END
    ELSE
    BEGIN --Item Not Available
        RAISERROR ('Item Not Available', 10,-1) with nowait;
        
        SET @r = -1;
    END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SpeedupPercent]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_SpeedupPercent]
(@profile_uid nvarchar(50), @base_id int, @item_id int, @type int, @row_id int, @r int out, @to_profile_id int out, @to_base_id int out)
AS
BEGIN

DECLARE @profile_id int, @item_quantity int, @item_value int, @date_a datetime, @item_percent decimal(10,2), @diff_sec decimal(10,2), @diff_sec_int int

SET @r = -1;
SET @to_profile_id = 0;
SET @to_base_id = 0;

SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid), 0);
SET @item_quantity = ISNULL((SELECT quantity FROM itemprofile WHERE item_id=@item_id AND profile_id=@profile_id), 0);

IF @item_quantity > 0
BEGIN

SET @item_value = ISNULL((SELECT item_value FROM item WHERE item_id=@item_id), 0);

IF @item_value > 0
BEGIN

UPDATE itemprofile SET quantity=quantity-1 WHERE item_id=@item_id AND profile_id=@profile_id;

SET @item_percent = (CAST(@item_value AS decimal(10,2))/100.00);

IF @type = 2
BEGIN
SET @date_a = (SELECT date_arrive FROM attack WHERE from_base_id=@base_id AND from_profile_id=@profile_id AND attack_id=@row_id);
SET @diff_sec_int = (SELECT DATEDIFF(second, GETUTCDATE(), @date_a));
IF @diff_sec_int > 0
BEGIN
SET @diff_sec = @diff_sec_int*@item_percent;
SET @diff_sec_int = -@diff_sec;
UPDATE base SET attack_queue=DATEADD(ss, @diff_sec_int, attack_queue) WHERE base_id=@base_id AND profile_id=@profile_id;
UPDATE attack SET date_arrive=DATEADD(ss, @diff_sec_int, date_arrive) WHERE from_base_id=@base_id AND from_profile_id=@profile_id AND attack_id=@row_id;

--Update Report to speedup
UPDATE report SET date_arrive=DATEADD(ss, @diff_sec_int, date_arrive) WHERE profile1_base_id=@base_id AND profile1_id=@profile_id AND row_id=@row_id AND report_type=21;

END
ELSE -- Maybe attack is in return
BEGIN
	SET @date_a = (SELECT date_return FROM attack WHERE from_base_id=@base_id AND from_profile_id=@profile_id AND attack_id=@row_id);
	SET @diff_sec_int = (SELECT DATEDIFF(second, GETUTCDATE(), @date_a));
	IF @diff_sec_int > 0
	BEGIN
		SET @diff_sec = @diff_sec_int*@item_percent;
		SET @diff_sec_int = -@diff_sec;
		UPDATE base SET attack_return=DATEADD(ss, @diff_sec_int, attack_return) WHERE base_id=@base_id AND profile_id=@profile_id;
		UPDATE attack SET date_return=DATEADD(ss, @diff_sec_int, date_return) WHERE from_base_id=@base_id AND from_profile_id=@profile_id AND attack_id=@row_id;
	END
END

END

IF @type = 3
BEGIN
SET @date_a = (SELECT date_arrive FROM trades WHERE from_base_id=@base_id AND from_profile_id=@profile_id AND trade_id=@row_id);
SET @diff_sec_int = (SELECT DATEDIFF(second, GETUTCDATE(), @date_a));
IF @diff_sec_int > 0
BEGIN
SET @diff_sec = @diff_sec_int*@item_percent;
SET @diff_sec_int = -@diff_sec;
UPDATE base SET trade_queue=DATEADD(ss, @diff_sec_int, trade_queue) WHERE base_id=@base_id AND profile_id=@profile_id;
UPDATE trades SET date_arrive=DATEADD(ss, @diff_sec_int, date_arrive) WHERE from_base_id=@base_id AND from_profile_id=@profile_id AND trade_id=@row_id;

--Update Report to speedup
UPDATE report SET date_arrive=DATEADD(ss, @diff_sec_int, date_arrive) WHERE profile1_base_id=@base_id AND profile1_id=@profile_id AND row_id=@row_id AND report_type=30;
SET @to_profile_id = ISNULL((SELECT to_profile_id FROM trades WHERE trade_id=@row_id), 0);
SET @to_base_id = ISNULL((SELECT to_base_id FROM trades WHERE trade_id=@row_id), 0);

END
END

IF @type = 4
BEGIN
SET @date_a = (SELECT date_arrive FROM reinforce WHERE from_base_id=@base_id AND from_profile_id=@profile_id AND reinforce_id=@row_id);
SET @diff_sec_int = (SELECT DATEDIFF(second, GETUTCDATE(), @date_a));
IF @diff_sec_int > 0
BEGIN
SET @diff_sec = @diff_sec_int*@item_percent;
SET @diff_sec_int = -@diff_sec;
UPDATE base SET reinforce_queue=DATEADD(ss, @diff_sec_int, reinforce_queue) WHERE base_id=@base_id AND profile_id=@profile_id;
UPDATE reinforce SET date_arrive=DATEADD(ss, @diff_sec_int, date_arrive) WHERE from_base_id=@base_id AND from_profile_id=@profile_id AND reinforce_id=@row_id;

--Update Report to speedup
UPDATE report SET date_arrive=DATEADD(ss, @diff_sec_int, date_arrive) WHERE profile1_base_id=@base_id AND profile1_id=@profile_id AND row_id=@row_id AND report_type=40;

END
END

IF @type = 5
BEGIN
SET @date_a = (SELECT date_arrive FROM transfer_troops WHERE from_base_id=@base_id AND from_profile_id=@profile_id AND transfer_id=@row_id);
SET @diff_sec_int = (SELECT DATEDIFF(second, GETUTCDATE(), @date_a));
IF @diff_sec_int > 0
BEGIN
SET @diff_sec = @diff_sec_int*@item_percent;
SET @diff_sec_int = -@diff_sec;
UPDATE base SET transfer_queue=DATEADD(ss, @diff_sec_int, transfer_queue) WHERE base_id=@base_id AND profile_id=@profile_id;
UPDATE transfer_troops SET date_arrive=DATEADD(ss, @diff_sec_int, date_arrive) WHERE from_base_id=@base_id AND from_profile_id=@profile_id AND transfer_id=@row_id;

--Update Report to speedup
UPDATE report SET date_arrive=DATEADD(ss, @diff_sec_int, date_arrive) WHERE profile1_base_id=@base_id AND profile1_id=@profile_id AND row_id=@row_id AND report_type=50;

END
END

SET @r = 1;

END

END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_StartMission]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_StartMission]
(@profile_id bigint,@mission_id int ,@mission_duration int,@r int out)
AS
BEGIN    
    SET @r = -1;
    
    IF EXISTS(SELECT mission_id FROM mission WHERE mission_id=@mission_id)
    BEGIN
        DECLARE @current_time datetime = GETUTCDATE(), @current_mission_ending datetime;
        
        SELECT @current_mission_ending = date_ending FROM mission WHERE mission_id = @mission_id 
        
        DECLARE @current_mission_ending_AS_STRING varchar(30) = CAST(@current_mission_ending AS VARCHAR);
	    RAISERROR ('@current_mission_ending : %s', 10,-1, @current_mission_ending_AS_STRING) with nowait;

        IF((@current_mission_ending IS NULL))
        BEGIN
            DECLARE @new_mission_date_ending datetime;
            SET @new_mission_date_ending = DATEADD(ss,@mission_duration,@current_time);

            UPDATE mission 
            SET started='TRUE',date_ending=@new_mission_date_ending
            WHERE mission_id = @mission_id
            
            UPDATE profile
            SET current_mission_id=@mission_id, mission_date_ending=@new_mission_date_ending
            WHERE profile_id = @profile_id
            SET @r = 1;
        END
    END
    
END
GO
/****** Object:  StoredProcedure [dbo].[usp_TeleportTo]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_TeleportTo]
(@profile_uid nvarchar(50), @base_id int, @map_x int, @map_y int, @r int out)
AS
BEGIN

DECLARE @profile_id int, @item_quantity int, @item_id int

SET @item_id = 712;

SET @r = -1;
SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid), 0);
SET @item_quantity = ISNULL((SELECT quantity FROM itemprofile WHERE item_id=@item_id AND profile_id=@profile_id), 0);

IF @item_quantity > 0
BEGIN

UPDATE itemprofile set quantity=quantity-1 WHERE item_id=@item_id AND profile_id=@profile_id;

UPDATE base SET map_x=@map_x, map_y=@map_y WHERE base_id=@base_id AND profile_id=@profile_id;

SET @r = 1;

EXECUTE usp_UpdateRegions @base_id
END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_TrainTroops]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_TrainTroops]
(@profile_uid nvarchar(50), @base_id int, @unit_type varchar(50), @unit_tier varchar(50), @unit_count int, @r int out, @quest_done int out)
AS
BEGIN

RAISERROR ('usp_TrainTroops_', 10,-1) with nowait;

exec usp_BaseUpdate @base_id

DECLARE @profile_id int, @t_time float, @h_r1 int, @h_r2 int, @h_r3 int, @h_r4 int, @h_r5 int, @h_power int, @unit_tier_1 varchar(50), @unit_tier_2 varchar(50), @boost float, @view_boost float

SET @r = -1;
SET @quest_done = 0;
SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid), 0);

-- Correct training time and resources cost per unit according to unit table

SET @h_r1 = ISNULL((SELECT r1 FROM unit WHERE [type]=@unit_type AND tier=CONVERT(int,@unit_tier)), 0)*@unit_count;
SET @h_r2 = ISNULL((SELECT r2 FROM unit WHERE [type]=@unit_type AND tier=CONVERT(int,@unit_tier)), 0)*@unit_count;
SET @h_r3 = ISNULL((SELECT r3 FROM unit WHERE [type]=@unit_type AND tier=CONVERT(int,@unit_tier)), 0)*@unit_count;
SET @h_r4 = ISNULL((SELECT r4 FROM unit WHERE [type]=@unit_type AND tier=CONVERT(int,@unit_tier)), 0)*@unit_count;
SET @h_r5 = ISNULL((SELECT r5 FROM unit WHERE [type]=@unit_type AND tier=CONVERT(int,@unit_tier)), 0)*@unit_count;
SET @t_time = ISNULL((SELECT [time] FROM unit WHERE [type]=@unit_type AND tier=CONVERT(int,@unit_tier)), 0)*@unit_count;
SET @h_power = ISNULL((SELECT [power] FROM unit WHERE [type]=@unit_type AND tier=CONVERT(int,@unit_tier)), 0)*@unit_count;

DECLARE @t AS BaseFetchTableType

Insert Into @t Exec dbo.usp_BaseFetch @base_id, @profile_id

SET @view_boost = ISNULL((SELECT boost_training FROM @t WHERE base_id=@base_id), 0);

SET @boost = (@view_boost / 100.0) + 1;

DECLARE @unit_count_AS_STRING varchar(30) = CAST(@unit_count AS VARCHAR);
RAISERROR ('@unit_count : %s', 10,-1, @unit_count_AS_STRING) with nowait;

DECLARE @boost_AS_STRING varchar(30) = CAST(@boost AS VARCHAR);
RAISERROR ('@boost : %s', 10,-1, @boost_AS_STRING) with nowait;

DECLARE @t_time_AS_STRING varchar(30) = CAST(@t_time AS VARCHAR);
RAISERROR ('@t_time : %s', 10,-1, @t_time_AS_STRING) with nowait;

IF @boost >= 1
BEGIN
SET @t_time = @t_time/@boost;
END

SET @t_time_AS_STRING = CAST(@t_time AS VARCHAR);
RAISERROR ('@t_time after: %s', 10,-1, @t_time_AS_STRING) with nowait;

IF @t_time > 0
BEGIN

	DECLARE @sqlText nvarchar(1000);

	IF @unit_tier = '1'
	BEGIN
		SET @unit_tier_1 = '2';
		SET @unit_tier_2 = '3';
	END
	ELSE IF @unit_tier = '2'
	BEGIN
		SET @unit_tier_1 = '1';
		SET @unit_tier_2 = '3';
	END
	ELSE IF @unit_tier = '3'
	BEGIN
		SET @unit_tier_1 = '1';
		SET @unit_tier_2 = '2';
	END
	
	/*
	SET @sqlText = N'UPDATE base SET ' + @unit_type + '1=' + @unit_type + '1+t_' + @unit_type + '1, ' + @unit_type + '2=' + @unit_type + '2+t_' + @unit_type + '2, ' + @unit_type + '3=' + @unit_type + '3+t_' + @unit_type + '3, 
	t_' + @unit_type+@unit_tier + '=' + CONVERT(varchar(100),@unit_count) + ', t_' + @unit_type+@unit_tier_1 + '=0, t_' + @unit_type+@unit_tier_2 + '=0, 
	r1=r1-' + CONVERT(varchar(100),@h_r1) + ', r2=r2-' + CONVERT(varchar(100),@h_r2) + ', r3=r3-' + CONVERT(varchar(100),@h_r3) + ', r4=r4-' + CONVERT(varchar(100),@h_r4) + ', r5=r5-' + CONVERT(varchar(100),@h_r5) + ', 
	' + @unit_type + '_queue=DATEADD(ss, ' + CONVERT(varchar(100),@t_time) + ', GETUTCDATE()), ' + @unit_type + '_time=' + CONVERT(varchar(100),@t_time) + 
	' WHERE base_id=' + CONVERT(varchar(100),@base_id) + ' AND profile_id=' + CONVERT(varchar(100),@profile_id) + ' AND ' + @unit_type + '_queue<GETUTCDATE()'
	*/
	
	SET @sqlText = N'UPDATE base SET ' + @unit_type + @unit_tier +'=' + @unit_type + @unit_tier+'+ t_' + @unit_type + @unit_tier + ', t_'+@unit_type + @unit_tier +' = '+CONVERT(varchar(100),@unit_count)+','+ @unit_type + @unit_tier_1 +'=' + @unit_type + @unit_tier_1+'+ t_'+@unit_type + @unit_tier_1+' , t_'+ @unit_type + @unit_tier_1 +'=0,'+@unit_type + @unit_tier_2 +'=' + @unit_type + @unit_tier_2+'+ t_'+@unit_type + @unit_tier_2 +', t_'+ @unit_type + @unit_tier_2 +'=0,'+'
	r1=r1-' + CONVERT(varchar(100),@h_r1) + ', r2=r2-' + CONVERT(varchar(100),@h_r2) + ', r3=r3-' + CONVERT(varchar(100),@h_r3) + ', r4=r4-' + CONVERT(varchar(100),@h_r4) + ', r5=r5-' + CONVERT(varchar(100),@h_r5) + ', 
	' + @unit_type + '_queue=DATEADD(ss, ' + CONVERT(varchar(100),@t_time) + ', GETUTCDATE()), ' + @unit_type + '_time=' + CONVERT(varchar(100),@t_time) + 
	' WHERE base_id=' + CONVERT(varchar(100),@base_id) + ' AND profile_id=' + CONVERT(varchar(100),@profile_id) + ' AND ' + @unit_type + '_queue<GETUTCDATE()'
    
    RAISERROR ('sqlText: %s', 10,-1, @sqlText) with nowait;
    
	Exec (@sqlText);

	UPDATE [profile] SET xp=xp+@h_power, xp_gain=xp_gain+@h_power, xp_gain_a=xp_gain_a+@h_power WHERE profile_id=@profile_id;

	------------------------------QUEST-----------------------------------------------------------------------------------------------

	DECLARE @quest_type_id int

	SET @quest_type_id = 2001
	IF @unit_type = 'a' AND @unit_tier = '1' AND @unit_count >= 5
	BEGIN
	IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
	BEGIN
		INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
		SET @quest_done = @quest_done + 1;
	END
	END

	SET @quest_type_id = 2002
	IF @unit_type = 'b' AND @unit_tier = '1' AND @unit_count >= 10
	BEGIN
	IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
	BEGIN
		INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
		SET @quest_done = @quest_done + 1;
	END
	END
    
    SET @quest_type_id = 2003
	IF @unit_type = 'c' AND @unit_tier = '1' AND @unit_count >= 15
	BEGIN
	IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
	BEGIN
		INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
		SET @quest_done = @quest_done + 1;
	END
	END
    
    SET @quest_type_id = 2004
	IF @unit_type = 'd' AND @unit_tier = '1' AND @unit_count >= 20
	BEGIN
	IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
	BEGIN
		INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
		SET @quest_done = @quest_done + 1;
	END
	END
    
    SET @quest_type_id = 2005
	IF @unit_type = 'a' AND @unit_tier = '1' AND @unit_count >= 100
	BEGIN
	IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
	BEGIN
		INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
		SET @quest_done = @quest_done + 1;
	END
	END

	SET @quest_type_id = 2006
	IF @unit_type = 'b' AND @unit_tier = '1' AND @unit_count >= 100
	BEGIN
	IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
	BEGIN
		INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
		SET @quest_done = @quest_done + 1;
	END
	END
    
    SET @quest_type_id = 2007
	IF @unit_type = 'c' AND @unit_tier = '1' AND @unit_count >= 100
	BEGIN
	IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
	BEGIN
		INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
		SET @quest_done = @quest_done + 1;
	END
	END
    
    SET @quest_type_id = 2008
	IF @unit_type = 'd' AND @unit_tier = '1' AND @unit_count >= 100
	BEGIN
	IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
	BEGIN
		INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
		SET @quest_done = @quest_done + 1;
	END
	END
    
    SET @quest_type_id = 2009
	IF @unit_type = 'a' AND @unit_tier = '1' AND @unit_count >= 2500
	BEGIN
	IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
	BEGIN
		INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
		SET @quest_done = @quest_done + 1;
	END
	END

	SET @quest_type_id = 2010
	IF @unit_type = 'b' AND @unit_tier = '1' AND @unit_count >= 2500
	BEGIN
	IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
	BEGIN
		INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
		SET @quest_done = @quest_done + 1;
	END
	END
    
    SET @quest_type_id = 2011
	IF @unit_type = 'c' AND @unit_tier = '1' AND @unit_count >= 2500
	BEGIN
	IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
	BEGIN
		INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
		SET @quest_done = @quest_done + 1;
	END
	END
    
    SET @quest_type_id = 2012
	IF @unit_type = 'd' AND @unit_tier = '1' AND @unit_count >= 2500
	BEGIN
	IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
	BEGIN
		INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
		SET @quest_done = @quest_done + 1;
	END
	END
	------------------------------QUEST-----------------------------------------------------------------------------------------------

	SET @r = 1;
END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_UpdateAttack]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_UpdateAttack]
(@profile_uid nvarchar(50), @attack_id int, @background_job_id int, @r int out)
AS
BEGIN

    DECLARE @profile_id int

    SET @r = -1;
    SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid), 0);

    IF @profile_id > 0
    BEGIN

        UPDATE attack SET background_job_id=@background_job_id WHERE attack_id=@attack_id;
        SET @r = 1;

    END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_UpdateDeviceToken]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Shankar Nathan
-- Create date: 09 March 2014
-- Description:	UpdateDeviceToken
-- =============================================
CREATE PROCEDURE [dbo].[usp_UpdateDeviceToken]
(@profile_uid varchar(50), @devicetoken varchar(100), @r int out)
AS
BEGIN

UPDATE profile SET devicetoken=@devicetoken WHERE [uid]=@profile_uid;

SET @r = -1;

END
GO
/****** Object:  StoredProcedure [dbo].[usp_UpdatePlayerMissions]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Shankar Nathan
-- Create date: 08 March 2014
-- Description:	Create Daily Missions
-- =============================================
CREATE PROCEDURE [dbo].[usp_UpdatePlayerMissions]
(@profile_id bigint)
AS
BEGIN

	RAISERROR ('usp_UpdatePlayerMissions', 10, -1) with nowait;
	DECLARE @daily_mission_next_updated_time datetime, @filtered_mission_count int = 0, @random_number int = 0, @selected_mission_type_id int = 0, @number_of_daily_mission int = 0;
		
	SELECT @number_of_daily_mission=number_of_daily_mission, @daily_mission_next_updated_time=daily_mission_next_updated_time FROM settings WHERE settings_id=1;

	DECLARE @daily_mission_next_updated_time_AS_STRING varchar(30) = CAST(@daily_mission_next_updated_time AS VARCHAR);
	RAISERROR ('@daily_mission_next_updated_time : %s', 10, -1, @daily_mission_next_updated_time_AS_STRING) with nowait;

	IF (@daily_mission_next_updated_time < GETUTCDATE())
	BEGIN
		RAISERROR ('UpdatingPlayerMissions', 10, -1) with nowait;
		
		DELETE mission WHERE profile_id = @profile_id;
		
		DECLARE @new_daily_mission_next_updated_time datetime = DATEADD(day, 1, GETUTCDATE());
		
		UPDATE settings SET daily_mission_next_updated_time = @new_daily_mission_next_updated_time;
	END

	IF (NOT EXISTS(SELECT mission_id FROM mission WHERE profile_id=@profile_id))
	BEGIN
		RAISERROR ('InsertingPlayerMissions', 10, -1) with nowait;
		DECLARE @player_power int = -1;
		
		SELECT @player_power = xp FROM profile WHERE profile_id = @profile_id
		
		IF (@player_power > -1)
		BEGIN

			--At least 1 alliance mission
			SELECT @filtered_mission_count = COUNT(mission_type_id) FROM mission_type WHERE power_range_min<@player_power AND power_range_max>@player_power AND requirement_value_1>0 AND valid=1;

			IF (@filtered_mission_count > 0)
			BEGIN
				SET @random_number = ABS(Checksum(NewID()) % (@filtered_mission_count))+1;
			END
			ELSE
			BEGIN
				SET @random_number = 1;
			END;

			WITH Alliance_Mission_List (row_number, mission_type_id)
			AS
			-- Define the CTE query.
			(
				--currently order is not important as data randommyly selected
				SELECT ROW_NUMBER() OVER (ORDER BY mission_type_id) AS row_number, mission_type_id FROM mission_type WHERE (power_range_min<@player_power AND power_range_max>@player_power AND requirement_value_1>0 AND valid=1) OR (power_range_min=0 AND power_range_max=0 AND requirement_value_1>0 AND valid=1)
			)
			SELECT @selected_mission_type_id=mission_type_id FROM Alliance_Mission_List WHERE row_number=@random_number;
			
			IF (@selected_mission_type_id > 0)
			BEGIN
				INSERT INTO mission VALUES (@profile_id,@selected_mission_type_id,0,0,NULL);
				SET @number_of_daily_mission = @number_of_daily_mission-1;
			END
			
			--Other missions
			SELECT @filtered_mission_count = COUNT(mission_type_id) FROM mission_type WHERE power_range_min<@player_power AND power_range_max>@player_power;
			
			DECLARE @filtered_mission_count_AS_STRING varchar(30) = CAST(@filtered_mission_count AS VARCHAR);
			RAISERROR ('@filtered_mission_count : %s', 10, -1, @filtered_mission_count_AS_STRING) with nowait;

			WHILE (@number_of_daily_mission > 0)
			BEGIN

				IF (@filtered_mission_count > 0)
				BEGIN
					SET @random_number = ABS(Checksum(NewID()) % (@filtered_mission_count))+1;
				END
				ELSE
				BEGIN
					SET @random_number = 1;
				END

				DECLARE @random_number_AS_STRING varchar(30) = CAST(@random_number AS VARCHAR);
				RAISERROR ('@random_number : %s', 10, -1, @random_number_AS_STRING) with nowait;
				
				WITH Mission_List (row_number,mission_type_id)
				AS
				-- Define the CTE query.
				(
					--currently order is not important as data randomyly selected
					SELECT ROW_NUMBER() OVER (ORDER BY mission_type_id) AS row_number, mission_type_id FROM mission_type WHERE (power_range_min<@player_power AND power_range_max>@player_power AND valid=1) OR (power_range_min=0 AND power_range_max=0 AND valid=1)
				)
				SELECT @selected_mission_type_id=mission_type_id FROM Mission_List WHERE row_number=@random_number

				DECLARE @selected_mission_type_id_AS_STRING varchar(30) = CAST(@selected_mission_type_id AS VARCHAR);
				RAISERROR ('@selected_mission_type_id : %s', 10, -1, @selected_mission_type_id_AS_STRING) with nowait;
				
				INSERT INTO mission VALUES (@profile_id,@selected_mission_type_id,0,0,NULL)
				SET @number_of_daily_mission = @number_of_daily_mission-1;
			END
			
		END
	END
	
END

GO
/****** Object:  StoredProcedure [dbo].[usp_UpdatePlayerTutorial]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_UpdatePlayerTutorial]
(@profile_id int,@tutorial_on int, @last_completed_tutorial_step int, @r int out)
AS
BEGIN

SET @r = -1;
IF @profile_id > 0
BEGIN

UPDATE profile SET tutorial_on=@tutorial_on,last_completed_tutorial_step=@last_completed_tutorial_step WHERE profile_id=@profile_id;

IF(@last_completed_tutorial_step = 71)
BEGIN
    DECLARE @quest_type_id int = 5001
    DECLARE @quest_done int = 0
    IF NOT EXISTS(SELECT quest_id FROM quest WHERE profile_id=@profile_id AND quest_type_id=@quest_type_id)
    BEGIN
        INSERT INTO dbo.quest VALUES(@profile_id, @quest_type_id, 0);
        SET @quest_done = @quest_done + 1;
    END
END
            
SET @r = 1;

END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_UpdateRegions]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_UpdateRegions]
(@base_id int)
AS
BEGIN
	DECLARE @region_id bigint =0, @coordinate_x int =0,@coordinate_y int=0,@region_width int=0,@region_height int=0,@formula_variable_x DECIMAL(18,2)=0
    
    SELECT @coordinate_x=map_x, @coordinate_y=map_y
    FROM dbo.base
    WHERE base_id=@base_id
    
    DECLARE @coordinate_x_AS_STRING varchar(30) = CAST(@coordinate_x AS VARCHAR);
	RAISERROR ('@coordinate_x : %s', 10,-1, @coordinate_x_AS_STRING) with nowait;
    DECLARE @coordinate_y_AS_STRING varchar(30) = CAST(@coordinate_y AS VARCHAR);
	RAISERROR ('@coordinate_y : %s', 10,-1, @coordinate_y_AS_STRING) with nowait;

    SELECT @formula_variable_x=tile_id_x_multiplier,@region_width=region_width,@region_height=region_height
    FROM dbo.settings
    WHERE settings_id=1
    
    DECLARE @region_width_AS_STRING varchar(30) = CAST(@region_width AS VARCHAR);
	RAISERROR ('@region_width : %s', 10,-1, @region_width_AS_STRING) with nowait;

    DECLARE @region_height_AS_STRING varchar(30) = CAST(@region_height AS VARCHAR);
	RAISERROR ('@region_height : %s', 10,-1, @region_height_AS_STRING) with nowait;

    DECLARE @formula_variable_x_AS_STRING varchar(30) = CAST(@formula_variable_x AS VARCHAR);
	RAISERROR ('@formula_variable_x : %s', 10,-1, @formula_variable_x_AS_STRING) with nowait;
    
    SET @region_id = CAST((@coordinate_x/@region_width) AS int)*@formula_variable_x + CAST((@coordinate_y/@region_height) AS int)
    
    DECLARE @region_id_AS_STRING varchar(30) = CAST(@region_id AS VARCHAR);
	RAISERROR ('@region_id : %s', 10,-1, @region_id_AS_STRING) with nowait;
    
    /*
    UPDATE dbo.region 
    SET last_process = GETUTCDATE()
    WHERE region_id = @region_id
    */
    
    BEGIN TRAN
    UPDATE dbo.region with (serializable) 
    SET last_process = GETUTCDATE()
    WHERE region_id = @region_id

    IF @@ROWCOUNT = 0
    BEGIN
        INSERT INTO dbo.region (region_id,last_process) VALUES (@region_id,GETUTCDATE())
    END
    COMMIT TRAN
    
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UpdateRegionsAdjustment]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_UpdateRegionsAdjustment]
(@base_id int,@adjustment_seconds int)
AS
BEGIN
	DECLARE @region_id bigint =0, @coordinate_x int =0,@coordinate_y int=0,@region_width int=0,@region_height int=0,@formula_variable_x DECIMAL(18,2)=0,@previous_last_process datetime
    
    SELECT @coordinate_x=map_x, @coordinate_y=map_y
    FROM dbo.base
    WHERE base_id=@base_id
    
    DECLARE @coordinate_x_AS_STRING varchar(30) = CAST(@coordinate_x AS VARCHAR);
	RAISERROR ('@coordinate_x : %s', 10,-1, @coordinate_x_AS_STRING) with nowait;
    DECLARE @coordinate_y_AS_STRING varchar(30) = CAST(@coordinate_y AS VARCHAR);
	RAISERROR ('@coordinate_y : %s', 10,-1, @coordinate_y_AS_STRING) with nowait;

    SELECT @formula_variable_x=tile_id_x_multiplier,@region_width=region_width,@region_height=region_height
    FROM dbo.settings
    WHERE settings_id=1
    
    DECLARE @region_width_AS_STRING varchar(30) = CAST(@region_width AS VARCHAR);
	RAISERROR ('@region_width : %s', 10,-1, @region_width_AS_STRING) with nowait;

    DECLARE @region_height_AS_STRING varchar(30) = CAST(@region_height AS VARCHAR);
	RAISERROR ('@region_height : %s', 10,-1, @region_height_AS_STRING) with nowait;

    DECLARE @formula_variable_x_AS_STRING varchar(30) = CAST(@formula_variable_x AS VARCHAR);
	RAISERROR ('@formula_variable_x : %s', 10,-1, @formula_variable_x_AS_STRING) with nowait;
    
    SET @region_id = CAST((@coordinate_x/@region_width) AS int)*@formula_variable_x + CAST((@coordinate_y/@region_height) AS int)
    
    DECLARE @region_id_AS_STRING varchar(30) = CAST(@region_id AS VARCHAR);
	RAISERROR ('@region_id : %s', 10,-1, @region_id_AS_STRING) with nowait;
    
    SELECT @previous_last_process=last_process FROM region WHERE region_id=@region_id
    
    /*
    UPDATE dbo.region 
    SET last_process = GETUTCDATE()
    WHERE region_id = @region_id
    */
    BEGIN TRAN
    UPDATE dbo.region with (serializable) 
    SET last_process = DATEADD(ss,-1*@adjustment_seconds,@previous_last_process)
    WHERE region_id = @region_id

    IF @@ROWCOUNT = 0
    BEGIN
        INSERT INTO dbo.region (region_id,last_process) VALUES (@region_id,GETUTCDATE())
    END
    COMMIT TRAN
    
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UseItemHeroxp]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_UseItemHeroxp]
(@profile_uid nvarchar(50), @item_id int, @r int out)
AS
BEGIN

DECLARE @profile_id int, @item_quantity int, @item_value int

SET @r = -1;
SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid), 0);
SET @item_quantity = ISNULL((SELECT quantity FROM itemprofile WHERE item_id=@item_id AND profile_id=@profile_id), 0);

IF @item_quantity > 0
BEGIN

SET @item_value = ISNULL((SELECT item_value FROM item WHERE item_id=@item_id), 0);

IF @item_value > 0
BEGIN

UPDATE hero SET hero_xp=hero_xp+@item_value WHERE hero_status=1 AND profile_id=@profile_id;

UPDATE itemprofile SET quantity=quantity-1 WHERE item_id=@item_id AND profile_id=@profile_id;

SET @r = 1;

END

END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_UseItemResources]    Script Date: 6/25/2017 10:55:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_UseItemResources]
(@profile_uid nvarchar(50), @resource_type nvarchar(50), @base_id int, @item_id int, @r int out)
AS
BEGIN

exec usp_BaseUpdate @base_id

DECLARE @profile_id int, @item_quantity int, @item_value int

SET @r = -1;
SET @profile_id = ISNULL((SELECT TOP 1 profile_id FROM [profile] WHERE [uid]=@profile_uid), 0);
SET @item_quantity = ISNULL((SELECT quantity FROM itemprofile WHERE item_id=@item_id AND profile_id=@profile_id), 0);

IF @item_quantity > 0
BEGIN

SET @item_value = ISNULL((SELECT item_value FROM item WHERE item_id=@item_id), 0);

IF @item_value > 0
BEGIN

DECLARE @sqlText nvarchar(1000);
SET @sqlText = N'UPDATE base SET ' + @resource_type + '=' + @resource_type + '+' + CONVERT(varchar(10),@item_value) + ' WHERE base_id=' + CONVERT(varchar(10),@base_id);
EXEC (@sqlText);

UPDATE itemprofile set quantity=quantity-1 WHERE item_id=@item_id AND profile_id=@profile_id;

SET @r = 1;

END

END

END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'in seconds' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mission_type', @level2type=N'COLUMN',@level2name=N'mission_duration'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "alliance"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 254
               Right = 262
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 17
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 7485
         Alias = 1290
         Table = 2235
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Alliance'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Alliance'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "alliance_apply"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 194
               Right = 197
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "profile"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 274
               Right = 543
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 11
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1275
         Width = 1980
         Width = 1500
         Width = 1500
         Width = 1605
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_AllianceApplyProfile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_AllianceApplyProfile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "alliance"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 256
               Right = 241
            End
            DisplayFlags = 280
            TopColumn = 7
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 9960
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_AllianceEvent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_AllianceEvent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "alliance"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 200
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_AllianceEventResult'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_AllianceEventResult'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "attack"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Attacks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Attacks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[20] 4[40] 2[23] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "attack"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 18
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 32
         Width = 284
         Width = 900
         Width = 1140
         Width = 1980
         Width = 1980
         Width = 1500
         Width = 1980
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 8550
         Alias = 1725
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_AttacksArrive'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_AttacksArrive'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[25] 4[20] 2[22] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "attack"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 32
         Width = 284
         Width = 900
         Width = 1140
         Width = 1980
         Width = 1500
         Width = 1500
         Width = 1980
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 2130
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_AttacksReturn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_AttacksReturn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[39] 4[21] 2[22] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "base"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 239
            End
            DisplayFlags = 280
            TopColumn = 181
         End
         Begin Table = "build"
            Begin Extent = 
               Top = 6
               Left = 277
               Bottom = 136
               Right = 447
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 17
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_BaseCastleLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_BaseCastleLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[32] 4[36] 2[24] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "build"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 15000
         Alias = 1950
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Build'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Build'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[27] 4[34] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "t0"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 8085
         Alias = 1545
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_HeroLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_HeroLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[65] 4[12] 2[18] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "profile"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 298
               Right = 256
            End
            DisplayFlags = 280
            TopColumn = 19
         End
         Begin Table = "alliance"
            Begin Extent = 
               Top = 6
               Left = 289
               Bottom = 284
               Right = 520
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "hero"
            Begin Extent = 
               Top = 6
               Left = 550
               Bottom = 277
               Right = 770
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 136
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Wid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Profile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'th = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 9720
         Alias = 1665
         Table = 1875
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Profile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Profile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ProfileRank'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ProfileRank'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[22] 4[18] 2[44] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "reinforce"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 17
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 31
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1665
         Width = 1545
         Width = 1680
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 9150
         Alias = 2415
         Table = 2175
         Output = 870
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Reinforcements'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Reinforcements'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "reinforce"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ReinforcementsAt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ReinforcementsAt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "reinforce"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 33
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1680
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 8055
         Alias = 1455
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 2850
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ReinforcementsTo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ReinforcementsTo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "trades"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_TradesArrive'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_TradesArrive'
GO
USE [master]
GO
ALTER DATABASE [kingdom_world0] SET  READ_WRITE 
GO
