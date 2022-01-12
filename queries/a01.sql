SELECT player_name
FROM player
WHERE dob >= '1992-01-01'
  AND player.country_name = 'India'
ORDER BY player_name ASC;
