"""
HackerRank SQL Solutions - Day 6
Date: 2025-05-06
Author: Kadir Demir
"""

# ---------------------------------------------------------
# PROBLEM 1: Average Population
# ---------------------------------------------------------
SELECT FLOOR(AVG(POPULATION))
FROM CITY;

# ---------------------------------------------------------
# PROBLEM 2: Japan Population
# ---------------------------------------------------------
SELECT SUM(POPULATION)
FROM CITY
WHERE COUNTRYCODE = 'JPN';

---------------------------------------------------------
# PROBLEM 3: Population Density Difference
---------------------------------------------------------
SELECT MAX(POPULATION) - MIN(POPULATION)
FROM CITY;

---------------------------------------------------------
# PROBLEM 4: Binary Tree Nodes
---------------------------------------------------------
SELECT 
    b1.N,
    CASE
        WHEN b1.P IS NULL THEN 'Root'
        WHEN EXISTS (
            SELECT 1
            FROM BST b2
            WHERE b2.P = b1.N
        ) THEN 'Inner'
        ELSE 'Leaf'
    END
FROM BST b1
ORDER BY b1.N;

---------------------------------------------------------
# PROBLEM 5: Binary Tree Nodes
---------------------------------------------------------
SELECT CEIL(AVG(SALARY) - AVG(REPLACE(SALARY, '0',  "")))
FROM EMPLOYEES;
