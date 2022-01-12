SELECT team.team_name,
  match.win_margin
FROM team,
  match
WHERE match.win_margin > 10
  AND win_type = 'runs'
  AND team.team_id = match.match_winner
ORDER BY win_margin DESC,
  team.team_name ASC;
