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
