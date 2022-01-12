SELECT DISTINCT (player.player_name)
FROM player,
  match,
  player_match
WHERE player.player_id = player_match.player_id
  AND player_match.role_desc LIKE 'Captain%'
  AND match.match_id = player_match.match_id
  AND match.man_of_match = player.player_id;
