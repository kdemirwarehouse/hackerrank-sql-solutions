"""
HackerRank SQL Solutions - Day 2
Date: 2025-03-18
Author: Kadir Demir
"""

# ---------------------------------------------------------
# PROBLEM 1: Japanese Cities' Names
# ---------------------------------------------------------
SELECT NAME
FROM CITY
WHERE COUNTRYCODE = 'JPN';

# ---------------------------------------------------------
# PROBLEM 2: Weather Observation Station 1
# ---------------------------------------------------------
SELECT CITY, STATE
FROM STATION;

# ---------------------------------------------------------
# PROBLEM 2: Weather Observation Station 3
# ---------------------------------------------------------
SELECT DISTINCT CITY
FROM STATION
WHERE ID%2 = 0;


