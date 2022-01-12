SELECT DISTINCT (player.player_name)
FROM player,
  ball_by_ball
WHERE player.player_id = ball_by_ball.bowler
  AND ball_by_ball.extra_runs > 2
ORDER BY player.player_name ASC;
