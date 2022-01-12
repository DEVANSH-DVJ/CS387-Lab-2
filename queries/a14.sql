SELECT DISTINCT (player.player_name)
FROM player,
  ball_by_ball AS ball1,
  ball_by_ball AS ball2,
  match AS match1,
  match AS match2
WHERE player.player_id = ball1.striker
  AND player.player_id = ball2.striker
  AND ball1.out_type = 'run out'
  AND ball2.out_type = 'bowled'
  AND ball1.match_id = match1.match_id
  AND ball2.match_id = match2.match_id
  AND match1.season_year = 2017
  AND match2.season_year = 2017;
