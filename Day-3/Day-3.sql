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

