"""
HackerRank SQL Solutions - Day 1
Date: 2025-03-13
Author: Kadir Demir
"""


# ---------------------------------------------------------
# PROBLEM 1: Revising the Select Query I
# ---------------------------------------------------------
SELECT * 
FROM CITY
WHERE COUNTRYCODE = 'USA'
AND POPULATION > 100000;

# ---------------------------------------------------------
# PROBLEM 2: Revising the Select Query II
# ---------------------------------------------------------
SELECT NAME
FROM CITY
WHERE COUNTRYCODE = 'USA'
AND 
POPULATION > 120000;

# ---------------------------------------------------------
# PROBLEM 3: Select All
# ---------------------------------------------------------
SELECT * FROM CITY;


