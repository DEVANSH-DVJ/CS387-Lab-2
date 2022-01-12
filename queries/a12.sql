(
    SELECT DISTINCT (player.player_name)
    FROM player
    WHERE player.country_name = 'Sri Lanka'
    )

EXCEPT

(
  SELECT DISTINCT (player.player_name)
  FROM player,
    ball_by_ball
  WHERE player.player_id = ball_by_ball.striker
    AND player.country_name = 'Sri Lanka'
  );
