"""
HackerRank SQL Solutions - Day 4
Date: 2025-04-27
Author: Kadir Demir
"""

# ---------------------------------------------------------
# PROBLEM 1: Higher Than 75 Marks
# ---------------------------------------------------------
SELECT DISTINCT CITY 
FROM STATION
WHERE CITY NOT LIKE 'A%' AND
CITY NOT LIKE 'E%' AND
CITY NOT LIKE 'I%' AND
CITY NOT LIKE 'O%' AND
CITY NOT LIKE 'U%'
AND
CITY NOT LIKE '%a' AND
CITY NOT LIKE '%e' AND
CITY NOT LIKE '%i' AND
CITY NOT LIKE '%o' AND
CITY NOT LIKE '%u'

# ---------------------------------------------------------
# PROBLEM 2: Employee Names
# ---------------------------------------------------------
SELECT name
FROM Employee
ORDER BY name ASC;

# ---------------------------------------------------------
# PROBLEM 3: Employee Salaries
# ---------------------------------------------------------
SELECT NAME
FROM EMPLOYEE
WHERE SALARY > 2000 AND
MONTHS < 10
ORDER BY EMPLOYEE_ID ASC;
