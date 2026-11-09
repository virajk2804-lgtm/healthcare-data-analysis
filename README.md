
# Healthcare Data Analysis 


An end to end analysis of hopital addmission records. I cleamed the data in Excel, analysed it with pivot tables, answered business question with PostgreSQL and build with Power-Bi dashboards to summarise the result 


###### ***Note: The dataset is synthetic***

## Why I built this ?

I wanted a project that covers the full analytics workflow: checking data quality, cleaning, analysing, querying and reporting.

## Dataset :
- **Source**:- Kaggle, Healthcare Dataset   
- **Size**:- 54860 rows after cleaning, 15 original columns   
- **Main columns**:- Age, Gender, Medical Condition, Admission Type, Billing Amount, Insurance Provider, Hospital, Test Results, Date of Admission, Discharge Date

## Tools used
- **Excel**:- cleaning and analysis   
- **PostgreSQL**:- answering business questions with SQL  
- **Power BI**:- dashboard and visuals
- **GitHub**:- version control and documentation

## What I did ?

**1.** Data cleaning I checked for duplicates, inconsistent names, negative billing amounts and invalid dates (discharge before admission).  
I found 106 rows (0.19%) with negative billing. Since the data is synthetic, I treated them as errors and removed them.

**2.** New columns

Length of Stay:- discharge date minus admission date  
Age Group:- 0-18, 19-35, 36-50, 51-65, 66+  
Admission Month:- formatted as yyyy-mm so months sort correctly

**3.** Excel analysis I built pivot tables to answer six questions: most common conditions, average billing by condition, total billing by insurer, length of stay by admission type, abnormal test results by age group, and the monthly admission trend. The workbook also has a Summary sheet with the key insights.

**4.** SQL analysis I loaded the cleaned data into PostgreSQL (Cleaned data) and wrote queries for questions such as:

- How many patients were admitted in total?
- Which medical conditions are the most common?
- What is the average billing amount for each condition?
- Which insurance provider has the highest total billing?
- What is the average length of stay for each admission type?
- How many patients came for each admission type?
- How many male and female patients are there?
- How many patients have an abnormal test result?

All queries are in sql/queries.sql. I compared the results with my Excel pivot tables, and they matched.

**5. Power BI dashboard** The dashboard has four KPI cards and four charts:

- **KPI cards:** total patients, total billing, average length of stay, and abnormal test result %
- **Bar chart:** patients by medical condition
- **Bar chart:** total billing by insurance provider
- **Line chart:** monthly admissions trend
- **Donut chart:** admissions by type

Dashboard

###### **Key findings :**
- **Arthritis** is the most common condition, with **9207** patients.
- **Obesity** has the highest average billing at **25859**.    
- Cigna has the highest total billing at **284346461**.
- Average length of stay is about **15 days** for every admission type, so there is no real difference between them.
- Across all years combined, admissions were highest in  August and lowest in February.

## Project structure   
healthcare-data-analysis/  
├── data/  
│   ├── raw/  
│   └── cleaned/  
├── analysis/  
│   └── healthcare_analysis.xlsx  
├── sql/  
│   └── queries.sql  
├── dashboard/  
│   ├── healthcare_dashboard.pbix  
│   └── dashboard_screenshot.png  
└── README.md  

## How to use
1. Open the cleaned data in data/cleaned/.  
2. Open analysis/healthcare_analysis.xlsx to see the pivot tables and the Summary sheet.
3. Run sql/queries.sql in PostgreSQL after importing the cleaned data into a table named health_data.
4. Open dashboard/healthcare_dashboard.pbix in Power BI Desktop.

## What I learned
Checking data quality first makes the later analysis more trustworthy.  
Writing down every cleaning decision makes the work easier to explain and repeat.  
Getting the same numbers in Excel, SQL and Power BI is a useful way to confirm the analysis is correct.  

Contact  
Viraj Khot LinkedIn: [your link] Email: [your email]


