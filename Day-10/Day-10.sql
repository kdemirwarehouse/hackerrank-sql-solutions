"""
HackerRank SQL Solutions - Day 
Date: 2025-06-13
Author: Kadir Demir
"""

# ---------------------------------------------------------
# PROBLEM 1: Top Competitors
# ---------------------------------------------------------
SELECT h.hacker_id, h.name
FROM Submissions s
JOIN Challenges c
ON s.challenge_id = c.challenge_id
JOIN Difficulty d
ON c.difficulty_level = d.difficulty_level
JOIN hackers h
ON s.hacker_id = h.hacker_id
WHERE s.score = d.score
GROUP BY h.hacker_id, h.name
HAVING COUNT(DISTINCT s.challenge_id) > 1
ORDER BY COUNT(DISTINCT s.challenge_id) DESC,
h.hacker_id ASC;

#--------------------------------------------------------
# PROBLEM 2: Ollivander's Inventory
#---------------------------------------------------------
SELECT w.id, wp.age, w.coins_needed, w.power
FROM Wands w
JOIN Wands_Property wp ON w.code = wp.code
WHERE wp.is_evil = 0
AND w.coins_needed = (
    SELECT MIN(w2.coins_needed)
    FROM Wands w2
    JOIN Wands_Property wp2 ON w2.code = wp2.code
    WHERE wp2.age = wp.age
    AND w2.power = w.power
    AND wp2.is_evil = 0
)
ORDER BY w.power DESC, wp.age DESC;

#--------------------------------------------------------
# PROBLEM 3: Challenges
#---------------------------------------------------------
SELECT 
    h.hacker_id,
    h.name,
    COUNT(*) AS challenges_count
FROM HACKERS h
JOIN CHALLENGES c ON h.hacker_id = c.hacker_id
GROUP BY h.hacker_id, h.name
HAVING challenges_count = (
        SELECT MAX(cnt)
        FROM (
            SELECT COUNT(*) AS cnt
            FROM CHALLENGES
            GROUP BY hacker_id
        ) max_counts
    )
    OR challenges_count NOT IN (
        SELECT challenges_count
        FROM (
            SELECT COUNT(*) AS challenges_count
            FROM CHALLENGES
            GROUP BY hacker_id
        ) dup_counts
        GROUP BY challenges_count
        HAVING COUNT(*) > 1
    )
ORDER BY challenges_count DESC, h.hacker_id ASC;

#--------------------------------------------------------
# PROBLEM 4: Draw The Triangle 1
#---------------------------------------------------------
SET @TEMP := 21;
SELECT REPEAT('* ', @TEMP := @TEMP - 1)
FROM INFORMATION_SCHEMA.TABLES
LIMIT 20;

#--------------------------------------------------------
# PROBLEM 5: Draw The Triangle 2
#---------------------------------------------------------
SET @TEMP := 0;
SELECT REPEAT('* ', @TEMP := @TEMP + 1)
FROM INFORMATION_SCHEMA.TABLES
LIMIT 20;