"""
HackerRank SQL Solutions - Day 7
Date: 2025-05-23
Author: Kadir Demir
"""

# ---------------------------------------------------------
# PROBLEM 1: Top Earners
# ---------------------------------------------------------
SELECT MAX(MONTHS*SALARY), COUNT(*)
FROM EMPLOYEE
WHERE MONTHS * SALARY = (
    SELECT MAX(MONTHS*SALARY)
    FROM EMPLOYEE
);
