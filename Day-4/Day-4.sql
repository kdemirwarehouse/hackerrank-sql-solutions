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

# ---------------------------------------------------------
# PROBLEM 4: Type of Triangle
# ---------------------------------------------------------
SELECT
    CASE
        WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'
        WHEN A = B AND B = C THEN 'Equilateral'
        WHEN A = B OR B = C OR A = C THEN 'Isosceles'
        ELSE 'Scalene'
    END
FROM TRIANGLES;

# ---------------------------------------------------------
# PROBLEM 5: The PADS
# ---------------------------------------------------------
SELECT CONCAT(Name, '(', LEFT(Occupation, 1), ')')
FROM OCCUPATIONS
ORDER BY Name;

SELECT CONCAT('There are a total of', COUNT(*), ' ', LOWER(Occupation), 's.')
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(*), Occupation;
