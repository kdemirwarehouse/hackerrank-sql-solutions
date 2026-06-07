"""
HackerRank SQL Solutions - Day 7
Date: 2025-05-23
Author: Kadir Demir
"""

# ---------------------------------------------------------
# PROBLEM 1: Top Earners
# ---------------------------------------------------------
SELECT MAX(MONTHS*SALARY), COUNT(*)
FROM EMPLOYEE
WHERE MONTHS * SALARY = (
    SELECT MAX(MONTHS*SALARY)
    FROM EMPLOYEE
);


# ---------------------------------------------------------
# PROBLEM 2: New Companies
# ---------------------------------------------------------

SELECT
    c.company_code,
    c.founder,
    COUNT(DISTINCT lm.lead_manager_code) AS total_lead_managers,
    COUNT(DISTINCT sm.senior_manager_code) AS total_senior_managers,
    COUNT(DISTINCT m.manager_code) AS total_managers,
    COUNT(DISTINCT e.employee_code) AS total_employees
FROM Company c
JOIN Lead_Manager   lm ON c.company_code  = lm.company_code
JOIN Senior_Manager sm ON lm.company_code = sm.company_code
JOIN Manager        m  ON sm.company_code = m.company_code
JOIN Employee       e  ON m.company_code  = e.company_code
GROUP BY c.company_code, c.founder
ORDER BY c.company_code;
