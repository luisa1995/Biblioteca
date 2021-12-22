USE [master]
GO

/****** Object:  Database [prueba]    Script Date: 21/12/22 12:07:02 a. m. ******/
CREATE DATABASE [prueba]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'prueba', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER01\MSSQL\DATA\prueba.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'prueba_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER01\MSSQL\DATA\prueba_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [prueba].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [prueba] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [prueba] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [prueba] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [prueba] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [prueba] SET ARITHABORT OFF 
GO

ALTER DATABASE [prueba] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [prueba] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [prueba] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [prueba] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [prueba] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [prueba] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [prueba] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [prueba] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [prueba] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [prueba] SET  ENABLE_BROKER 
GO

ALTER DATABASE [prueba] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [prueba] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [prueba] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [prueba] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [prueba] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [prueba] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [prueba] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [prueba] SET RECOVERY FULL 
GO

ALTER DATABASE [prueba] SET  MULTI_USER 
GO

ALTER DATABASE [prueba] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [prueba] SET DB_CHAINING OFF 
GO

ALTER DATABASE [prueba] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [prueba] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [prueba] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [prueba] SET QUERY_STORE = OFF
GO

ALTER DATABASE [prueba] SET  READ_WRITE 
GO


