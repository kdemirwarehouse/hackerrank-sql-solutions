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

