"""
HackerRank SQL Solutions - Day 3
Date: 2025-03-28
Author: Kadir Demir
"""

# ---------------------------------------------------------
# PROBLEM 1: Weather Observation Station 6
# ---------------------------------------------------------
SELECT distinct CITY
FROM STATION
WHERE CITY LIKE
'A%' OR CITY LIKE 'E%'
OR CITY LIKE 'I%' OR 
CITY LIKE 'O%' OR CITY
LIKE 'U%'

# ---------------------------------------------------------
# PROBLEM 2: Weather Observation Station 7
# ---------------------------------------------------------
SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE '%a' OR
CITY LIKE '%e' OR CITY LIKE '%i'
OR CITY LIKE '%o' OR CITY LIKE '%u';

