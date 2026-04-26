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

# ---------------------------------------------------------
# PROBLEM 2: Weather Observation Station 8
# ---------------------------------------------------------
SELECT DISTINCT CITY FROM STATION
WHERE (city LIKE 'a%' OR
city LIKE 'e%' OR
city LIKE 'i%' OR
city LIKE 'o%' OR
city LIKE 'u%')
AND
(city LIKE '%a' OR
city LIKE '%e' OR
city LIKE '%i' OR
city LIKE '%o' OR
city LIKE '%u')

# ---------------------------------------------------------
# PROBLEM 3: Weather Observation Station 9
# ---------------------------------------------------------
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT LIKE 'A%' AND
      CITY NOT LIKE 'E%' AND
      CITY NOT LIKE 'I%' AND
      CITY NOT LIKE 'O%' AND
      CITY NOT LIKE 'U%';

# ---------------------------------------------------------
# PROBLEM 4: Weather Observation Station 10
# ---------------------------------------------------------
SELECT DISTINCT CITY
FROM STATION
WHERE 
CITY NOT LIKE '%a' AND
CITY NOT LIKE '%e' AND
CITY NOT LIKE '%i' AND
CITY NOT LIKE '%o' AND
CITY NOT LIKE '%u';

# ---------------------------------------------------------
# PROBLEM 5: Weather Observation Station 11
# ---------------------------------------------------------
SELECT DISTINCT CITY
FROM STATION
WHERE CITY
NOT LIKE 'A%' AND
CITY NOT LIKE 'E%' AND
CITY NOT LIKE 'I%' AND
CITY NOT LIKE 'O%' AND
CITY NOT LIKE 'U%'
OR
CITY NOT LIKE '%a' AND
CITY NOT LIKE '%e' AND
CITY NOT LIKE '%i' AND
CITY NOT LIKE '%o' AND
CITY NOT LIKE '%u';

