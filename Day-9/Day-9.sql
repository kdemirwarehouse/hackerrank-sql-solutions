"""
HackerRank SQL Solutions - Day 9
Date: 2025-06-07
Author: Kadir Demir
"""

# ---------------------------------------------------------
# PROBLEM 1: Weather Observation Station 20
# ---------------------------------------------------------
SELECT ROUND(LAT_N, 4)
FROM (
    SELECT LAT_N,ROW_NUMBER() OVER (ORDER BY LAT_N) AS rn
    FROM STATION
) AS ranked
WHERE rn = (SELECT CEIL(COUNT(*) / 2) FROM STATION)



# ---------------------------------------------------------
# PROBLEM 2: Population Census
# ---------------------------------------------------------
SELECT SUM(CITY.POPULATION)
FROM CITY
JOIN COUNTRY ON CITY.COUNTRYCODE = COUNTRY.CODE
WHERE COUNTRY.CONTINENT = 'Asia'


# ---------------------------------------------------------
# PROBLEM 3: African Cities
# ---------------------------------------------------------
SELECT CITY.NAME
FROM CITY
JOIN COUNTRY ON CITY.COUNTRYCODE = COUNTRY.CODE
WHERE COUNTRY.CONTINENT = 'Africa'

# ---------------------------------------------------------
# PROBLEM 4: African Cities
# ---------------------------------------------------------
SELECT COUNTRY.CONTINENT,
FLOOR(AVG(CITY.POPULATION))
FROM CITY
JOIN COUNTRY ON CITY.COUNTRYCODE = COUNTRY.CODE
GROUP BY COUNTRY.CONTINENT;
