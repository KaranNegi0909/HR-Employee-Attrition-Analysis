
-- SELECT * FROM projects.hr_employee_attrition_cleaned;


-- -- Total employees, employees who left, stayed

-- SELECT
--     COUNT(*) AS total_employees,
--     SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
--     SUM(CASE WHEN Attrition = 'No' THEN 1 ELSE 0 END) AS employees_stayed,
--     ROUND(
--         SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
--         2
--     ) AS attrition_rate
-- FROM hr_employee_attrition_cleaned;


-- --  Which department has the highest attrition?
-- SELECT
--     Department,
--     COUNT(*) AS total_employees,
--     SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
--     ROUND(
--         SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
--         2
--     ) AS attrition_rate
-- FROM hr_employee_attrition_cleaned
-- GROUP BY Department
-- ORDER BY attrition_rate DESC;



-- --  Identify high-risk job roles


-- SELECT
--     JobRole,
--     COUNT(*) AS total_employees,
--     SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
--     ROUND(
--         SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
--         2
--     ) AS attrition_rate
-- FROM hr_employee_attrition_cleaned
-- GROUP BY JobRole
-- ORDER BY attrition_rate DESC;



-- -- Compare attrition between overtime and non-overtime employees
-- SELECT
--     OverTime,
--     COUNT(*) AS total_employees,
--     SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
--     ROUND(
--         SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
--         2
--     ) AS attrition_rate
-- FROM hr_employee_attrition_cleaned
-- GROUP BY OverTime
-- ORDER BY attrition_rate DESC;



-- -- Check whether frequent travelling is associated with higher attrition


-- SELECT
--     BusinessTravel,
--     COUNT(*) AS total_employees,
--     SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
--     ROUND(
--         SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
--         2
--     ) AS attrition_rate
-- FROM hr_employee_attrition_cleaned
-- GROUP BY BusinessTravel
-- ORDER BY attrition_rate DESC;


-- -- Analyze relationship between job satisfaction and attrition
-- SELECT
--     JobSatisfaction,
--     COUNT(*) AS total_employees,
--     SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
--     ROUND(
--         SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
--         2
--     ) AS attrition_rate
-- FROM hr_employee_attrition_cleaned
-- GROUP BY JobSatisfaction
-- ORDER BY JobSatisfaction;


-- --  Check whether workplace environment satisfaction affects attrition
-- SELECT
--     EnvironmentSatisfaction,
--     COUNT(*) AS total_employees,
--     SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
--     ROUND(
--         SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
--         2
--     ) AS attrition_rate
-- FROM hr_employee_attrition_cleaned
-- GROUP BY EnvironmentSatisfaction
-- ORDER BY EnvironmentSatisfaction;


-- --  Identify whether low employee involvement is linked to attrition
-- SELECT
--     JobInvolvement,
--     COUNT(*) AS total_employees,
--     SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
--     ROUND(
--         SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
--         2
--     ) AS attrition_rate
-- FROM hr_employee_attrition_cleaned
-- GROUP BY JobInvolvement
-- ORDER BY JobInvolvement;


-- -- Analyze whether poor work-life balance is associated with attrition
-- SELECT
--     WorkLifeBalance,
--     COUNT(*) AS total_employees,
--     SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
--     ROUND(
--         SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
--         2
--     ) AS attrition_rate
-- FROM hr_employee_attrition_cleaned
-- GROUP BY WorkLifeBalance
-- ORDER BY WorkLifeBalance;



-- -- Identify which organizational levels have higher attrition
-- SELECT
--     JobLevel,
--     COUNT(*) AS total_employees,
--     SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
--     ROUND(
--         SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
--         2
--     ) AS attrition_rate
-- FROM hr_employee_attrition_cleaned
-- GROUP BY JobLevel
-- ORDER BY JobLevel;



-- -- Compare average and median-ish salary indicators
-- SELECT
--     Attrition,
--     COUNT(*) AS employees,
--     ROUND(AVG(MonthlyIncome), 2) AS avg_monthly_income,
--     MIN(MonthlyIncome) AS minimum_income,
--     MAX(MonthlyIncome) AS maximum_income
-- FROM hr_employee_attrition_cleaned
-- GROUP BY Attrition;



-- -- Compare compensation across different job roles
-- SELECT
--     JobRole,
--     COUNT(*) AS total_employees,
--     ROUND(AVG(MonthlyIncome), 2) AS avg_monthly_income,
--     ROUND(AVG(PercentSalaryHike), 2) AS avg_salary_hike
-- FROM hr_employee_attrition_cleaned
-- GROUP BY JobRole
-- ORDER BY avg_monthly_income DESC;



-- -- Identify age segments with higher attrition
-- SELECT
--     CASE
--         WHEN Age BETWEEN 18 AND 25 THEN '18-25'
--         WHEN Age BETWEEN 26 AND 35 THEN '26-35'
--         WHEN Age BETWEEN 36 AND 45 THEN '36-45'
--         WHEN Age BETWEEN 46 AND 55 THEN '46-55'
--         ELSE '56+' END AS age_group,
-- COUNT(*) AS total_employees,
-- SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,ROUND(
--         SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
--         * 100.0 / COUNT(*),
--         2
--     ) AS attrition_rate
-- FROM hr_employee_attrition_cleaned
-- GROUP BY
--     CASE
--         WHEN Age BETWEEN 18 AND 25 THEN '18-25'
--         WHEN Age BETWEEN 26 AND 35 THEN '26-35'
--         WHEN Age BETWEEN 36 AND 45 THEN '36-45'
--         WHEN Age BETWEEN 46 AND 55 THEN '46-55'
--         ELSE '56+'END ORDER BY attrition_rate DESC;



-- -- Identify employees at different stages of company tenure

-- SELECT CASE
--         WHEN YearsAtCompany <= 1 THEN '0-1 Years'
--         WHEN YearsAtCompany BETWEEN 2 AND 5 THEN '2-5 Years'
--         WHEN YearsAtCompany BETWEEN 6 AND 10 THEN '6-10 Years'
--         WHEN YearsAtCompany BETWEEN 11 AND 20 THEN '11-20 Years'
--         ELSE '20+ Years'
--     END AS tenure_group, COUNT(*) AS total_employees,
-- SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
-- ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
--         * 100.0 / COUNT(*),
--         2) AS attrition_rate
-- FROM hr_employee_attrition_cleaned
-- GROUP BY
--     CASE
--         WHEN YearsAtCompany <= 1 THEN '0-1 Years'
--         WHEN YearsAtCompany BETWEEN 2 AND 5 THEN '2-5 Years'
--         WHEN YearsAtCompany BETWEEN 6 AND 10 THEN '6-10 Years'
--         WHEN YearsAtCompany BETWEEN 11 AND 20 THEN '11-20 Years'
--         ELSE '20+ Years'
--     END
-- ORDER BY attrition_rate DESC;



-- -- Identify early-career vs experienced employee attrition
-- SELECT
--     CASE
--         WHEN TotalWorkingYears <= 2 THEN '0-2 Years'
--         WHEN TotalWorkingYears BETWEEN 3 AND 5 THEN '3-5 Years'
--         WHEN TotalWorkingYears BETWEEN 6 AND 10 THEN '6-10 Years'
--         WHEN TotalWorkingYears BETWEEN 11 AND 20 THEN '11-20 Years'
--         ELSE '20+ Years'
--     END AS experience_group,COUNT(*) AS total_employees,
-- SUM(
--         CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END
--     ) AS employees_left,ROUND(
--         SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
--         * 100.0 / COUNT(*),
--         2
--     ) AS attrition_rate

-- FROM hr_employee_attrition_cleaned
-- GROUP BY
--     CASE
--         WHEN TotalWorkingYears <= 2 THEN '0-2 Years'
--         WHEN TotalWorkingYears BETWEEN 3 AND 5 THEN '3-5 Years'
--         WHEN TotalWorkingYears BETWEEN 6 AND 10 THEN '6-10 Years'
--         WHEN TotalWorkingYears BETWEEN 11 AND 20 THEN '11-20 Years'
--         ELSE '20+ Years'
--     END
-- ORDER BY attrition_rate DESC;



-- -- Compare attrition across marital-status groups
-- SELECT
--     MaritalStatus,
--     COUNT(*) AS total_employees,
--     SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
--     ROUND(
--         SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
--         * 100.0 / COUNT(*),
--         2
--     ) AS attrition_rate
-- FROM hr_employee_attrition_cleaned
-- GROUP BY MaritalStatus
-- ORDER BY attrition_rate DESC;



-- -- Identify education fields with higher attrition
-- SELECT
--     EducationField,
--     COUNT(*) AS total_employees,
--     SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
--     ROUND(
--         SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
--         * 100.0 / COUNT(*),
--         2
--     ) AS attrition_rate
-- FROM hr_employee_attrition_cleaned
-- GROUP BY EducationField
-- ORDER BY attrition_rate DESC;



-- -- Find combinations of factors associated with high attrition
-- SELECT JobRole,OverTime,BusinessTravel,COUNT(*) AS total_employees,
-- SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
--         * 100.0 / COUNT(*),
--         2) AS attrition_rate
-- FROM hr_employee_attrition_cleaned
-- GROUP BY JobRole,OverTime,BusinessTravel
-- HAVING COUNT(*) >= 10 ORDER BY attrition_rate DESC;


-- -- Identify potentially high-risk employee segments
-- SELECT
--     OverTime,
--     JobSatisfaction,
--     WorkLifeBalance,
--     COUNT(*) AS total_employees,SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
-- ROUND(
--         SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
--         * 100.0 / COUNT(*),
--         2) AS attrition_rate FROM hr_employee_attrition_cleaned
-- GROUP BY
--     OverTime,
--     JobSatisfaction,
--     WorkLifeBalance
-- HAVING COUNT(*) >= 10
-- ORDER BY attrition_rate DESC;



-- -- Purpose: Rank job roles based on attrition rate
-- SELECT
--     JobRole,
--     COUNT(*) AS total_employees,
--     SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
-- ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
--         * 100.0 / COUNT(*),
--         2) AS attrition_rate
-- FROM hr_employee_attrition_cleaned
-- GROUP BY JobRole
-- HAVING COUNT(*) >= 30
-- ORDER BY attrition_rate DESC;



-- -- Compare attrition between male and female employees
-- SELECT
--     Gender,
--     COUNT(*) AS total_employees,
--     SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
-- ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
--         * 100.0 / COUNT(*),
--         2
--     ) AS attrition_rate
-- FROM hr_employee_attrition_cleaned
-- GROUP BY Gender
-- ORDER BY attrition_rate DESC;


-- -- Check whether employees with more previous employers
-- --          show higher attrition
-- SELECT
--     NumCompaniesWorked,
--     COUNT(*) AS total_employees,
-- SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
-- ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
--         * 100.0 / COUNT(*),
--         2) AS attrition_rate FROM hr_employee_attrition_cleaned
-- GROUP BY NumCompaniesWorked
-- ORDER BY NumCompaniesWorked;



-- -- Purpose: Create useful HR KPI statistics
-- SELECT
--     COUNT(*) AS total_employees,ROUND(AVG(Age), 2) AS avg_age,ROUND(AVG(MonthlyIncome), 2) AS avg_monthly_income,
-- ROUND(AVG(TotalWorkingYears), 2) AS avg_total_working_years,
-- ROUND(AVG(YearsAtCompany), 2) AS avg_years_at_company,
-- ROUND(AVG(YearsInCurrentRole), 2) AS avg_years_current_role,
-- ROUND(AVG(YearsSinceLastPromotion), 2) AS avg_years_since_promotion
-- FROM hr_employee_attrition_cleaned;



-- --  Find departments where overtime may be a bigger issue
-- SELECT
--     Department,
--     OverTime,
--     COUNT(*) AS total_employees,
-- SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
-- ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
--         * 100.0 / COUNT(*),
--         2) AS attrition_rate
-- FROM hr_employee_attrition_cleaned
-- GROUP BY Department,OverTime
-- ORDER BY attrition_rate DESC;



-- --  Identify high-risk role/level combinations
-- SELECT
--     JobRole,
--     JobLevel,
--     COUNT(*) AS total_employees,
-- SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
-- ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
--         * 100.0 / COUNT(*),
--         2) AS attrition_rate FROM hr_employee_attrition_cleaned GROUP BY JobRole, JobLevel
-- HAVING COUNT(*) >= 10
-- ORDER BY attrition_rate DESC;