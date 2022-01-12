SELECT DISTINCT (player.player_name)
FROM player,
  ball_by_ball,
  match
WHERE ball_by_ball.runs_scored = 6
  AND player.player_id = ball_by_ball.striker
  AND ball_by_ball.match_id = match.match_id
  AND (
    match.season_year = 2011
    OR match.season_year = 2013
    );
