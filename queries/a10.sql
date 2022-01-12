SELECT DISTINCT (player.player_name),
  player.country_name
FROM player,
  player_match,
  ball_by_ball
WHERE player.player_id = player_match.player_id
  AND player_match.role_desc LIKE 'Captain%'
  AND player_match.match_id = ball_by_ball.match_id
  AND ball_by_ball.bowler = player.player_id;
