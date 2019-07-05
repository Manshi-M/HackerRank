SELECT h.hacker_id, h.name, SUM(s1.max_score) AS total_score FROM
hackers h JOIN(
    SELECT hacker_id, challenge_id, MAX(score) AS max_score FROM submissions GROUP BY hacker_id, challenge_id) s1 
ON s1.hacker_id = h.hacker_id
GROUP BY h.hacker_id, h.name
HAVING SUM(s1.max_score)<>0
ORDER BY total_score DESC, hacker_id ;
