SELECT DISTINCT (player.player_id),
  player.player_name
FROM player,
  player_match
WHERE player.player_id = player_match.player_id
  AND player_match.role_desc LIKE 'Captain%'
  AND player.country_name = 'Australia'
ORDER BY player.player_name ASC;
