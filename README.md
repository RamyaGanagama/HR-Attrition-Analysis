# HR Attrition Analysis
**Analyst:** Ramya Ganagama  
**Dataset:** IBM HR Analytics Employee Attrition Dataset  
**Records:** 1,470 employees | 35 columns  
**Tools:** Excel | SQL (SQLite) | Power BI  
**Status:** ✅ Complete  

---

## Project Overview
End-to-end HR attrition analysis to identify key drivers 
of employee attrition using three industry-standard tools. 
This project demonstrates data quality checking, SQL-based 
analysis, and interactive dashboard development on a 
real-world HR dataset.

---

## Tools & Technologies Used
| Tool | Purpose |
|------|---------|
| Microsoft Excel | Data quality checks, duplicate detection |
| SQL (SQLite/DB Browser) | Data analysis & business insights |
| Power BI Desktop | Interactive dashboard & visualisation |

---

## Dataset
- **Source:** IBM HR Analytics Employee Attrition Dataset
- **Records:** 1,470 employee records
- **Columns:** 35 (Age, Department, MonthlyIncome, 
  Attrition, JobRole, Gender, BusinessTravel etc.)
- **Data Quality:** Zero duplicates | Zero blank cells

---

## Key Findings

### Overall
- **Total Employees:** 1,470
- **Employees Who Left:** 237
- **Overall Attrition Rate:** 16.12%

### By Department
| Department | Total | Left | Attrition Rate |
|------------|-------|------|---------------|
| Sales | 446 | 92 | 20.63% |
| Human Resources | 63 | 12 | 19.05% |
| Research & Development | 961 | 133 | 13.84% |

### By Age Group
| Age Group | Total | Left | Attrition Rate |
|-----------|-------|------|---------------|
| 18-25 | 123 | 44 | 35.77% |
| 26-35 | 606 | 116 | 19.14% |
| 55+ | 47 | 8 | 17.02% |
| 46-55 | 226 | 26 | 11.50% |
| 36-45 | 468 | 43 | 9.19% |

### By Salary Band
| Salary Band | Total | Left | Attrition Rate |
|-------------|-------|------|---------------|
| Low (Below $3k) | 395 | 113 | 28.61% |
| Mid ($3k-$6k) | 519 | 66 | 12.72% |
| High ($6k-$10k) | 275 | 33 | 12.00% |
| Very High ($10k+) | 281 | 25 | 8.90% |

### By Job Role (Top 5)
| Job Role | Total | Left | Attrition Rate |
|----------|-------|------|---------------|
| Sales Representative | 83 | 33 | 39.76% |
| Laboratory Technician | 259 | 62 | 23.94% |
| Human Resources | 52 | 12 | 23.08% |
| Sales Executive | 326 | 57 | 17.48% |
| Research Scientist | 292 | 47 | 16.10% |

### Salary Insight
- Employees who **left** had average monthly income: ~$4,787
- Employees who **stayed** had average monthly income: ~$6,833
- **Employees earning less are significantly more likely to leave**

---

## Business Recommendations
1. **Focus retention on Sales department** — highest attrition 
   at 20.63%; investigate workload, commission structure, 
   and career growth opportunities
2. **Create early-career development programmes** — 18-25 
   age group leaving at 35.77%; need mentoring and growth paths
3. **Review compensation for low-salary employees** — 28.61% 
   attrition vs 8.90% for high earners; salary is a key 
   retention driver
4. **Prioritise Sales Representative retention** — nearly 
   40% attrition rate is critical; role satisfaction and 
   incentive review needed
5. **Invest in R&D retention programmes** — largest department 
   at 961 employees; even small attrition reduction saves 
   significant recruitment costs

---

## SQL Queries Performed
1. Overall attrition count and rate
2. Attrition by department (GROUP BY + CASE)
3. Attrition by age group (CASE WHEN buckets)
4. Attrition by salary band (CASE WHEN buckets)
5. Top 5 job roles by attrition rate (ORDER BY + LIMIT)

---

## Power BI Dashboard
Dashboard includes:
- KPI Cards: Total Employees, Overall Attrition Rate
- Bar Chart: Attrition by Department
- Bar Chart: Attrition by Job Role (all 9 roles)
- Bar Chart: Average Salary — Left vs Stayed
- Screenshot: HR_Dashboard_Final.png

---

## Files in This Repository
| File | Description |
|------|-------------|
| WA_Fn-UseC_-HR-Employee-Attrition.csv | Raw dataset |
| HR_Attrition_Queries.sql | All 5 SQL queries |
| HR_Dashboard_Final.png | Power BI dashboard screenshot |
| README.md | Project documentation |
