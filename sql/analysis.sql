--Total layoffs across all companies
select sum(Laid_Off_Count)
from layoffs_clean_deduped
where Laid_Off_Count is not NULL;
--616186

--Number of companies with layoffs (unique)
select count(Distinct Company)
from layoffs_clean_deduped
--2586

--Number of Industries affected
select count(Distinct Industry)
from layoffs_clean_deduped
--31

--Earliest and Latest layoffs
select min(Layoff_Date), max(Layoff_Date)
from layoffs_clean_deduped
--2020-03-11, 2024-06-05

--Layoffs by industry
select Industry, sum(Laid_Off_Count) as Total_Laid_Off
from layoffs_clean_deduped
where Laid_Off_Count is not null
group by Industry

--Layoffs over time
Select
YEAR(Layoff_Date) as YEAR,
sum(Laid_Off_Count) as Total_Laid_off
from layoffs_clean_deduped
where Laid_Off_Count is not null
group by YEAR(Layoff_Date)
order by YEAR

--Top 10 largest layoffs 2020-2024
select top 10 Company, Layoff_Date, Laid_Off_Count
from layoffs_clean_deduped
order by Laid_Off_Count desc

--Layoff count by funds raised
select 
Funds_Raised,
Laid_Off_Count,
Company,
Industry,
Layoff_Date
From layoffs_clean_deduped
where Funds_Raised is not null
and Laid_Off_Count is not null
order by Funds_Raised desc

