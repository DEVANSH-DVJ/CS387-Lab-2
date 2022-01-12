(
    SELECT DISTINCT (team.team_name)
    FROM team
    )

EXCEPT

(
  SELECT DISTINCT (team.team_name)
  FROM team,
    match,
    venue
  WHERE team.team_id = match.match_winner
    AND match.venue_id = venue.venue_id
    AND venue.venue_name = 'M Chinnaswamy Stadium'
  );
