# End-to-End Data Analytics Project Using SQL Server & Power BI

![Dashboard Screenshot](Tech%20Layoff%20Dashboard.png)

This project analyzes **global tech layoffs between 2020–2024**, using SQL Server for data cleaning and transformation and Power BI for interactive visualization.  
The goal was to practice the full analytics pipeline: importing raw data, cleaning and modeling it, performing structured analysis, and building a clear dashboard that communicates key insights.

---

# Dataset

- **Source:** Tech Layoffs Dataset (Kaggle, 2020–2024)  
- **URL:** https://www.kaggle.com/datasets/theakhilb/layoffs-data-2022  

---

# Tools Used

- **SQL Server Express** — data cleaning, transformation, deduplication  
- **Power BI Desktop** — visual analysis, DAX, dashboard creation  
- **DAX** — calculated columns (e.g., workforce reduction severity categories)  

---

# Project Workflow

## SQL Server: Data Cleaning & Transformation

- Imported raw CSV data into SQL Server  
- Cleaned inconsistent column values  
- Applied:
  - `TRIM()` to remove whitespace  
  - `CAST(date AS DATE)` to standardize dates  
  - Numeric conversions (Laid_Off_Count, Percentage, Funds_Raised)  
- Handled nulls and removed duplicate entries with `SELECT DISTINCT`  
- Created the final cleaned table: **`layoffs_clean_deduped`**  
- All SQL scripts are included (`cleaning.sql`, `analysis.sql`)  

## SQL Analysis

- Computed total layoffs  
- Calculated companies affected  
- Identified industries with the highest layoffs  
- Analyzed trends by year  
- Created workforce reduction severity categories using DAX logic  

## Power BI Dashboard

- KPI cards:
  - Total layoffs  
  - Companies affected  
  - Industries impacted  
  - Average workforce laid off  
- Slicers: Year, Industry, Country, Funds Raised  
- Visuals:
  - Top 10 industries by total layoffs  
  - Layoffs over time (2020–2024)  
  - Biggest layoff events  
  - Workforce reduction severity breakdown (DAX-calculated)  
- Dashboard exported as both **`.pbix`** and **`.pdf`**  

---

# Key Insights from the Dashboard

- **616K** total layoffs across companies from 2020–2024  
- **~2,586** companies reported layoffs  
- Retail, Consumer Tech, and Transportation were the hardest-hit industries  
- **2023** saw the largest spike in layoffs  
- Most reductions fell in the **10–25% severity band**  
- Largest individual layoffs came from Tesla, Google, Meta, Amazon, Microsoft, Ericsson  

---

# How to View This Project

## Power BI Dashboard
- Open `dashboard.pbix` in Power BI Desktop  
- OR view the static rendering via `dashboard.pdf`  

## SQL Scripts
- View `cleaning.sql` and `analysis.sql` directly in this repository  
- Scripts run on SQL Server Express Edition  

SQL Scripts:
Review cleaning.sql and analysis.sql directly in this repo
Scripts run on SQL Server Express edition
