SELECT DISTINCT (player.player_name)
FROM player,
  ball_by_ball
WHERE player.player_id = ball_by_ball.bowler
  AND player.bowling_skill = 'Right-arm medium'
  AND ball_by_ball.out_type = 'caught and bowled';
