(
    SELECT DISTINCT (team.team_name)
    FROM team
    )

EXCEPT

(
  SELECT DISTINCT (team.team_name)
  FROM team,
    player_match,
    ball_by_ball
  WHERE ball_by_ball.out_type = 'caught and bowled'
    AND ball_by_ball.striker = player_match.player_id
    AND ball_by_ball.match_id = player_match.match_id
    AND player_match.team_id = team.team_id
  );
