-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935

.mode columns
.headers on

SELECT players.first_name, players.last_name, SUM(stats.hits)
FROM stats INNER JOIN players ON players.id = stats.player_id
WHERE players.last_name = "Bonds" AND players.first_name = "Barry";
