--Check if Dataset loaded correctly
Select *
From PortfolioProject_1..[2024 Layoffs Data]
order by 3,4

--Rename Dataset for ease of use
USE [PortfolioProject_1];
GO

--SELECT *
--INTO layoffs_raw
--FROM dbo.[2024 Layoffs Data];


--Clean and transform raw layoff data
Select
trim(Company) as Company, --remove whitespace
trim(Location_HQ) as Loation_HQ, --remove whitespace x2
trim(Industry) as Industry, --remove whitespace x3
trim(Country) as Country, --remove whitespace x4
cast(date as date) as Layoff_Date, --standardize date, remove time as we do not need it
cast(Laid_Off_Count as INT) as Laid_Off_Count, --make sure there are no decimals 
cast(Percentage as decimal(6,4)) as Percentage, --make percentages more precise and concise
stage,
funds_raised,
Date_Added
into layoffs_clean
from layoffs_raw

--Remove duplicates
SELECT DISTINCT * 
INTO layoffs_clean_deduped
FROM layoffs_clean;

