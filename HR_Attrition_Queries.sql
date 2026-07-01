HR Attrition SQL Analysis
IBM HR Dataset — 1,470 Employee Records
Analyst: Ramya Ganagama

-- Query 1: Total Employees and Attrition Count
SELECT 
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Employees_Left,
    ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) 
    AS Attrition_Rate_Percent
FROM hr_data;

-- Query 2: Attrition by Department
SELECT 
    Department,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Employees_Left,
    ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) 
    AS Attrition_Rate_Percent
FROM hr_data
GROUP BY Department
ORDER BY Attrition_Rate_Percent DESC;

-- Query 3: Attrition by Age Group
SELECT 
    CASE 
        WHEN Age <= 25 THEN '18-25'
        WHEN Age <= 35 THEN '26-35'
        WHEN Age <= 45 THEN '36-45'
        WHEN Age <= 55 THEN '46-55'
        ELSE '55+' 
    END AS Age_Group,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Employees_Left,
    ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) 
    AS Attrition_Rate_Percent
FROM hr_data
GROUP BY Age_Group
ORDER BY Attrition_Rate_Percent DESC;

-- Query 4: Attrition by Salary Band
SELECT 
    CASE 
        WHEN MonthlyIncome < 3000 THEN 'Low (Below 3k)'
        WHEN MonthlyIncome < 6000 THEN 'Mid (3k-6k)'
        WHEN MonthlyIncome < 10000 THEN 'High (6k-10k)'
        ELSE 'Very High (10k+)' 
    END AS Salary_Band,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Employees_Left,
    ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) 
    AS Attrition_Rate_Percent
FROM hr_data
GROUP BY Salary_Band
ORDER BY Attrition_Rate_Percent DESC;

-- Query 5: Top 5 Job Roles with Highest Attrition
SELECT 
    JobRole,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Employees_Left,
    ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) 
    AS Attrition_Rate_Percent
FROM hr_data
GROUP BY JobRole
ORDER BY Attrition_Rate_Percent DESC
LIMIT 5;