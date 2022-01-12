SELECT DISTINCT (player.player_name)
FROM player,
  ball_by_ball,
  match,
  venue
WHERE player.player_id = ball_by_ball.striker
  AND ball_by_ball.match_id = match.match_id
  AND match.venue_id = venue.venue_id
  AND venue.city_name = 'Pune'
  AND ball_by_ball.runs_scored = 4
  AND player.batting_hand = 'Left-hand bat';
