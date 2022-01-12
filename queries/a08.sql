SELECT DISTINCT (player.player_name)
FROM player,
  player_match,
  match,
  venue
WHERE player.player_id = player_match.player_id
  AND match.match_id = player_match.match_id
  AND match.venue_id = venue.venue_id
  AND player.country_name <> 'India'
  AND venue.venue_name = 'Eden Gardens';
