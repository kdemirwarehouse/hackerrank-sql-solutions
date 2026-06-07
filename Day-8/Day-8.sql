"""
HackerRank SQL Solutions - Day 8
Date: 2025-06-07
Author: Kadir Demir
"""


# ---------------------------------------------------------
# PROBLEM 1: Weather Observation Station 15
# ---------------------------------------------------------
SELECT ROUND(LONG_W, 4)
FROM STATION
WHERE LAT_N = (SELECT MAX(LAT_N) FROM STATION WHERE LAT_N < 137.2345)

# ---------------------------------------------------------
# PROBLEM 2: Weather Observation Station 16
# ---------------------------------------------------------
SELECT ROUND(LAT_N, 4)
FROM STATION
WHERE LAT_N = (SELECT MIN(LAT_N)
FROM STATION
WHERE LAT_N > 38.7780)


