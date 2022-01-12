SELECT DISTINCT (team.team_name)
FROM team,
  match
WHERE match.toss_winner <> match.match_winner
  AND match.match_winner = team.team_id
  AND match.season_year = 2015;
